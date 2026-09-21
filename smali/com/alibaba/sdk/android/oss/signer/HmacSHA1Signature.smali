.class public Lcom/alibaba/sdk/android/oss/signer/HmacSHA1Signature;
.super Lcom/alibaba/sdk/android/oss/signer/ServiceSignature;
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

    .line 20
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alibaba/sdk/android/oss/signer/HmacSHA1Signature;->LOCK:Ljava/lang/Object;

    .line 49
    :try_start_7
    const-string v0, "HmacSHA1"

    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/oss/signer/HmacSHA1Signature;->macInstance:Ljavax/crypto/Mac;
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_f

    :catchall_f
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/signer/ServiceSignature;-><init>()V

    return-void
.end method


# virtual methods
.method public computeHash([B[B)[B
    .registers 9

    .line 44
    sget-object v3, Lcom/alibaba/sdk/android/oss/signer/HmacSHA1Signature;->macInstance:Ljavax/crypto/Mac;

    sget-object v4, Lcom/alibaba/sdk/android/oss/signer/HmacSHA1Signature;->LOCK:Ljava/lang/Object;

    const-string v5, "HmacSHA1"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/sdk/android/oss/signer/ServiceSignature;->sign([B[BLjavax/crypto/Mac;Ljava/lang/Object;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public computeSignature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    .line 35
    const-string v0, "UTF-8"

    :try_start_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    sget-object v4, Lcom/alibaba/sdk/android/oss/signer/HmacSHA1Signature;->macInstance:Ljavax/crypto/Mac;

    sget-object v5, Lcom/alibaba/sdk/android/oss/signer/HmacSHA1Signature;->LOCK:Ljava/lang/Object;

    const-string v6, "HmacSHA1"

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/sdk/android/oss/signer/ServiceSignature;->sign([B[BLjavax/crypto/Mac;Ljava/lang/Object;Ljava/lang/String;)[B

    move-result-object p0

    .line 37
    invoke-static {p0}, Lcom/alibaba/sdk/android/oss/common/utils/BinaryUtil;->toBase64String([B)Ljava/lang/String;

    move-result-object p0
    :try_end_19
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_19} :catch_1a

    return-object p0

    :catch_1a
    move-exception v0

    move-object p0, v0

    .line 39
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unsupported algorithm: UTF-8"

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public getAlgorithm()Ljava/lang/String;
    .registers 1

    .line 26
    const-string p0, "HmacSHA1"

    return-object p0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 1

    .line 30
    const-string p0, "1"

    return-object p0
.end method
