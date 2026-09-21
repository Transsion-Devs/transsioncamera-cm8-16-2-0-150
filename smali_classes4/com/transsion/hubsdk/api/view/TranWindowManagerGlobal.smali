.class public Lcom/transsion/hubsdk/api/view/TranWindowManagerGlobal;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranWindowManagerGlobal"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/view/TranAospWindowManagerGlobal;

.field private mThubService:Lcom/transsion/hubsdk/core/view/TranThubWindowManagerGlobal;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public closeAll(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    .line 36
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranWindowManagerGlobal;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranWindowManagerGlobalAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/view/ITranWindowManagerGlobalAdapter;->closeAll(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranWindowManagerGlobalAdapter;
    .registers 3

    .line 40
    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 41
    sget-object p1, Lcom/transsion/hubsdk/api/view/TranWindowManagerGlobal;->TAG:Ljava/lang/String;

    const-string v0, "TranThubToastPresenter"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object p1, p0, Lcom/transsion/hubsdk/api/view/TranWindowManagerGlobal;->mThubService:Lcom/transsion/hubsdk/core/view/TranThubWindowManagerGlobal;

    if-nez p1, :cond_18

    new-instance p1, Lcom/transsion/hubsdk/core/view/TranThubWindowManagerGlobal;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/view/TranThubWindowManagerGlobal;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/view/TranWindowManagerGlobal;->mThubService:Lcom/transsion/hubsdk/core/view/TranThubWindowManagerGlobal;

    :cond_18
    return-object p1

    .line 44
    :cond_19
    sget-object p1, Lcom/transsion/hubsdk/api/view/TranWindowManagerGlobal;->TAG:Ljava/lang/String;

    const-string v0, "TranAospToastPresenter"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object p1, p0, Lcom/transsion/hubsdk/api/view/TranWindowManagerGlobal;->mAospService:Lcom/transsion/hubsdk/aosp/view/TranAospWindowManagerGlobal;

    if-nez p1, :cond_2b

    new-instance p1, Lcom/transsion/hubsdk/aosp/view/TranAospWindowManagerGlobal;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/view/TranAospWindowManagerGlobal;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/view/TranWindowManagerGlobal;->mAospService:Lcom/transsion/hubsdk/aosp/view/TranAospWindowManagerGlobal;

    :cond_2b
    return-object p1
.end method
