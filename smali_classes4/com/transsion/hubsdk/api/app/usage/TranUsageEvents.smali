.class public Lcom/transsion/hubsdk/api/app/usage/TranUsageEvents;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranUsageEvents"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/app/usage/TranAospUsageEvents;

.field private mThubService:Lcom/transsion/hubsdk/core/app/usage/TranThubUsageEvents;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNotificationChannelId(Landroid/app/usage/UsageEvents$Event;)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_d

    .line 36
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33311:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/usage/TranUsageEvents;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/usage/ITranUsageEvents;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/usage/ITranUsageEvents;->getNotificationChannelId(Landroid/app/usage/UsageEvents$Event;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 34
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "event cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/usage/ITranUsageEvents;
    .registers 3

    .line 17
    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 18
    sget-object p1, Lcom/transsion/hubsdk/api/app/usage/TranUsageEvents;->TAG:Ljava/lang/String;

    const-string v0, "TranThubUsageEvents"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    iget-object p1, p0, Lcom/transsion/hubsdk/api/app/usage/TranUsageEvents;->mThubService:Lcom/transsion/hubsdk/core/app/usage/TranThubUsageEvents;

    if-nez p1, :cond_18

    new-instance p1, Lcom/transsion/hubsdk/core/app/usage/TranThubUsageEvents;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/app/usage/TranThubUsageEvents;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/app/usage/TranUsageEvents;->mThubService:Lcom/transsion/hubsdk/core/app/usage/TranThubUsageEvents;

    :cond_18
    return-object p1

    .line 21
    :cond_19
    sget-object p1, Lcom/transsion/hubsdk/api/app/usage/TranUsageEvents;->TAG:Ljava/lang/String;

    const-string v0, "TranAospUsageEvents"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    iget-object p1, p0, Lcom/transsion/hubsdk/api/app/usage/TranUsageEvents;->mAospService:Lcom/transsion/hubsdk/aosp/app/usage/TranAospUsageEvents;

    if-nez p1, :cond_2b

    new-instance p1, Lcom/transsion/hubsdk/aosp/app/usage/TranAospUsageEvents;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/app/usage/TranAospUsageEvents;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/app/usage/TranUsageEvents;->mAospService:Lcom/transsion/hubsdk/aosp/app/usage/TranAospUsageEvents;

    :cond_2b
    return-object p1
.end method
