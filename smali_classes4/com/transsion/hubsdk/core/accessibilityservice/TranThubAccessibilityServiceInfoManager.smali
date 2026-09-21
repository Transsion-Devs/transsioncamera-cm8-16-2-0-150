.class public Lcom/transsion/hubsdk/core/accessibilityservice/TranThubAccessibilityServiceInfoManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/accessibilityservice/ITranAccessibilityServiceInfoManagerAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "TranThubAccessibilityServiceInfoManager"


# instance fields
.field private mService:Lcom/transsion/hubsdk/accessibilityservice/ITranAccessibilityServiceInfoManager;


# direct methods
.method public static synthetic $r8$lambda$FBl20QKxtYtNT9qkdT2olfYCBoA(Lcom/transsion/hubsdk/core/accessibilityservice/TranThubAccessibilityServiceInfoManager;)Ljava/lang/Object;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/accessibilityservice/TranThubAccessibilityServiceInfoManager;->lambda$getInstalledAccessibilityServiceList$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, "accessibility_service_info"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 41
    invoke-static {v0}, Lcom/transsion/hubsdk/accessibilityservice/ITranAccessibilityServiceInfoManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/accessibilityservice/ITranAccessibilityServiceInfoManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/accessibilityservice/TranThubAccessibilityServiceInfoManager;->mService:Lcom/transsion/hubsdk/accessibilityservice/ITranAccessibilityServiceInfoManager;

    return-void
.end method

.method private synthetic lambda$getInstalledAccessibilityServiceList$0()Ljava/lang/Object;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/transsion/hubsdk/core/accessibilityservice/TranThubAccessibilityServiceInfoManager;->mService:Lcom/transsion/hubsdk/accessibilityservice/ITranAccessibilityServiceInfoManager;

    if-eqz p0, :cond_9

    .line 63
    invoke-interface {p0}, Lcom/transsion/hubsdk/accessibilityservice/ITranAccessibilityServiceInfoManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public addAccessibilityService(Landroid/content/ComponentName;I)Z
    .registers 5

    .line 75
    iget-object p0, p0, Lcom/transsion/hubsdk/core/accessibilityservice/TranThubAccessibilityServiceInfoManager;->mService:Lcom/transsion/hubsdk/accessibilityservice/ITranAccessibilityServiceInfoManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 79
    :cond_6
    :try_start_6
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/accessibilityservice/ITranAccessibilityServiceInfoManager;->addAccessibilityService(Landroid/content/ComponentName;I)Z

    move-result p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    .line 81
    sget-object p1, Lcom/transsion/hubsdk/core/accessibilityservice/TranThubAccessibilityServiceInfoManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addAccessibilityService:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getCrashed(Landroid/accessibilityservice/AccessibilityServiceInfo;)Z
    .registers 5

    .line 47
    iget-object p0, p0, Lcom/transsion/hubsdk/core/accessibilityservice/TranThubAccessibilityServiceInfoManager;->mService:Lcom/transsion/hubsdk/accessibilityservice/ITranAccessibilityServiceInfoManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 51
    :cond_6
    :try_start_6
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/accessibilityservice/ITranAccessibilityServiceInfoManager;->getCrashed(Landroid/accessibilityservice/AccessibilityServiceInfo;)Z

    move-result p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    .line 53
    sget-object p1, Lcom/transsion/hubsdk/core/accessibilityservice/TranThubAccessibilityServiceInfoManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCrashed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getInstalledAccessibilityServiceList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation

    .line 61
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/accessibilityservice/TranThubAccessibilityServiceInfoManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/hubsdk/core/accessibilityservice/TranThubAccessibilityServiceInfoManager$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/hubsdk/core/accessibilityservice/TranThubAccessibilityServiceInfoManager;)V

    const-string p0, "accessibility_service_info"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 67
    sget-object v0, Lcom/transsion/hubsdk/core/accessibilityservice/TranThubAccessibilityServiceInfoManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getInstalledAccessibilityServiceList mAccessibilityServiceInfos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public removeAccessibilityService(Landroid/content/ComponentName;I)Z
    .registers 5

    .line 88
    iget-object p0, p0, Lcom/transsion/hubsdk/core/accessibilityservice/TranThubAccessibilityServiceInfoManager;->mService:Lcom/transsion/hubsdk/accessibilityservice/ITranAccessibilityServiceInfoManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 92
    :cond_6
    :try_start_6
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/accessibilityservice/ITranAccessibilityServiceInfoManager;->removeAccessibilityService(Landroid/content/ComponentName;I)Z

    move-result p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    .line 94
    sget-object p1, Lcom/transsion/hubsdk/core/accessibilityservice/TranThubAccessibilityServiceInfoManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeAccessibilityService:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method protected setService(Lcom/transsion/hubsdk/accessibilityservice/ITranAccessibilityServiceInfoManager;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 106
    iput-object p1, p0, Lcom/transsion/hubsdk/core/accessibilityservice/TranThubAccessibilityServiceInfoManager;->mService:Lcom/transsion/hubsdk/accessibilityservice/ITranAccessibilityServiceInfoManager;

    return-void
.end method
