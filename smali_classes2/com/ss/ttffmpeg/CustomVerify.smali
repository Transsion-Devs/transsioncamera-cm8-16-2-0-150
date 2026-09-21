.class public Lcom/ss/ttffmpeg/CustomVerify;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static TAG:Ljava/lang/String; = "custom_verify_ffmpeg"

.field private static getVerifyStatusMethod:Ljava/lang/reflect/Method; = null

.field private static hasInited:Z = false

.field private static verifyMethod:Ljava/lang/reflect/Method;

.field private static verifyResultClass:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 11
    const-class v0, Ljava/lang/String;

    .line 20
    :try_start_2
    const-string v1, "com.ttnet.org.chromium.net.X509Util"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "verifyServerCertificates"

    const-class v3, [[B

    filled-new-array {v3, v0, v0}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/ss/ttffmpeg/CustomVerify;->verifyMethod:Ljava/lang/reflect/Method;

    .line 22
    const-string v0, "com.ttnet.org.chromium.net.AndroidCertVerifyResult"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/ss/ttffmpeg/CustomVerify;->verifyResultClass:Ljava/lang/Class;

    .line 23
    const-string v1, "getStatus"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/ss/ttffmpeg/CustomVerify;->getVerifyStatusMethod:Ljava/lang/reflect/Method;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_27} :catch_28

    goto :goto_43

    :catch_28
    move-exception v0

    .line 25
    sget-object v1, Lcom/ss/ttffmpeg/CustomVerify;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "found verify class or method exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_43
    const/4 v0, 0x1

    .line 27
    sput-boolean v0, Lcom/ss/ttffmpeg/CustomVerify;->hasInited:Z

    .line 28
    sget-object v0, Lcom/ss/ttffmpeg/CustomVerify;->verifyMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_55

    sget-object v0, Lcom/ss/ttffmpeg/CustomVerify;->verifyResultClass:Ljava/lang/Class;

    if-eqz v0, :cond_55

    .line 29
    sget-object v0, Lcom/ss/ttffmpeg/CustomVerify;->TAG:Ljava/lang/String;

    const-string v1, "get verify method or verify result class suc"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_55
    return-void
.end method

.method private static final native _init()V
.end method

.method public static doVerify([[BLjava/lang/String;Ljava/lang/String;)I
    .registers 6

    .line 36
    sget-object v0, Lcom/ss/ttffmpeg/CustomVerify;->verifyMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_82

    sget-object v0, Lcom/ss/ttffmpeg/CustomVerify;->verifyResultClass:Ljava/lang/Class;

    if-eqz v0, :cond_82

    sget-object v0, Lcom/ss/ttffmpeg/CustomVerify;->getVerifyStatusMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_d

    goto :goto_82

    .line 42
    :cond_d
    :try_start_d
    sget-object v0, Lcom/ss/ttffmpeg/CustomVerify;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "host: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  authType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    sget-object v0, Lcom/ss/ttffmpeg/CustomVerify;->verifyMethod:Ljava/lang/reflect/Method;

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {v0, p1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 44
    sget-object p2, Lcom/ss/ttffmpeg/CustomVerify;->TAG:Ljava/lang/String;

    const-string v0, "get status end"

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    sget-object p2, Lcom/ss/ttffmpeg/CustomVerify;->getVerifyStatusMethod:Ljava/lang/reflect/Method;

    invoke-virtual {p2, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 46
    sget-object p1, Lcom/ss/ttffmpeg/CustomVerify;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "verify result status: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5f
    .catchall {:try_start_d .. :try_end_5f} :catchall_60

    return p0

    :catchall_60
    move-exception p0

    .line 49
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 50
    sget-object p1, Lcom/ss/ttffmpeg/CustomVerify;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "verify exception stacktrace:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const p0, -0x1869c

    return p0

    .line 37
    :cond_82
    :goto_82
    sget-object p0, Lcom/ss/ttffmpeg/CustomVerify;->TAG:Ljava/lang/String;

    const-string p1, "verify method is null ecception"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const p0, -0x1869b

    return p0
.end method
