.class public abstract Lcom/alibaba/sdk/android/oss/signer/ServiceSignature;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/alibaba/sdk/android/oss/signer/ServiceSignature;
    .registers 1

    .line 56
    new-instance v0, Lcom/alibaba/sdk/android/oss/signer/HmacSHA1Signature;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/oss/signer/HmacSHA1Signature;-><init>()V

    return-object v0
.end method

.method public static create(Ljava/lang/String;)Lcom/alibaba/sdk/android/oss/signer/ServiceSignature;
    .registers 4

    .line 66
    const-string v0, "HmacSHA256"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 67
    new-instance p0, Lcom/alibaba/sdk/android/oss/signer/HmacSHA256Signature;

    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/signer/HmacSHA256Signature;-><init>()V

    return-object p0

    .line 68
    :cond_e
    const-string v0, "HmacSHA1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 69
    new-instance p0, Lcom/alibaba/sdk/android/oss/signer/HmacSHA1Signature;

    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/signer/HmacSHA1Signature;-><init>()V

    return-object p0

    .line 71
    :cond_1c
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abstract computeHash([B[B)[B
.end method

.method public abstract computeSignature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getAlgorithm()Ljava/lang/String;
.end method

.method public abstract getVersion()Ljava/lang/String;
.end method

.method protected sign([B[BLjavax/crypto/Mac;Ljava/lang/Object;Ljava/lang/String;)[B
    .registers 6

    if-nez p3, :cond_14

    .line 80
    :try_start_2
    monitor-enter p4
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_3} :catch_12
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_3} :catch_10

    if-nez p3, :cond_c

    .line 82
    :try_start_5
    invoke-static {p5}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object p3

    goto :goto_c

    :catchall_a
    move-exception p0

    goto :goto_e

    .line 84
    :cond_c
    :goto_c
    monitor-exit p4

    goto :goto_14

    :goto_e
    monitor-exit p4
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_a

    :try_start_f
    throw p0
    :try_end_10
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_f .. :try_end_10} :catch_12
    .catch Ljava/security/InvalidKeyException; {:try_start_f .. :try_end_10} :catch_10

    :catch_10
    move-exception p0

    goto :goto_2c

    :catch_12
    move-exception p0

    goto :goto_43

    .line 89
    :cond_14
    :goto_14
    :try_start_14
    invoke-virtual {p3}, Ljavax/crypto/Mac;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/crypto/Mac;
    :try_end_1a
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_14 .. :try_end_1a} :catch_1b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_14 .. :try_end_1a} :catch_12
    .catch Ljava/security/InvalidKeyException; {:try_start_14 .. :try_end_1a} :catch_10

    goto :goto_1f

    .line 92
    :catch_1b
    :try_start_1b
    invoke-static {p5}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object p0

    .line 94
    :goto_1f
    new-instance p3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {p3, p1, p5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {p0, p3}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 95
    invoke-virtual {p0, p2}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p0
    :try_end_2b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1b .. :try_end_2b} :catch_12
    .catch Ljava/security/InvalidKeyException; {:try_start_1b .. :try_end_2b} :catch_10

    return-object p0

    .line 99
    :goto_2c
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Invalid key: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 97
    :goto_43
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unsupported algorithm: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
