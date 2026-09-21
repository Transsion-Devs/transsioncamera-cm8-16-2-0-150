.class public Lcom/transsion/hubsdk/core/app/usage/TranThubUsageStatsManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/app/usage/ITranUsageStatsManagerAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "TranThubUsageStatsManager"


# instance fields
.field private mITranAppUsageStatsCallback:Lcom/transsion/hubsdk/app/usage/ITranAppUsageStatsCallback;

.field private mService:Lcom/transsion/hubsdk/app/usage/ITranUsageStatsManager;

.field private mUsageStats:Lcom/transsion/hubsdk/app/usage/TranUsageStats;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string v0, "usagestats"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 51
    invoke-static {v0}, Lcom/transsion/hubsdk/app/usage/ITranUsageStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/app/usage/ITranUsageStatsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/app/usage/TranThubUsageStatsManager;->mService:Lcom/transsion/hubsdk/app/usage/ITranUsageStatsManager;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 38
    sget-object v0, Lcom/transsion/hubsdk/core/app/usage/TranThubUsageStatsManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getTranUsageStats()Lcom/transsion/hubsdk/app/usage/TranUsageStats;
    .registers 2

    .line 225
    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/usage/TranThubUsageStatsManager;->mUsageStats:Lcom/transsion/hubsdk/app/usage/TranUsageStats;

    if-nez v0, :cond_b

    .line 226
    new-instance v0, Lcom/transsion/hubsdk/app/usage/TranUsageStats;

    invoke-direct {v0}, Lcom/transsion/hubsdk/app/usage/TranUsageStats;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/app/usage/TranThubUsageStatsManager;->mUsageStats:Lcom/transsion/hubsdk/app/usage/TranUsageStats;

    .line 228
    :cond_b
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/usage/TranThubUsageStatsManager;->mUsageStats:Lcom/transsion/hubsdk/app/usage/TranUsageStats;

    return-object p0
.end method

.method private registerTranAppUsageStatsCallback(Lcom/transsion/hubsdk/app/usage/ITranAppUsageStatsCallback;)V
    .registers 6

    const/4 v0, 0x0

    .line 200
    :try_start_1
    sget-object v1, Lcom/transsion/hubsdk/core/app/usage/TranThubUsageStatsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerTranAppUsageStatsCallback callback = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v2, p0, Lcom/transsion/hubsdk/core/app/usage/TranThubUsageStatsManager;->mService:Lcom/transsion/hubsdk/app/usage/ITranUsageStatsManager;

    if-eqz v2, :cond_21

    .line 202
    invoke-interface {v2, p1}, Lcom/transsion/hubsdk/app/usage/ITranUsageStatsManager;->registerTranAppUsageStatsCallback(Lcom/transsion/hubsdk/app/usage/ITranAppUsageStatsCallback;)V

    return-void

    :catch_1f
    move-exception p1

    goto :goto_3b

    .line 205
    :cond_21
    const-string v2, "usagestats"

    invoke-static {v2}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 206
    invoke-static {v2}, Lcom/transsion/hubsdk/app/usage/ITranUsageStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/app/usage/ITranUsageStatsManager;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/hubsdk/core/app/usage/TranThubUsageStatsManager;->mService:Lcom/transsion/hubsdk/app/usage/ITranUsageStatsManager;

    if-eqz v2, :cond_33

    .line 208
    invoke-interface {v2, p1}, Lcom/transsion/hubsdk/app/usage/ITranUsageStatsManager;->registerTranAppUsageStatsCallback(Lcom/transsion/hubsdk/app/usage/ITranAppUsageStatsCallback;)V

    return-void

    .line 210
    :cond_33
    iput-object v0, p0, Lcom/transsion/hubsdk/core/app/usage/TranThubUsageStatsManager;->mITranAppUsageStatsCallback:Lcom/transsion/hubsdk/app/usage/ITranAppUsageStatsCallback;

    .line 211
    const-string p1, "registerTranAppUsageStatsCallback fail,  reason : mService is null !!!"

    invoke-static {v1, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_3a} :catch_1f

    return-void

    .line 216
    :goto_3b
    sget-object v1, Lcom/transsion/hubsdk/core/app/usage/TranThubUsageStatsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerTranAppUsageStatsCallback fail re = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iput-object v0, p0, Lcom/transsion/hubsdk/core/app/usage/TranThubUsageStatsManager;->mITranAppUsageStatsCallback:Lcom/transsion/hubsdk/app/usage/ITranAppUsageStatsCallback;

    .line 220
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public getAppLaunchCount(Landroid/app/usage/UsageStats;)I
    .registers 2

    .line 72
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/app/usage/TranThubUsageStatsManager;->getTranUsageStats()Lcom/transsion/hubsdk/app/usage/TranUsageStats;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/app/usage/TranUsageStats;->getAppLaunchCount(Landroid/app/usage/UsageStats;)I

    move-result p0

    return p0
.end method

.method public getAppUsageWithtime(J)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/api/app/usage/TranAppUsage;",
            ">;"
        }
    .end annotation

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/usage/TranThubUsageStatsManager;->mService:Lcom/transsion/hubsdk/app/usage/ITranUsageStatsManager;

    if-eqz v0, :cond_73

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 92
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/usage/TranThubUsageStatsManager;->mService:Lcom/transsion/hubsdk/app/usage/ITranUsageStatsManager;

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/usage/ITranUsageStatsManager;->getAppUsageWithtime(J)Lcom/transsion/hubsdk/content/pm/TranParceledListSlice;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/hubsdk/content/pm/TranParceledListSlice;->getList()Ljava/util/List;

    move-result-object p0

    .line 93
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_17
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/hubsdk/app/usage/TranAppUsage;

    .line 94
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 95
    invoke-virtual {p1}, Lcom/transsion/hubsdk/app/usage/TranAppUsage;->getUidConsumer()Ljava/util/List;

    move-result-object v1

    .line 96
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_30
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/hubsdk/app/usage/TranUidConsumer;

    .line 97
    new-instance v3, Lcom/transsion/hubsdk/api/app/usage/TranUidConsumer;

    iget v4, v2, Lcom/transsion/hubsdk/app/usage/TranUidConsumer;->mUid:I

    iget v5, v2, Lcom/transsion/hubsdk/app/usage/TranUidConsumer;->mForeground:I

    iget v6, v2, Lcom/transsion/hubsdk/app/usage/TranUidConsumer;->mBackground:I

    iget-wide v7, v2, Lcom/transsion/hubsdk/app/usage/TranUidConsumer;->mConsumer:D

    invoke-direct/range {v3 .. v8}, Lcom/transsion/hubsdk/api/app/usage/TranUidConsumer;-><init>(IIID)V

    .line 99
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_30

    .line 101
    :cond_4d
    new-instance v1, Lcom/transsion/hubsdk/api/app/usage/TranAppUsage;

    iget-wide v2, p1, Lcom/transsion/hubsdk/app/usage/TranAppUsage;->mTimeStamp:J

    iget p1, p1, Lcom/transsion/hubsdk/app/usage/TranAppUsage;->mIsReset:I

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/transsion/hubsdk/api/app/usage/TranAppUsage;-><init>(JILjava/util/List;)V

    .line 102
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_59
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_59} :catch_5b

    goto :goto_17

    :cond_5a
    return-object v0

    :catch_5b
    move-exception v0

    move-object p0, v0

    .line 107
    sget-object p1, Lcom/transsion/hubsdk/core/app/usage/TranThubUsageStatsManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getAppUsageWithtime failed: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_73
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method public getBatteryLevelWithTime(J)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/api/app/usage/TranBatteryUsage;",
            ">;"
        }
    .end annotation

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/usage/TranThubUsageStatsManager;->mService:Lcom/transsion/hubsdk/app/usage/ITranUsageStatsManager;

    if-eqz v0, :cond_4a

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 117
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/usage/TranThubUsageStatsManager;->mService:Lcom/transsion/hubsdk/app/usage/ITranUsageStatsManager;

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/usage/ITranUsageStatsManager;->getBatteryLevelWithTime(J)Lcom/transsion/hubsdk/content/pm/TranParceledListSlice;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/hubsdk/content/pm/TranParceledListSlice;->getList()Ljava/util/List;

    move-result-object p0

    .line 118
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_17
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_32

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/hubsdk/app/usage/TranBatteryUsage;

    .line 119
    new-instance p2, Lcom/transsion/hubsdk/api/app/usage/TranBatteryUsage;

    iget-wide v1, p1, Lcom/transsion/hubsdk/app/usage/TranBatteryUsage;->mTimeStamp:J

    iget v3, p1, Lcom/transsion/hubsdk/app/usage/TranBatteryUsage;->mBatteryLevel:I

    iget p1, p1, Lcom/transsion/hubsdk/app/usage/TranBatteryUsage;->mScreenOnTime:I

    invoke-direct {p2, v1, v2, v3, p1}, Lcom/transsion/hubsdk/api/app/usage/TranBatteryUsage;-><init>(JII)V

    .line 120
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_31} :catch_33

    goto :goto_17

    :cond_32
    return-object v0

    :catch_33
    move-exception p0

    .line 125
    sget-object p1, Lcom/transsion/hubsdk/core/app/usage/TranThubUsageStatsManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getAppUsageWithtime failed: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_4a
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method public getLastFullChargeTime()J
    .registers 4

    .line 134
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/usage/TranThubUsageStatsManager;->mService:Lcom/transsion/hubsdk/app/usage/ITranUsageStatsManager;

    if-eqz p0, :cond_20

    .line 135
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/usage/ITranUsageStatsManager;->getLastFullChargeTime()J

    move-result-wide v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-wide v0

    :catch_9
    move-exception p0

    .line 138
    sget-object v0, Lcom/transsion/hubsdk/core/app/usage/TranThubUsageStatsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLastFullChargeTime failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getUidPackageMap()Landroid/os/Bundle;
    .registers 4

    .line 148
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/usage/TranThubUsageStatsManager;->mService:Lcom/transsion/hubsdk/app/usage/ITranUsageStatsManager;

    if-eqz p0, :cond_20

    .line 149
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/usage/ITranUsageStatsManager;->getUidPackageMap()Landroid/os/Bundle;

    move-result-object p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p0

    .line 152
    sget-object v0, Lcom/transsion/hubsdk/core/app/usage/TranThubUsageStatsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUidPackageMap failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 p0, 0x0

    return-object p0
.end method

.method public queryEventsForPackageForUser(JJILjava/lang/String;Ljava/lang/String;)Landroid/app/usage/UsageEvents;
    .registers 10

    .line 57
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/usage/TranThubUsageStatsManager;->mService:Lcom/transsion/hubsdk/app/usage/ITranUsageStatsManager;

    const/4 v1, 0x0

    if-nez p0, :cond_6

    return-object v1

    .line 62
    :cond_6
    :try_start_6
    invoke-interface/range {p0 .. p7}, Lcom/transsion/hubsdk/app/usage/ITranUsageStatsManager;->queryEventsForPackageForUser(JJILjava/lang/String;Ljava/lang/String;)Landroid/app/usage/UsageEvents;

    move-result-object p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception v0

    move-object p0, v0

    .line 64
    sget-object p1, Lcom/transsion/hubsdk/core/app/usage/TranThubUsageStatsManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "queryEventsForPackageForUser e = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public queryEventsForUser(JJILjava/lang/String;)Landroid/app/usage/UsageEvents;
    .registers 8

    .line 78
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/usage/TranThubUsageStatsManager;->mService:Lcom/transsion/hubsdk/app/usage/ITranUsageStatsManager;

    if-eqz p0, :cond_21

    .line 79
    invoke-interface/range {p0 .. p6}, Lcom/transsion/hubsdk/app/usage/ITranUsageStatsManager;->queryEventsForUser(JJILjava/lang/String;)Landroid/app/usage/UsageEvents;

    move-result-object p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception v0

    move-object p0, v0

    .line 82
    sget-object p1, Lcom/transsion/hubsdk/core/app/usage/TranThubUsageStatsManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "queryEventsForUser failed: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    const/4 p0, 0x0

    return-object p0
.end method

.method public registerTranAppUsageStatsCallback(Lcom/transsion/hubsdk/api/app/usage/TranUsageStatsManager$ITranAppUsageStatsListener;)V
    .registers 3

    .line 162
    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/usage/TranThubUsageStatsManager;->mITranAppUsageStatsCallback:Lcom/transsion/hubsdk/app/usage/ITranAppUsageStatsCallback;

    if-eqz v0, :cond_c

    .line 163
    sget-object p0, Lcom/transsion/hubsdk/core/app/usage/TranThubUsageStatsManager;->TAG:Ljava/lang/String;

    const-string p1, "registerTranAppUsageStatsCallback fail,  reason : repeat register !!! "

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 166
    :cond_c
    new-instance v0, Lcom/transsion/hubsdk/core/app/usage/TranThubUsageStatsManager$1;

    invoke-direct {v0, p0, p1}, Lcom/transsion/hubsdk/core/app/usage/TranThubUsageStatsManager$1;-><init>(Lcom/transsion/hubsdk/core/app/usage/TranThubUsageStatsManager;Lcom/transsion/hubsdk/api/app/usage/TranUsageStatsManager$ITranAppUsageStatsListener;)V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/app/usage/TranThubUsageStatsManager;->mITranAppUsageStatsCallback:Lcom/transsion/hubsdk/app/usage/ITranAppUsageStatsCallback;

    .line 179
    invoke-direct {p0, v0}, Lcom/transsion/hubsdk/core/app/usage/TranThubUsageStatsManager;->registerTranAppUsageStatsCallback(Lcom/transsion/hubsdk/app/usage/ITranAppUsageStatsCallback;)V

    return-void
.end method

.method protected setService(Lcom/transsion/hubsdk/app/usage/ITranUsageStatsManager;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 234
    iput-object p1, p0, Lcom/transsion/hubsdk/core/app/usage/TranThubUsageStatsManager;->mService:Lcom/transsion/hubsdk/app/usage/ITranUsageStatsManager;

    return-void
.end method

.method public unRegisterTranAppUsageStatsCallback()V
    .registers 4

    .line 185
    :try_start_0
    sget-object v0, Lcom/transsion/hubsdk/core/app/usage/TranThubUsageStatsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unRegisterTranAppUsageStatsCallback pid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/usage/TranThubUsageStatsManager;->mService:Lcom/transsion/hubsdk/app/usage/ITranUsageStatsManager;

    if-eqz v0, :cond_21

    .line 187
    invoke-interface {v0}, Lcom/transsion/hubsdk/app/usage/ITranUsageStatsManager;->unRegisterTranAppUsageStatsCallback()V

    :cond_21
    const/4 v0, 0x0

    .line 190
    iput-object v0, p0, Lcom/transsion/hubsdk/core/app/usage/TranThubUsageStatsManager;->mITranAppUsageStatsCallback:Lcom/transsion/hubsdk/app/usage/ITranAppUsageStatsCallback;
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_24} :catch_25

    return-void

    :catch_25
    move-exception p0

    .line 193
    sget-object v0, Lcom/transsion/hubsdk/core/app/usage/TranThubUsageStatsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unRegisterTranAppUsageStatsCallback fail re = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method
