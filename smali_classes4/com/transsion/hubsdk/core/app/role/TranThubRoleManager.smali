.class public Lcom/transsion/hubsdk/core/app/role/TranThubRoleManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/app/role/ITranRoleManagerAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/core/app/role/TranThubRoleManager$TranThubRemoteCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TranThubRoleManager"


# instance fields
.field private mService:Lcom/transsion/hubsdk/app/role/ITranRoleManager;

.field private mTranRoleControllerManager:Lcom/transsion/hubsdk/app/role/TranRoleControllerManager;


# direct methods
.method public static synthetic $r8$lambda$8l6pvBHSubH65gXO4BC4EXKoMPQ(Lcom/transsion/hubsdk/core/app/role/TranThubRoleManager;Ljava/lang/String;Ljava/lang/String;IILcom/transsion/hubsdk/aosp/os/TranAospRemoteCallbackExt$ITranRemoteCallback;)Ljava/lang/Object;
    .registers 6

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/transsion/hubsdk/core/app/role/TranThubRoleManager;->lambda$addRoleHolderAsUserExt$1(Ljava/lang/String;Ljava/lang/String;IILcom/transsion/hubsdk/aosp/os/TranAospRemoteCallbackExt$ITranRemoteCallback;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$dF9804VKrpe_wLimNqrKYWQ5QtI(Lcom/transsion/hubsdk/core/app/role/TranThubRoleManager;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/Object;
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/core/app/role/TranThubRoleManager;->lambda$addRoleHolderAsUser$0(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, "role"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 36
    invoke-static {v0}, Lcom/transsion/hubsdk/app/role/ITranRoleManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/app/role/ITranRoleManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/app/role/TranThubRoleManager;->mService:Lcom/transsion/hubsdk/app/role/ITranRoleManager;

    return-void
.end method

.method private getTranRoleControllerManager()Lcom/transsion/hubsdk/app/role/TranRoleControllerManager;
    .registers 3

    .line 113
    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/role/TranThubRoleManager;->mTranRoleControllerManager:Lcom/transsion/hubsdk/app/role/TranRoleControllerManager;

    if-nez v0, :cond_f

    .line 114
    new-instance v0, Lcom/transsion/hubsdk/app/role/TranRoleControllerManager;

    invoke-static {}, Lcom/transsion/hubsdk/common/init/TranHubSdkManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/hubsdk/app/role/TranRoleControllerManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/app/role/TranThubRoleManager;->mTranRoleControllerManager:Lcom/transsion/hubsdk/app/role/TranRoleControllerManager;

    .line 116
    :cond_f
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/role/TranThubRoleManager;->mTranRoleControllerManager:Lcom/transsion/hubsdk/app/role/TranRoleControllerManager;

    return-object p0
.end method

.method private synthetic lambda$addRoleHolderAsUser$0(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/Object;
    .registers 5

    .line 51
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/role/TranThubRoleManager;->mService:Lcom/transsion/hubsdk/app/role/ITranRoleManager;

    if-eqz p0, :cond_7

    .line 52
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/app/role/ITranRoleManager;->addRoleHolderAsUser(Ljava/lang/String;Ljava/lang/String;II)V

    :cond_7
    const/4 p0, 0x0

    .line 54
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$addRoleHolderAsUserExt$1(Ljava/lang/String;Ljava/lang/String;IILcom/transsion/hubsdk/aosp/os/TranAospRemoteCallbackExt$ITranRemoteCallback;)Ljava/lang/Object;
    .registers 7

    .line 99
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/role/TranThubRoleManager;->mService:Lcom/transsion/hubsdk/app/role/ITranRoleManager;

    if-eqz p0, :cond_d

    move-object v0, p5

    .line 100
    new-instance p5, Lcom/transsion/hubsdk/core/app/role/TranThubRoleManager$TranThubRemoteCallback;

    invoke-direct {p5, v0}, Lcom/transsion/hubsdk/core/app/role/TranThubRoleManager$TranThubRemoteCallback;-><init>(Lcom/transsion/hubsdk/aosp/os/TranAospRemoteCallbackExt$ITranRemoteCallback;)V

    invoke-interface/range {p0 .. p5}, Lcom/transsion/hubsdk/app/role/ITranRoleManager;->addRoleHolderAsUserExt(Ljava/lang/String;Ljava/lang/String;IILcom/transsion/hubsdk/app/role/ITranRemoteCallback;)V

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public addRoleHolderAsUser(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 12

    .line 50
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/app/role/TranThubRoleManager$$ExternalSyntheticLambda0;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/transsion/hubsdk/core/app/role/TranThubRoleManager$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/hubsdk/core/app/role/TranThubRoleManager;Ljava/lang/String;Ljava/lang/String;II)V

    const-string p0, "role"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    .line 56
    sget-object p0, Lcom/transsion/hubsdk/core/app/role/TranThubRoleManager;->TAG:Ljava/lang/String;

    const-string p1, "addRoleHolderAsUser success!"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public addRoleHolderAsUserExt(Ljava/lang/String;Ljava/lang/String;IILcom/transsion/hubsdk/aosp/os/TranAospRemoteCallbackExt$ITranRemoteCallback;)V
    .registers 14

    .line 98
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/app/role/TranThubRoleManager$$ExternalSyntheticLambda1;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/transsion/hubsdk/core/app/role/TranThubRoleManager$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/hubsdk/core/app/role/TranThubRoleManager;Ljava/lang/String;Ljava/lang/String;IILcom/transsion/hubsdk/aosp/os/TranAospRemoteCallbackExt$ITranRemoteCallback;)V

    const-string p0, "role"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    .line 104
    sget-object p0, Lcom/transsion/hubsdk/core/app/role/TranThubRoleManager;->TAG:Ljava/lang/String;

    const-string p1, "addRoleHolderAsUserExt success!"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public addRoleHolderFromController(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 61
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/role/TranThubRoleManager;->mService:Lcom/transsion/hubsdk/app/role/ITranRoleManager;

    if-eqz p0, :cond_20

    .line 63
    :try_start_4
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/role/ITranRoleManager;->addRoleHolderFromController(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return p0

    :catch_9
    move-exception p0

    .line 65
    sget-object p1, Lcom/transsion/hubsdk/core/app/role/TranThubRoleManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addRoleHolderFromController fail"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public getRoleHolders(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 85
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/role/TranThubRoleManager;->mService:Lcom/transsion/hubsdk/app/role/ITranRoleManager;

    if-eqz p0, :cond_20

    .line 87
    :try_start_4
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/role/ITranRoleManager;->getRoleHolders(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p0

    .line 89
    sget-object p1, Lcom/transsion/hubsdk/core/app/role/TranThubRoleManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRoleHolders fail"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 p0, 0x0

    return-object p0
.end method

.method public isApplicationVisibleForRole(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 109
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/app/role/TranThubRoleManager;->getTranRoleControllerManager()Lcom/transsion/hubsdk/app/role/TranRoleControllerManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/app/role/TranRoleControllerManager;->isApplicationVisibleForRole(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public removeRoleHolderFromController(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 73
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/role/TranThubRoleManager;->mService:Lcom/transsion/hubsdk/app/role/ITranRoleManager;

    if-eqz p0, :cond_20

    .line 75
    :try_start_4
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/role/ITranRoleManager;->removeRoleHolderFromController(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return p0

    :catch_9
    move-exception p0

    .line 77
    sget-object p1, Lcom/transsion/hubsdk/core/app/role/TranThubRoleManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "removeRoleHolderFromController fail"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method protected setService(Lcom/transsion/hubsdk/app/role/ITranRoleManager;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 45
    iput-object p1, p0, Lcom/transsion/hubsdk/core/app/role/TranThubRoleManager;->mService:Lcom/transsion/hubsdk/app/role/ITranRoleManager;

    return-void
.end method
