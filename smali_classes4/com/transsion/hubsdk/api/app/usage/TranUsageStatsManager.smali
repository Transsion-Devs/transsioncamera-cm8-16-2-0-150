.class public Lcom/transsion/hubsdk/api/app/usage/TranUsageStatsManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/api/app/usage/TranUsageStatsManager$ITranAppUsageStatsListener;
    }
.end annotation


# static fields
.field private static final SINGLETON:Lcom/transsion/hubsdk/api/util/TranSingletonUtils$Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/hubsdk/api/util/TranSingletonUtils$Singleton<",
            "Lcom/transsion/hubsdk/api/app/usage/TranUsageStatsManager;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "TranUsageStatsManager"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/app/usage/TranAospUsageStatsManager;

.field private mThubService:Lcom/transsion/hubsdk/core/app/usage/TranThubUsageStatsManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 45
    new-instance v0, Lcom/transsion/hubsdk/api/app/usage/TranUsageStatsManager$1;

    invoke-direct {v0}, Lcom/transsion/hubsdk/api/app/usage/TranUsageStatsManager$1;-><init>()V

    sput-object v0, Lcom/transsion/hubsdk/api/app/usage/TranUsageStatsManager;->SINGLETON:Lcom/transsion/hubsdk/api/util/TranSingletonUtils$Singleton;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getService()Lcom/transsion/hubsdk/api/app/usage/TranUsageStatsManager;
    .registers 1

    .line 42
    sget-object v0, Lcom/transsion/hubsdk/api/app/usage/TranUsageStatsManager;->SINGLETON:Lcom/transsion/hubsdk/api/util/TranSingletonUtils$Singleton;

    invoke-virtual {v0}, Lcom/transsion/hubsdk/api/util/TranSingletonUtils$Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/hubsdk/api/app/usage/TranUsageStatsManager;

    return-object v0
.end method


# virtual methods
.method public getAppLaunchCount(Landroid/app/usage/UsageStats;)I
    .registers 3

    if-eqz p1, :cond_d

    .line 91
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33311:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/usage/TranUsageStatsManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/usage/ITranUsageStatsManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/usage/ITranUsageStatsManagerAdapter;->getAppLaunchCount(Landroid/app/usage/UsageStats;)I

    move-result p0

    return p0

    .line 89
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "UsageStats cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAppUsageWithtime(J)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/api/app/usage/TranAppUsage;",
            ">;"
        }
    .end annotation

    .line 115
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33391:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/usage/TranUsageStatsManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/usage/ITranUsageStatsManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/usage/ITranUsageStatsManagerAdapter;->getAppUsageWithtime(J)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getBatteryLevelWithTime(J)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/api/app/usage/TranBatteryUsage;",
            ">;"
        }
    .end annotation

    .line 124
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33391:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/usage/TranUsageStatsManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/usage/ITranUsageStatsManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/usage/ITranUsageStatsManagerAdapter;->getBatteryLevelWithTime(J)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getLastFullChargeTime()J
    .registers 3

    .line 133
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33431:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/usage/TranUsageStatsManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/usage/ITranUsageStatsManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/app/usage/ITranUsageStatsManagerAdapter;->getLastFullChargeTime()J

    move-result-wide v0

    return-wide v0
.end method

.method protected getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/usage/ITranUsageStatsManagerAdapter;
    .registers 3

    .line 54
    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 55
    sget-object p1, Lcom/transsion/hubsdk/api/app/usage/TranUsageStatsManager;->TAG:Ljava/lang/String;

    const-string v0, "TranThubUsageStatsManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object p1, p0, Lcom/transsion/hubsdk/api/app/usage/TranUsageStatsManager;->mThubService:Lcom/transsion/hubsdk/core/app/usage/TranThubUsageStatsManager;

    if-nez p1, :cond_18

    new-instance p1, Lcom/transsion/hubsdk/core/app/usage/TranThubUsageStatsManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/app/usage/TranThubUsageStatsManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/app/usage/TranUsageStatsManager;->mThubService:Lcom/transsion/hubsdk/core/app/usage/TranThubUsageStatsManager;

    :cond_18
    return-object p1

    .line 58
    :cond_19
    sget-object p1, Lcom/transsion/hubsdk/api/app/usage/TranUsageStatsManager;->TAG:Ljava/lang/String;

    const-string v0, "TranAospUsageStatsManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object p1, p0, Lcom/transsion/hubsdk/api/app/usage/TranUsageStatsManager;->mAospService:Lcom/transsion/hubsdk/aosp/app/usage/TranAospUsageStatsManager;

    if-nez p1, :cond_2b

    new-instance p1, Lcom/transsion/hubsdk/aosp/app/usage/TranAospUsageStatsManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/app/usage/TranAospUsageStatsManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/app/usage/TranUsageStatsManager;->mAospService:Lcom/transsion/hubsdk/aosp/app/usage/TranAospUsageStatsManager;

    :cond_2b
    return-object p1
.end method

.method public getUidPackageMap()Landroid/os/Bundle;
    .registers 2

    .line 143
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33431:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/usage/TranUsageStatsManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/usage/ITranUsageStatsManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/app/usage/ITranUsageStatsManagerAdapter;->getUidPackageMap()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public queryEventsForPackageForUser(JJILjava/lang/String;Ljava/lang/String;)Landroid/app/usage/UsageEvents;
    .registers 9
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    .line 76
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/usage/TranUsageStatsManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/usage/ITranUsageStatsManagerAdapter;

    move-result-object p0

    invoke-interface/range {p0 .. p7}, Lcom/transsion/hubsdk/interfaces/app/usage/ITranUsageStatsManagerAdapter;->queryEventsForPackageForUser(JJILjava/lang/String;Ljava/lang/String;)Landroid/app/usage/UsageEvents;

    move-result-object p0

    return-object p0
.end method

.method public queryEventsForUser(JJILjava/lang/String;)Landroid/app/usage/UsageEvents;
    .registers 8

    if-eqz p6, :cond_d

    .line 106
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33391:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/usage/TranUsageStatsManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/usage/ITranUsageStatsManagerAdapter;

    move-result-object p0

    invoke-interface/range {p0 .. p6}, Lcom/transsion/hubsdk/interfaces/app/usage/ITranUsageStatsManagerAdapter;->queryEventsForUser(JJILjava/lang/String;)Landroid/app/usage/UsageEvents;

    move-result-object p0

    return-object p0

    .line 104
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "params cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerTranAppUsageStatsCallback(Lcom/transsion/hubsdk/api/app/usage/TranUsageStatsManager$ITranAppUsageStatsListener;)V
    .registers 3

    .line 156
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidW()Z

    move-result v0

    if-nez v0, :cond_e

    .line 157
    sget-object p0, Lcom/transsion/hubsdk/api/app/usage/TranUsageStatsManager;->TAG:Ljava/lang/String;

    const-string p1, "the android platform is to low"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    if-nez p1, :cond_18

    .line 161
    sget-object p0, Lcom/transsion/hubsdk/api/app/usage/TranUsageStatsManager;->TAG:Ljava/lang/String;

    const-string p1, "the register listener is null"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 164
    :cond_18
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33391:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/usage/TranUsageStatsManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/usage/ITranUsageStatsManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/usage/ITranUsageStatsManagerAdapter;->registerTranAppUsageStatsCallback(Lcom/transsion/hubsdk/api/app/usage/TranUsageStatsManager$ITranAppUsageStatsListener;)V

    return-void
.end method

.method public unRegisterTranAppUsageStatsCallback()V
    .registers 2

    .line 173
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidW()Z

    move-result v0

    if-nez v0, :cond_e

    .line 174
    sget-object p0, Lcom/transsion/hubsdk/api/app/usage/TranUsageStatsManager;->TAG:Ljava/lang/String;

    const-string v0, "the android platform is to low"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 177
    :cond_e
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33391:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/usage/TranUsageStatsManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/usage/ITranUsageStatsManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/app/usage/ITranUsageStatsManagerAdapter;->unRegisterTranAppUsageStatsCallback()V

    return-void
.end method
