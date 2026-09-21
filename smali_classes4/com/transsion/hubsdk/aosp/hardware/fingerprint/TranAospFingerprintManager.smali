.class public Lcom/transsion/hubsdk/aosp/hardware/fingerprint/TranAospFingerprintManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/hardware/fingerprint/ITranFingerprintManagerAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "TranAospFingerprintManager"

.field private static sClassName:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sFingerprintClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sServiceManagerClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 28
    const-string v0, "android.hardware.fingerprint.IFingerprintService$Stub"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/hardware/fingerprint/TranAospFingerprintManager;->sClassName:Ljava/lang/Class;

    .line 29
    const-string v0, "android.os.ServiceManager"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/hardware/fingerprint/TranAospFingerprintManager;->sServiceManagerClass:Ljava/lang/Class;

    .line 30
    const-string v0, "android.hardware.fingerprint.Fingerprint"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/hardware/fingerprint/TranAospFingerprintManager;->sFingerprintClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {}, Lcom/transsion/hubsdk/common/init/TranHubSdkManager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 35
    const-string v1, "fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/hardware/fingerprint/TranAospFingerprintManager;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    return-void
.end method


# virtual methods
.method public enterFingerNavigationMode(Z)V
    .registers 5

    .line 292
    const-string p0, "com.transsion.hubsdk.TranServiceManager"

    invoke-static {p0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_5e

    .line 294
    const-class v0, Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getServiceIBinder"

    invoke-static {p0, v1, v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    if-eqz p0, :cond_5e

    .line 296
    const-string v0, "fingerprint"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IBinder;

    .line 297
    const-string v0, "com.transsion.hubsdk.hardware.fingerprint.ITranFingerprintService$Stub"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz p0, :cond_5e

    if-eqz v0, :cond_5e

    .line 299
    const-class v1, Landroid/os/IBinder;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "asInterface"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 300
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, v0, p0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_5e

    .line 302
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "enterFingerNavigationMode"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 303
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5e
    return-void
.end method

.method public getAddFingerprint(I)Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintInfo;
    .registers 12

    .line 201
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/hardware/fingerprint/TranAospFingerprintManager;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getAddFingerprint"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 202
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/hardware/fingerprint/TranAospFingerprintManager;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_24

    const/4 p0, 0x0

    return-object p0

    .line 208
    :cond_24
    sget-object p1, Lcom/transsion/hubsdk/aosp/hardware/fingerprint/TranAospFingerprintManager;->sFingerprintClass:Ljava/lang/Class;

    const-string v0, "getGroupId"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-static {p1, v0, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 209
    sget-object v0, Lcom/transsion/hubsdk/aosp/hardware/fingerprint/TranAospFingerprintManager;->sFingerprintClass:Ljava/lang/Class;

    const-string v2, "getSubUserId"

    new-array v3, v1, [Ljava/lang/Class;

    invoke-static {v0, v2, v3}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 210
    sget-object v2, Lcom/transsion/hubsdk/aosp/hardware/fingerprint/TranAospFingerprintManager;->sFingerprintClass:Ljava/lang/Class;

    const-string v3, "getName"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-static {v2, v3, v4}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 211
    sget-object v3, Lcom/transsion/hubsdk/aosp/hardware/fingerprint/TranAospFingerprintManager;->sFingerprintClass:Ljava/lang/Class;

    const-string v4, "getBiometricId"

    new-array v5, v1, [Ljava/lang/Class;

    invoke-static {v3, v4, v5}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 212
    sget-object v4, Lcom/transsion/hubsdk/aosp/hardware/fingerprint/TranAospFingerprintManager;->sFingerprintClass:Ljava/lang/Class;

    const-string v5, "getDeviceId"

    new-array v6, v1, [Ljava/lang/Class;

    invoke-static {v4, v5, v6}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 213
    sget-object v5, Lcom/transsion/hubsdk/aosp/hardware/fingerprint/TranAospFingerprintManager;->sFingerprintClass:Ljava/lang/Class;

    const-string v6, "getAppPkgName"

    new-array v7, v1, [Ljava/lang/Class;

    invoke-static {v5, v6, v7}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 214
    sget-object v6, Lcom/transsion/hubsdk/aosp/hardware/fingerprint/TranAospFingerprintManager;->sFingerprintClass:Ljava/lang/Class;

    invoke-virtual {v6, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7f

    .line 215
    sget-object v6, Lcom/transsion/hubsdk/aosp/hardware/fingerprint/TranAospFingerprintManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fingerprint fingerprint :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_7f
    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {p1, p0, v6}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 220
    instance-of v6, p1, Ljava/lang/Integer;

    if-eqz v6, :cond_90

    .line 221
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_91

    :cond_90
    move p1, v1

    .line 224
    :goto_91
    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v6}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 226
    instance-of v6, v0, Ljava/lang/Integer;

    if-eqz v6, :cond_a2

    .line 227
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_a3

    :cond_a2
    move v0, v1

    .line 230
    :goto_a3
    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v2, p0, v6}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 232
    instance-of v6, v2, Ljava/lang/CharSequence;

    const-string v7, ""

    if-eqz v6, :cond_b2

    .line 233
    check-cast v2, Ljava/lang/CharSequence;

    goto :goto_b3

    :cond_b2
    move-object v2, v7

    .line 236
    :goto_b3
    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v3, p0, v6}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 238
    instance-of v6, v3, Ljava/lang/Integer;

    if-eqz v6, :cond_c4

    .line 239
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_c5

    :cond_c4
    move v3, v1

    .line 242
    :goto_c5
    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v4, p0, v6}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 244
    instance-of v6, v4, Ljava/lang/Long;

    if-eqz v6, :cond_d6

    .line 245
    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    goto :goto_d8

    :cond_d6
    const-wide/16 v8, 0x0

    .line 248
    :goto_d8
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v5, p0, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 250
    instance-of v1, p0, Ljava/lang/CharSequence;

    if-eqz v1, :cond_e5

    .line 251
    move-object v7, p0

    check-cast v7, Ljava/lang/CharSequence;

    .line 254
    :cond_e5
    new-instance p0, Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintInfo;

    invoke-direct {p0}, Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintInfo;-><init>()V

    .line 255
    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintInfo;->setUserId(I)V

    .line 256
    invoke-virtual {p0, v2}, Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintInfo;->setName(Ljava/lang/CharSequence;)V

    .line 257
    invoke-virtual {p0, v7}, Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintInfo;->setAppPkgName(Ljava/lang/CharSequence;)V

    .line 258
    invoke-virtual {p0, v8, v9}, Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintInfo;->setDeviceId(J)V

    .line 259
    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintInfo;->setGroupId(I)V

    .line 260
    invoke-virtual {p0, v3}, Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintInfo;->setBiometricId(I)V

    return-object p0
.end method

.method public getAppPackagename(I)Ljava/lang/String;
    .registers 5

    .line 118
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/hardware/fingerprint/TranAospFingerprintManager;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getAppPackagename"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 119
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/hardware/fingerprint/TranAospFingerprintManager;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 121
    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_27

    .line 122
    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_27
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAppUserId(I)I
    .registers 5

    .line 129
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/hardware/fingerprint/TranAospFingerprintManager;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getAppUserId"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 130
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/hardware/fingerprint/TranAospFingerprintManager;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 132
    instance-of p1, p0, Ljava/lang/Integer;

    if-eqz p1, :cond_2b

    .line 133
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_2b
    const/4 p0, 0x0

    return p0
.end method

.method public getBiometricId(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)I
    .registers 5

    .line 161
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    const-string v2, "getFingerprint"

    invoke-static {p0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 162
    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_32

    .line 165
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v1, "getBiometricId"

    new-array v2, v0, [Ljava/lang/Class;

    invoke-static {p1, v1, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 166
    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, p0, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 167
    instance-of p1, p0, Ljava/lang/Integer;

    if-eqz p1, :cond_32

    .line 168
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_32
    return v0
.end method

.method public getEnrolledFingerprints(I)Ljava/util/List;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 40
    iget-object v1, v0, Lcom/transsion/hubsdk/aosp/hardware/fingerprint/TranAospFingerprintManager;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getEnrolledFingerprints"

    invoke-static {v1, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 41
    iget-object v0, v0, Lcom/transsion/hubsdk/aosp/hardware/fingerprint/TranAospFingerprintManager;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 42
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 43
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 44
    instance-of v3, v0, Ljava/util/List;

    if-eqz v3, :cond_56

    .line 45
    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_36
    :goto_36
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_56

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 46
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    sget-object v5, Lcom/transsion/hubsdk/aosp/hardware/fingerprint/TranAospFingerprintManager;->sFingerprintClass:Ljava/lang/Class;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 47
    sget-object v4, Lcom/transsion/hubsdk/aosp/hardware/fingerprint/TranAospFingerprintManager;->sFingerprintClass:Ljava/lang/Class;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_36

    .line 52
    :cond_56
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5e

    goto/16 :goto_161

    .line 56
    :cond_5e
    sget-object v0, Lcom/transsion/hubsdk/aosp/hardware/fingerprint/TranAospFingerprintManager;->sFingerprintClass:Ljava/lang/Class;

    const-string v3, "getGroupId"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-static {v0, v3, v5}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 57
    sget-object v3, Lcom/transsion/hubsdk/aosp/hardware/fingerprint/TranAospFingerprintManager;->sFingerprintClass:Ljava/lang/Class;

    const-string v5, "getSubUserId"

    new-array v6, v4, [Ljava/lang/Class;

    invoke-static {v3, v5, v6}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 58
    sget-object v5, Lcom/transsion/hubsdk/aosp/hardware/fingerprint/TranAospFingerprintManager;->sFingerprintClass:Ljava/lang/Class;

    const-string v6, "getName"

    new-array v7, v4, [Ljava/lang/Class;

    invoke-static {v5, v6, v7}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 59
    sget-object v6, Lcom/transsion/hubsdk/aosp/hardware/fingerprint/TranAospFingerprintManager;->sFingerprintClass:Ljava/lang/Class;

    const-string v7, "getBiometricId"

    new-array v8, v4, [Ljava/lang/Class;

    invoke-static {v6, v7, v8}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 60
    sget-object v7, Lcom/transsion/hubsdk/aosp/hardware/fingerprint/TranAospFingerprintManager;->sFingerprintClass:Ljava/lang/Class;

    const-string v8, "getDeviceId"

    new-array v9, v4, [Ljava/lang/Class;

    invoke-static {v7, v8, v9}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 61
    sget-object v8, Lcom/transsion/hubsdk/aosp/hardware/fingerprint/TranAospFingerprintManager;->sFingerprintClass:Ljava/lang/Class;

    const-string v9, "getAppPkgName"

    new-array v10, v4, [Ljava/lang/Class;

    invoke-static {v8, v9, v10}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 62
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v10, v4

    :goto_a0
    if-ge v10, v9, :cond_161

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v10, v10, 0x1

    .line 63
    sget-object v12, Lcom/transsion/hubsdk/aosp/hardware/fingerprint/TranAospFingerprintManager;->sFingerprintClass:Ljava/lang/Class;

    invoke-virtual {v12, v11}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c6

    .line 64
    sget-object v12, Lcom/transsion/hubsdk/aosp/hardware/fingerprint/TranAospFingerprintManager;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "fingerprint fingerprint :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_c6
    new-array v12, v4, [Ljava/lang/Object;

    invoke-static {v0, v11, v12}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 69
    instance-of v13, v12, Ljava/lang/Integer;

    if-eqz v13, :cond_d7

    .line 70
    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    goto :goto_d8

    :cond_d7
    move v12, v4

    .line 73
    :goto_d8
    new-array v13, v4, [Ljava/lang/Object;

    invoke-static {v3, v11, v13}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 75
    instance-of v14, v13, Ljava/lang/Integer;

    if-eqz v14, :cond_e9

    .line 76
    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    goto :goto_ea

    :cond_e9
    move v13, v4

    .line 79
    :goto_ea
    new-array v14, v4, [Ljava/lang/Object;

    invoke-static {v5, v11, v14}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 81
    instance-of v15, v14, Ljava/lang/CharSequence;

    const-string v16, ""

    if-eqz v15, :cond_f9

    .line 82
    check-cast v14, Ljava/lang/CharSequence;

    goto :goto_fb

    :cond_f9
    move-object/from16 v14, v16

    .line 85
    :goto_fb
    new-array v15, v4, [Ljava/lang/Object;

    invoke-static {v6, v11, v15}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 87
    instance-of v4, v15, Ljava/lang/Integer;

    if-eqz v4, :cond_10f

    .line 88
    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_10b
    move-object/from16 p0, v0

    const/4 v15, 0x0

    goto :goto_111

    :cond_10f
    const/4 v4, 0x0

    goto :goto_10b

    .line 91
    :goto_111
    new-array v0, v15, [Ljava/lang/Object;

    invoke-static {v7, v11, v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 93
    instance-of v15, v0, Ljava/lang/Long;

    if-eqz v15, :cond_12a

    .line 94
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    :goto_121
    move-object v15, v1

    move-object/from16 p1, v3

    move-wide/from16 v0, v17

    const/4 v3, 0x0

    move-object/from16 v17, v5

    goto :goto_12d

    :cond_12a
    const-wide/16 v17, 0x0

    goto :goto_121

    .line 97
    :goto_12d
    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v8, v11, v5}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 99
    instance-of v11, v5, Ljava/lang/CharSequence;

    if-eqz v11, :cond_13b

    .line 100
    move-object/from16 v16, v5

    check-cast v16, Ljava/lang/CharSequence;

    :cond_13b
    move-object/from16 v5, v16

    .line 103
    new-instance v11, Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintInfo;

    invoke-direct {v11}, Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintInfo;-><init>()V

    .line 104
    invoke-virtual {v11, v13}, Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintInfo;->setUserId(I)V

    .line 105
    invoke-virtual {v11, v14}, Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintInfo;->setName(Ljava/lang/CharSequence;)V

    .line 106
    invoke-virtual {v11, v5}, Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintInfo;->setAppPkgName(Ljava/lang/CharSequence;)V

    .line 107
    invoke-virtual {v11, v0, v1}, Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintInfo;->setDeviceId(J)V

    .line 108
    invoke-virtual {v11, v12}, Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintInfo;->setGroupId(I)V

    .line 109
    invoke-virtual {v11, v4}, Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintInfo;->setBiometricId(I)V

    .line 110
    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move v4, v3

    move-object v1, v15

    move-object/from16 v5, v17

    move-object/from16 v3, p1

    goto/16 :goto_a0

    :cond_161
    :goto_161
    return-object v2
.end method

.method public isAuthenticating()Z
    .registers 5

    .line 183
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/hardware/fingerprint/TranAospFingerprintManager;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "isAuthenticating"

    invoke-static {v0, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 184
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/hardware/fingerprint/TranAospFingerprintManager;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 186
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_22

    .line 187
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_22
    return v1
.end method

.method public isClientActive()Z
    .registers 5

    .line 267
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/hardware/fingerprint/TranAospFingerprintManager;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "isClientActive"

    invoke-static {v0, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 269
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/hardware/fingerprint/TranAospFingerprintManager;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_20
    return v1
.end method

.method public notifyActivateFingerprint(Z)V
    .registers 5

    .line 177
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/hardware/fingerprint/TranAospFingerprintManager;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "notifyActivateFingerprint"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 178
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/hardware/fingerprint/TranAospFingerprintManager;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setAppAndUserIdForBiometrics(ILjava/lang/String;I)V
    .registers 7

    .line 140
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/hardware/fingerprint/TranAospFingerprintManager;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    filled-new-array {v1, v2, v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setAppAndUserIdForBiometrics"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 141
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/hardware/fingerprint/TranAospFingerprintManager;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setAppBiometrics(ILjava/lang/String;)V
    .registers 6

    .line 195
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/hardware/fingerprint/TranAospFingerprintManager;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    filled-new-array {v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setAppBiometrics"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 196
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/hardware/fingerprint/TranAospFingerprintManager;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setKeyguardClientVisible(Z)V
    .registers 5

    .line 276
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/hardware/fingerprint/TranAospFingerprintManager;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setKeyguardClientVisible"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 278
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/hardware/fingerprint/TranAospFingerprintManager;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_21
    return-void
.end method

.method public setMyClientVisible(Ljava/lang/String;Z)V
    .registers 8

    .line 146
    sget-object p0, Lcom/transsion/hubsdk/aosp/hardware/fingerprint/TranAospFingerprintManager;->sServiceManagerClass:Ljava/lang/Class;

    const-class v0, Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getService"

    invoke-static {p0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 147
    const-string v1, "fingerprint"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IBinder;

    .line 149
    sget-object v1, Lcom/transsion/hubsdk/aosp/hardware/fingerprint/TranAospFingerprintManager;->sClassName:Ljava/lang/Class;

    const-class v3, Landroid/os/IBinder;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    const-string v4, "asInterface"

    invoke-static {v1, v4, v3}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 150
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, v2, p0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_4e

    .line 153
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v0, v2}, [Ljava/lang/Class;

    move-result-object v0

    const-string v2, "setMyClientVisible"

    invoke-static {v1, v2, v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 155
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4e
    return-void
.end method

.method public setUdfpColor(I)V
    .registers 2

    .line 312
    sget-object p0, Lcom/transsion/hubsdk/aosp/hardware/fingerprint/TranAospFingerprintManager;->TAG:Ljava/lang/String;

    const-string p1, "AOSP FingerprintManager has no setUdfpColor method."

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startAppForFp(I)V
    .registers 5

    .line 284
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/hardware/fingerprint/TranAospFingerprintManager;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "startAppForFp"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 286
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/hardware/fingerprint/TranAospFingerprintManager;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_21
    return-void
.end method
