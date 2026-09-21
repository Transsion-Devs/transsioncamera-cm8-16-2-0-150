.class public Lcom/transsion/hubsdk/api/os/TranServiceManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranServiceManager"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/os/TranAospServiceManager;

.field private mThubService:Lcom/transsion/hubsdk/core/os/TranThubServiceManager;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkService(Ljava/lang/String;)Landroid/os/IBinder;
    .registers 3

    .line 59
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/os/TranServiceManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranServiceManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/os/ITranServiceManagerAdapter;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method protected getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranServiceManagerAdapter;
    .registers 3

    .line 24
    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 25
    sget-object p1, Lcom/transsion/hubsdk/api/os/TranServiceManager;->TAG:Ljava/lang/String;

    const-string v0, "TranThubServiceManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    iget-object p1, p0, Lcom/transsion/hubsdk/api/os/TranServiceManager;->mThubService:Lcom/transsion/hubsdk/core/os/TranThubServiceManager;

    if-nez p1, :cond_18

    new-instance p1, Lcom/transsion/hubsdk/core/os/TranThubServiceManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/os/TranThubServiceManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/os/TranServiceManager;->mThubService:Lcom/transsion/hubsdk/core/os/TranThubServiceManager;

    :cond_18
    return-object p1

    .line 28
    :cond_19
    sget-object p1, Lcom/transsion/hubsdk/api/os/TranServiceManager;->TAG:Ljava/lang/String;

    const-string v0, "TranAospServiceManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    iget-object p1, p0, Lcom/transsion/hubsdk/api/os/TranServiceManager;->mAospService:Lcom/transsion/hubsdk/aosp/os/TranAospServiceManager;

    if-nez p1, :cond_2b

    new-instance p1, Lcom/transsion/hubsdk/aosp/os/TranAospServiceManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/os/TranAospServiceManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/os/TranServiceManager;->mAospService:Lcom/transsion/hubsdk/aosp/os/TranAospServiceManager;

    :cond_2b
    return-object p1
.end method

.method public listServices()[Ljava/lang/String;
    .registers 2

    .line 48
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33101:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/os/TranServiceManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranServiceManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranServiceManagerAdapter;->listServices()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
