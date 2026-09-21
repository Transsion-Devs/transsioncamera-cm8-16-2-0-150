.class public Lcom/transsion/hubsdk/core/hardware/fingerprint/TranThubFingerprintManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/hardware/fingerprint/ITranFingerprintManagerAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "TranThubFingerprintManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mService:Lcom/transsion/hubsdk/hardware/fingerprint/ITranFingerprintService;

.field private mTranFingerprintManager:Lcom/transsion/hubsdk/hardware/fingerprint/TranFingerprintManager;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, "fingerprint"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 39
    invoke-static {v0}, Lcom/transsion/hubsdk/hardware/fingerprint/ITranFingerprintService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/hardware/fingerprint/ITranFingerprintService;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/hardware/fingerprint/TranThubFingerprintManager;->mService:Lcom/transsion/hubsdk/hardware/fingerprint/ITranFingerprintService;

    return-void
.end method

.method private getTranFingerprintManager()Lcom/transsion/hubsdk/hardware/fingerprint/TranFingerprintManager;
    .registers 3

    .line 43
    invoke-static {}, Lcom/transsion/hubsdk/common/init/TranHubSdkManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/hardware/fingerprint/TranThubFingerprintManager;->mContext:Landroid/content/Context;

    .line 44
    iget-object v0, p0, Lcom/transsion/hubsdk/core/hardware/fingerprint/TranThubFingerprintManager;->mTranFingerprintManager:Lcom/transsion/hubsdk/hardware/fingerprint/TranFingerprintManager;

    if-nez v0, :cond_13

    .line 45
    new-instance v0, Lcom/transsion/hubsdk/hardware/fingerprint/TranFingerprintManager;

    iget-object v1, p0, Lcom/transsion/hubsdk/core/hardware/fingerprint/TranThubFingerprintManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/hubsdk/hardware/fingerprint/TranFingerprintManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/hardware/fingerprint/TranThubFingerprintManager;->mTranFingerprintManager:Lcom/transsion/hubsdk/hardware/fingerprint/TranFingerprintManager;

    .line 47
    :cond_13
    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/fingerprint/TranThubFingerprintManager;->mTranFingerprintManager:Lcom/transsion/hubsdk/hardware/fingerprint/TranFingerprintManager;

    return-object p0
.end method


# virtual methods
.method public enterFingerNavigationMode(Z)V
    .registers 3

    .line 173
    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/fingerprint/TranThubFingerprintManager;->mService:Lcom/transsion/hubsdk/hardware/fingerprint/ITranFingerprintService;

    if-eqz p0, :cond_10

    .line 175
    :try_start_4
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/hardware/fingerprint/ITranFingerprintService;->enterFingerNavigationMode(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception p0

    .line 177
    sget-object p1, Lcom/transsion/hubsdk/core/hardware/fingerprint/TranThubFingerprintManager;->TAG:Ljava/lang/String;

    const-string v0, "enterFingerNavigationMode: "

    invoke-static {p1, v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_10
    return-void
.end method

.method public getAddFingerprint(I)Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintInfo;
    .registers 4

    .line 141
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/hardware/fingerprint/TranThubFingerprintManager;->getTranFingerprintManager()Lcom/transsion/hubsdk/hardware/fingerprint/TranFingerprintManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/hardware/fingerprint/TranFingerprintManager;->getAddFingerprint(I)Lcom/transsion/hubsdk/hardware/fingerprint/TranFingerprint;

    move-result-object p0

    if-nez p0, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 145
    :cond_c
    new-instance p1, Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintInfo;

    invoke-direct {p1}, Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintInfo;-><init>()V

    .line 146
    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintInfo;->getUserId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintInfo;->setUserId(I)V

    .line 147
    invoke-virtual {p0}, Lcom/transsion/hubsdk/hardware/fingerprint/TranFingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintInfo;->setName(Ljava/lang/CharSequence;)V

    .line 148
    invoke-virtual {p0}, Lcom/transsion/hubsdk/hardware/fingerprint/TranFingerprint;->getAppPkgName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintInfo;->setAppPkgName(Ljava/lang/CharSequence;)V

    .line 149
    invoke-virtual {p0}, Lcom/transsion/hubsdk/hardware/fingerprint/TranFingerprint;->getDeviceId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintInfo;->setDeviceId(J)V

    .line 150
    invoke-virtual {p0}, Lcom/transsion/hubsdk/hardware/fingerprint/TranFingerprint;->getGroupId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintInfo;->setGroupId(I)V

    .line 151
    invoke-virtual {p0}, Lcom/transsion/hubsdk/hardware/fingerprint/TranFingerprint;->getBiometricId()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintInfo;->setBiometricId(I)V

    return-object p1
.end method

.method public getAppPackagename(I)Ljava/lang/String;
    .registers 2

    .line 72
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/hardware/fingerprint/TranThubFingerprintManager;->getTranFingerprintManager()Lcom/transsion/hubsdk/hardware/fingerprint/TranFingerprintManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/hardware/fingerprint/TranFingerprintManager;->getAppPackagename(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAppUserId(I)I
    .registers 2

    .line 77
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/hardware/fingerprint/TranThubFingerprintManager;->getTranFingerprintManager()Lcom/transsion/hubsdk/hardware/fingerprint/TranFingerprintManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/hardware/fingerprint/TranFingerprintManager;->getAppUserId(I)I

    move-result p0

    return p0
.end method

.method public getBiometricId(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)I
    .registers 2

    .line 110
    new-instance p0, Lcom/transsion/hubsdk/aosp/hardware/fingerprint/TranAospFingerprintManager;

    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/hardware/fingerprint/TranAospFingerprintManager;-><init>()V

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/aosp/hardware/fingerprint/TranAospFingerprintManager;->getBiometricId(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)I

    move-result p0

    return p0
.end method

.method public getEnrolledFingerprints(I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintInfo;",
            ">;"
        }
    .end annotation

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/hardware/fingerprint/TranThubFingerprintManager;->getTranFingerprintManager()Lcom/transsion/hubsdk/hardware/fingerprint/TranFingerprintManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/hardware/fingerprint/TranFingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_10

    goto :goto_53

    .line 57
    :cond_10
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_53

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/hubsdk/hardware/fingerprint/TranFingerprint;

    .line 58
    new-instance v1, Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintInfo;

    invoke-direct {v1}, Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintInfo;-><init>()V

    .line 59
    invoke-virtual {v1}, Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintInfo;->getUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintInfo;->setUserId(I)V

    .line 60
    invoke-virtual {p1}, Lcom/transsion/hubsdk/hardware/fingerprint/TranFingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintInfo;->setName(Ljava/lang/CharSequence;)V

    .line 61
    invoke-virtual {p1}, Lcom/transsion/hubsdk/hardware/fingerprint/TranFingerprint;->getAppPkgName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintInfo;->setAppPkgName(Ljava/lang/CharSequence;)V

    .line 62
    invoke-virtual {p1}, Lcom/transsion/hubsdk/hardware/fingerprint/TranFingerprint;->getDeviceId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintInfo;->setDeviceId(J)V

    .line 63
    invoke-virtual {p1}, Lcom/transsion/hubsdk/hardware/fingerprint/TranFingerprint;->getGroupId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintInfo;->setGroupId(I)V

    .line 64
    invoke-virtual {p1}, Lcom/transsion/hubsdk/hardware/fingerprint/TranFingerprint;->getBiometricId()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintInfo;->setBiometricId(I)V

    .line 65
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_53
    :goto_53
    return-object v0
.end method

.method public isAuthenticating()Z
    .registers 3

    .line 127
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/fingerprint/TranThubFingerprintManager;->mService:Lcom/transsion/hubsdk/hardware/fingerprint/ITranFingerprintService;

    invoke-interface {p0}, Lcom/transsion/hubsdk/hardware/fingerprint/ITranFingerprintService;->isAuthenticating()Z

    move-result p0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p0

    :catch_7
    move-exception p0

    .line 129
    sget-object v0, Lcom/transsion/hubsdk/core/hardware/fingerprint/TranThubFingerprintManager;->TAG:Ljava/lang/String;

    const-string v1, "isAuthenticating: "

    invoke-static {v0, v1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public isClientActive()Z
    .registers 1

    .line 158
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/hardware/fingerprint/TranThubFingerprintManager;->getTranFingerprintManager()Lcom/transsion/hubsdk/hardware/fingerprint/TranFingerprintManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/hubsdk/hardware/fingerprint/TranFingerprintManager;->isClientActive()Z

    move-result p0

    return p0
.end method

.method public notifyActivateFingerprint(Z)V
    .registers 3

    .line 117
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/fingerprint/TranThubFingerprintManager;->mService:Lcom/transsion/hubsdk/hardware/fingerprint/ITranFingerprintService;

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/hardware/fingerprint/ITranFingerprintService;->notifyActivateFingerprint(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p0

    .line 119
    sget-object p1, Lcom/transsion/hubsdk/core/hardware/fingerprint/TranThubFingerprintManager;->TAG:Ljava/lang/String;

    const-string v0, "notifyActivateFingerprint: "

    invoke-static {p1, v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public setAppAndUserIdForBiometrics(ILjava/lang/String;I)V
    .registers 4

    .line 82
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/hardware/fingerprint/TranThubFingerprintManager;->getTranFingerprintManager()Lcom/transsion/hubsdk/hardware/fingerprint/TranFingerprintManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/hubsdk/hardware/fingerprint/TranFingerprintManager;->setAppAndUserIdForBiometrics(ILjava/lang/String;I)V

    return-void
.end method

.method public setAppBiometrics(ILjava/lang/String;)V
    .registers 3

    .line 136
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/hardware/fingerprint/TranThubFingerprintManager;->getTranFingerprintManager()Lcom/transsion/hubsdk/hardware/fingerprint/TranFingerprintManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/hardware/fingerprint/TranFingerprintManager;->setAppBiometrics(ILjava/lang/String;)V

    return-void
.end method

.method public setKeyguardClientVisible(Z)V
    .registers 2

    .line 163
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/hardware/fingerprint/TranThubFingerprintManager;->getTranFingerprintManager()Lcom/transsion/hubsdk/hardware/fingerprint/TranFingerprintManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/hardware/fingerprint/TranFingerprintManager;->setKeyguardClientVisible(Z)V

    return-void
.end method

.method public setMyClientVisible(Ljava/lang/String;Z)V
    .registers 3

    .line 96
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/fingerprint/TranThubFingerprintManager;->mService:Lcom/transsion/hubsdk/hardware/fingerprint/ITranFingerprintService;

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/hardware/fingerprint/ITranFingerprintService;->setMyClientVisible(Ljava/lang/String;Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p0

    .line 98
    sget-object p1, Lcom/transsion/hubsdk/core/hardware/fingerprint/TranThubFingerprintManager;->TAG:Ljava/lang/String;

    const-string p2, "setMyClientVisible: "

    invoke-static {p1, p2, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method protected setService(Lcom/transsion/hubsdk/hardware/fingerprint/ITranFingerprintService;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 91
    iput-object p1, p0, Lcom/transsion/hubsdk/core/hardware/fingerprint/TranThubFingerprintManager;->mService:Lcom/transsion/hubsdk/hardware/fingerprint/ITranFingerprintService;

    return-void
.end method

.method public setUdfpColor(I)V
    .registers 3

    .line 184
    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/fingerprint/TranThubFingerprintManager;->mService:Lcom/transsion/hubsdk/hardware/fingerprint/ITranFingerprintService;

    if-eqz p0, :cond_10

    .line 186
    :try_start_4
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/hardware/fingerprint/ITranFingerprintService;->setUdfpColor(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception p0

    .line 188
    sget-object p1, Lcom/transsion/hubsdk/core/hardware/fingerprint/TranThubFingerprintManager;->TAG:Ljava/lang/String;

    const-string v0, "setUdfpColor: "

    invoke-static {p1, v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_10
    return-void
.end method

.method public startAppForFp(I)V
    .registers 2

    .line 168
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/hardware/fingerprint/TranThubFingerprintManager;->getTranFingerprintManager()Lcom/transsion/hubsdk/hardware/fingerprint/TranFingerprintManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/hardware/fingerprint/TranFingerprintManager;->startAppForFp(I)V

    return-void
.end method
