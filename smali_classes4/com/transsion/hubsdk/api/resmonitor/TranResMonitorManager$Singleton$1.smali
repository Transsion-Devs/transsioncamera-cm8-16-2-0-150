.class Lcom/transsion/hubsdk/api/resmonitor/TranResMonitorManager$Singleton$1;
.super Lcom/transsion/hubsdk/api/util/TranSingletonUtils$Singleton;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/api/resmonitor/TranResMonitorManager$Singleton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/hubsdk/api/util/TranSingletonUtils$Singleton<",
        "Lcom/transsion/hubsdk/interfaces/resmonitor/ITranResMonitorManagerAdapter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 380
    invoke-direct {p0}, Lcom/transsion/hubsdk/api/util/TranSingletonUtils$Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected create()Lcom/transsion/hubsdk/interfaces/resmonitor/ITranResMonitorManagerAdapter;
    .registers 2

    .line 383
    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33101:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_17

    .line 384
    # getter for: Lcom/transsion/hubsdk/api/resmonitor/TranResMonitorManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/transsion/hubsdk/api/resmonitor/TranResMonitorManager;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TranThubResMonitorManager"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    new-instance p0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager;

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager;-><init>()V

    return-object p0

    .line 387
    :cond_17
    # getter for: Lcom/transsion/hubsdk/api/resmonitor/TranResMonitorManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/transsion/hubsdk/api/resmonitor/TranResMonitorManager;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TranAospResMonitorManager"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    new-instance p0, Lcom/transsion/hubsdk/aosp/resmonitor/TranAospResMonitorManager;

    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/resmonitor/TranAospResMonitorManager;-><init>()V

    return-object p0
.end method

.method protected bridge synthetic create()Ljava/lang/Object;
    .registers 1

    .line 380
    invoke-virtual {p0}, Lcom/transsion/hubsdk/api/resmonitor/TranResMonitorManager$Singleton$1;->create()Lcom/transsion/hubsdk/interfaces/resmonitor/ITranResMonitorManagerAdapter;

    move-result-object p0

    return-object p0
.end method
