.class Lcom/transsion/hubsdk/api/tranusf/TranUsfManager$Singleton$1;
.super Lcom/transsion/hubsdk/api/util/TranSingletonUtils$Singleton;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/api/tranusf/TranUsfManager$Singleton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/hubsdk/api/util/TranSingletonUtils$Singleton<",
        "Lcom/transsion/hubsdk/interfaces/tranusf/ITranThubUsfManagerAdapter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 383
    invoke-direct {p0}, Lcom/transsion/hubsdk/api/util/TranSingletonUtils$Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected create()Lcom/transsion/hubsdk/interfaces/tranusf/ITranThubUsfManagerAdapter;
    .registers 2

    .line 386
    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33351:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1d

    .line 387
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidU()Z

    move-result p0

    if-eqz p0, :cond_1d

    .line 388
    # getter for: Lcom/transsion/hubsdk/api/tranusf/TranUsfManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/transsion/hubsdk/api/tranusf/TranUsfManager;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TranThubUsfManager"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    new-instance p0, Lcom/transsion/hubsdk/core/tranusf/TranThubUsfManager;

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/tranusf/TranThubUsfManager;-><init>()V

    return-object p0

    .line 391
    :cond_1d
    # getter for: Lcom/transsion/hubsdk/api/tranusf/TranUsfManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/transsion/hubsdk/api/tranusf/TranUsfManager;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TranAospUsfManager"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    new-instance p0, Lcom/transsion/hubsdk/aosp/tranfs/TranAospUsfManager;

    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/tranfs/TranAospUsfManager;-><init>()V

    return-object p0
.end method

.method protected bridge synthetic create()Ljava/lang/Object;
    .registers 1

    .line 383
    invoke-virtual {p0}, Lcom/transsion/hubsdk/api/tranusf/TranUsfManager$Singleton$1;->create()Lcom/transsion/hubsdk/interfaces/tranusf/ITranThubUsfManagerAdapter;

    move-result-object p0

    return-object p0
.end method
