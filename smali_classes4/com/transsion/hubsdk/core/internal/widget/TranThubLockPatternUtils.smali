.class public Lcom/transsion/hubsdk/core/internal/widget/TranThubLockPatternUtils;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/internal/widget/ITranTranLockPatternUtilsAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "TranThubLockPatternUtils"


# instance fields
.field private mService:Lcom/transsion/hubsdk/internal/widget/ITranLockPatternUtils;

.field private mTranLockPatternUtils:Lcom/transsion/hubsdk/internal/widget/TranLockPatternUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, "lockpatten_utils"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 42
    invoke-static {v0}, Lcom/transsion/hubsdk/internal/widget/ITranLockPatternUtils$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/internal/widget/ITranLockPatternUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/internal/widget/TranThubLockPatternUtils;->mService:Lcom/transsion/hubsdk/internal/widget/ITranLockPatternUtils;

    return-void
.end method

.method private getTranLockPatternImpl()Lcom/transsion/hubsdk/internal/widget/TranLockPatternUtils;
    .registers 3

    .line 153
    iget-object v0, p0, Lcom/transsion/hubsdk/core/internal/widget/TranThubLockPatternUtils;->mTranLockPatternUtils:Lcom/transsion/hubsdk/internal/widget/TranLockPatternUtils;

    if-nez v0, :cond_f

    .line 154
    new-instance v0, Lcom/transsion/hubsdk/internal/widget/TranLockPatternUtils;

    invoke-static {}, Lcom/transsion/hubsdk/common/init/TranHubSdkManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/hubsdk/internal/widget/TranLockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/internal/widget/TranThubLockPatternUtils;->mTranLockPatternUtils:Lcom/transsion/hubsdk/internal/widget/TranLockPatternUtils;

    .line 156
    :cond_f
    iget-object p0, p0, Lcom/transsion/hubsdk/core/internal/widget/TranThubLockPatternUtils;->mTranLockPatternUtils:Lcom/transsion/hubsdk/internal/widget/TranLockPatternUtils;

    return-object p0
.end method


# virtual methods
.method public getActivePasswordQuality(I)I
    .registers 5
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    .line 57
    iget-object p0, p0, Lcom/transsion/hubsdk/core/internal/widget/TranThubLockPatternUtils;->mService:Lcom/transsion/hubsdk/internal/widget/ITranLockPatternUtils;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 61
    :cond_6
    :try_start_6
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/internal/widget/ITranLockPatternUtils;->getActivePasswordQuality(I)I

    move-result p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    .line 63
    sget-object p1, Lcom/transsion/hubsdk/core/internal/widget/TranThubLockPatternUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getActivePasswordQuality fail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;
    .registers 1

    .line 112
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/internal/widget/TranThubLockPatternUtils;->getTranLockPatternImpl()Lcom/transsion/hubsdk/internal/widget/TranLockPatternUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/hubsdk/internal/widget/TranLockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object p0

    return-object p0
.end method

.method public getLockoutAttemptDeadline(I)J
    .registers 4

    .line 93
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/internal/widget/TranThubLockPatternUtils;->mService:Lcom/transsion/hubsdk/internal/widget/ITranLockPatternUtils;

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/internal/widget/ITranLockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide p0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-wide p0

    :catch_7
    move-exception p0

    .line 95
    sget-object p1, Lcom/transsion/hubsdk/core/internal/widget/TranThubLockPatternUtils;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getLockoutAttemptDeadline fail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getPasswordLength(JI)J
    .registers 4

    .line 141
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/internal/widget/TranThubLockPatternUtils;->getTranLockPatternImpl()Lcom/transsion/hubsdk/internal/widget/TranLockPatternUtils;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/hubsdk/internal/widget/TranLockPatternUtils;->getPasswordLength(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public getPowerButtonInstantlyLocks(I)Z
    .registers 4

    .line 103
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/internal/widget/TranThubLockPatternUtils;->mService:Lcom/transsion/hubsdk/internal/widget/ITranLockPatternUtils;

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/internal/widget/ITranLockPatternUtils;->getPowerButtonInstantlyLocks(I)Z

    move-result p0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p0

    :catch_7
    move-exception p0

    .line 105
    sget-object p1, Lcom/transsion/hubsdk/core/internal/widget/TranThubLockPatternUtils;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSecure fail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public getString(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5

    .line 116
    iget-object p0, p0, Lcom/transsion/hubsdk/core/internal/widget/TranThubLockPatternUtils;->mService:Lcom/transsion/hubsdk/internal/widget/ITranLockPatternUtils;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return-object v0

    .line 120
    :cond_6
    :try_start_6
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/internal/widget/ITranLockPatternUtils;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception p0

    .line 122
    sget-object p1, Lcom/transsion/hubsdk/core/internal/widget/TranThubLockPatternUtils;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getString fail:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public isSecure(I)Z
    .registers 5
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    .line 79
    iget-object p0, p0, Lcom/transsion/hubsdk/core/internal/widget/TranThubLockPatternUtils;->mService:Lcom/transsion/hubsdk/internal/widget/ITranLockPatternUtils;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 83
    :cond_6
    :try_start_6
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/internal/widget/ITranLockPatternUtils;->isSecure(I)Z

    move-result p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    .line 85
    sget-object p1, Lcom/transsion/hubsdk/core/internal/widget/TranThubLockPatternUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSecure fail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public setAutoPinConfirm(ZI)V
    .registers 4

    .line 146
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidT()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 149
    :cond_7
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/internal/widget/TranThubLockPatternUtils;->getTranLockPatternImpl()Lcom/transsion/hubsdk/internal/widget/TranLockPatternUtils;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/internal/widget/TranLockPatternUtils;->setAutoPinConfirm(ZI)V

    return-void
.end method

.method protected setService(Lcom/transsion/hubsdk/internal/widget/ITranLockPatternUtils;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 164
    iput-object p1, p0, Lcom/transsion/hubsdk/core/internal/widget/TranThubLockPatternUtils;->mService:Lcom/transsion/hubsdk/internal/widget/ITranLockPatternUtils;

    return-void
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    .line 129
    iget-object p0, p0, Lcom/transsion/hubsdk/core/internal/widget/TranThubLockPatternUtils;->mService:Lcom/transsion/hubsdk/internal/widget/ITranLockPatternUtils;

    if-nez p0, :cond_5

    return-void

    .line 133
    :cond_5
    :try_start_5
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/internal/widget/ITranLockPatternUtils;->setString(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p0

    .line 135
    sget-object p1, Lcom/transsion/hubsdk/core/internal/widget/TranThubLockPatternUtils;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setString fail:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
