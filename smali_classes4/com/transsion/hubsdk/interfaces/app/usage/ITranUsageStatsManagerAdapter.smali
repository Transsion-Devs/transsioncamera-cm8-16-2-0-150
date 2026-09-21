.class public interface abstract Lcom/transsion/hubsdk/interfaces/app/usage/ITranUsageStatsManagerAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getAppLaunchCount(Landroid/app/usage/UsageStats;)I
.end method

.method public abstract getAppUsageWithtime(J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/api/app/usage/TranAppUsage;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBatteryLevelWithTime(J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/api/app/usage/TranBatteryUsage;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLastFullChargeTime()J
.end method

.method public abstract getUidPackageMap()Landroid/os/Bundle;
.end method

.method public abstract queryEventsForPackageForUser(JJILjava/lang/String;Ljava/lang/String;)Landroid/app/usage/UsageEvents;
.end method

.method public abstract queryEventsForUser(JJILjava/lang/String;)Landroid/app/usage/UsageEvents;
.end method

.method public abstract registerTranAppUsageStatsCallback(Lcom/transsion/hubsdk/api/app/usage/TranUsageStatsManager$ITranAppUsageStatsListener;)V
.end method

.method public abstract unRegisterTranAppUsageStatsCallback()V
.end method
