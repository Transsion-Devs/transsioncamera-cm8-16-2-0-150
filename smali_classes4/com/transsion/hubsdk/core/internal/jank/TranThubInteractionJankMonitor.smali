.class public Lcom/transsion/hubsdk/core/internal/jank/TranThubInteractionJankMonitor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/internal/jank/ITranInteractionJankMonitorAdapter;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mTranInteractionJankMonitor:Lcom/transsion/hubsdk/internal/jank/TranInteractionJankMonitor;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {}, Lcom/transsion/hubsdk/common/init/TranHubSdkManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/internal/jank/TranThubInteractionJankMonitor;->mContext:Landroid/content/Context;

    .line 17
    new-instance v0, Lcom/transsion/hubsdk/internal/jank/TranInteractionJankMonitor;

    invoke-direct {v0}, Lcom/transsion/hubsdk/internal/jank/TranInteractionJankMonitor;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/internal/jank/TranThubInteractionJankMonitor;->mTranInteractionJankMonitor:Lcom/transsion/hubsdk/internal/jank/TranInteractionJankMonitor;

    return-void
.end method


# virtual methods
.method public begin(Landroid/view/View;I)Z
    .registers 3

    .line 22
    iget-object p0, p0, Lcom/transsion/hubsdk/core/internal/jank/TranThubInteractionJankMonitor;->mTranInteractionJankMonitor:Lcom/transsion/hubsdk/internal/jank/TranInteractionJankMonitor;

    if-eqz p0, :cond_9

    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/internal/jank/TranInteractionJankMonitor;->begin(Landroid/view/View;I)Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public beginWithSurface(ILandroid/view/SurfaceControl;JLjava/lang/String;)Z
    .registers 13

    .line 38
    iget-object v0, p0, Lcom/transsion/hubsdk/core/internal/jank/TranThubInteractionJankMonitor;->mTranInteractionJankMonitor:Lcom/transsion/hubsdk/internal/jank/TranInteractionJankMonitor;

    if-eqz v0, :cond_11

    iget-object v2, p0, Lcom/transsion/hubsdk/core/internal/jank/TranThubInteractionJankMonitor;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_11

    move v1, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    .line 39
    invoke-virtual/range {v0 .. v6}, Lcom/transsion/hubsdk/internal/jank/TranInteractionJankMonitor;->beginWithSurface(ILandroid/content/Context;Landroid/view/SurfaceControl;JLjava/lang/String;)Z

    move-result p0

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method public beginWithView(ILandroid/view/View;JLjava/lang/String;)Z
    .registers 6

    .line 30
    iget-object p0, p0, Lcom/transsion/hubsdk/core/internal/jank/TranThubInteractionJankMonitor;->mTranInteractionJankMonitor:Lcom/transsion/hubsdk/internal/jank/TranInteractionJankMonitor;

    if-eqz p0, :cond_9

    .line 31
    invoke-virtual/range {p0 .. p5}, Lcom/transsion/hubsdk/internal/jank/TranInteractionJankMonitor;->beginWithView(ILandroid/view/View;JLjava/lang/String;)Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public cancel(II)Z
    .registers 3

    .line 54
    iget-object p0, p0, Lcom/transsion/hubsdk/core/internal/jank/TranThubInteractionJankMonitor;->mTranInteractionJankMonitor:Lcom/transsion/hubsdk/internal/jank/TranInteractionJankMonitor;

    if-eqz p0, :cond_9

    .line 55
    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/internal/jank/TranInteractionJankMonitor;->cancel(II)Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public end(I)Z
    .registers 2

    .line 46
    iget-object p0, p0, Lcom/transsion/hubsdk/core/internal/jank/TranThubInteractionJankMonitor;->mTranInteractionJankMonitor:Lcom/transsion/hubsdk/internal/jank/TranInteractionJankMonitor;

    if-eqz p0, :cond_9

    .line 47
    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/internal/jank/TranInteractionJankMonitor;->end(I)Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method
