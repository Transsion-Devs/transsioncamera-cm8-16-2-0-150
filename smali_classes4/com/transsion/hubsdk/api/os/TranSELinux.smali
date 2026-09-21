.class public Lcom/transsion/hubsdk/api/os/TranSELinux;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranSELinux"

.field protected static sAospService:Lcom/transsion/hubsdk/interfaces/os/ITranSELinuxAdapter;

.field protected static sThubService:Lcom/transsion/hubsdk/interfaces/os/ITranSELinuxAdapter;


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

.method protected static getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranSELinuxAdapter;
    .registers 2

    .line 26
    invoke-static {p0}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_19

    .line 27
    sget-object p0, Lcom/transsion/hubsdk/api/os/TranSELinux;->TAG:Ljava/lang/String;

    const-string v0, "TranThubSELinux"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    sget-object p0, Lcom/transsion/hubsdk/api/os/TranSELinux;->sThubService:Lcom/transsion/hubsdk/interfaces/os/ITranSELinuxAdapter;

    if-nez p0, :cond_18

    new-instance p0, Lcom/transsion/hubsdk/core/os/TranThubSELinux;

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/os/TranThubSELinux;-><init>()V

    sput-object p0, Lcom/transsion/hubsdk/api/os/TranSELinux;->sThubService:Lcom/transsion/hubsdk/interfaces/os/ITranSELinuxAdapter;

    :cond_18
    return-object p0

    .line 30
    :cond_19
    sget-object p0, Lcom/transsion/hubsdk/api/os/TranSELinux;->TAG:Ljava/lang/String;

    const-string v0, "TranAospSELinux"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    sget-object p0, Lcom/transsion/hubsdk/api/os/TranSELinux;->sAospService:Lcom/transsion/hubsdk/interfaces/os/ITranSELinuxAdapter;

    if-nez p0, :cond_2b

    new-instance p0, Lcom/transsion/hubsdk/aosp/os/TranAospSELinux;

    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/os/TranAospSELinux;-><init>()V

    sput-object p0, Lcom/transsion/hubsdk/api/os/TranSELinux;->sAospService:Lcom/transsion/hubsdk/interfaces/os/ITranSELinuxAdapter;

    :cond_2b
    return-object p0
.end method

.method public static restorecon(Ljava/io/File;)Z
    .registers 2

    .line 46
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33161:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/hubsdk/api/os/TranSELinux;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranSELinuxAdapter;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/transsion/hubsdk/interfaces/os/ITranSELinuxAdapter;->restorecon(Ljava/io/File;)Z

    move-result p0

    return p0
.end method
