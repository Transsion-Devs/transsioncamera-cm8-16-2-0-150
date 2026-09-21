.class public Lcom/transsion/hubsdk/api/view/TranSurfaceControlViewHost;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranSurfaceControlViewHost"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/view/TranAospSurfaceControlViewHost;

.field private mThubService:Lcom/transsion/hubsdk/core/view/TranThubSurfaceControlViewHost;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranSurfaceControlViewHostAdapter;
    .registers 3

    .line 21
    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 22
    sget-object p1, Lcom/transsion/hubsdk/api/view/TranSurfaceControlViewHost;->TAG:Ljava/lang/String;

    const-string v0, "TranThubSurfaceControlViewHost"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    iget-object p1, p0, Lcom/transsion/hubsdk/api/view/TranSurfaceControlViewHost;->mThubService:Lcom/transsion/hubsdk/core/view/TranThubSurfaceControlViewHost;

    if-nez p1, :cond_18

    new-instance p1, Lcom/transsion/hubsdk/core/view/TranThubSurfaceControlViewHost;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/view/TranThubSurfaceControlViewHost;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/view/TranSurfaceControlViewHost;->mThubService:Lcom/transsion/hubsdk/core/view/TranThubSurfaceControlViewHost;

    :cond_18
    return-object p1

    .line 25
    :cond_19
    sget-object p1, Lcom/transsion/hubsdk/api/view/TranSurfaceControlViewHost;->TAG:Ljava/lang/String;

    const-string v0, "TranAospSurfaceControlViewHost"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    iget-object p1, p0, Lcom/transsion/hubsdk/api/view/TranSurfaceControlViewHost;->mAospService:Lcom/transsion/hubsdk/aosp/view/TranAospSurfaceControlViewHost;

    if-nez p1, :cond_2b

    new-instance p1, Lcom/transsion/hubsdk/aosp/view/TranAospSurfaceControlViewHost;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/view/TranAospSurfaceControlViewHost;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/view/TranSurfaceControlViewHost;->mAospService:Lcom/transsion/hubsdk/aosp/view/TranAospSurfaceControlViewHost;

    :cond_2b
    return-object p1
.end method

.method public relayout(Landroid/view/SurfaceControlViewHost;Landroid/view/WindowManager$LayoutParams;)V
    .registers 4

    if-eqz p1, :cond_e

    if-eqz p2, :cond_e

    .line 47
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33441:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranSurfaceControlViewHost;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranSurfaceControlViewHostAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/view/ITranSurfaceControlViewHostAdapter;->relayout(Landroid/view/SurfaceControlViewHost;Landroid/view/WindowManager$LayoutParams;)V

    return-void

    .line 45
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "name or parent should not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setView(Landroid/view/SurfaceControlViewHost;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V
    .registers 5

    if-eqz p1, :cond_10

    if-eqz p2, :cond_10

    if-eqz p3, :cond_10

    .line 40
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33441:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranSurfaceControlViewHost;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranSurfaceControlViewHostAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/view/ITranSurfaceControlViewHostAdapter;->setView(Landroid/view/SurfaceControlViewHost;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    return-void

    .line 38
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "name or parent should not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
