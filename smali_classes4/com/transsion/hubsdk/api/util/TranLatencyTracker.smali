.class public Lcom/transsion/hubsdk/api/util/TranLatencyTracker;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranLatencyTracker"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/util/TranAospLatencyTracker;

.field private mThubService:Lcom/transsion/hubsdk/core/util/TranThubLatencyTracker;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNameOfAction(I)Ljava/lang/String;
    .registers 3

    .line 28
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33381:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/util/TranLatencyTracker;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/util/ITranLatencyTrackerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/util/ITranLatencyTrackerAdapter;->getNameOfAction(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/util/ITranLatencyTrackerAdapter;
    .registers 3

    .line 15
    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 16
    iget-object p1, p0, Lcom/transsion/hubsdk/api/util/TranLatencyTracker;->mThubService:Lcom/transsion/hubsdk/core/util/TranThubLatencyTracker;

    if-nez p1, :cond_11

    new-instance p1, Lcom/transsion/hubsdk/core/util/TranThubLatencyTracker;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/util/TranThubLatencyTracker;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/util/TranLatencyTracker;->mThubService:Lcom/transsion/hubsdk/core/util/TranThubLatencyTracker;

    :cond_11
    return-object p1

    .line 18
    :cond_12
    const-string p1, "TranLatencyTracker"

    const-string v0, "TranAospLatencyTracker"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    iget-object p1, p0, Lcom/transsion/hubsdk/api/util/TranLatencyTracker;->mAospService:Lcom/transsion/hubsdk/aosp/util/TranAospLatencyTracker;

    if-nez p1, :cond_24

    new-instance p1, Lcom/transsion/hubsdk/aosp/util/TranAospLatencyTracker;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/util/TranAospLatencyTracker;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/util/TranLatencyTracker;->mAospService:Lcom/transsion/hubsdk/aosp/util/TranAospLatencyTracker;

    :cond_24
    return-object p1
.end method

.method public logAction(II)V
    .registers 4

    .line 66
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33381:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/util/TranLatencyTracker;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/util/ITranLatencyTrackerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/util/ITranLatencyTrackerAdapter;->logAction(II)V

    return-void
.end method

.method public onActionCancel(I)V
    .registers 3

    .line 57
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33381:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/util/TranLatencyTracker;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/util/ITranLatencyTrackerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/util/ITranLatencyTrackerAdapter;->onActionCancel(I)V

    return-void
.end method

.method public onActionEnd(I)V
    .registers 3

    .line 49
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33381:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/util/TranLatencyTracker;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/util/ITranLatencyTrackerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/util/ITranLatencyTrackerAdapter;->onActionEnd(I)V

    return-void
.end method

.method public onActionStart(ILjava/lang/String;)V
    .registers 4

    if-eqz p2, :cond_c

    .line 40
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33381:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/util/TranLatencyTracker;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/util/ITranLatencyTrackerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/util/ITranLatencyTrackerAdapter;->onActionStart(ILjava/lang/String;)V

    return-void

    .line 38
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "tag is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
