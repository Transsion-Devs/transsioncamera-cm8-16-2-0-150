.class public Lcom/transsion/hubsdk/core/internal/app/TranThubAppOpsService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/internal/app/ITranAppOpsServiceAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/core/internal/app/TranThubAppOpsService$TranThubAppOpsActiveCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TranThubAppOpsService"


# instance fields
.field private mService:Lcom/transsion/hubsdk/internal/app/ITranAppOpsService;


# direct methods
.method public static synthetic $r8$lambda$0RVt36Z3VRX9rl26njDfNlInv4s(Lcom/transsion/hubsdk/core/internal/app/TranThubAppOpsService;[ILcom/transsion/hubsdk/aosp/internal/app/TranAospAppOpsServiceExt$ITranAppOpsActiveCallback;)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/hubsdk/core/internal/app/TranThubAppOpsService;->lambda$startWatchingActive$0([ILcom/transsion/hubsdk/aosp/internal/app/TranAospAppOpsServiceExt$ITranAppOpsActiveCallback;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, "appops"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 37
    invoke-static {v0}, Lcom/transsion/hubsdk/internal/app/ITranAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/internal/app/ITranAppOpsService;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/internal/app/TranThubAppOpsService;->mService:Lcom/transsion/hubsdk/internal/app/ITranAppOpsService;

    return-void
.end method

.method private synthetic lambda$startWatchingActive$0([ILcom/transsion/hubsdk/aosp/internal/app/TranAospAppOpsServiceExt$ITranAppOpsActiveCallback;)Ljava/lang/Object;
    .registers 4

    .line 119
    iget-object p0, p0, Lcom/transsion/hubsdk/core/internal/app/TranThubAppOpsService;->mService:Lcom/transsion/hubsdk/internal/app/ITranAppOpsService;

    if-eqz p0, :cond_c

    .line 120
    new-instance v0, Lcom/transsion/hubsdk/core/internal/app/TranThubAppOpsService$TranThubAppOpsActiveCallback;

    invoke-direct {v0, p2}, Lcom/transsion/hubsdk/core/internal/app/TranThubAppOpsService$TranThubAppOpsActiveCallback;-><init>(Lcom/transsion/hubsdk/aosp/internal/app/TranAospAppOpsServiceExt$ITranAppOpsActiveCallback;)V

    invoke-interface {p0, p1, v0}, Lcom/transsion/hubsdk/internal/app/ITranAppOpsService;->startWatchingActive([ILcom/transsion/hubsdk/internal/app/ITranAppOpsActiveCallback;)V

    :cond_c
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public checkOp(IILjava/lang/String;)I
    .registers 4

    .line 52
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/internal/app/TranThubAppOpsService;->mService:Lcom/transsion/hubsdk/internal/app/ITranAppOpsService;

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/internal/app/ITranAppOpsService;->checkOp(IILjava/lang/String;)I

    move-result p0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p0

    :catch_7
    move-exception p0

    .line 54
    sget-object p1, Lcom/transsion/hubsdk/core/internal/app/TranThubAppOpsService;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "checkOp: e = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public getOps(Lcom/transsion/hubsdk/api/internal/app/TranPackageOps;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/hubsdk/api/internal/app/TranPackageOps;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/api/internal/app/TranOpEntry;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return-object p0

    .line 98
    :cond_4
    :try_start_4
    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/internal/app/TranPackageOps;->getOps()Ljava/util/List;

    move-result-object p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p1

    .line 100
    sget-object v0, Lcom/transsion/hubsdk/core/internal/app/TranThubAppOpsService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOps:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "[I)",
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/api/internal/app/TranPackageOps;",
            ">;"
        }
    .end annotation

    .line 62
    iget-object p0, p0, Lcom/transsion/hubsdk/core/internal/app/TranThubAppOpsService;->mService:Lcom/transsion/hubsdk/internal/app/ITranAppOpsService;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return-object v0

    .line 67
    :cond_6
    :try_start_6
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/internal/app/ITranAppOpsService;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;

    move-result-object p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    goto :goto_23

    :catch_b
    move-exception p0

    .line 69
    sget-object p1, Lcom/transsion/hubsdk/core/internal/app/TranThubAppOpsService;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getOpsForPackage:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p0, v0

    :goto_23
    if-nez p0, :cond_26

    return-object v0

    .line 74
    :cond_26
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 75
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 76
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_34
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_71

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/transsion/hubsdk/internal/app/TranPackageOps;

    .line 78
    invoke-virtual {p3}, Lcom/transsion/hubsdk/internal/app/TranPackageOps;->getOps()Ljava/util/List;

    move-result-object v1

    .line 79
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v2, v0

    :goto_49
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/hubsdk/internal/app/TranOpEntry;

    if-eqz v2, :cond_63

    .line 81
    new-instance v3, Lcom/transsion/hubsdk/api/internal/app/TranOpEntry;

    invoke-virtual {v2}, Lcom/transsion/hubsdk/internal/app/TranOpEntry;->getMode()I

    move-result v2

    invoke-direct {v3, v2}, Lcom/transsion/hubsdk/api/internal/app/TranOpEntry;-><init>(I)V

    .line 82
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    :cond_63
    new-instance v2, Lcom/transsion/hubsdk/api/internal/app/TranPackageOps;

    iget-object v3, p3, Lcom/transsion/hubsdk/internal/app/TranPackageOps;->mPackageName:Ljava/lang/String;

    iget v4, p3, Lcom/transsion/hubsdk/internal/app/TranPackageOps;->mUid:I

    invoke-direct {v2, v3, v4, p2}, Lcom/transsion/hubsdk/api/internal/app/TranPackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    goto :goto_49

    .line 86
    :cond_6d
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_34

    :cond_71
    return-object p1
.end method

.method public getOpsMode(Lcom/transsion/hubsdk/api/internal/app/TranOpEntry;)I
    .registers 2

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return p0

    .line 110
    :cond_4
    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/internal/app/TranOpEntry;->getMode()I

    move-result p0

    return p0
.end method

.method public getPackageMode(IILjava/lang/String;)I
    .registers 4

    .line 164
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/internal/app/TranThubAppOpsService;->mService:Lcom/transsion/hubsdk/internal/app/ITranAppOpsService;

    if-eqz p0, :cond_20

    .line 165
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/internal/app/ITranAppOpsService;->getPackageMode(IILjava/lang/String;)I

    move-result p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return p0

    :catch_9
    move-exception p0

    .line 168
    sget-object p1, Lcom/transsion/hubsdk/core/internal/app/TranThubAppOpsService;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getPackageMode: e = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 p0, -0x1

    return p0
.end method

.method public setMode(IILjava/lang/String;I)V
    .registers 5

    .line 43
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/internal/app/TranThubAppOpsService;->mService:Lcom/transsion/hubsdk/internal/app/ITranAppOpsService;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/internal/app/ITranAppOpsService;->setMode(IILjava/lang/String;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p0

    .line 45
    sget-object p1, Lcom/transsion/hubsdk/core/internal/app/TranThubAppOpsService;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setMode: e = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setPackageMode(IILjava/lang/String;I)V
    .registers 5

    .line 154
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/internal/app/TranThubAppOpsService;->mService:Lcom/transsion/hubsdk/internal/app/ITranAppOpsService;

    if-eqz p0, :cond_7

    .line 155
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/internal/app/ITranAppOpsService;->setPackageMode(IILjava/lang/String;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    :cond_7
    return-void

    :catch_8
    move-exception p0

    .line 158
    sget-object p1, Lcom/transsion/hubsdk/core/internal/app/TranThubAppOpsService;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setPackageMode: e = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected setService(Lcom/transsion/hubsdk/internal/app/ITranAppOpsService;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 147
    iput-object p1, p0, Lcom/transsion/hubsdk/core/internal/app/TranThubAppOpsService;->mService:Lcom/transsion/hubsdk/internal/app/ITranAppOpsService;

    return-void
.end method

.method public startWatchingActive([ILcom/transsion/hubsdk/aosp/internal/app/TranAospAppOpsServiceExt$ITranAppOpsActiveCallback;)V
    .registers 5

    .line 118
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/internal/app/TranThubAppOpsService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/hubsdk/core/internal/app/TranThubAppOpsService$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/hubsdk/core/internal/app/TranThubAppOpsService;[ILcom/transsion/hubsdk/aosp/internal/app/TranAospAppOpsServiceExt$ITranAppOpsActiveCallback;)V

    const-string p0, "appops"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    .line 124
    sget-object p0, Lcom/transsion/hubsdk/core/internal/app/TranThubAppOpsService;->TAG:Ljava/lang/String;

    const-string p1, "startWatchingActive success!"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
