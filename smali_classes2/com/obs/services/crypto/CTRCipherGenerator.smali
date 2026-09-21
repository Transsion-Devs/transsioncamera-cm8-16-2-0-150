.class public Lcom/obs/services/crypto/CTRCipherGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/obs/services/crypto/CTRCipherGenerator$SHA256Info;
    }
.end annotation


# static fields
.field protected static final AES_ALGORITHM:Ljava/lang/String; = "AES/CTR/NoPadding"

.field public static final CRYPTO_IV_BYTES_LEN:I = 0x10

.field public static final CRYPTO_KEY_BYTES_LEN:I = 0x20

.field public static final ENCRYPTED_ALGORITHM:Ljava/lang/String; = "AES256-Ctr/iv_base64/NoPadding"

.field public static final ENCRYPTED_ALGORITHM_META_NAME:Ljava/lang/String; = "encrypted-algorithm"

.field public static final ENCRYPTED_SHA_256_META_NAME:Ljava/lang/String; = "encrypted-sha256"

.field public static final ENCRYPTED_START_META_NAME:Ljava/lang/String; = "encrypted-start"

.field public static final MASTER_KEY_INFO_META_NAME:Ljava/lang/String; = "master-key-info"

.field public static final PLAINTEXT_CONTENT_LENGTH_META_NAME:Ljava/lang/String; = "plaintext-content-length"

.field public static final PLAINTEXT_SHA_256_META_NAME:Ljava/lang/String; = "plaintext-sha256"

.field private static final log:Lcom/obs/log/ILogger;

.field static sha256BufferLen:I = 0x10000


# instance fields
.field private cryptoIvBytes:[B

.field private cryptoKeyBytes:[B

.field private masterKeyInfo:Ljava/lang/String;

.field private needSha256:Z

.field private secureRandom:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 303
    const-class v0, Lcom/obs/services/crypto/CTRCipherGenerator;

    invoke-static {v0}, Lcom/obs/log/LoggerBuilder;->getLogger(Ljava/lang/Class;)Lcom/obs/log/ILogger;

    move-result-object v0

    sput-object v0, Lcom/obs/services/crypto/CTRCipherGenerator;->log:Lcom/obs/log/ILogger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BZLjava/security/SecureRandom;)V
    .registers 5

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object p2, p0, Lcom/obs/services/crypto/CTRCipherGenerator;->cryptoKeyBytes:[B

    .line 125
    iput-object p1, p0, Lcom/obs/services/crypto/CTRCipherGenerator;->masterKeyInfo:Ljava/lang/String;

    .line 126
    iput-object p4, p0, Lcom/obs/services/crypto/CTRCipherGenerator;->secureRandom:Ljava/security/SecureRandom;

    .line 127
    iput-boolean p3, p0, Lcom/obs/services/crypto/CTRCipherGenerator;->needSha256:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B[BZLjava/security/SecureRandom;)V
    .registers 6

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p1, p0, Lcom/obs/services/crypto/CTRCipherGenerator;->masterKeyInfo:Ljava/lang/String;

    .line 116
    iput-object p2, p0, Lcom/obs/services/crypto/CTRCipherGenerator;->cryptoIvBytes:[B

    .line 117
    iput-object p3, p0, Lcom/obs/services/crypto/CTRCipherGenerator;->cryptoKeyBytes:[B

    .line 118
    iput-boolean p4, p0, Lcom/obs/services/crypto/CTRCipherGenerator;->needSha256:Z

    .line 119
    iput-object p5, p0, Lcom/obs/services/crypto/CTRCipherGenerator;->secureRandom:Ljava/security/SecureRandom;

    return-void
.end method

.method public static getAESEncryptedBytes([BII[B[B)[B
    .registers 7

    .line 165
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p3, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 166
    new-instance p3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {p3, p4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 167
    const-string p4, "AES/CTR/NoPadding"

    invoke-static {p4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p4

    const/4 v1, 0x1

    .line 168
    invoke-virtual {p4, v1, v0, p3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 169
    invoke-virtual {p4, p0, p1, p2}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public static getBase64Info([B)Ljava/lang/String;
    .registers 1

    .line 154
    invoke-static {p0}, Lcom/obs/services/internal/utils/ServiceUtils;->toBase64([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getBytesFromBase64(Ljava/lang/String;)[B
    .registers 1

    .line 158
    invoke-static {p0}, Lcom/obs/services/internal/utils/ServiceUtils;->fromBase64(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static getFileSha256Bytes(Ljava/lang/String;)[B
    .registers 7

    .line 216
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 217
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 218
    :try_start_b
    sget p0, Lcom/obs/services/crypto/CTRCipherGenerator;->sha256BufferLen:I

    new-array v2, p0, [B

    :goto_f
    const/4 v3, 0x0

    .line 220
    invoke-virtual {v1, v2, v3, p0}, Ljava/io/FileInputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1d

    .line 222
    invoke-virtual {v0, v2, v3, v4}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_1a
    .catchall {:try_start_b .. :try_end_1a} :catchall_1b

    goto :goto_f

    :catchall_1b
    move-exception p0

    goto :goto_25

    .line 224
    :cond_1d
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 225
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    return-object p0

    .line 217
    :goto_25
    :try_start_25
    throw p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_26

    :catchall_26
    move-exception v0

    .line 224
    :try_start_27
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_2b

    goto :goto_2f

    :catchall_2b
    move-exception v1

    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2f
    throw v0
.end method

.method public static getSha256BufferLen()I
    .registers 1

    .line 290
    sget v0, Lcom/obs/services/crypto/CTRCipherGenerator;->sha256BufferLen:I

    return v0
.end method

.method public static setSha256BufferLen(I)V
    .registers 1

    .line 294
    sput p0, Lcom/obs/services/crypto/CTRCipherGenerator;->sha256BufferLen:I

    return-void
.end method


# virtual methods
.method public computeSHA256HashAES(Ljava/io/InputStream;[B[BZ)Lcom/obs/services/crypto/CTRCipherGenerator$SHA256Info;
    .registers 13

    .line 234
    const-string v0, "close failed."

    const-string v1, ""

    const-string v2, "SHA-256"

    const/4 v3, 0x0

    .line 236
    :try_start_7
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    const-string v5, "AES"

    invoke-direct {v4, p3, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 237
    new-instance p3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {p3, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 238
    const-string p2, "AES/CTR/NoPadding"

    invoke-static {p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p2

    const/4 v5, 0x1

    .line 239
    invoke-virtual {p2, v5, v4, p3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 240
    new-instance p3, Ljava/io/BufferedInputStream;

    invoke-direct {p3, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_22} :catch_b5
    .catchall {:try_start_7 .. :try_end_22} :catchall_b3

    .line 241
    :try_start_22
    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    .line 242
    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 243
    sget v3, Lcom/obs/services/crypto/CTRCipherGenerator;->sha256BufferLen:I

    new-array v4, v3, [B

    :cond_2e
    :goto_2e
    const/4 v5, 0x0

    .line 245
    invoke-virtual {p3, v4, v5, v3}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_4a

    .line 247
    invoke-virtual {p2, v4, v5, v6}, Ljavax/crypto/Cipher;->update([BII)[B

    move-result-object v7

    .line 249
    invoke-virtual {v2, v7, v5, v6}, Ljava/security/MessageDigest;->update([BII)V

    if-eqz p4, :cond_2e

    .line 252
    invoke-virtual {p1, v4, v5, v6}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_2e

    :catchall_43
    move-exception p0

    move-object v3, p3

    goto/16 :goto_bb

    :catch_47
    move-exception p0

    move-object v3, p3

    goto :goto_b6

    .line 256
    :cond_4a
    new-instance p2, Lcom/obs/services/crypto/CTRCipherGenerator$SHA256Info;

    invoke-direct {p2, p0, v1, v1}, Lcom/obs/services/crypto/CTRCipherGenerator$SHA256Info;-><init>(Lcom/obs/services/crypto/CTRCipherGenerator;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    .line 259
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 260
    array-length v2, p0
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_59} :catch_47
    .catchall {:try_start_22 .. :try_end_59} :catchall_43

    move v3, v5

    :goto_5a
    const-string v4, "%02x"

    if-ge v3, v2, :cond_72

    :try_start_5e
    aget-byte v6, p0, v3

    .line 261
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_5a

    .line 263
    :cond_72
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/obs/services/crypto/CTRCipherGenerator$SHA256Info;->setSha256ForAESEncrypted(Ljava/lang/String;)V

    if-eqz p4, :cond_a0

    .line 266
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    .line 267
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 268
    array-length p1, p0

    :goto_83
    if-ge v5, p1, :cond_99

    aget-byte p4, p0, v5

    .line 269
    invoke-static {p4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p4

    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object p4

    invoke-static {v4, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_83

    .line 271
    :cond_99
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/obs/services/crypto/CTRCipherGenerator$SHA256Info;->setSha256ForPlainText(Ljava/lang/String;)V
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_a0} :catch_47
    .catchall {:try_start_5e .. :try_end_a0} :catchall_43

    .line 279
    :cond_a0
    :try_start_a0
    invoke-virtual {p3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_a3
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_a3} :catch_a4

    return-object p2

    :catch_a4
    move-exception p0

    .line 281
    sget-object p1, Lcom/obs/services/crypto/CTRCipherGenerator;->log:Lcom/obs/log/ILogger;

    invoke-interface {p1}, Lcom/obs/log/ILogger;->isWarnEnabled()Z

    move-result p1

    if-eqz p1, :cond_b2

    .line 282
    sget-object p1, Lcom/obs/services/crypto/CTRCipherGenerator;->log:Lcom/obs/log/ILogger;

    invoke-interface {p1, v0, p0}, Lcom/obs/log/ILogger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_b2
    return-object p2

    :catchall_b3
    move-exception p0

    goto :goto_bb

    :catch_b5
    move-exception p0

    .line 275
    :goto_b6
    :try_start_b6
    invoke-static {p0}, Lcom/obs/services/internal/utils/ServiceUtils;->changeFromException(Ljava/lang/Exception;)Lcom/obs/services/exception/ObsException;

    move-result-object p0

    throw p0
    :try_end_bb
    .catchall {:try_start_b6 .. :try_end_bb} :catchall_b3

    :goto_bb
    if-eqz v3, :cond_cf

    .line 279
    :try_start_bd
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_c0
    .catch Ljava/io/IOException; {:try_start_bd .. :try_end_c0} :catch_c1

    goto :goto_cf

    :catch_c1
    move-exception p1

    .line 281
    sget-object p2, Lcom/obs/services/crypto/CTRCipherGenerator;->log:Lcom/obs/log/ILogger;

    invoke-interface {p2}, Lcom/obs/log/ILogger;->isWarnEnabled()Z

    move-result p2

    if-eqz p2, :cond_cf

    .line 282
    sget-object p2, Lcom/obs/services/crypto/CTRCipherGenerator;->log:Lcom/obs/log/ILogger;

    invoke-interface {p2, v0, p1}, Lcom/obs/log/ILogger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 286
    :cond_cf
    :goto_cf
    throw p0
.end method

.method public getAES256DecryptedStream(Ljava/io/InputStream;[B[B)Ljavax/crypto/CipherInputStream;
    .registers 5

    .line 134
    new-instance p0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v0, "AES"

    invoke-direct {p0, p3, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 135
    new-instance p3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {p3, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 136
    const-string p2, "AES/CTR/NoPadding"

    invoke-static {p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p2

    const/4 v0, 0x2

    .line 137
    invoke-virtual {p2, v0, p0, p3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 138
    new-instance p0, Ljavax/crypto/CipherInputStream;

    invoke-direct {p0, p1, p2}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    return-object p0
.end method

.method public getAES256EncryptedStream(Ljava/io/InputStream;[B[B)Ljavax/crypto/CipherInputStream;
    .registers 5

    .line 145
    new-instance p0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v0, "AES"

    invoke-direct {p0, p3, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 146
    new-instance p3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {p3, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 147
    const-string p2, "AES/CTR/NoPadding"

    invoke-static {p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p2

    const/4 v0, 0x1

    .line 148
    invoke-virtual {p2, v0, p0, p3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 150
    new-instance p0, Ljavax/crypto/CipherInputStream;

    invoke-direct {p0, p1, p2}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    return-object p0
.end method

.method public getCryptoIvBytes()[B
    .registers 1

    .line 72
    iget-object p0, p0, Lcom/obs/services/crypto/CTRCipherGenerator;->cryptoIvBytes:[B

    return-object p0
.end method

.method public getCryptoKeyBytes()[B
    .registers 1

    .line 84
    iget-object p0, p0, Lcom/obs/services/crypto/CTRCipherGenerator;->cryptoKeyBytes:[B

    return-object p0
.end method

.method public getMasterKeyInfo()Ljava/lang/String;
    .registers 1

    .line 64
    iget-object p0, p0, Lcom/obs/services/crypto/CTRCipherGenerator;->masterKeyInfo:Ljava/lang/String;

    return-object p0
.end method

.method public getRandomBytes(I)[B
    .registers 2

    .line 92
    new-array p1, p1, [B

    .line 93
    iget-object p0, p0, Lcom/obs/services/crypto/CTRCipherGenerator;->secureRandom:Ljava/security/SecureRandom;

    invoke-virtual {p0, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object p1
.end method

.method public getRandomCryptoIvBytes()[B
    .registers 2

    const/16 v0, 0x10

    .line 76
    invoke-virtual {p0, v0}, Lcom/obs/services/crypto/CTRCipherGenerator;->getRandomBytes(I)[B

    move-result-object p0

    return-object p0
.end method

.method public getRandomCryptoKeyBytes()[B
    .registers 2

    const/16 v0, 0x20

    .line 88
    invoke-virtual {p0, v0}, Lcom/obs/services/crypto/CTRCipherGenerator;->getRandomBytes(I)[B

    move-result-object p0

    return-object p0
.end method

.method public getSecureRandom()Ljava/security/SecureRandom;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/obs/services/crypto/CTRCipherGenerator;->secureRandom:Ljava/security/SecureRandom;

    return-object p0
.end method

.method public isNeedSha256()Z
    .registers 1

    .line 102
    iget-boolean p0, p0, Lcom/obs/services/crypto/CTRCipherGenerator;->needSha256:Z

    return p0
.end method

.method public setBase64AES256Iv(Ljava/lang/String;)V
    .registers 4

    .line 181
    invoke-static {p1}, Lcom/obs/services/internal/utils/ServiceUtils;->fromBase64(Ljava/lang/String;)[B

    move-result-object p1

    .line 182
    array-length v0, p1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_c

    .line 185
    iput-object p1, p0, Lcom/obs/services/crypto/CTRCipherGenerator;->cryptoIvBytes:[B

    return-void

    .line 183
    :cond_c
    new-instance p0, Lcom/obs/services/exception/ObsException;

    const-string p1, "cryptoIvBytes.length must be 16"

    invoke-direct {p0, p1}, Lcom/obs/services/exception/ObsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setBase64AES256Key(Ljava/lang/String;)V
    .registers 4

    .line 173
    invoke-static {p1}, Lcom/obs/services/internal/utils/ServiceUtils;->fromBase64(Ljava/lang/String;)[B

    move-result-object p1

    .line 174
    array-length v0, p1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_c

    .line 177
    iput-object p1, p0, Lcom/obs/services/crypto/CTRCipherGenerator;->cryptoKeyBytes:[B

    return-void

    .line 175
    :cond_c
    new-instance p0, Lcom/obs/services/exception/ObsException;

    const-string p1, "cryptoKeyBytes.length must be 32"

    invoke-direct {p0, p1}, Lcom/obs/services/exception/ObsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setCryptoIvBytes([B)V
    .registers 2

    .line 80
    iput-object p1, p0, Lcom/obs/services/crypto/CTRCipherGenerator;->cryptoIvBytes:[B

    return-void
.end method

.method public setCryptoKeyBytes([B)V
    .registers 2

    .line 98
    iput-object p1, p0, Lcom/obs/services/crypto/CTRCipherGenerator;->cryptoKeyBytes:[B

    return-void
.end method

.method public setMasterKeyInfo(Ljava/lang/String;)V
    .registers 2

    .line 68
    iput-object p1, p0, Lcom/obs/services/crypto/CTRCipherGenerator;->masterKeyInfo:Ljava/lang/String;

    return-void
.end method

.method public setNeedSha256(Z)V
    .registers 2

    .line 106
    iput-boolean p1, p0, Lcom/obs/services/crypto/CTRCipherGenerator;->needSha256:Z

    return-void
.end method

.method public setSecureRandom(Ljava/security/SecureRandom;)V
    .registers 2

    .line 60
    iput-object p1, p0, Lcom/obs/services/crypto/CTRCipherGenerator;->secureRandom:Ljava/security/SecureRandom;

    return-void
.end method
