.class public Lcom/transsion/hubsdk/core/devicepolicy/TranThubDevicePolicyManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/devicepolicy/ITranDevicePolicyManagerAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "TranThubDevicePolicyManager"


# instance fields
.field private mDevicePolicyManager:Lcom/transsion/hubsdk/app/devicepolicy/TranDevicePolicyManager;

.field private mService:Lcom/transsion/hubsdk/app/admin/ITranDevicePolicyManager;


# direct methods
.method public static synthetic $r8$lambda$-opGEZl4q7nrr0Wg7CFFv22sY0k(Lcom/transsion/hubsdk/core/devicepolicy/TranThubDevicePolicyManager;)Ljava/lang/Object;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/devicepolicy/TranThubDevicePolicyManager;->lambda$getProfileOwner$2()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$HbIBqSyWAHH6r8z0_tDK1akjvAE(Lcom/transsion/hubsdk/core/devicepolicy/TranThubDevicePolicyManager;Landroid/content/ComponentName;I)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/hubsdk/core/devicepolicy/TranThubDevicePolicyManager;->lambda$setDualProfileEnabled$0(Landroid/content/ComponentName;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$tlc0cnA_i98fmVgpCrdPX8N-WhQ(Lcom/transsion/hubsdk/core/devicepolicy/TranThubDevicePolicyManager;)Ljava/lang/Object;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/devicepolicy/TranThubDevicePolicyManager;->lambda$isFinancedRestrictDevice$3()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$yThyDjOrsBRHWJugGFAnRoUBcD0(Lcom/transsion/hubsdk/core/devicepolicy/TranThubDevicePolicyManager;)Ljava/lang/Object;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/devicepolicy/TranThubDevicePolicyManager;->lambda$getDeviceOwnerComponentOnAnyUser$1()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v0, "devicepolicy"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 34
    invoke-static {v0}, Lcom/transsion/hubsdk/app/admin/ITranDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/app/admin/ITranDevicePolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/devicepolicy/TranThubDevicePolicyManager;->mService:Lcom/transsion/hubsdk/app/admin/ITranDevicePolicyManager;

    return-void
.end method

.method private getDevicePolicyManager()Lcom/transsion/hubsdk/app/devicepolicy/TranDevicePolicyManager;
    .registers 2

    .line 151
    iget-object v0, p0, Lcom/transsion/hubsdk/core/devicepolicy/TranThubDevicePolicyManager;->mDevicePolicyManager:Lcom/transsion/hubsdk/app/devicepolicy/TranDevicePolicyManager;

    if-nez v0, :cond_b

    .line 152
    new-instance v0, Lcom/transsion/hubsdk/app/devicepolicy/TranDevicePolicyManager;

    invoke-direct {v0}, Lcom/transsion/hubsdk/app/devicepolicy/TranDevicePolicyManager;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/devicepolicy/TranThubDevicePolicyManager;->mDevicePolicyManager:Lcom/transsion/hubsdk/app/devicepolicy/TranDevicePolicyManager;

    .line 154
    :cond_b
    iget-object p0, p0, Lcom/transsion/hubsdk/core/devicepolicy/TranThubDevicePolicyManager;->mDevicePolicyManager:Lcom/transsion/hubsdk/app/devicepolicy/TranDevicePolicyManager;

    return-object p0
.end method

.method private synthetic lambda$getDeviceOwnerComponentOnAnyUser$1()Ljava/lang/Object;
    .registers 1

    .line 63
    iget-object p0, p0, Lcom/transsion/hubsdk/core/devicepolicy/TranThubDevicePolicyManager;->mService:Lcom/transsion/hubsdk/app/admin/ITranDevicePolicyManager;

    if-eqz p0, :cond_9

    .line 64
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/admin/ITranDevicePolicyManager;->getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$getProfileOwner$2()Ljava/lang/Object;
    .registers 1

    .line 75
    iget-object p0, p0, Lcom/transsion/hubsdk/core/devicepolicy/TranThubDevicePolicyManager;->mService:Lcom/transsion/hubsdk/app/admin/ITranDevicePolicyManager;

    if-eqz p0, :cond_9

    .line 76
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/admin/ITranDevicePolicyManager;->getProfileOwner()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$isFinancedRestrictDevice$3()Ljava/lang/Object;
    .registers 1

    .line 87
    iget-object p0, p0, Lcom/transsion/hubsdk/core/devicepolicy/TranThubDevicePolicyManager;->mService:Lcom/transsion/hubsdk/app/admin/ITranDevicePolicyManager;

    if-eqz p0, :cond_d

    .line 88
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/admin/ITranDevicePolicyManager;->isFinancedRestrictDevice()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$setDualProfileEnabled$0(Landroid/content/ComponentName;I)Ljava/lang/Object;
    .registers 3

    .line 40
    iget-object p0, p0, Lcom/transsion/hubsdk/core/devicepolicy/TranThubDevicePolicyManager;->mService:Lcom/transsion/hubsdk/app/admin/ITranDevicePolicyManager;

    if-eqz p0, :cond_7

    .line 41
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/admin/ITranDevicePolicyManager;->setDualProfileEnabled(Landroid/content/ComponentName;I)V

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public createProvisioningIntentFromNfcIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .registers 4

    .line 50
    iget-object p0, p0, Lcom/transsion/hubsdk/core/devicepolicy/TranThubDevicePolicyManager;->mService:Lcom/transsion/hubsdk/app/admin/ITranDevicePolicyManager;

    if-eqz p0, :cond_20

    .line 52
    :try_start_4
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/admin/ITranDevicePolicyManager;->createProvisioningIntentFromNfcIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p0

    .line 54
    sget-object p1, Lcom/transsion/hubsdk/core/devicepolicy/TranThubDevicePolicyManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createProvisioningIntentFromNfcIntent fail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;
    .registers 3

    .line 62
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/devicepolicy/TranThubDevicePolicyManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/hubsdk/core/devicepolicy/TranThubDevicePolicyManager$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/hubsdk/core/devicepolicy/TranThubDevicePolicyManager;)V

    const-string p0, "devicepolicy"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ComponentName;

    .line 68
    sget-object v0, Lcom/transsion/hubsdk/core/devicepolicy/TranThubDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v1, "getDeviceOwnerComponentOnAnyUser."

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public getMaximumTimeToLock(Landroid/content/ComponentName;I)J
    .registers 4

    .line 117
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/devicepolicy/TranThubDevicePolicyManager;->mService:Lcom/transsion/hubsdk/app/admin/ITranDevicePolicyManager;

    if-eqz p0, :cond_20

    .line 118
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/admin/ITranDevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;I)J

    move-result-wide p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-wide p0

    :catch_9
    move-exception p0

    .line 121
    sget-object p1, Lcom/transsion/hubsdk/core/devicepolicy/TranThubDevicePolicyManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getMaximumTimeToLock fail:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getProfileOwner()Landroid/content/ComponentName;
    .registers 3

    .line 74
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/devicepolicy/TranThubDevicePolicyManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/transsion/hubsdk/core/devicepolicy/TranThubDevicePolicyManager$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/hubsdk/core/devicepolicy/TranThubDevicePolicyManager;)V

    const-string p0, "devicepolicy"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ComponentName;

    .line 80
    sget-object v0, Lcom/transsion/hubsdk/core/devicepolicy/TranThubDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v1, "getProfileOwner."

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public getProfileOwnerAsUser(I)Landroid/content/ComponentName;
    .registers 4

    .line 129
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/devicepolicy/TranThubDevicePolicyManager;->mService:Lcom/transsion/hubsdk/app/admin/ITranDevicePolicyManager;

    if-eqz p0, :cond_20

    .line 130
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/admin/ITranDevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p0

    .line 133
    sget-object p1, Lcom/transsion/hubsdk/core/devicepolicy/TranThubDevicePolicyManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getProfileOwnerAsUser fail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 p0, 0x0

    return-object p0
.end method

.method public getProfileOwnerOrDeviceOwnerSupervisionComponent(Landroid/os/UserHandle;)Landroid/content/ComponentName;
    .registers 4

    .line 105
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/devicepolicy/TranThubDevicePolicyManager;->mService:Lcom/transsion/hubsdk/app/admin/ITranDevicePolicyManager;

    if-eqz p0, :cond_20

    .line 106
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/admin/ITranDevicePolicyManager;->getProfileOwnerOrDeviceOwnerSupervisionComponent(Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p0

    .line 109
    sget-object p1, Lcom/transsion/hubsdk/core/devicepolicy/TranThubDevicePolicyManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getProfileOwnerOrDeviceOwnerSupervisionComponent fail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 p0, 0x0

    return-object p0
.end method

.method public getProfileOwnerWithContext(Landroid/content/Context;)Landroid/content/ComponentName;
    .registers 4

    .line 98
    sget-object v0, Lcom/transsion/hubsdk/core/devicepolicy/TranThubDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v1, "getProfileOwnerWithContext"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/devicepolicy/TranThubDevicePolicyManager;->getDevicePolicyManager()Lcom/transsion/hubsdk/app/devicepolicy/TranDevicePolicyManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/app/devicepolicy/TranDevicePolicyManager;->getProfileOwnerWithContext(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public isDeviceOwnerAppOnAnyUser(Ljava/lang/String;)Z
    .registers 4

    .line 141
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/devicepolicy/TranThubDevicePolicyManager;->mService:Lcom/transsion/hubsdk/app/admin/ITranDevicePolicyManager;

    if-eqz p0, :cond_20

    .line 142
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/admin/ITranDevicePolicyManager;->isDeviceOwnerAppOnAnyUser(Ljava/lang/String;)Z

    move-result p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return p0

    :catch_9
    move-exception p0

    .line 145
    sget-object p1, Lcom/transsion/hubsdk/core/devicepolicy/TranThubDevicePolicyManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isDeviceOwnerAppOnAnyUser fail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public isFinancedRestrictDevice()Z
    .registers 3

    .line 86
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/devicepolicy/TranThubDevicePolicyManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/hubsdk/core/devicepolicy/TranThubDevicePolicyManager$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/hubsdk/core/devicepolicy/TranThubDevicePolicyManager;)V

    const-string p0, "devicepolicy"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 92
    sget-object v0, Lcom/transsion/hubsdk/core/devicepolicy/TranThubDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v1, "isFinancedRestrictDevice"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public setDualProfileEnabled(Landroid/content/ComponentName;I)V
    .registers 5

    .line 39
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/devicepolicy/TranThubDevicePolicyManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/hubsdk/core/devicepolicy/TranThubDevicePolicyManager$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/hubsdk/core/devicepolicy/TranThubDevicePolicyManager;Landroid/content/ComponentName;I)V

    const-string p0, "devicepolicy"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    .line 45
    sget-object p0, Lcom/transsion/hubsdk/core/devicepolicy/TranThubDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string p1, "setDualProfileEnabled."

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected setService(Lcom/transsion/hubsdk/app/admin/ITranDevicePolicyManager;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 163
    iput-object p1, p0, Lcom/transsion/hubsdk/core/devicepolicy/TranThubDevicePolicyManager;->mService:Lcom/transsion/hubsdk/app/admin/ITranDevicePolicyManager;

    return-void
.end method
