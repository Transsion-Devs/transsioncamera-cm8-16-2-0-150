.class public Lcom/transsion/hubsdk/api/os/TranEnvironment;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranEnvironment"

.field protected static sAospService:Lcom/transsion/hubsdk/interfaces/os/ITranEnvironmentAdapter;

.field protected static sThubService:Lcom/transsion/hubsdk/interfaces/os/ITranEnvironmentAdapter;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildExternalStorageAppDataDirs(Ljava/lang/String;)[Ljava/io/File;
    .registers 2

    .line 47
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33161:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/hubsdk/api/os/TranEnvironment;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranEnvironmentAdapter;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/transsion/hubsdk/interfaces/os/ITranEnvironmentAdapter;->buildExternalStorageAppDataDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static getDataVendorDeDirectory(I)Ljava/io/File;
    .registers 2

    .line 70
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/hubsdk/api/os/TranEnvironment;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranEnvironmentAdapter;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/transsion/hubsdk/interfaces/os/ITranEnvironmentAdapter;->getDataVendorDeDirectory(I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static getProductDirectory()Ljava/io/File;
    .registers 1

    .line 58
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33281:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/hubsdk/api/os/TranEnvironment;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranEnvironmentAdapter;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/hubsdk/interfaces/os/ITranEnvironmentAdapter;->getProductDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method protected static getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranEnvironmentAdapter;
    .registers 2

    .line 30
    invoke-static {p0}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_19

    .line 31
    sget-object p0, Lcom/transsion/hubsdk/api/os/TranEnvironment;->TAG:Ljava/lang/String;

    const-string v0, "TranThubEnvironment"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    sget-object p0, Lcom/transsion/hubsdk/api/os/TranEnvironment;->sThubService:Lcom/transsion/hubsdk/interfaces/os/ITranEnvironmentAdapter;

    if-nez p0, :cond_18

    new-instance p0, Lcom/transsion/hubsdk/core/os/TranThubEnvironment;

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/os/TranThubEnvironment;-><init>()V

    sput-object p0, Lcom/transsion/hubsdk/api/os/TranEnvironment;->sThubService:Lcom/transsion/hubsdk/interfaces/os/ITranEnvironmentAdapter;

    :cond_18
    return-object p0

    .line 34
    :cond_19
    sget-object p0, Lcom/transsion/hubsdk/api/os/TranEnvironment;->TAG:Ljava/lang/String;

    const-string v0, "TranAospEnvironment"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    sget-object p0, Lcom/transsion/hubsdk/api/os/TranEnvironment;->sAospService:Lcom/transsion/hubsdk/interfaces/os/ITranEnvironmentAdapter;

    if-nez p0, :cond_2b

    new-instance p0, Lcom/transsion/hubsdk/aosp/os/TranAospEnvironment;

    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/os/TranAospEnvironment;-><init>()V

    sput-object p0, Lcom/transsion/hubsdk/api/os/TranEnvironment;->sAospService:Lcom/transsion/hubsdk/interfaces/os/ITranEnvironmentAdapter;

    :cond_2b
    return-object p0
.end method
