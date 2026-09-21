.class public Lcom/alibaba/sdk/android/oss/common/auth/HmacSHA1Signature;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ALGORITHM:Ljava/lang/String; = "HmacSHA1"

.field private static final DEFAULT_ENCODING:Ljava/lang/String; = "UTF-8"

.field private static final LOCK:Ljava/lang/Object;

.field private static final VERSION:Ljava/lang/String; = "1"

.field private static macInstance:Ljavax/crypto/Mac;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alibaba/sdk/android/oss/common/auth/HmacSHA1Signature;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private sign([B[B)[B
    .registers 5

    .line 65
    :try_start_0
    sget-object v0, Lcom/alibaba/sdk/android/oss/common/auth/HmacSHA1Signature;->macInstance:Ljavax/crypto/Mac;

    if-nez v0, :cond_1c

    .line 66
    sget-object v0, Lcom/alibaba/sdk/android/oss/common/auth/HmacSHA1Signature;->LOCK:Ljava/lang/Object;

    monitor-enter v0
    :try_end_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_7} :catch_46
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_7} :catch_3e

    .line 67
    :try_start_7
    sget-object v1, Lcom/alibaba/sdk/android/oss/common/auth/HmacSHA1Signature;->macInstance:Ljavax/crypto/Mac;

    if-nez v1, :cond_18

    .line 68
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/common/auth/HmacSHA1Signature;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    sput-object v1, Lcom/alibaba/sdk/android/oss/common/auth/HmacSHA1Signature;->macInstance:Ljavax/crypto/Mac;

    goto :goto_18

    :catchall_16
    move-exception p0

    goto :goto_1a

    .line 70
    :cond_18
    :goto_18
    monitor-exit v0

    goto :goto_1c

    :goto_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_16

    :try_start_1b
    throw p0
    :try_end_1c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1b .. :try_end_1c} :catch_46
    .catch Ljava/security/InvalidKeyException; {:try_start_1b .. :try_end_1c} :catch_3e

    .line 75
    :cond_1c
    :goto_1c
    :try_start_1c
    sget-object v0, Lcom/alibaba/sdk/android/oss/common/auth/HmacSHA1Signature;->macInstance:Ljavax/crypto/Mac;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Mac;
    :try_end_24
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1c .. :try_end_24} :catch_25
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1c .. :try_end_24} :catch_46
    .catch Ljava/security/InvalidKeyException; {:try_start_1c .. :try_end_24} :catch_3e

    goto :goto_2d

    .line 78
    :catch_25
    :try_start_25
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/common/auth/HmacSHA1Signature;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 80
    :goto_2d
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/common/auth/HmacSHA1Signature;->getAlgorithm()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p1, p0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 81
    invoke-virtual {v0, p2}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p0
    :try_end_3d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_25 .. :try_end_3d} :catch_46
    .catch Ljava/security/InvalidKeyException; {:try_start_25 .. :try_end_3d} :catch_3e

    return-object p0

    .line 85
    :catch_3e
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "key must not be null"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 83
    :catch_46
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Unsupported algorithm: HmacSHA1"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public computeSignature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 42
    const-string v0, "UTF-8"

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/common/auth/HmacSHA1Signature;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;Z)V

    .line 43
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/common/auth/HmacSHA1Signature;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;Z)V

    .line 46
    :try_start_11
    const-string v1, "sign start"

    invoke-static {v1}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 49
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/alibaba/sdk/android/oss/common/auth/HmacSHA1Signature;->sign([B[B)[B

    move-result-object p0

    .line 50
    const-string p1, "base64 start"

    invoke-static {p1}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;)V

    .line 51
    invoke-static {p0}, Lcom/alibaba/sdk/android/oss/common/utils/BinaryUtil;->toBase64String([B)Ljava/lang/String;

    move-result-object p0
    :try_end_2b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_11 .. :try_end_2b} :catch_2c

    return-object p0

    .line 53
    :catch_2c
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Unsupported algorithm: UTF-8"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .registers 1

    .line 34
    const-string p0, "HmacSHA1"

    return-object p0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 1

    .line 38
    const-string p0, "1"

    return-object p0
.end method
