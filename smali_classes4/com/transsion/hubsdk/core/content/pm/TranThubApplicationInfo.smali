.class public Lcom/transsion/hubsdk/core/content/pm/TranThubApplicationInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/content/pm/ITranApplicationInfoManagerAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "TranThubApplicationInfo"


# instance fields
.field private mService:Lcom/transsion/hubsdk/content/pm/ITranApplicationInfoManager;

.field private mTranApplicationInfo:Lcom/transsion/hubsdk/content/pm/TranApplicationInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubApplicationInfo;->mService:Lcom/transsion/hubsdk/content/pm/ITranApplicationInfoManager;

    .line 31
    const-string v0, "application_info"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 32
    invoke-static {v0}, Lcom/transsion/hubsdk/content/pm/ITranApplicationInfoManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/content/pm/ITranApplicationInfoManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubApplicationInfo;->mService:Lcom/transsion/hubsdk/content/pm/ITranApplicationInfoManager;

    return-void
.end method

.method private getTranApplicationInfo()Lcom/transsion/hubsdk/content/pm/TranApplicationInfo;
    .registers 3

    .line 98
    iget-object v0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubApplicationInfo;->mTranApplicationInfo:Lcom/transsion/hubsdk/content/pm/TranApplicationInfo;

    if-nez v0, :cond_f

    .line 99
    new-instance v0, Lcom/transsion/hubsdk/content/pm/TranApplicationInfo;

    invoke-static {}, Lcom/transsion/hubsdk/common/init/TranHubSdkManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/hubsdk/content/pm/TranApplicationInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubApplicationInfo;->mTranApplicationInfo:Lcom/transsion/hubsdk/content/pm/TranApplicationInfo;

    .line 101
    :cond_f
    iget-object p0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubApplicationInfo;->mTranApplicationInfo:Lcom/transsion/hubsdk/content/pm/TranApplicationInfo;

    return-object p0
.end method


# virtual methods
.method public getIconRes(Landroid/content/pm/ApplicationInfo;)I
    .registers 2

    .line 111
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/content/pm/TranThubApplicationInfo;->getTranApplicationInfo()Lcom/transsion/hubsdk/content/pm/TranApplicationInfo;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/content/pm/TranApplicationInfo;->getIconRes(Landroid/content/pm/ApplicationInfo;)I

    move-result p0

    return p0
.end method

.method public isDirectBootAware(Landroid/content/pm/ApplicationInfo;)Z
    .registers 2

    .line 121
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/content/pm/TranThubApplicationInfo;->getTranApplicationInfo()Lcom/transsion/hubsdk/content/pm/TranApplicationInfo;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/content/pm/TranApplicationInfo;->isDirectBootAware(Landroid/content/pm/ApplicationInfo;)Z

    move-result p0

    return p0
.end method

.method public isInstantApp(Landroid/content/pm/ApplicationInfo;)Z
    .registers 2

    .line 94
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/content/pm/TranThubApplicationInfo;->getTranApplicationInfo()Lcom/transsion/hubsdk/content/pm/TranApplicationInfo;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/content/pm/TranApplicationInfo;->isInstantApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result p0

    return p0
.end method

.method public isPartiallyDirectBootAware(Landroid/content/pm/ApplicationInfo;)Z
    .registers 2

    .line 126
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/content/pm/TranThubApplicationInfo;->getTranApplicationInfo()Lcom/transsion/hubsdk/content/pm/TranApplicationInfo;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/content/pm/TranApplicationInfo;->isPartiallyDirectBootAware(Landroid/content/pm/ApplicationInfo;)Z

    move-result p0

    return p0
.end method

.method public isPrivilegedApp(Landroid/content/pm/ApplicationInfo;)Z
    .registers 2

    .line 116
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/content/pm/TranThubApplicationInfo;->getTranApplicationInfo()Lcom/transsion/hubsdk/content/pm/TranApplicationInfo;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/content/pm/TranApplicationInfo;->isPrivilegedApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result p0

    return p0
.end method

.method public isProduct(Landroid/content/pm/ApplicationInfo;)Z
    .registers 5

    const/4 v0, 0x0

    .line 39
    :try_start_1
    iget-object p0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubApplicationInfo;->mService:Lcom/transsion/hubsdk/content/pm/ITranApplicationInfoManager;

    if-eqz p0, :cond_21

    .line 40
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/content/pm/ITranApplicationInfoManager;->isProduct(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_9} :catch_a

    goto :goto_21

    :catch_a
    move-exception p0

    .line 43
    sget-object p1, Lcom/transsion/hubsdk/core/content/pm/TranThubApplicationInfo;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isProduct exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_21
    :goto_21
    sget-object p0, Lcom/transsion/hubsdk/core/content/pm/TranThubApplicationInfo;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isProduct res:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isSignedWithPlatformKey(Landroid/content/pm/ApplicationInfo;)Z
    .registers 5

    const/4 v0, 0x0

    .line 53
    :try_start_1
    iget-object p0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubApplicationInfo;->mService:Lcom/transsion/hubsdk/content/pm/ITranApplicationInfoManager;

    if-eqz p0, :cond_21

    .line 54
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/content/pm/ITranApplicationInfoManager;->isSignedWithPlatformKey(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_9} :catch_a

    goto :goto_21

    :catch_a
    move-exception p0

    .line 57
    sget-object p1, Lcom/transsion/hubsdk/core/content/pm/TranThubApplicationInfo;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSignedWithPlatformKey exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_21
    :goto_21
    sget-object p0, Lcom/transsion/hubsdk/core/content/pm/TranThubApplicationInfo;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSignedWithPlatformKey res:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isSystemApp(Landroid/content/pm/ApplicationInfo;)Z
    .registers 5

    const/4 v0, 0x0

    .line 67
    :try_start_1
    iget-object p0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubApplicationInfo;->mService:Lcom/transsion/hubsdk/content/pm/ITranApplicationInfoManager;

    if-eqz p0, :cond_21

    .line 68
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/content/pm/ITranApplicationInfoManager;->isSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_9} :catch_a

    goto :goto_21

    :catch_a
    move-exception p0

    .line 71
    sget-object p1, Lcom/transsion/hubsdk/core/content/pm/TranThubApplicationInfo;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSystemApp exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_21
    :goto_21
    sget-object p0, Lcom/transsion/hubsdk/core/content/pm/TranThubApplicationInfo;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSystemApp res:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isSystemExt(Landroid/content/pm/ApplicationInfo;)Z
    .registers 5

    const/4 v0, 0x0

    .line 81
    :try_start_1
    iget-object p0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubApplicationInfo;->mService:Lcom/transsion/hubsdk/content/pm/ITranApplicationInfoManager;

    if-eqz p0, :cond_21

    .line 82
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/content/pm/ITranApplicationInfoManager;->isSystemExt(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_9} :catch_a

    goto :goto_21

    :catch_a
    move-exception p0

    .line 85
    sget-object p1, Lcom/transsion/hubsdk/core/content/pm/TranThubApplicationInfo;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSystemExt exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_21
    :goto_21
    sget-object p0, Lcom/transsion/hubsdk/core/content/pm/TranThubApplicationInfo;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSystemExt res:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method protected setService(Lcom/transsion/hubsdk/content/pm/ITranApplicationInfoManager;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 107
    iput-object p1, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubApplicationInfo;->mService:Lcom/transsion/hubsdk/content/pm/ITranApplicationInfoManager;

    return-void
.end method
