.class public Lcom/obs/services/crypto/CtrRSACipherGenerator;
.super Lcom/obs/services/crypto/CTRCipherGenerator;
.source "SourceFile"


# static fields
.field public static final ENCRYPTED_AES_KEY_META_NAME:Ljava/lang/String; = "encrypted-object-key"

.field public static final ENCRYPTED_ALGORITHM:Ljava/lang/String; = "AES256-Ctr/RSA-Object-Key/NoPadding"

.field protected static final RSA_ALGORITHM:Ljava/lang/String; = "RSA"


# instance fields
.field private privateKey:Ljava/security/PrivateKey;

.field private publicKey:Ljava/security/PublicKey;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/security/SecureRandom;Ljava/security/PrivateKey;Ljava/security/PublicKey;)V
    .registers 12

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p3

    .line 48
    invoke-direct/range {v0 .. v5}, Lcom/obs/services/crypto/CTRCipherGenerator;-><init>(Ljava/lang/String;[B[BZLjava/security/SecureRandom;)V

    .line 49
    iput-object p4, v0, Lcom/obs/services/crypto/CtrRSACipherGenerator;->privateKey:Ljava/security/PrivateKey;

    .line 50
    iput-object p5, v0, Lcom/obs/services/crypto/CtrRSACipherGenerator;->publicKey:Ljava/security/PublicKey;

    return-void
.end method

.method public static importPKCS8PrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .registers 6

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/4 p0, 0x0

    :goto_10
    move v2, p0

    .line 60
    :cond_11
    :goto_11
    :try_start_11
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_32

    .line 61
    const-string v4, "-----BEGIN PRIVATE KEY-----"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_21

    const/4 v2, 0x1

    goto :goto_11

    .line 63
    :cond_21
    const-string v4, "-----END PRIVATE KEY-----"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2a

    goto :goto_10

    :cond_2a
    if-eqz v2, :cond_11

    .line 66
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2f
    .catchall {:try_start_11 .. :try_end_2f} :catchall_30

    goto :goto_11

    :catchall_30
    move-exception p0

    goto :goto_51

    .line 69
    :cond_32
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 71
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object p0

    .line 72
    new-instance v0, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v0, p0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 73
    const-string p0, "RSA"

    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    .line 74
    invoke-virtual {p0, v0}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p0

    return-object p0

    .line 57
    :goto_51
    :try_start_51
    throw p0
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_52

    :catchall_52
    move-exception v0

    .line 69
    :try_start_53
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_57

    goto :goto_5b

    :catchall_57
    move-exception v1

    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5b
    throw v0
.end method

.method public static importPublicKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .registers 6

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/4 p0, 0x0

    :goto_10
    move v2, p0

    .line 84
    :cond_11
    :goto_11
    :try_start_11
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_32

    .line 85
    const-string v4, "-----BEGIN PUBLIC KEY-----"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_21

    const/4 v2, 0x1

    goto :goto_11

    .line 87
    :cond_21
    const-string v4, "-----END PUBLIC KEY-----"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2a

    goto :goto_10

    :cond_2a
    if-eqz v2, :cond_11

    .line 90
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2f
    .catchall {:try_start_11 .. :try_end_2f} :catchall_30

    goto :goto_11

    :catchall_30
    move-exception p0

    goto :goto_51

    .line 93
    :cond_32
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 95
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object p0

    .line 96
    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v0, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 97
    const-string p0, "RSA"

    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    .line 98
    invoke-virtual {p0, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0

    return-object p0

    .line 81
    :goto_51
    :try_start_51
    throw p0
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_52

    :catchall_52
    move-exception v0

    .line 93
    :try_start_53
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_57

    goto :goto_5b

    :catchall_57
    move-exception v1

    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5b
    throw v0
.end method


# virtual methods
.method public RSADecrypted([B)[B
    .registers 4

    .line 113
    const-string v0, "RSA"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x2

    .line 115
    iget-object p0, p0, Lcom/obs/services/crypto/CtrRSACipherGenerator;->privateKey:Ljava/security/PrivateKey;

    invoke-virtual {v0, v1, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 116
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0
.end method

.method public RSAEncrypted([B)[B
    .registers 4

    .line 104
    const-string v0, "RSA"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x1

    .line 106
    iget-object p0, p0, Lcom/obs/services/crypto/CtrRSACipherGenerator;->publicKey:Ljava/security/PublicKey;

    invoke-virtual {v0, v1, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 107
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0
.end method

.method public setPrivateKey(Ljava/security/PrivateKey;)V
    .registers 2

    .line 120
    iput-object p1, p0, Lcom/obs/services/crypto/CtrRSACipherGenerator;->privateKey:Ljava/security/PrivateKey;

    return-void
.end method

.method public setPublicKey(Ljava/security/PublicKey;)V
    .registers 2

    .line 124
    iput-object p1, p0, Lcom/obs/services/crypto/CtrRSACipherGenerator;->publicKey:Ljava/security/PublicKey;

    return-void
.end method
