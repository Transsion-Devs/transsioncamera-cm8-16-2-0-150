.class public Lcom/transsion/hubsdk/core/util/TranThubLatencyTracker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/util/ITranLatencyTrackerAdapter;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mTranLatencyTracker:Lcom/transsion/hubsdk/internal/util/TranLatencyTracker;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-static {}, Lcom/transsion/hubsdk/common/init/TranHubSdkManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/util/TranThubLatencyTracker;->mContext:Landroid/content/Context;

    .line 15
    new-instance v0, Lcom/transsion/hubsdk/internal/util/TranLatencyTracker;

    iget-object v1, p0, Lcom/transsion/hubsdk/core/util/TranThubLatencyTracker;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/hubsdk/internal/util/TranLatencyTracker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/util/TranThubLatencyTracker;->mTranLatencyTracker:Lcom/transsion/hubsdk/internal/util/TranLatencyTracker;

    return-void
.end method


# virtual methods
.method public getNameOfAction(I)Ljava/lang/String;
    .registers 2

    .line 20
    iget-object p0, p0, Lcom/transsion/hubsdk/core/util/TranThubLatencyTracker;->mTranLatencyTracker:Lcom/transsion/hubsdk/internal/util/TranLatencyTracker;

    if-eqz p0, :cond_9

    .line 21
    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/internal/util/TranLatencyTracker;->getNameOfAction(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 23
    :cond_9
    const-string p0, ""

    return-object p0
.end method

.method public logAction(II)V
    .registers 3

    .line 49
    iget-object p0, p0, Lcom/transsion/hubsdk/core/util/TranThubLatencyTracker;->mTranLatencyTracker:Lcom/transsion/hubsdk/internal/util/TranLatencyTracker;

    if-eqz p0, :cond_7

    .line 50
    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/internal/util/TranLatencyTracker;->logAction(II)V

    :cond_7
    return-void
.end method

.method public onActionCancel(I)V
    .registers 2

    .line 42
    iget-object p0, p0, Lcom/transsion/hubsdk/core/util/TranThubLatencyTracker;->mTranLatencyTracker:Lcom/transsion/hubsdk/internal/util/TranLatencyTracker;

    if-eqz p0, :cond_7

    .line 43
    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/internal/util/TranLatencyTracker;->onActionCancel(I)V

    :cond_7
    return-void
.end method

.method public onActionEnd(I)V
    .registers 2

    .line 35
    iget-object p0, p0, Lcom/transsion/hubsdk/core/util/TranThubLatencyTracker;->mTranLatencyTracker:Lcom/transsion/hubsdk/internal/util/TranLatencyTracker;

    if-eqz p0, :cond_7

    .line 36
    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/internal/util/TranLatencyTracker;->onActionEnd(I)V

    :cond_7
    return-void
.end method

.method public onActionStart(ILjava/lang/String;)V
    .registers 3

    .line 28
    iget-object p0, p0, Lcom/transsion/hubsdk/core/util/TranThubLatencyTracker;->mTranLatencyTracker:Lcom/transsion/hubsdk/internal/util/TranLatencyTracker;

    if-eqz p0, :cond_7

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/internal/util/TranLatencyTracker;->onActionStart(ILjava/lang/String;)V

    :cond_7
    return-void
.end method
