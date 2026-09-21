.class public Lcom/transsion/hubsdk/api/internal/jank/TranInteractionJankMonitor;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranInteractionJankMonitor"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/internal/jank/TranAospInteractionJankMonitor;

.field private mThubService:Lcom/transsion/hubsdk/core/internal/jank/TranThubInteractionJankMonitor;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public begin(Landroid/view/View;I)Z
    .registers 4

    if-eqz p1, :cond_d

    .line 35
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33381:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/internal/jank/TranInteractionJankMonitor;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/internal/jank/ITranInteractionJankMonitorAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/internal/jank/ITranInteractionJankMonitorAdapter;->begin(Landroid/view/View;I)Z

    move-result p0

    return p0

    .line 33
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "view is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public beginWithSurface(ILandroid/view/SurfaceControl;JLjava/lang/String;)Z
    .registers 7

    if-eqz p2, :cond_d

    .line 65
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33381:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/internal/jank/TranInteractionJankMonitor;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/internal/jank/ITranInteractionJankMonitorAdapter;

    move-result-object p0

    invoke-interface/range {p0 .. p5}, Lcom/transsion/hubsdk/interfaces/internal/jank/ITranInteractionJankMonitorAdapter;->beginWithSurface(ILandroid/view/SurfaceControl;JLjava/lang/String;)Z

    move-result p0

    return p0

    .line 63
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "surfaceControl is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public beginWithView(ILandroid/view/View;JLjava/lang/String;)Z
    .registers 7

    if-eqz p2, :cond_d

    .line 50
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33381:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/internal/jank/TranInteractionJankMonitor;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/internal/jank/ITranInteractionJankMonitorAdapter;

    move-result-object p0

    invoke-interface/range {p0 .. p5}, Lcom/transsion/hubsdk/interfaces/internal/jank/ITranInteractionJankMonitorAdapter;->beginWithView(ILandroid/view/View;JLjava/lang/String;)Z

    move-result p0

    return p0

    .line 48
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "view is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public cancel(II)Z
    .registers 4

    .line 84
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33381:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/internal/jank/TranInteractionJankMonitor;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/internal/jank/ITranInteractionJankMonitorAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/internal/jank/ITranInteractionJankMonitorAdapter;->cancel(II)Z

    move-result p0

    return p0
.end method

.method public end(I)Z
    .registers 3

    .line 74
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33381:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/internal/jank/TranInteractionJankMonitor;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/internal/jank/ITranInteractionJankMonitorAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/internal/jank/ITranInteractionJankMonitorAdapter;->end(I)Z

    move-result p0

    return p0
.end method

.method protected getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/internal/jank/ITranInteractionJankMonitorAdapter;
    .registers 3

    .line 18
    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 19
    iget-object p1, p0, Lcom/transsion/hubsdk/api/internal/jank/TranInteractionJankMonitor;->mThubService:Lcom/transsion/hubsdk/core/internal/jank/TranThubInteractionJankMonitor;

    if-nez p1, :cond_11

    new-instance p1, Lcom/transsion/hubsdk/core/internal/jank/TranThubInteractionJankMonitor;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/internal/jank/TranThubInteractionJankMonitor;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/internal/jank/TranInteractionJankMonitor;->mThubService:Lcom/transsion/hubsdk/core/internal/jank/TranThubInteractionJankMonitor;

    :cond_11
    return-object p1

    .line 21
    :cond_12
    sget-object p1, Lcom/transsion/hubsdk/api/internal/jank/TranInteractionJankMonitor;->TAG:Ljava/lang/String;

    const-string v0, "TranThubInteractionJankMonitor"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    iget-object p1, p0, Lcom/transsion/hubsdk/api/internal/jank/TranInteractionJankMonitor;->mAospService:Lcom/transsion/hubsdk/aosp/internal/jank/TranAospInteractionJankMonitor;

    if-nez p1, :cond_24

    new-instance p1, Lcom/transsion/hubsdk/aosp/internal/jank/TranAospInteractionJankMonitor;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/internal/jank/TranAospInteractionJankMonitor;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/internal/jank/TranInteractionJankMonitor;->mAospService:Lcom/transsion/hubsdk/aosp/internal/jank/TranAospInteractionJankMonitor;

    :cond_24
    return-object p1
.end method
