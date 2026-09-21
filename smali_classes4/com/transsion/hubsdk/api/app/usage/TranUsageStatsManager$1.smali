.class Lcom/transsion/hubsdk/api/app/usage/TranUsageStatsManager$1;
.super Lcom/transsion/hubsdk/api/util/TranSingletonUtils$Singleton;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/api/app/usage/TranUsageStatsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/hubsdk/api/util/TranSingletonUtils$Singleton<",
        "Lcom/transsion/hubsdk/api/app/usage/TranUsageStatsManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Lcom/transsion/hubsdk/api/util/TranSingletonUtils$Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected create()Lcom/transsion/hubsdk/api/app/usage/TranUsageStatsManager;
    .registers 1

    .line 49
    new-instance p0, Lcom/transsion/hubsdk/api/app/usage/TranUsageStatsManager;

    invoke-direct {p0}, Lcom/transsion/hubsdk/api/app/usage/TranUsageStatsManager;-><init>()V

    return-object p0
.end method

.method protected bridge synthetic create()Ljava/lang/Object;
    .registers 1

    .line 46
    invoke-virtual {p0}, Lcom/transsion/hubsdk/api/app/usage/TranUsageStatsManager$1;->create()Lcom/transsion/hubsdk/api/app/usage/TranUsageStatsManager;

    move-result-object p0

    return-object p0
.end method
