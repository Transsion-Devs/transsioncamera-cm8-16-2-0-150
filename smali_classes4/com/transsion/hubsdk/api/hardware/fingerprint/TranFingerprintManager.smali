.class public Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final PACKAGE_NAME_ARGUMENT_EXCEPTION:Ljava/lang/String; = "package name should not be null"

.field private static final TAG:Ljava/lang/String; = "TranFingerprintManager"

.field public static final USERID_ARGUMENT_EXCEPTION:Ljava/lang/String; = "userId is wrong"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/hardware/fingerprint/TranAospFingerprintManager;

.field private mThubService:Lcom/transsion/hubsdk/core/hardware/fingerprint/TranThubFingerprintManager;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public enterFingerNavigationMode(Z)V
    .registers 3

    .line 262
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33371:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/fingerprint/ITranFingerprintManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/hardware/fingerprint/ITranFingerprintManagerAdapter;->enterFingerNavigationMode(Z)V

    return-void
.end method

.method public getAddFingerprint(I)Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintInfo;
    .registers 3
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x2
    .end annotation

    const/high16 v0, -0x80000000

    if-le p1, v0, :cond_14

    const v0, 0x7fffffff

    if-ge p1, v0, :cond_14

    .line 223
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33311:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/fingerprint/ITranFingerprintManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/hardware/fingerprint/ITranFingerprintManagerAdapter;->getAddFingerprint(I)Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintInfo;

    move-result-object p0

    return-object p0

    .line 221
    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "userId is wrong"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAppPackagename(I)Ljava/lang/String;
    .registers 3

    .line 60
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33161:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/fingerprint/ITranFingerprintManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/hardware/fingerprint/ITranFingerprintManagerAdapter;->getAppPackagename(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAppUserId(I)I
    .registers 3

    .line 70
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33161:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/fingerprint/ITranFingerprintManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/hardware/fingerprint/ITranFingerprintManagerAdapter;->getAppUserId(I)I

    move-result p0

    return p0
.end method

.method public getBiometricId(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)I
    .registers 3

    .line 165
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33161:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/fingerprint/ITranFingerprintManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/hardware/fingerprint/ITranFingerprintManagerAdapter;->getBiometricId(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)I

    move-result p0

    return p0
.end method

.method public getEnrolledFingerprints(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintInfo;",
            ">;"
        }
    .end annotation

    const/high16 v0, -0x80000000

    if-le p1, v0, :cond_14

    const v0, 0x7fffffff

    if-ge p1, v0, :cond_14

    .line 50
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33161:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/fingerprint/ITranFingerprintManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/hardware/fingerprint/ITranFingerprintManagerAdapter;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 48
    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "userId is wrong"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/fingerprint/ITranFingerprintManagerAdapter;
    .registers 3

    .line 91
    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 92
    sget-object p1, Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintManager;->TAG:Ljava/lang/String;

    const-string v0, "TranThubFingerprintManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object p1, p0, Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintManager;->mThubService:Lcom/transsion/hubsdk/core/hardware/fingerprint/TranThubFingerprintManager;

    if-nez p1, :cond_18

    new-instance p1, Lcom/transsion/hubsdk/core/hardware/fingerprint/TranThubFingerprintManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/hardware/fingerprint/TranThubFingerprintManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintManager;->mThubService:Lcom/transsion/hubsdk/core/hardware/fingerprint/TranThubFingerprintManager;

    :cond_18
    return-object p1

    .line 95
    :cond_19
    sget-object p1, Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintManager;->TAG:Ljava/lang/String;

    const-string v0, "TranAospFingerprintManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object p1, p0, Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintManager;->mAospService:Lcom/transsion/hubsdk/aosp/hardware/fingerprint/TranAospFingerprintManager;

    if-nez p1, :cond_2b

    new-instance p1, Lcom/transsion/hubsdk/aosp/hardware/fingerprint/TranAospFingerprintManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/hardware/fingerprint/TranAospFingerprintManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintManager;->mAospService:Lcom/transsion/hubsdk/aosp/hardware/fingerprint/TranAospFingerprintManager;

    :cond_2b
    return-object p1
.end method

.method public isAuthenticating()Z
    .registers 2
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    .line 190
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/fingerprint/ITranFingerprintManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/hardware/fingerprint/ITranFingerprintManagerAdapter;->isAuthenticating()Z

    move-result p0

    return p0
.end method

.method public isClientActive()Z
    .registers 2

    .line 233
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33311:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/fingerprint/ITranFingerprintManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/hardware/fingerprint/ITranFingerprintManagerAdapter;->isClientActive()Z

    move-result p0

    return p0
.end method

.method public notifyActivateFingerprint(Z)V
    .registers 3
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    .line 177
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/fingerprint/ITranFingerprintManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/hardware/fingerprint/ITranFingerprintManagerAdapter;->notifyActivateFingerprint(Z)V

    return-void
.end method

.method public setAppAndUserIdForBiometrics(ILjava/lang/String;I)V
    .registers 5

    if-eqz p2, :cond_1d

    const/high16 v0, -0x80000000

    if-le p3, v0, :cond_15

    const v0, 0x7fffffff

    if-ge p3, v0, :cond_15

    .line 87
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33161:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/fingerprint/ITranFingerprintManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/hardware/fingerprint/ITranFingerprintManagerAdapter;->setAppAndUserIdForBiometrics(ILjava/lang/String;I)V

    return-void

    .line 85
    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "userId is wrong"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 82
    :cond_1d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "package name should not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setAppBiometrics(ILjava/lang/String;)V
    .registers 4

    .line 203
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 206
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33311:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/fingerprint/ITranFingerprintManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/hardware/fingerprint/ITranFingerprintManagerAdapter;->setAppBiometrics(ILjava/lang/String;)V

    return-void

    .line 204
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "parameter opPackageName must not be null or empty."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setKeyguardClientVisible(Z)V
    .registers 3

    .line 243
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33311:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/fingerprint/ITranFingerprintManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/hardware/fingerprint/ITranFingerprintManagerAdapter;->setKeyguardClientVisible(Z)V

    return-void
.end method

.method public setMyClientVisible(Ljava/lang/String;Z)V
    .registers 4
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x2
    .end annotation

    .line 110
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 113
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33161:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/fingerprint/ITranFingerprintManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/hardware/fingerprint/ITranFingerprintManagerAdapter;->setMyClientVisible(Ljava/lang/String;Z)V

    return-void

    .line 111
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "parameter opPackageName must not be null or empty."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setUdfpColor(I)V
    .registers 3

    .line 271
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/fingerprint/ITranFingerprintManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/hardware/fingerprint/ITranFingerprintManagerAdapter;->setUdfpColor(I)V

    return-void
.end method

.method public startAppForFp(I)V
    .registers 3

    .line 253
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33311:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/fingerprint/ITranFingerprintManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/hardware/fingerprint/ITranFingerprintManagerAdapter;->startAppForFp(I)V

    return-void
.end method
