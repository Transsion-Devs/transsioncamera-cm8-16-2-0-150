.class public Lcom/obs/services/crypto/CryptoObsClient;
.super Lcom/obs/services/ObsClient;
.source "SourceFile"


# static fields
.field private static final log:Lcom/obs/log/ILogger;


# instance fields
.field private ctrCipherGenerator:Lcom/obs/services/crypto/CTRCipherGenerator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 68
    const-class v0, Lcom/obs/services/crypto/CryptoObsClient;

    invoke-static {v0}, Lcom/obs/log/LoggerBuilder;->getLogger(Ljava/lang/Class;)Lcom/obs/log/ILogger;

    move-result-object v0

    sput-object v0, Lcom/obs/services/crypto/CryptoObsClient;->log:Lcom/obs/log/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/obs/services/IObsCredentialsProvider;Lcom/obs/services/ObsConfiguration;Lcom/obs/services/crypto/CTRCipherGenerator;)V
    .registers 4

    .line 118
    invoke-direct {p0, p1, p2}, Lcom/obs/services/ObsClient;-><init>(Lcom/obs/services/IObsCredentialsProvider;Lcom/obs/services/ObsConfiguration;)V

    .line 119
    iput-object p3, p0, Lcom/obs/services/crypto/CryptoObsClient;->ctrCipherGenerator:Lcom/obs/services/crypto/CTRCipherGenerator;

    return-void
.end method

.method public constructor <init>(Lcom/obs/services/IObsCredentialsProvider;Ljava/lang/String;Lcom/obs/services/crypto/CTRCipherGenerator;)V
    .registers 4

    .line 112
    invoke-direct {p0, p1, p2}, Lcom/obs/services/ObsClient;-><init>(Lcom/obs/services/IObsCredentialsProvider;Ljava/lang/String;)V

    .line 113
    iput-object p3, p0, Lcom/obs/services/crypto/CryptoObsClient;->ctrCipherGenerator:Lcom/obs/services/crypto/CTRCipherGenerator;

    return-void
.end method

.method public constructor <init>(Lcom/obs/services/ObsConfiguration;Lcom/obs/services/crypto/CTRCipherGenerator;)V
    .registers 3

    .line 76
    invoke-direct {p0, p1}, Lcom/obs/services/ObsClient;-><init>(Lcom/obs/services/ObsConfiguration;)V

    .line 77
    iput-object p2, p0, Lcom/obs/services/crypto/CryptoObsClient;->ctrCipherGenerator:Lcom/obs/services/crypto/CTRCipherGenerator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/obs/services/crypto/CTRCipherGenerator;)V
    .registers 3

    .line 71
    invoke-direct {p0, p1}, Lcom/obs/services/ObsClient;-><init>(Ljava/lang/String;)V

    .line 72
    iput-object p2, p0, Lcom/obs/services/crypto/CryptoObsClient;->ctrCipherGenerator:Lcom/obs/services/crypto/CTRCipherGenerator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/ObsConfiguration;Lcom/obs/services/crypto/CTRCipherGenerator;)V
    .registers 5

    .line 87
    invoke-direct {p0, p1, p2, p3}, Lcom/obs/services/ObsClient;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/ObsConfiguration;)V

    .line 88
    iput-object p4, p0, Lcom/obs/services/crypto/CryptoObsClient;->ctrCipherGenerator:Lcom/obs/services/crypto/CTRCipherGenerator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/ObsConfiguration;Lcom/obs/services/crypto/CTRCipherGenerator;)V
    .registers 6

    .line 107
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/obs/services/ObsClient;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/ObsConfiguration;)V

    .line 108
    iput-object p5, p0, Lcom/obs/services/crypto/CryptoObsClient;->ctrCipherGenerator:Lcom/obs/services/crypto/CTRCipherGenerator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/crypto/CTRCipherGenerator;)V
    .registers 5

    .line 81
    invoke-direct {p0, p1, p2, p3}, Lcom/obs/services/ObsClient;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iput-object p4, p0, Lcom/obs/services/crypto/CryptoObsClient;->ctrCipherGenerator:Lcom/obs/services/crypto/CTRCipherGenerator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/crypto/CTRCipherGenerator;)V
    .registers 6

    .line 97
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/obs/services/ObsClient;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iput-object p5, p0, Lcom/obs/services/crypto/CryptoObsClient;->ctrCipherGenerator:Lcom/obs/services/crypto/CTRCipherGenerator;

    return-void
.end method


# virtual methods
.method public getCtrCipherGenerator()Lcom/obs/services/crypto/CTRCipherGenerator;
    .registers 1

    .line 449
    iget-object p0, p0, Lcom/obs/services/crypto/CryptoObsClient;->ctrCipherGenerator:Lcom/obs/services/crypto/CTRCipherGenerator;

    return-object p0
.end method

.method public getObject(Lcom/obs/services/model/GetObjectRequest;)Lcom/obs/services/model/ObsObject;
    .registers 4

    .line 299
    const-string v0, "GetObjectRequest is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 300
    invoke-virtual {p1}, Lcom/obs/services/model/GetObjectMetadataRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "objectKey is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull2(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/obs/services/crypto/CryptoObsClient$2;

    invoke-direct {v1, p0, p1}, Lcom/obs/services/crypto/CryptoObsClient$2;-><init>(Lcom/obs/services/crypto/CryptoObsClient;Lcom/obs/services/model/GetObjectRequest;)V

    .line 301
    const-string p1, "getObject"

    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/ObsObject;

    return-object p0
.end method

.method protected getObjectImpl(Lcom/obs/services/model/GetObjectRequest;)Lcom/obs/services/model/ObsObject;
    .registers 14

    .line 315
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/RequestConvertor;->transGetObjectRequest(Lcom/obs/services/model/GetObjectRequest;)Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;

    move-result-object v0

    .line 316
    invoke-virtual {p1}, Lcom/obs/services/model/GetObjectRequest;->getRequestParameters()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 317
    invoke-virtual {v0}, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;->getParams()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/obs/services/model/GetObjectRequest;->getRequestParameters()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 321
    :cond_15
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v4

    .line 322
    invoke-virtual {p1}, Lcom/obs/services/model/GetObjectMetadataRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v5

    .line 323
    invoke-virtual {v0}, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;->getParams()Ljava/util/Map;

    move-result-object v6

    .line 324
    invoke-virtual {v0}, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;->getHeaders()Ljava/util/Map;

    move-result-object v7

    .line 325
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getUserHeaders()Ljava/util/HashMap;

    move-result-object v8

    const/4 v9, 0x0

    .line 327
    invoke-virtual {p1}, Lcom/obs/services/model/GetObjectRequest;->isEncodeHeaders()Z

    move-result v10

    move-object v3, p0

    .line 320
    invoke-virtual/range {v3 .. v10}, Lcom/obs/services/internal/RestStorageService;->performRestGet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;ZZ)Lokhttp3/Response;

    move-result-object p0

    .line 330
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/obs/services/model/GetObjectRequest;->isEncodeHeaders()Z

    move-result v1

    invoke-virtual {v3, v0, p0, v1}, Lcom/obs/services/internal/service/ObsObjectBaseService;->getObsFSAttributeFromResponse(Ljava/lang/String;Lokhttp3/Response;Z)Lcom/obs/services/model/fs/ObsFSAttribute;

    move-result-object v0

    .line 332
    new-instance v1, Lcom/obs/services/model/fs/ReadFileResult;

    invoke-direct {v1}, Lcom/obs/services/model/fs/ReadFileResult;-><init>()V

    .line 333
    invoke-virtual {p1}, Lcom/obs/services/model/GetObjectMetadataRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/obs/services/model/ObsObject;->setObjectKey(Ljava/lang/String;)V

    .line 334
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/obs/services/model/ObsObject;->setBucketName(Ljava/lang/String;)V

    .line 335
    invoke-virtual {v1, v0}, Lcom/obs/services/model/ObsObject;->setMetadata(Lcom/obs/services/model/ObjectMetadata;)V

    .line 339
    iget-object v2, v3, Lcom/obs/services/crypto/CryptoObsClient;->ctrCipherGenerator:Lcom/obs/services/crypto/CTRCipherGenerator;

    if-eqz v2, :cond_f8

    .line 343
    invoke-virtual {v0}, Lcom/obs/services/model/HeaderResponse;->getOriginalHeaders()Ljava/util/Map;

    move-result-object v2

    const-string v4, "x-obs-meta-encrypted-algorithm"

    .line 344
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 348
    invoke-virtual {v0}, Lcom/obs/services/model/HeaderResponse;->getOriginalHeaders()Ljava/util/Map;

    move-result-object v4

    const-string v5, "x-obs-meta-encrypted-start"

    .line 349
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 351
    invoke-virtual {v3, v2}, Lcom/obs/services/crypto/CryptoObsClient;->isValidEncryptedAlgorithm(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e5

    .line 352
    iget-object v5, v3, Lcom/obs/services/crypto/CryptoObsClient;->ctrCipherGenerator:Lcom/obs/services/crypto/CTRCipherGenerator;

    invoke-virtual {v5}, Lcom/obs/services/crypto/CTRCipherGenerator;->getCryptoKeyBytes()[B

    move-result-object v5

    .line 353
    const-string v6, "AES256-Ctr/RSA-Object-Key/NoPadding"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c7

    .line 355
    iget-object v2, v3, Lcom/obs/services/crypto/CryptoObsClient;->ctrCipherGenerator:Lcom/obs/services/crypto/CTRCipherGenerator;

    instance-of v5, v2, Lcom/obs/services/crypto/CtrRSACipherGenerator;

    if-eqz v5, :cond_aa

    .line 360
    :try_start_8b
    check-cast v2, Lcom/obs/services/crypto/CtrRSACipherGenerator;

    .line 364
    invoke-virtual {v0}, Lcom/obs/services/model/HeaderResponse;->getOriginalHeaders()Ljava/util/Map;

    move-result-object v5

    const-string v6, "x-obs-meta-encrypted-object-key"

    .line 365
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 370
    invoke-static {v5}, Lcom/obs/services/internal/utils/ServiceUtils;->fromBase64(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/obs/services/crypto/CtrRSACipherGenerator;->RSADecrypted([B)[B

    move-result-object v5
    :try_end_a1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_8b .. :try_end_a1} :catch_a2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_8b .. :try_end_a1} :catch_a2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8b .. :try_end_a1} :catch_a2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8b .. :try_end_a1} :catch_a2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_8b .. :try_end_a1} :catch_a2
    .catch Ljava/security/InvalidKeyException; {:try_start_8b .. :try_end_a1} :catch_a2

    goto :goto_c7

    :catch_a2
    move-exception v0

    move-object p0, v0

    .line 377
    new-instance p1, Lcom/obs/services/internal/ServiceException;

    invoke-direct {p1, p0}, Lcom/obs/services/internal/ServiceException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 356
    :cond_aa
    new-instance p0, Lcom/obs/services/internal/ServiceException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "wrong CipherGenerator ,need "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v0, Lcom/obs/services/crypto/CtrRSACipherGenerator;

    .line 357
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/obs/services/internal/ServiceException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 382
    :cond_c7
    :goto_c7
    :try_start_c7
    invoke-static {v4}, Lcom/obs/services/crypto/CTRCipherGenerator;->getBytesFromBase64(Ljava/lang/String;)[B

    move-result-object v2

    .line 385
    iget-object v4, v3, Lcom/obs/services/crypto/CryptoObsClient;->ctrCipherGenerator:Lcom/obs/services/crypto/CTRCipherGenerator;

    .line 387
    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p0

    .line 386
    invoke-virtual {v4, p0, v2, v5}, Lcom/obs/services/crypto/CTRCipherGenerator;->getAES256DecryptedStream(Ljava/io/InputStream;[B[B)Ljavax/crypto/CipherInputStream;

    move-result-object p0

    .line 385
    invoke-virtual {v1, p0}, Lcom/obs/services/model/ObsObject;->setObjectContent(Ljava/io/InputStream;)V
    :try_end_dc
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_c7 .. :try_end_dc} :catch_dd
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_c7 .. :try_end_dc} :catch_dd
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_c7 .. :try_end_dc} :catch_dd
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_c7 .. :try_end_dc} :catch_dd
    .catch Ljava/security/InvalidKeyException; {:try_start_c7 .. :try_end_dc} :catch_dd

    goto :goto_10a

    :catch_dd
    move-exception v0

    move-object p0, v0

    .line 393
    new-instance p1, Lcom/obs/services/internal/ServiceException;

    invoke-direct {p1, p0}, Lcom/obs/services/internal/ServiceException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 396
    :cond_e5
    sget-object v2, Lcom/obs/services/crypto/CryptoObsClient;->log:Lcom/obs/log/ILogger;

    const-string v4, "no encrypted-algorithm metadata received"

    invoke-interface {v2, v4}, Lcom/obs/log/ILogger;->warn(Ljava/lang/CharSequence;)V

    .line 397
    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/obs/services/model/ObsObject;->setObjectContent(Ljava/io/InputStream;)V

    goto :goto_10a

    .line 400
    :cond_f8
    sget-object v2, Lcom/obs/services/crypto/CryptoObsClient;->log:Lcom/obs/log/ILogger;

    const-string v4, "CipherGenerator is null"

    invoke-interface {v2, v4}, Lcom/obs/log/ILogger;->warn(Ljava/lang/CharSequence;)V

    .line 401
    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/obs/services/model/ObsObject;->setObjectContent(Ljava/io/InputStream;)V

    .line 403
    :goto_10a
    invoke-virtual {p1}, Lcom/obs/services/model/GetObjectRequest;->getProgressListener()Lcom/obs/services/model/ProgressListener;

    move-result-object p0

    if-eqz p0, :cond_143

    .line 404
    new-instance v4, Lcom/obs/services/internal/SimpleProgressManager;

    .line 406
    invoke-virtual {v0}, Lcom/obs/services/model/ObjectMetadata;->getContentLength()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 408
    invoke-virtual {p1}, Lcom/obs/services/model/GetObjectRequest;->getProgressListener()Lcom/obs/services/model/ProgressListener;

    move-result-object v9

    .line 409
    invoke-virtual {p1}, Lcom/obs/services/model/GetObjectRequest;->getProgressInterval()J

    move-result-wide v7

    const-wide/16 v10, 0x0

    cmp-long p0, v7, v10

    if-lez p0, :cond_12e

    .line 410
    invoke-virtual {p1}, Lcom/obs/services/model/GetObjectRequest;->getProgressInterval()J

    move-result-wide p0

    :goto_12c
    move-wide v10, p0

    goto :goto_132

    :cond_12e
    const-wide/32 p0, 0x19000

    goto :goto_12c

    :goto_132
    const-wide/16 v7, 0x0

    invoke-direct/range {v4 .. v11}, Lcom/obs/services/internal/SimpleProgressManager;-><init>(JJLcom/obs/services/model/ProgressListener;J)V

    .line 412
    new-instance p0, Lcom/obs/services/internal/io/ProgressInputStream;

    invoke-virtual {v1}, Lcom/obs/services/model/ObsObject;->getObjectContent()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {p0, p1, v4}, Lcom/obs/services/internal/io/ProgressInputStream;-><init>(Ljava/io/InputStream;Lcom/obs/services/internal/ProgressManager;)V

    invoke-virtual {v1, p0}, Lcom/obs/services/model/ObsObject;->setObjectContent(Ljava/io/InputStream;)V

    .line 415
    :cond_143
    iget-object p0, v3, Lcom/obs/services/internal/RestConnectionService;->obsProperties:Lcom/obs/services/internal/ObsProperties;

    const-string p1, "httpclient.read-buffer-size"

    const/16 v0, 0x2000

    .line 416
    invoke-virtual {p0, p1, v0}, Lcom/obs/services/internal/ObsProperties;->getIntProperty(Ljava/lang/String;I)I

    move-result p0

    if-lez p0, :cond_15b

    .line 418
    new-instance p1, Ljava/io/BufferedInputStream;

    invoke-virtual {v1}, Lcom/obs/services/model/ObsObject;->getObjectContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-virtual {v1, p1}, Lcom/obs/services/model/ObsObject;->setObjectContent(Ljava/io/InputStream;)V

    :cond_15b
    return-object v1
.end method

.method protected getOrGenerateCryptoIvBytes()[B
    .registers 3

    .line 429
    iget-object v0, p0, Lcom/obs/services/crypto/CryptoObsClient;->ctrCipherGenerator:Lcom/obs/services/crypto/CTRCipherGenerator;

    invoke-virtual {v0}, Lcom/obs/services/crypto/CTRCipherGenerator;->getCryptoIvBytes()[B

    move-result-object v0

    if-eqz v0, :cond_16

    .line 430
    sget-object v0, Lcom/obs/services/crypto/CryptoObsClient;->log:Lcom/obs/log/ILogger;

    const-string v1, "get user-set AES iv"

    invoke-interface {v0, v1}, Lcom/obs/log/ILogger;->info(Ljava/lang/CharSequence;)V

    .line 431
    iget-object p0, p0, Lcom/obs/services/crypto/CryptoObsClient;->ctrCipherGenerator:Lcom/obs/services/crypto/CTRCipherGenerator;

    invoke-virtual {p0}, Lcom/obs/services/crypto/CTRCipherGenerator;->getCryptoIvBytes()[B

    move-result-object p0

    return-object p0

    .line 433
    :cond_16
    sget-object v0, Lcom/obs/services/crypto/CryptoObsClient;->log:Lcom/obs/log/ILogger;

    const-string v1, "get random AES iv"

    invoke-interface {v0, v1}, Lcom/obs/log/ILogger;->info(Ljava/lang/CharSequence;)V

    .line 434
    iget-object p0, p0, Lcom/obs/services/crypto/CryptoObsClient;->ctrCipherGenerator:Lcom/obs/services/crypto/CTRCipherGenerator;

    invoke-virtual {p0}, Lcom/obs/services/crypto/CTRCipherGenerator;->getRandomCryptoIvBytes()[B

    move-result-object p0

    return-object p0
.end method

.method protected getOrGenerateCryptoKeyBytes()[B
    .registers 3

    .line 439
    iget-object v0, p0, Lcom/obs/services/crypto/CryptoObsClient;->ctrCipherGenerator:Lcom/obs/services/crypto/CTRCipherGenerator;

    invoke-virtual {v0}, Lcom/obs/services/crypto/CTRCipherGenerator;->getCryptoKeyBytes()[B

    move-result-object v0

    if-eqz v0, :cond_16

    .line 440
    sget-object v0, Lcom/obs/services/crypto/CryptoObsClient;->log:Lcom/obs/log/ILogger;

    const-string v1, "get user-set AES key"

    invoke-interface {v0, v1}, Lcom/obs/log/ILogger;->info(Ljava/lang/CharSequence;)V

    .line 441
    iget-object p0, p0, Lcom/obs/services/crypto/CryptoObsClient;->ctrCipherGenerator:Lcom/obs/services/crypto/CTRCipherGenerator;

    invoke-virtual {p0}, Lcom/obs/services/crypto/CTRCipherGenerator;->getCryptoKeyBytes()[B

    move-result-object p0

    return-object p0

    .line 443
    :cond_16
    sget-object v0, Lcom/obs/services/crypto/CryptoObsClient;->log:Lcom/obs/log/ILogger;

    const-string v1, "get random AES key"

    invoke-interface {v0, v1}, Lcom/obs/log/ILogger;->info(Ljava/lang/CharSequence;)V

    .line 444
    iget-object p0, p0, Lcom/obs/services/crypto/CryptoObsClient;->ctrCipherGenerator:Lcom/obs/services/crypto/CTRCipherGenerator;

    invoke-virtual {p0}, Lcom/obs/services/crypto/CTRCipherGenerator;->getRandomCryptoKeyBytes()[B

    move-result-object p0

    return-object p0
.end method

.method public isValidEncryptedAlgorithm(Ljava/lang/String;)Z
    .registers 2

    .line 424
    const-string p0, "AES256-Ctr/RSA-Object-Key/NoPadding"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13

    const-string p0, "AES256-Ctr/iv_base64/NoPadding"

    .line 425
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method

.method public putObject(Lcom/obs/services/model/PutObjectRequest;)Lcom/obs/services/model/PutObjectResult;
    .registers 4

    .line 124
    const-string v0, "PutObjectRequest is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bucketName is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull2(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-virtual {p1}, Lcom/obs/services/model/BaseObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "objectKey is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull2(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/obs/services/crypto/CryptoObsClient$1;

    invoke-direct {v1, p0, p1}, Lcom/obs/services/crypto/CryptoObsClient$1;-><init>(Lcom/obs/services/crypto/CryptoObsClient;Lcom/obs/services/model/PutObjectRequest;)V

    .line 128
    const-string p1, "putObject"

    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/PutObjectResult;

    return-object p0
.end method

.method protected putObjectImpl(Lcom/obs/services/model/PutObjectRequest;)Lcom/obs/services/model/fs/ObsFSFile;
    .registers 14

    .line 147
    invoke-virtual {p1}, Lcom/obs/services/model/PutObjectBasicRequest;->getAcl()Lcom/obs/services/model/AccessControlList;

    move-result-object v3

    .line 149
    invoke-virtual {p1}, Lcom/obs/services/model/PutObjectRequest;->getMetadata()Lcom/obs/services/model/ObjectMetadata;

    move-result-object v0

    if-nez v0, :cond_12

    .line 150
    new-instance v0, Lcom/obs/services/model/ObjectMetadata;

    invoke-direct {v0}, Lcom/obs/services/model/ObjectMetadata;-><init>()V

    invoke-virtual {p1, v0}, Lcom/obs/services/model/PutObjectRequest;->setMetadata(Lcom/obs/services/model/ObjectMetadata;)V

    :cond_12
    const/4 v1, 0x0

    .line 153
    :try_start_13
    iget-object v0, p0, Lcom/obs/services/crypto/CryptoObsClient;->ctrCipherGenerator:Lcom/obs/services/crypto/CTRCipherGenerator;

    if-eqz v0, :cond_133

    .line 155
    invoke-virtual {p0}, Lcom/obs/services/crypto/CryptoObsClient;->getOrGenerateCryptoIvBytes()[B

    move-result-object v0

    .line 156
    invoke-virtual {p0}, Lcom/obs/services/crypto/CryptoObsClient;->getOrGenerateCryptoKeyBytes()[B

    move-result-object v2

    .line 158
    invoke-virtual {p1}, Lcom/obs/services/model/PutObjectRequest;->getFile()Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_e2

    iget-object v4, p0, Lcom/obs/services/crypto/CryptoObsClient;->ctrCipherGenerator:Lcom/obs/services/crypto/CTRCipherGenerator;

    invoke-virtual {v4}, Lcom/obs/services/crypto/CTRCipherGenerator;->isNeedSha256()Z

    move-result v4

    if-eqz v4, :cond_e2

    .line 159
    invoke-virtual {p1}, Lcom/obs/services/model/PutObjectRequest;->getMetadata()Lcom/obs/services/model/ObjectMetadata;

    move-result-object v4

    const-string v5, "plaintext-content-length"

    .line 162
    invoke-virtual {p1}, Lcom/obs/services/model/PutObjectRequest;->getFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 160
    invoke-virtual {v4, v5, v6}, Lcom/obs/services/model/ObjectMetadata;->addUserMetadata(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_42
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_13 .. :try_end_42} :catch_c1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_13 .. :try_end_42} :catch_c1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_13 .. :try_end_42} :catch_c1
    .catch Ljava/security/InvalidKeyException; {:try_start_13 .. :try_end_42} :catch_c1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_13 .. :try_end_42} :catch_c1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_13 .. :try_end_42} :catch_c1
    .catchall {:try_start_13 .. :try_end_42} :catchall_bd

    .line 163
    :try_start_42
    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Lcom/obs/services/model/PutObjectRequest;->getFile()Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_4b
    .catch Ljava/io/FileNotFoundException; {:try_start_42 .. :try_end_4b} :catch_da
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_4b} :catch_c5
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_42 .. :try_end_4b} :catch_c1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_42 .. :try_end_4b} :catch_c1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_42 .. :try_end_4b} :catch_c1
    .catch Ljava/security/InvalidKeyException; {:try_start_42 .. :try_end_4b} :catch_c1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_42 .. :try_end_4b} :catch_c1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_42 .. :try_end_4b} :catch_c1
    .catchall {:try_start_42 .. :try_end_4b} :catchall_bd

    .line 164
    :try_start_4b
    const-string v5, "x-obs-content-sha256"

    .line 165
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getUserHeaders()Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6
    :try_end_55
    .catchall {:try_start_4b .. :try_end_55} :catchall_86

    const-string v7, "encrypted-sha256"

    const-string v8, "plaintext-sha256"

    if-eqz v6, :cond_89

    .line 167
    :try_start_5b
    invoke-virtual {p1}, Lcom/obs/services/model/PutObjectRequest;->getMetadata()Lcom/obs/services/model/ObjectMetadata;

    move-result-object v6

    .line 170
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getUserHeaders()Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 168
    invoke-virtual {v6, v8, v9}, Lcom/obs/services/model/ObjectMetadata;->addUserMetadata(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v6, p0, Lcom/obs/services/crypto/CryptoObsClient;->ctrCipherGenerator:Lcom/obs/services/crypto/CTRCipherGenerator;

    const/4 v8, 0x0

    .line 173
    invoke-virtual {v6, v4, v0, v2, v8}, Lcom/obs/services/crypto/CTRCipherGenerator;->computeSHA256HashAES(Ljava/io/InputStream;[B[BZ)Lcom/obs/services/crypto/CTRCipherGenerator$SHA256Info;

    move-result-object v6

    .line 177
    invoke-virtual {p1}, Lcom/obs/services/model/PutObjectRequest;->getMetadata()Lcom/obs/services/model/ObjectMetadata;

    move-result-object v8

    .line 180
    invoke-virtual {v6}, Lcom/obs/services/crypto/CTRCipherGenerator$SHA256Info;->getSha256ForAESEncrypted()Ljava/lang/String;

    move-result-object v9

    .line 178
    invoke-virtual {v8, v7, v9}, Lcom/obs/services/model/ObjectMetadata;->addUserMetadata(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-virtual {v6}, Lcom/obs/services/crypto/CTRCipherGenerator$SHA256Info;->getSha256ForAESEncrypted()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/obs/services/model/GenericRequest;->addUserHeaders(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ad

    :catchall_86
    move-exception v0

    move-object p0, v0

    goto :goto_c8

    .line 185
    :cond_89
    iget-object v6, p0, Lcom/obs/services/crypto/CryptoObsClient;->ctrCipherGenerator:Lcom/obs/services/crypto/CTRCipherGenerator;

    const/4 v9, 0x1

    .line 186
    invoke-virtual {v6, v4, v0, v2, v9}, Lcom/obs/services/crypto/CTRCipherGenerator;->computeSHA256HashAES(Ljava/io/InputStream;[B[BZ)Lcom/obs/services/crypto/CTRCipherGenerator$SHA256Info;

    move-result-object v6

    .line 189
    invoke-virtual {p1}, Lcom/obs/services/model/PutObjectRequest;->getMetadata()Lcom/obs/services/model/ObjectMetadata;

    move-result-object v9

    .line 192
    invoke-virtual {v6}, Lcom/obs/services/crypto/CTRCipherGenerator$SHA256Info;->getSha256ForPlainText()Ljava/lang/String;

    move-result-object v10

    .line 190
    invoke-virtual {v9, v8, v10}, Lcom/obs/services/model/ObjectMetadata;->addUserMetadata(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-virtual {p1}, Lcom/obs/services/model/PutObjectRequest;->getMetadata()Lcom/obs/services/model/ObjectMetadata;

    move-result-object v8

    .line 197
    invoke-virtual {v6}, Lcom/obs/services/crypto/CTRCipherGenerator$SHA256Info;->getSha256ForAESEncrypted()Ljava/lang/String;

    move-result-object v9

    .line 195
    invoke-virtual {v8, v7, v9}, Lcom/obs/services/model/ObjectMetadata;->addUserMetadata(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-virtual {v6}, Lcom/obs/services/crypto/CTRCipherGenerator$SHA256Info;->getSha256ForAESEncrypted()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/obs/services/model/GenericRequest;->addUserHeaders(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :goto_ad
    new-instance v5, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Lcom/obs/services/model/PutObjectRequest;->getFile()Ljava/io/File;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p1, v5}, Lcom/obs/services/model/PutObjectRequest;->setInput(Ljava/io/InputStream;)V
    :try_end_b9
    .catchall {:try_start_5b .. :try_end_b9} :catchall_86

    .line 202
    :try_start_b9
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_bc
    .catch Ljava/io/FileNotFoundException; {:try_start_b9 .. :try_end_bc} :catch_da
    .catch Ljava/io/IOException; {:try_start_b9 .. :try_end_bc} :catch_c5
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_b9 .. :try_end_bc} :catch_c1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_b9 .. :try_end_bc} :catch_c1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_b9 .. :try_end_bc} :catch_c1
    .catch Ljava/security/InvalidKeyException; {:try_start_b9 .. :try_end_bc} :catch_c1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_b9 .. :try_end_bc} :catch_c1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_b9 .. :try_end_bc} :catch_c1
    .catchall {:try_start_b9 .. :try_end_bc} :catchall_bd

    goto :goto_e2

    :catchall_bd
    move-exception v0

    move-object p0, v0

    goto/16 :goto_25a

    :catch_c1
    move-exception v0

    move-object p0, v0

    goto/16 :goto_254

    :catch_c5
    move-exception v0

    move-object p0, v0

    goto :goto_d4

    .line 163
    :goto_c8
    :try_start_c8
    throw p0
    :try_end_c9
    .catchall {:try_start_c8 .. :try_end_c9} :catchall_c9

    :catchall_c9
    move-exception v0

    move-object v2, v0

    .line 202
    :try_start_cb
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_ce
    .catchall {:try_start_cb .. :try_end_ce} :catchall_cf

    goto :goto_d3

    :catchall_cf
    move-exception v0

    :try_start_d0
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_d3
    throw v2
    :try_end_d4
    .catch Ljava/io/FileNotFoundException; {:try_start_d0 .. :try_end_d4} :catch_da
    .catch Ljava/io/IOException; {:try_start_d0 .. :try_end_d4} :catch_c5
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_d0 .. :try_end_d4} :catch_c1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_d0 .. :try_end_d4} :catch_c1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_d0 .. :try_end_d4} :catch_c1
    .catch Ljava/security/InvalidKeyException; {:try_start_d0 .. :try_end_d4} :catch_c1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_d0 .. :try_end_d4} :catch_c1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_d0 .. :try_end_d4} :catch_c1
    .catchall {:try_start_d0 .. :try_end_d4} :catchall_bd

    .line 205
    :goto_d4
    :try_start_d4
    new-instance v0, Lcom/obs/services/internal/ServiceException;

    invoke-direct {v0, p0}, Lcom/obs/services/internal/ServiceException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 203
    :catch_da
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "File doesn\'t exist"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 210
    :cond_e2
    :goto_e2
    iget-object v4, p0, Lcom/obs/services/crypto/CryptoObsClient;->ctrCipherGenerator:Lcom/obs/services/crypto/CTRCipherGenerator;

    .line 212
    invoke-virtual {p1}, Lcom/obs/services/model/PutObjectRequest;->getInput()Ljava/io/InputStream;

    move-result-object v5

    .line 211
    invoke-virtual {v4, v5, v0, v2}, Lcom/obs/services/crypto/CTRCipherGenerator;->getAES256EncryptedStream(Ljava/io/InputStream;[B[B)Ljavax/crypto/CipherInputStream;

    move-result-object v4

    .line 210
    invoke-virtual {p1, v4}, Lcom/obs/services/model/PutObjectRequest;->setInput(Ljava/io/InputStream;)V

    .line 213
    invoke-virtual {p1}, Lcom/obs/services/model/PutObjectRequest;->getMetadata()Lcom/obs/services/model/ObjectMetadata;

    move-result-object v4

    .line 215
    const-string v5, "encrypted-start"

    invoke-static {v0}, Lcom/obs/services/crypto/CTRCipherGenerator;->getBase64Info([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lcom/obs/services/model/ObjectMetadata;->addUserMetadata(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/obs/services/crypto/CryptoObsClient;->ctrCipherGenerator:Lcom/obs/services/crypto/CTRCipherGenerator;

    invoke-virtual {v0}, Lcom/obs/services/crypto/CTRCipherGenerator;->getMasterKeyInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10f

    .line 217
    const-string v0, "master-key-info"

    iget-object v5, p0, Lcom/obs/services/crypto/CryptoObsClient;->ctrCipherGenerator:Lcom/obs/services/crypto/CTRCipherGenerator;

    .line 218
    invoke-virtual {v5}, Lcom/obs/services/crypto/CTRCipherGenerator;->getMasterKeyInfo()Ljava/lang/String;

    move-result-object v5

    .line 217
    invoke-virtual {v4, v0, v5}, Lcom/obs/services/model/ObjectMetadata;->addUserMetadata(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :cond_10f
    iget-object v0, p0, Lcom/obs/services/crypto/CryptoObsClient;->ctrCipherGenerator:Lcom/obs/services/crypto/CTRCipherGenerator;

    instance-of v0, v0, Lcom/obs/services/crypto/CtrRSACipherGenerator;
    :try_end_113
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_d4 .. :try_end_113} :catch_c1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_d4 .. :try_end_113} :catch_c1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_d4 .. :try_end_113} :catch_c1
    .catch Ljava/security/InvalidKeyException; {:try_start_d4 .. :try_end_113} :catch_c1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_d4 .. :try_end_113} :catch_c1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_d4 .. :try_end_113} :catch_c1
    .catchall {:try_start_d4 .. :try_end_113} :catchall_bd

    const-string v5, "encrypted-algorithm"

    if-eqz v0, :cond_12e

    .line 222
    :try_start_117
    const-string v0, "AES256-Ctr/RSA-Object-Key/NoPadding"

    invoke-virtual {v4, v5, v0}, Lcom/obs/services/model/ObjectMetadata;->addUserMetadata(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/obs/services/crypto/CryptoObsClient;->ctrCipherGenerator:Lcom/obs/services/crypto/CTRCipherGenerator;

    check-cast v0, Lcom/obs/services/crypto/CtrRSACipherGenerator;

    .line 226
    invoke-virtual {v0, v2}, Lcom/obs/services/crypto/CtrRSACipherGenerator;->RSAEncrypted([B)[B

    move-result-object v0

    .line 228
    const-string v2, "encrypted-object-key"

    .line 229
    invoke-static {v0}, Lcom/obs/services/internal/utils/ServiceUtils;->toBase64([B)Ljava/lang/String;

    move-result-object v0

    .line 228
    invoke-virtual {v4, v2, v0}, Lcom/obs/services/model/ObjectMetadata;->addUserMetadata(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_133

    .line 232
    :cond_12e
    const-string v0, "AES256-Ctr/iv_base64/NoPadding"

    invoke-virtual {v4, v5, v0}, Lcom/obs/services/model/ObjectMetadata;->addUserMetadata(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :cond_133
    :goto_133
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/RequestConvertor;->transPutObjectRequest(Lcom/obs/services/model/PutObjectRequest;)Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;

    move-result-object v1

    .line 238
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;->getHeaders()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/obs/services/internal/service/AclHeaderConvertor;->prepareRESTHeaderAcl(Ljava/lang/String;Ljava/util/Map;Lcom/obs/services/model/AccessControlList;)Z

    move-result v0

    .line 239
    invoke-virtual {p1}, Lcom/obs/services/model/PutObjectRequest;->getCallback()Lcom/obs/services/model/Callback;

    move-result-object v2

    if-eqz v2, :cond_1a2

    .line 240
    invoke-virtual {p1}, Lcom/obs/services/model/PutObjectRequest;->getCallback()Lcom/obs/services/model/Callback;

    move-result-object v2

    invoke-virtual {v2}, Lcom/obs/services/model/Callback;->getCallbackUrl()Ljava/lang/String;

    move-result-object v2

    const-string v4, "callbackUrl is null"

    invoke-static {v2, v4}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    invoke-virtual {p1}, Lcom/obs/services/model/PutObjectRequest;->getCallback()Lcom/obs/services/model/Callback;

    move-result-object v2

    invoke-virtual {v2}, Lcom/obs/services/model/Callback;->getCallbackBody()Ljava/lang/String;

    move-result-object v2

    const-string v4, "callbackBody is null"

    invoke-static {v2, v4}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-virtual {v1}, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;->getHeaders()Ljava/util/Map;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 244
    invoke-virtual {p0}, Lcom/obs/services/internal/RestStorageService;->getProviderCredentials()Lcom/obs/services/internal/security/ProviderCredentials;

    move-result-object v5

    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/obs/services/internal/security/ProviderCredentials;->getLocalAuthType(Ljava/lang/String;)Lcom/obs/services/model/AuthTypeEnum;

    move-result-object v5

    sget-object v6, Lcom/obs/services/model/AuthTypeEnum;->OBS:Lcom/obs/services/model/AuthTypeEnum;

    if-eq v5, v6, :cond_17f

    const-string v5, "x-amz-"

    goto :goto_181

    :cond_17f
    const-string v5, "x-obs-"

    :goto_181
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "callback"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 250
    invoke-virtual {p1}, Lcom/obs/services/model/PutObjectRequest;->getCallback()Lcom/obs/services/model/Callback;

    move-result-object v5

    invoke-static {v5}, Lcom/obs/services/internal/utils/JSONChange;->objToJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    .line 249
    invoke-static {v5}, Lcom/obs/services/internal/utils/ServiceUtils;->toBase64([B)Ljava/lang/String;

    move-result-object v5

    .line 243
    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    :cond_1a2
    invoke-virtual {p0, v1, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transObjectRequestWithResult(Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;Lcom/obs/services/model/BaseObjectRequest;)Lcom/obs/services/internal/trans/NewTransResult;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v4, p0

    .line 254
    invoke-virtual/range {v4 .. v9}, Lcom/obs/services/internal/RestStorageService;->performRequest(Lcom/obs/services/internal/trans/NewTransResult;ZZZZ)Lokhttp3/Response;

    move-result-object p0
    :try_end_1af
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_117 .. :try_end_1af} :catch_c1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_117 .. :try_end_1af} :catch_c1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_117 .. :try_end_1af} :catch_c1
    .catch Ljava/security/InvalidKeyException; {:try_start_117 .. :try_end_1af} :catch_c1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_117 .. :try_end_1af} :catch_c1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_117 .. :try_end_1af} :catch_c1
    .catchall {:try_start_117 .. :try_end_1af} :catchall_bd

    .line 263
    invoke-virtual {v1}, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;->getBody()Lokhttp3/RequestBody;

    move-result-object v2

    if-eqz v2, :cond_1cc

    invoke-virtual {p1}, Lcom/obs/services/model/PutObjectRequest;->isAutoClose()Z

    move-result v2

    if-eqz v2, :cond_1cc

    .line 264
    invoke-virtual {v1}, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;->getBody()Lokhttp3/RequestBody;

    move-result-object v2

    instance-of v2, v2, Ljava/io/Closeable;

    if-eqz v2, :cond_1cc

    .line 265
    invoke-virtual {v1}, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;->getBody()Lokhttp3/RequestBody;

    move-result-object v1

    check-cast v1, Ljava/io/Closeable;

    invoke-static {v1}, Lcom/obs/services/internal/utils/ServiceUtils;->closeStream(Ljava/io/Closeable;)V

    .line 270
    :cond_1cc
    new-instance v5, Lcom/obs/services/model/fs/ObsFSFile;

    .line 272
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v6

    .line 273
    invoke-virtual {p1}, Lcom/obs/services/model/BaseObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v7

    const-string v1, "ETag"

    .line 274
    invoke-virtual {p0, v1}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 275
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v1

    invoke-interface {v1}, Lcom/obs/services/internal/IHeaders;->versionIdHeader()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 277
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v1

    invoke-interface {v1}, Lcom/obs/services/internal/IHeaders;->storageClassHeader()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 276
    invoke-static {v1}, Lcom/obs/services/model/StorageClassEnum;->getValueFromCode(Ljava/lang/String;)Lcom/obs/services/model/StorageClassEnum;

    move-result-object v10

    .line 278
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/obs/services/model/BaseObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/obs/services/model/BaseObjectRequest;->getIsIgnorePort()Z

    move-result v11

    invoke-virtual {v4, v1, v2, v11}, Lcom/obs/services/internal/service/ObsObjectBaseService;->getObjectUrl(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v11

    invoke-direct/range {v5 .. v11}, Lcom/obs/services/model/fs/ObsFSFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/model/StorageClassEnum;Ljava/lang/String;)V

    move-object v6, v5

    .line 279
    invoke-virtual {p1}, Lcom/obs/services/model/PutObjectRequest;->getCallback()Lcom/obs/services/model/Callback;

    move-result-object v1

    if-eqz v1, :cond_231

    .line 281
    :try_start_21a
    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/obs/services/model/PutObjectResult;->setCallbackResponseBody(Ljava/io/InputStream;)V
    :try_end_228
    .catch Ljava/lang/Exception; {:try_start_21a .. :try_end_228} :catch_229

    goto :goto_231

    :catch_229
    move-exception v0

    move-object p0, v0

    .line 283
    new-instance p1, Lcom/obs/services/internal/ServiceException;

    invoke-direct {p1, p0}, Lcom/obs/services/internal/ServiceException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 286
    :cond_231
    :goto_231
    invoke-virtual {v4, v6, p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->setHeadersAndStatus(Lcom/obs/services/model/HeaderResponse;Lokhttp3/Response;)V

    if-nez v0, :cond_253

    if-eqz v3, :cond_253

    .line 289
    :try_start_238
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/obs/services/model/BaseObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->isRequesterPays()Z

    move-result v5

    move-object v0, v4

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/obs/services/internal/service/AclHeaderConvertor;->putAclImpl(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/model/AccessControlList;Ljava/lang/String;Z)V
    :try_end_249
    .catch Ljava/lang/Exception; {:try_start_238 .. :try_end_249} :catch_24a

    return-object v6

    :catch_24a
    move-exception v0

    move-object p0, v0

    .line 291
    sget-object p1, Lcom/obs/services/crypto/CryptoObsClient;->log:Lcom/obs/log/ILogger;

    const-string v0, "Try to set object acl error"

    invoke-interface {p1, v0, p0}, Lcom/obs/log/ILogger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_253
    return-object v6

    .line 261
    :goto_254
    :try_start_254
    new-instance v0, Lcom/obs/services/internal/ServiceException;

    invoke-direct {v0, p0}, Lcom/obs/services/internal/ServiceException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_25a
    .catchall {:try_start_254 .. :try_end_25a} :catchall_bd

    :goto_25a
    if-eqz v1, :cond_279

    .line 263
    invoke-virtual {v1}, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;->getBody()Lokhttp3/RequestBody;

    move-result-object v0

    if-eqz v0, :cond_279

    invoke-virtual {p1}, Lcom/obs/services/model/PutObjectRequest;->isAutoClose()Z

    move-result p1

    if-eqz p1, :cond_279

    .line 264
    invoke-virtual {v1}, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;->getBody()Lokhttp3/RequestBody;

    move-result-object p1

    instance-of p1, p1, Ljava/io/Closeable;

    if-eqz p1, :cond_279

    .line 265
    invoke-virtual {v1}, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;->getBody()Lokhttp3/RequestBody;

    move-result-object p1

    check-cast p1, Ljava/io/Closeable;

    invoke-static {p1}, Lcom/obs/services/internal/utils/ServiceUtils;->closeStream(Ljava/io/Closeable;)V

    .line 268
    :cond_279
    throw p0
.end method

.method public setCtrCipherGenerator(Lcom/obs/services/crypto/CTRCipherGenerator;)V
    .registers 2

    .line 453
    iput-object p1, p0, Lcom/obs/services/crypto/CryptoObsClient;->ctrCipherGenerator:Lcom/obs/services/crypto/CTRCipherGenerator;

    return-void
.end method
