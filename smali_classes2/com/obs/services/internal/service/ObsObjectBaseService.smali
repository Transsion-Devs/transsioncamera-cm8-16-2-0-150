.class public abstract Lcom/obs/services/internal/service/ObsObjectBaseService;
.super Lcom/obs/services/internal/service/ObsBucketAdvanceService;
.source "SourceFile"


# static fields
.field private static final log:Lcom/obs/log/ILogger;


# direct methods
.method public static synthetic $r8$lambda$Wmd16458PT8Tf5OxgWNtKJ6I1qc(Lcom/obs/services/internal/service/ObsObjectBaseService;Lcom/obs/services/model/PutObjectInTwoBucketRequest;)Lcom/obs/services/model/PutObjectInTwoBucketResult;
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 172
    new-instance v0, Lcom/obs/services/model/PutObjectInTwoBucketResult;

    invoke-direct {v0}, Lcom/obs/services/model/PutObjectInTwoBucketResult;-><init>()V

    .line 174
    :try_start_8
    invoke-virtual {p1}, Lcom/obs/services/model/PutObjectInTwoBucketRequest;->getMainBucketRequest()Lcom/obs/services/model/PutObjectRequest;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsObjectBaseService;->putObjectImpl(Lcom/obs/services/model/PutObjectRequest;)Lcom/obs/services/model/fs/ObsFSFile;

    move-result-object p0

    .line 175
    invoke-virtual {v0, p0}, Lcom/obs/services/model/PutObjectInTwoBucketResult;->setMainBucketResult(Lcom/obs/services/model/PutObjectResult;)V
    :try_end_13
    .catch Lcom/obs/services/internal/ServiceException; {:try_start_8 .. :try_end_13} :catch_16
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_13} :catch_14

    return-object v0

    :catch_14
    move-exception p0

    goto :goto_18

    :catch_16
    move-exception p0

    goto :goto_20

    .line 179
    :goto_18
    invoke-static {p0}, Lcom/obs/services/internal/utils/ServiceUtils;->changeFromException(Ljava/lang/Exception;)Lcom/obs/services/exception/ObsException;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/obs/services/model/PutObjectInTwoBucketResult;->setMainBucketException(Lcom/obs/services/exception/ObsException;)V

    goto :goto_27

    .line 177
    :goto_20
    invoke-static {p0}, Lcom/obs/services/internal/utils/ServiceUtils;->changeFromServiceException(Lcom/obs/services/internal/ServiceException;)Lcom/obs/services/exception/ObsException;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/obs/services/model/PutObjectInTwoBucketResult;->setMainBucketException(Lcom/obs/services/exception/ObsException;)V

    :goto_27
    return-object v0
.end method

.method public static synthetic $r8$lambda$yKb0olbfpSVa6FtTS0gNNJAaLeM(Lcom/obs/services/internal/service/ObsObjectBaseService;Lcom/obs/services/model/PutObjectInTwoBucketRequest;)Lcom/obs/services/model/PutObjectInTwoBucketResult;
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 185
    new-instance v0, Lcom/obs/services/model/PutObjectInTwoBucketResult;

    invoke-direct {v0}, Lcom/obs/services/model/PutObjectInTwoBucketResult;-><init>()V

    .line 187
    :try_start_8
    invoke-virtual {p1}, Lcom/obs/services/model/PutObjectInTwoBucketRequest;->getBackupBucketRequest()Lcom/obs/services/model/PutObjectRequest;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsObjectBaseService;->putObjectImpl(Lcom/obs/services/model/PutObjectRequest;)Lcom/obs/services/model/fs/ObsFSFile;

    move-result-object p0

    .line 188
    invoke-virtual {v0, p0}, Lcom/obs/services/model/PutObjectInTwoBucketResult;->setBackupBucketResult(Lcom/obs/services/model/PutObjectResult;)V
    :try_end_13
    .catch Lcom/obs/services/internal/ServiceException; {:try_start_8 .. :try_end_13} :catch_16
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_13} :catch_14

    return-object v0

    :catch_14
    move-exception p0

    goto :goto_18

    :catch_16
    move-exception p0

    goto :goto_20

    .line 192
    :goto_18
    invoke-static {p0}, Lcom/obs/services/internal/utils/ServiceUtils;->changeFromException(Ljava/lang/Exception;)Lcom/obs/services/exception/ObsException;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/obs/services/model/PutObjectInTwoBucketResult;->setBackupBucketException(Lcom/obs/services/exception/ObsException;)V

    goto :goto_27

    .line 190
    :goto_20
    invoke-static {p0}, Lcom/obs/services/internal/utils/ServiceUtils;->changeFromServiceException(Lcom/obs/services/internal/ServiceException;)Lcom/obs/services/exception/ObsException;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/obs/services/model/PutObjectInTwoBucketResult;->setBackupBucketException(Lcom/obs/services/exception/ObsException;)V

    :goto_27
    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 85
    const-class v0, Lcom/obs/services/internal/service/ObsObjectBaseService;

    invoke-static {v0}, Lcom/obs/log/LoggerBuilder;->getLogger(Ljava/lang/Class;)Lcom/obs/log/ILogger;

    move-result-object v0

    sput-object v0, Lcom/obs/services/internal/service/ObsObjectBaseService;->log:Lcom/obs/log/ILogger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 84
    invoke-direct {p0}, Lcom/obs/services/internal/service/ObsBucketAdvanceService;-><init>()V

    return-void
.end method


# virtual methods
.method protected copyObjectImpl(Lcom/obs/services/model/CopyObjectRequest;)Lcom/obs/services/model/CopyObjectResult;
    .registers 14

    .line 356
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/RequestConvertor;->transCopyObjectRequest(Lcom/obs/services/model/CopyObjectRequest;)Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;

    move-result-object v0

    .line 358
    invoke-virtual {p1}, Lcom/obs/services/model/PutObjectBasicRequest;->getAcl()Lcom/obs/services/model/AccessControlList;

    move-result-object v4

    .line 360
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;->getHeaders()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v4}, Lcom/obs/services/internal/service/AclHeaderConvertor;->prepareRESTHeaderAcl(Ljava/lang/String;Ljava/util/Map;Lcom/obs/services/model/AccessControlList;)Z

    move-result v1

    .line 361
    invoke-virtual {p0, v0, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transObjectRequestWithResult(Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;Lcom/obs/services/model/BaseObjectRequest;)Lcom/obs/services/internal/trans/NewTransResult;

    move-result-object v6

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v5, p0

    .line 363
    invoke-virtual/range {v5 .. v10}, Lcom/obs/services/internal/RestStorageService;->performRequest(Lcom/obs/services/internal/trans/NewTransResult;ZZZZ)Lokhttp3/Response;

    move-result-object p0

    .line 365
    invoke-virtual {v5, p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->verifyResponseContentType(Lokhttp3/Response;)V

    .line 367
    invoke-virtual {v5}, Lcom/obs/services/internal/RestStorageService;->getXmlResponseSaxParser()Lcom/obs/services/internal/handler/XmlResponsesSaxParser;

    move-result-object v0

    new-instance v2, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;

    invoke-direct {v2, p0}, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;-><init>(Lokhttp3/Response;)V

    const-class v3, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$CopyObjectResultHandler;

    const/4 v6, 0x0

    invoke-virtual {v0, v2, v3, v6}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->parse(Ljava/io/InputStream;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$CopyObjectResultHandler;

    .line 369
    new-instance v6, Lcom/obs/services/model/CopyObjectResult;

    invoke-virtual {v0}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$CopyObjectResultHandler;->getETag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$CopyObjectResultHandler;->getLastModified()Ljava/util/Date;

    move-result-object v8

    .line 370
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v0

    invoke-interface {v0}, Lcom/obs/services/internal/IHeaders;->versionIdHeader()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 371
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v0

    invoke-interface {v0}, Lcom/obs/services/internal/IHeaders;->copySourceVersionIdHeader()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 373
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v0

    invoke-interface {v0}, Lcom/obs/services/internal/IHeaders;->storageClassHeader()Ljava/lang/String;

    move-result-object v0

    .line 372
    invoke-virtual {p0, v0}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/obs/services/model/StorageClassEnum;->getValueFromCode(Ljava/lang/String;)Lcom/obs/services/model/StorageClassEnum;

    move-result-object v11

    invoke-direct/range {v6 .. v11}, Lcom/obs/services/model/CopyObjectResult;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/model/StorageClassEnum;)V

    move-object v7, v6

    .line 375
    invoke-virtual {v5, v7, p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->setHeadersAndStatus(Lcom/obs/services/model/HeaderResponse;Lokhttp3/Response;)V

    if-nez v1, :cond_ad

    if-eqz v4, :cond_ad

    .line 377
    sget-object p0, Lcom/obs/services/internal/service/ObsObjectBaseService;->log:Lcom/obs/log/ILogger;

    invoke-interface {p0}, Lcom/obs/log/ILogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 378
    const-string v0, "Creating object with a non-canned ACL using REST, so an extra ACL Put is required"

    invoke-interface {p0, v0}, Lcom/obs/log/ILogger;->debug(Ljava/lang/CharSequence;)V

    .line 381
    :cond_8c
    :try_start_8c
    invoke-virtual {p1}, Lcom/obs/services/model/CopyObjectRequest;->getDestinationBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/obs/services/model/CopyObjectRequest;->getDestinationObjectKey()Ljava/lang/String;

    move-result-object v3

    .line 382
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->isRequesterPays()Z

    move-result v6

    move-object v1, v5

    const/4 v5, 0x0

    .line 381
    invoke-virtual/range {v1 .. v6}, Lcom/obs/services/internal/service/AclHeaderConvertor;->putAclImpl(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/model/AccessControlList;Ljava/lang/String;Z)V
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_9d} :catch_9e

    return-object v7

    :catch_9e
    move-exception v0

    move-object p0, v0

    .line 384
    sget-object p1, Lcom/obs/services/internal/service/ObsObjectBaseService;->log:Lcom/obs/log/ILogger;

    invoke-interface {p1}, Lcom/obs/log/ILogger;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 385
    const-string v0, "Try to set object acl error"

    invoke-interface {p1, v0, p0}, Lcom/obs/log/ILogger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_ad
    return-object v7
.end method

.method protected deleteObjectImpl(Lcom/obs/services/model/DeleteObjectRequest;)Lcom/obs/services/model/DeleteObjectResult;
    .registers 8

    .line 338
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 339
    invoke-virtual {p1}, Lcom/obs/services/model/DeleteObjectRequest;->getVersionId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 340
    const-string v0, "versionId"

    invoke-virtual {p1}, Lcom/obs/services/model/DeleteObjectRequest;->getVersionId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    :cond_14
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/obs/services/model/BaseObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v2

    .line 344
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {p0, p1, v4, v0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequestPaymentHeaders(Lcom/obs/services/model/GenericRequest;Ljava/util/Map;Lcom/obs/services/internal/IHeaders;)Ljava/util/Map;

    move-result-object v4

    .line 345
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getUserHeaders()Ljava/util/HashMap;

    move-result-object v5

    move-object v0, p0

    .line 343
    invoke-virtual/range {v0 .. v5}, Lcom/obs/services/internal/RestStorageService;->performRestDelete(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lokhttp3/Response;

    move-result-object p0

    .line 347
    new-instance v1, Lcom/obs/services/model/fs/DropFileResult;

    .line 348
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    .line 347
    invoke-virtual {v0, v2}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v2

    .line 348
    invoke-interface {v2}, Lcom/obs/services/internal/IHeaders;->deleteMarkerHeader()Ljava/lang/String;

    move-result-object v2

    .line 347
    invoke-virtual {p0, v2}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 348
    invoke-virtual {p1}, Lcom/obs/services/model/BaseObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v3

    .line 349
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object p1

    invoke-interface {p1}, Lcom/obs/services/internal/IHeaders;->versionIdHeader()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, v3, p1}, Lcom/obs/services/model/fs/DropFileResult;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    .line 350
    invoke-virtual {v0, v1, p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->setHeadersAndStatus(Lcom/obs/services/model/HeaderResponse;Lokhttp3/Response;)V

    return-object v1
.end method

.method protected deleteObjectsImpl(Lcom/obs/services/model/DeleteObjectsRequest;)Lcom/obs/services/model/DeleteObjectsResult;
    .registers 13

    .line 311
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 312
    sget-object v1, Lcom/obs/services/model/SpecialParamEnum;->DELETE:Lcom/obs/services/model/SpecialParamEnum;

    invoke-virtual {v1}, Lcom/obs/services/model/SpecialParamEnum;->getOriginalStringCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/obs/services/internal/RestStorageService;->getIConvertor(Ljava/lang/String;)Lcom/obs/services/internal/IConvertor;

    move-result-object v1

    invoke-virtual {p1}, Lcom/obs/services/model/DeleteObjectsRequest;->getKeyAndVersions()[Lcom/obs/services/model/KeyAndVersion;

    move-result-object v2

    .line 315
    invoke-virtual {p1}, Lcom/obs/services/model/DeleteObjectsRequest;->isQuiet()Z

    move-result v3

    invoke-virtual {p1}, Lcom/obs/services/model/DeleteObjectsRequest;->getEncodingType()Ljava/lang/String;

    move-result-object v4

    .line 314
    invoke-interface {v1, v2, v3, v4}, Lcom/obs/services/internal/IConvertor;->transKeyAndVersion([Lcom/obs/services/model/KeyAndVersion;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 317
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 318
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Content-Length"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    const-string v3, "Content-MD5"

    invoke-static {v1}, Lcom/obs/services/internal/utils/ServiceUtils;->computeMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    const-string v3, "Content-Type"

    const-string v4, "application/xml"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v3

    invoke-virtual {p0, p1, v2, v3}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequestPaymentHeaders(Lcom/obs/services/model/GenericRequest;Ljava/util/Map;Lcom/obs/services/internal/IHeaders;)Ljava/util/Map;

    .line 323
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequest(Lcom/obs/services/model/GenericRequest;)Lcom/obs/services/internal/trans/NewTransResult;

    move-result-object v6

    .line 324
    invoke-virtual {v6, v0}, Lcom/obs/services/internal/trans/NewTransResult;->setParams(Ljava/util/Map;)V

    .line 325
    invoke-virtual {v6, v2}, Lcom/obs/services/internal/trans/NewTransResult;->setHeaders(Ljava/util/Map;)V

    .line 326
    invoke-virtual {p0, v4, v1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->createRequestBody(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-virtual {v6, p1}, Lcom/obs/services/internal/trans/NewTransResult;->setBody(Lokhttp3/RequestBody;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v5, p0

    .line 327
    invoke-virtual/range {v5 .. v10}, Lcom/obs/services/internal/RestStorageService;->performRequest(Lcom/obs/services/internal/trans/NewTransResult;ZZZZ)Lokhttp3/Response;

    move-result-object p0

    .line 328
    invoke-virtual {v5, p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->verifyResponseContentType(Lokhttp3/Response;)V

    .line 330
    invoke-virtual {v5}, Lcom/obs/services/internal/RestStorageService;->getXmlResponseSaxParser()Lcom/obs/services/internal/handler/XmlResponsesSaxParser;

    move-result-object p1

    new-instance v0, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;

    invoke-direct {v0, p0}, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;-><init>(Lokhttp3/Response;)V

    const-class v1, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$DeleteObjectsHandler;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->parse(Ljava/io/InputStream;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$DeleteObjectsHandler;

    .line 331
    invoke-virtual {p1}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$DeleteObjectsHandler;->getMultipleDeleteResult()Lcom/obs/services/model/DeleteObjectsResult;

    move-result-object p1

    .line 333
    invoke-virtual {v5, p1, p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->setHeadersAndStatus(Lcom/obs/services/model/HeaderResponse;Lokhttp3/Response;)V

    return-object p1
.end method

.method protected doesObjectExistImpl(Lcom/obs/services/model/GetObjectMetadataRequest;)Z
    .registers 9

    .line 88
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 89
    invoke-virtual {p1}, Lcom/obs/services/model/GetObjectMetadataRequest;->getSseCHeader()Lcom/obs/services/model/SseCHeader;

    move-result-object v0

    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v1

    invoke-virtual {p0, v0, v4, v1}, Lcom/obs/services/internal/service/RequestConvertor;->transSseCHeaders(Lcom/obs/services/model/SseCHeader;Ljava/util/Map;Lcom/obs/services/internal/IHeaders;)V

    .line 90
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v0

    invoke-virtual {p0, p1, v4, v0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequestPaymentHeaders(Lcom/obs/services/model/GenericRequest;Ljava/util/Map;Lcom/obs/services/internal/IHeaders;)Ljava/util/Map;

    .line 92
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 93
    invoke-virtual {p1}, Lcom/obs/services/model/GetObjectMetadataRequest;->getVersionId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 94
    const-string v0, "versionId"

    invoke-virtual {p1}, Lcom/obs/services/model/GetObjectMetadataRequest;->getVersionId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    :cond_33
    :try_start_33
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/obs/services/model/GetObjectMetadataRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v2

    .line 99
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getUserHeaders()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {p1}, Lcom/obs/services/model/BaseObjectRequest;->isEncodeHeaders()Z

    move-result v6

    move-object v0, p0

    .line 98
    invoke-virtual/range {v0 .. v6}, Lcom/obs/services/internal/RestStorageService;->performRestHead(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Z)Lokhttp3/Response;

    move-result-object p0

    .line 100
    invoke-virtual {p0}, Lokhttp3/Response;->code()I

    move-result p0
    :try_end_4c
    .catch Lcom/obs/services/internal/ServiceException; {:try_start_33 .. :try_end_4c} :catch_52

    const/16 p1, 0xc8

    if-ne p1, p0, :cond_5c

    const/4 p0, 0x1

    return p0

    :catch_52
    move-exception v0

    move-object p0, v0

    const/16 p1, 0x194

    .line 104
    invoke-virtual {p0}, Lcom/obs/services/internal/ServiceException;->getResponseCode()I

    move-result v0

    if-ne p1, v0, :cond_5e

    :cond_5c
    const/4 p0, 0x0

    return p0

    .line 105
    :cond_5e
    throw p0
.end method

.method protected getObjectAclImpl(Lcom/obs/services/model/GetObjectAclRequest;)Lcom/obs/services/model/AccessControlList;
    .registers 8

    .line 435
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 436
    sget-object v0, Lcom/obs/services/model/SpecialParamEnum;->ACL:Lcom/obs/services/model/SpecialParamEnum;

    invoke-virtual {v0}, Lcom/obs/services/model/SpecialParamEnum;->getOriginalStringCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    invoke-virtual {p1}, Lcom/obs/services/model/GetObjectAclRequest;->getVersionId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/obs/services/internal/utils/ServiceUtils;->isValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 438
    invoke-virtual {p1}, Lcom/obs/services/model/GetObjectAclRequest;->getVersionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "versionId"

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    :cond_27
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/obs/services/model/GetObjectAclRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v2

    .line 443
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v0

    const/4 v4, 0x0

    .line 442
    invoke-virtual {p0, p1, v4, v0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequestPaymentHeaders(Lcom/obs/services/model/GenericRequest;Ljava/util/Map;Lcom/obs/services/internal/IHeaders;)Ljava/util/Map;

    move-result-object v4

    .line 443
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getUserHeaders()Ljava/util/HashMap;

    move-result-object v5

    move-object v0, p0

    .line 441
    invoke-virtual/range {v0 .. v5}, Lcom/obs/services/internal/RestStorageService;->performRestGet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lokhttp3/Response;

    move-result-object p0

    .line 445
    invoke-virtual {v0, p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->verifyResponseContentType(Lokhttp3/Response;)V

    .line 447
    invoke-virtual {v0}, Lcom/obs/services/internal/RestStorageService;->getXmlResponseSaxParser()Lcom/obs/services/internal/handler/XmlResponsesSaxParser;

    move-result-object p1

    new-instance v1, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;

    invoke-direct {v1, p0}, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;-><init>(Lokhttp3/Response;)V

    const-class v2, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$AccessControlListHandler;

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->parse(Ljava/io/InputStream;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$AccessControlListHandler;

    .line 448
    invoke-virtual {p1}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$AccessControlListHandler;->getAccessControlList()Lcom/obs/services/model/AccessControlList;

    move-result-object p1

    .line 449
    invoke-virtual {v0, p1, p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->setHeadersAndStatus(Lcom/obs/services/model/HeaderResponse;Lokhttp3/Response;)V

    return-object p1
.end method

.method protected getObjectImpl(Lcom/obs/services/model/GetObjectRequest;)Lcom/obs/services/model/ObsObject;
    .registers 2

    .line 213
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsObjectBaseService;->getObjectImpl(Lcom/obs/services/model/GetObjectMetadataRequest;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/ObsObject;

    return-object p0
.end method

.method protected getObjectImpl(Lcom/obs/services/model/GetObjectMetadataRequest;)Ljava/lang/Object;
    .registers 15

    .line 219
    instance-of v0, p1, Lcom/obs/services/model/GetObjectRequest;

    if-nez v0, :cond_4f

    .line 220
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 221
    invoke-virtual {p1}, Lcom/obs/services/model/GetObjectMetadataRequest;->getSseCHeader()Lcom/obs/services/model/SseCHeader;

    move-result-object v0

    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v1

    invoke-virtual {p0, v0, v5, v1}, Lcom/obs/services/internal/service/RequestConvertor;->transSseCHeaders(Lcom/obs/services/model/SseCHeader;Ljava/util/Map;Lcom/obs/services/internal/IHeaders;)V

    .line 222
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v0

    invoke-virtual {p0, p1, v5, v0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequestPaymentHeaders(Lcom/obs/services/model/GenericRequest;Ljava/util/Map;Lcom/obs/services/internal/IHeaders;)Ljava/util/Map;

    .line 224
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 225
    invoke-virtual {p1}, Lcom/obs/services/model/GetObjectMetadataRequest;->getVersionId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 226
    const-string v0, "versionId"

    invoke-virtual {p1}, Lcom/obs/services/model/GetObjectMetadataRequest;->getVersionId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    :cond_37
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/obs/services/model/GetObjectMetadataRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v3

    .line 229
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getUserHeaders()Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {p1}, Lcom/obs/services/model/BaseObjectRequest;->isEncodeHeaders()Z

    move-result v7

    move-object v1, p0

    .line 228
    invoke-virtual/range {v1 .. v7}, Lcom/obs/services/internal/RestStorageService;->performRestHead(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Z)Lokhttp3/Response;

    move-result-object p0

    move-object v0, v1

    const/4 v1, 0x0

    goto :goto_8b

    :cond_4f
    move-object v0, p0

    .line 231
    move-object p0, p1

    check-cast p0, Lcom/obs/services/model/GetObjectRequest;

    .line 232
    invoke-virtual {v0, p0}, Lcom/obs/services/internal/service/RequestConvertor;->transGetObjectRequest(Lcom/obs/services/model/GetObjectRequest;)Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;

    move-result-object v1

    .line 233
    invoke-virtual {p0}, Lcom/obs/services/model/GetObjectRequest;->getRequestParameters()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_68

    .line 234
    invoke-virtual {v1}, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;->getParams()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0}, Lcom/obs/services/model/GetObjectRequest;->getRequestParameters()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_68
    move-object v2, v1

    .line 236
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    move-object v3, v2

    invoke-virtual {p1}, Lcom/obs/services/model/GetObjectMetadataRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v2

    move-object v4, v3

    invoke-virtual {v4}, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;->getParams()Ljava/util/Map;

    move-result-object v3

    .line 237
    invoke-virtual {v4}, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;->getHeaders()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getUserHeaders()Ljava/util/HashMap;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/obs/services/model/BaseObjectRequest;->isEncodeHeaders()Z

    move-result v7

    .line 236
    invoke-virtual/range {v0 .. v7}, Lcom/obs/services/internal/RestStorageService;->performRestGet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;ZZ)Lokhttp3/Response;

    move-result-object v1

    move-object v12, v1

    move-object v1, p0

    move-object p0, v12

    .line 240
    :goto_8b
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    .line 241
    invoke-virtual {p1}, Lcom/obs/services/model/BaseObjectRequest;->isEncodeHeaders()Z

    move-result v3

    .line 240
    invoke-virtual {v0, v2, p0, v3}, Lcom/obs/services/internal/service/ObsObjectBaseService;->getObsFSAttributeFromResponse(Ljava/lang/String;Lokhttp3/Response;Z)Lcom/obs/services/model/fs/ObsFSAttribute;

    move-result-object v2

    .line 243
    instance-of v3, p1, Lcom/obs/services/model/GetObjectRequest;

    if-nez v3, :cond_9f

    .line 244
    invoke-virtual {p0}, Lokhttp3/Response;->close()V

    return-object v2

    .line 247
    :cond_9f
    new-instance v3, Lcom/obs/services/model/fs/ReadFileResult;

    invoke-direct {v3}, Lcom/obs/services/model/fs/ReadFileResult;-><init>()V

    .line 248
    invoke-virtual {p1}, Lcom/obs/services/model/GetObjectMetadataRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/obs/services/model/ObsObject;->setObjectKey(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/obs/services/model/ObsObject;->setBucketName(Ljava/lang/String;)V

    .line 250
    invoke-virtual {v3, v2}, Lcom/obs/services/model/ObsObject;->setMetadata(Lcom/obs/services/model/ObjectMetadata;)V

    .line 254
    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p0

    .line 255
    invoke-virtual {v1}, Lcom/obs/services/model/GetObjectRequest;->getProgressListener()Lcom/obs/services/model/ProgressListener;

    move-result-object p1

    if-eqz p1, :cond_f0

    .line 256
    new-instance v4, Lcom/obs/services/internal/SimpleProgressManager;

    invoke-virtual {v2}, Lcom/obs/services/model/ObjectMetadata;->getContentLength()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 257
    invoke-virtual {v1}, Lcom/obs/services/model/GetObjectRequest;->getProgressListener()Lcom/obs/services/model/ProgressListener;

    move-result-object v9

    .line 258
    invoke-virtual {v1}, Lcom/obs/services/model/GetObjectRequest;->getProgressInterval()J

    move-result-wide v7

    const-wide/16 v10, 0x0

    cmp-long p1, v7, v10

    if-lez p1, :cond_e1

    .line 259
    invoke-virtual {v1}, Lcom/obs/services/model/GetObjectRequest;->getProgressInterval()J

    move-result-wide v1

    :goto_df
    move-wide v10, v1

    goto :goto_e5

    :cond_e1
    const-wide/32 v1, 0x19000

    goto :goto_df

    :goto_e5
    const-wide/16 v7, 0x0

    invoke-direct/range {v4 .. v11}, Lcom/obs/services/internal/SimpleProgressManager;-><init>(JJLcom/obs/services/model/ProgressListener;J)V

    .line 260
    new-instance p1, Lcom/obs/services/internal/io/ProgressInputStream;

    invoke-direct {p1, p0, v4}, Lcom/obs/services/internal/io/ProgressInputStream;-><init>(Ljava/io/InputStream;Lcom/obs/services/internal/ProgressManager;)V

    move-object p0, p1

    .line 263
    :cond_f0
    iget-object p1, v0, Lcom/obs/services/internal/RestConnectionService;->obsProperties:Lcom/obs/services/internal/ObsProperties;

    const-string v0, "httpclient.read-buffer-size"

    const/16 v1, 0x2000

    invoke-virtual {p1, v0, v1}, Lcom/obs/services/internal/ObsProperties;->getIntProperty(Ljava/lang/String;I)I

    move-result p1

    if-lez p1, :cond_102

    .line 266
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object p0, v0

    .line 269
    :cond_102
    invoke-virtual {v3, p0}, Lcom/obs/services/model/ObsObject;->setObjectContent(Ljava/io/InputStream;)V

    return-object v3
.end method

.method protected getObjectMetadataImpl(Lcom/obs/services/model/GetObjectMetadataRequest;)Lcom/obs/services/model/fs/ObsFSAttribute;
    .registers 2

    .line 401
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsObjectBaseService;->getObjectImpl(Lcom/obs/services/model/GetObjectMetadataRequest;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/fs/ObsFSAttribute;

    return-object p0
.end method

.method protected getObjectUrl(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 9

    .line 454
    invoke-virtual {p0}, Lcom/obs/services/internal/RestConnectionService;->isPathStyle()Z

    move-result v0

    .line 455
    invoke-virtual {p0}, Lcom/obs/services/internal/RestConnectionService;->getHttpsOnly()Z

    move-result v1

    .line 456
    invoke-virtual {p0}, Lcom/obs/services/internal/RestConnectionService;->isCname()Z

    move-result v2

    .line 458
    const-string v3, ""

    if-nez p3, :cond_2d

    .line 459
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":"

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_21

    invoke-virtual {p0}, Lcom/obs/services/internal/RestConnectionService;->getHttpsPort()I

    move-result v4

    goto :goto_25

    :cond_21
    invoke-virtual {p0}, Lcom/obs/services/internal/RestConnectionService;->getHttpPort()I

    move-result v4

    :goto_25
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_2e

    :cond_2d
    move-object p3, v3

    .line 461
    :goto_2e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v1, :cond_38

    const-string v1, "https://"

    goto :goto_3a

    :cond_38
    const-string v1, "http://"

    :goto_3a
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_54

    if-eqz v2, :cond_42

    goto :goto_54

    :cond_42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_55

    :cond_54
    :goto_54
    move-object v1, v3

    :goto_55
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    invoke-virtual {p0}, Lcom/obs/services/internal/RestConnectionService;->getEndpoint()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_78

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_78
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x0

    .line 463
    invoke-static {p2, p0}, Lcom/obs/services/internal/utils/RestUtils;->uriEncode(Ljava/lang/CharSequence;Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getObsFSAttributeFromResponse(Ljava/lang/String;Lokhttp3/Response;Z)Lcom/obs/services/model/fs/ObsFSAttribute;
    .registers 11

    .line 468
    const-string v0, "Last-Modified"

    invoke-virtual {p2, v0}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 471
    :try_start_8
    invoke-static {v0}, Lcom/obs/services/internal/utils/ServiceUtils;->parseRfc822Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_c
    .catch Ljava/text/ParseException; {:try_start_8 .. :try_end_c} :catch_d

    goto :goto_1e

    :catch_d
    move-exception v0

    .line 473
    sget-object v1, Lcom/obs/services/internal/service/ObsObjectBaseService;->log:Lcom/obs/log/ILogger;

    invoke-interface {v1}, Lcom/obs/log/ILogger;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 474
    sget-object v1, Lcom/obs/services/internal/service/ObsObjectBaseService;->log:Lcom/obs/log/ILogger;

    const-string v2, "Response last-modified is not well-format"

    invoke-interface {v1, v2, v0}, Lcom/obs/log/ILogger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_1d
    const/4 v0, 0x0

    .line 478
    :goto_1e
    new-instance v1, Lcom/obs/services/model/fs/ObsFSAttribute;

    invoke-direct {v1}, Lcom/obs/services/model/fs/ObsFSAttribute;-><init>()V

    .line 479
    invoke-virtual {v1, v0}, Lcom/obs/services/model/ObjectMetadata;->setLastModified(Ljava/util/Date;)V

    .line 480
    const-string v0, "Content-Encoding"

    invoke-virtual {p2, v0}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/obs/services/model/ObjectMetadata;->setContentEncoding(Ljava/lang/String;)V

    .line 481
    const-string v0, "Content-Type"

    invoke-virtual {p2, v0}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/obs/services/model/ObjectMetadata;->setContentType(Ljava/lang/String;)V

    .line 483
    const-string v0, "Content-Disposition"

    invoke-virtual {p2, v0}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/obs/services/model/ObjectMetadata;->setContentDisposition(Ljava/lang/String;)V

    .line 484
    const-string v0, "Content-Language"

    invoke-virtual {p2, v0}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/obs/services/model/ObjectMetadata;->setContentLanguage(Ljava/lang/String;)V

    .line 485
    const-string v0, "Cache-Control"

    invoke-virtual {p2, v0}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/obs/services/model/ObjectMetadata;->setCacheControl(Ljava/lang/String;)V

    .line 486
    const-string v0, "Expires"

    invoke-virtual {p2, v0}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/obs/services/model/ObjectMetadata;->setExpires(Ljava/lang/String;)V

    .line 487
    const-string v0, "hash-crc64ecma"

    invoke-virtual {p2, v0}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/obs/services/model/ObjectMetadata;->setCrc64(Ljava/lang/String;)V

    .line 489
    const-string v0, "Content-Length"

    invoke-virtual {p2, v0}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_87

    .line 492
    :try_start_6d
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/obs/services/model/ObjectMetadata;->setContentLength(Ljava/lang/Long;)V
    :try_end_78
    .catch Ljava/lang/NumberFormatException; {:try_start_6d .. :try_end_78} :catch_79

    goto :goto_87

    :catch_79
    move-exception v2

    .line 494
    sget-object v3, Lcom/obs/services/internal/service/ObsObjectBaseService;->log:Lcom/obs/log/ILogger;

    invoke-interface {v3}, Lcom/obs/log/ILogger;->isWarnEnabled()Z

    move-result v4

    if-eqz v4, :cond_87

    .line 495
    const-string v4, "Response content-length is not well-format"

    invoke-interface {v3, v4, v2}, Lcom/obs/log/ILogger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 500
    :cond_87
    :goto_87
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v2

    invoke-interface {v2}, Lcom/obs/services/internal/IHeaders;->fsModeHeader()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9c

    .line 501
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/obs/services/model/fs/ObsFSAttribute;->setMode(I)V

    .line 503
    :cond_9c
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v2

    .line 504
    invoke-interface {v2}, Lcom/obs/services/internal/IHeaders;->websiteRedirectLocationHeader()Ljava/lang/String;

    move-result-object v2

    .line 503
    invoke-virtual {p2, v2}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/obs/services/model/ObjectMetadata;->setWebSiteRedirectLocation(Ljava/lang/String;)V

    .line 506
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v2

    invoke-interface {v2}, Lcom/obs/services/internal/IHeaders;->storageClassHeader()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/obs/services/model/StorageClassEnum;->getValueFromCode(Ljava/lang/String;)Lcom/obs/services/model/StorageClassEnum;

    move-result-object v2

    .line 505
    invoke-virtual {v1, v2}, Lcom/obs/services/model/ObjectMetadata;->setObjectStorageClass(Lcom/obs/services/model/StorageClassEnum;)V

    .line 508
    const-string v2, "ETag"

    invoke-virtual {p2, v2}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 509
    invoke-virtual {v1, v2}, Lcom/obs/services/model/ObjectMetadata;->setEtag(Ljava/lang/String;)V

    if-eqz v2, :cond_10a

    .line 510
    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_10a

    .line 512
    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_de

    .line 513
    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 515
    :cond_de
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ee

    .line 516
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v5

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 519
    :cond_ee
    :try_start_ee
    invoke-static {v2}, Lcom/obs/services/internal/utils/ServiceUtils;->fromHex(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/obs/services/internal/utils/ServiceUtils;->toBase64([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/obs/services/model/ObjectMetadata;->setContentMd5(Ljava/lang/String;)V
    :try_end_f9
    .catch Ljava/lang/Exception; {:try_start_ee .. :try_end_f9} :catch_fa

    goto :goto_10a

    :catch_fa
    move-exception v2

    .line 521
    sget-object v3, Lcom/obs/services/internal/service/ObsObjectBaseService;->log:Lcom/obs/log/ILogger;

    invoke-interface {v3}, Lcom/obs/log/ILogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_10a

    .line 522
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Lcom/obs/log/ILogger;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 527
    :cond_10a
    :goto_10a
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v2

    .line 528
    invoke-interface {v2}, Lcom/obs/services/internal/IHeaders;->objectTypeHeader()Ljava/lang/String;

    move-result-object v2

    .line 527
    invoke-virtual {p2, v2}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Appendable"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/obs/services/model/ObjectMetadata;->setAppendable(Z)V

    .line 529
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object p1

    invoke-interface {p1}, Lcom/obs/services/internal/IHeaders;->nextPositionHeader()Ljava/lang/String;

    move-result-object p1

    const-string v2, "-1"

    invoke-virtual {p2, p1, v2}, Lokhttp3/Response;->header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 530
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/obs/services/model/ObjectMetadata;->setNextPosition(J)V

    .line 531
    invoke-virtual {v1}, Lcom/obs/services/model/ObjectMetadata;->getNextPosition()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long p1, v3, v5

    if-nez p1, :cond_149

    .line 532
    invoke-virtual {p2, v0, v2}, Lokhttp3/Response;->header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/obs/services/model/ObjectMetadata;->setNextPosition(J)V

    .line 534
    :cond_149
    invoke-virtual {p0, v1, p2, p3}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->setHeadersAndStatus(Lcom/obs/services/model/HeaderResponse;Lokhttp3/Response;Z)V

    .line 535
    invoke-virtual {v1}, Lcom/obs/services/model/HeaderResponse;->getOriginalHeaders()Ljava/util/Map;

    move-result-object p0

    invoke-static {p0, p3}, Lcom/obs/services/internal/utils/ServiceUtils;->cleanUserMetadata(Ljava/util/Map;Z)Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/obs/services/model/ObjectMetadata;->setUserMetadata(Ljava/util/Map;)V

    return-object v1
.end method

.method protected putObjectImpl(Lcom/obs/services/model/PutObjectRequest;)Lcom/obs/services/model/fs/ObsFSFile;
    .registers 14

    .line 116
    invoke-virtual {p1}, Lcom/obs/services/model/PutObjectBasicRequest;->getAcl()Lcom/obs/services/model/AccessControlList;

    move-result-object v3

    .line 119
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/RequestConvertor;->transPutObjectRequest(Lcom/obs/services/model/PutObjectRequest;)Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;

    move-result-object v1
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_12f

    .line 120
    :try_start_8
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;->getHeaders()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/obs/services/internal/service/AclHeaderConvertor;->prepareRESTHeaderAcl(Ljava/lang/String;Ljava/util/Map;Lcom/obs/services/model/AccessControlList;)Z

    move-result v0

    .line 121
    invoke-virtual {p1}, Lcom/obs/services/model/PutObjectRequest;->getCallback()Lcom/obs/services/model/Callback;

    move-result-object v2

    if-eqz v2, :cond_77

    .line 122
    invoke-virtual {p1}, Lcom/obs/services/model/PutObjectRequest;->getCallback()Lcom/obs/services/model/Callback;

    move-result-object v2

    invoke-virtual {v2}, Lcom/obs/services/model/Callback;->getCallbackUrl()Ljava/lang/String;

    move-result-object v2

    const-string v4, "callbackUrl is null"

    invoke-static {v2, v4}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-virtual {p1}, Lcom/obs/services/model/PutObjectRequest;->getCallback()Lcom/obs/services/model/Callback;

    move-result-object v2

    invoke-virtual {v2}, Lcom/obs/services/model/Callback;->getCallbackBody()Ljava/lang/String;

    move-result-object v2

    const-string v4, "callbackBody is null"

    invoke-static {v2, v4}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-virtual {v1}, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;->getHeaders()Ljava/util/Map;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/obs/services/internal/RestStorageService;->getProviderCredentials()Lcom/obs/services/internal/security/ProviderCredentials;

    move-result-object v5

    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/obs/services/internal/security/ProviderCredentials;->getLocalAuthType(Ljava/lang/String;)Lcom/obs/services/model/AuthTypeEnum;

    move-result-object v5

    sget-object v6, Lcom/obs/services/model/AuthTypeEnum;->OBS:Lcom/obs/services/model/AuthTypeEnum;

    if-eq v5, v6, :cond_54

    const-string v5, "x-amz-"

    goto :goto_56

    :catchall_50
    move-exception v0

    move-object p0, v0

    goto/16 :goto_132

    :cond_54
    const-string v5, "x-obs-"

    :goto_56
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "callback"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 128
    invoke-virtual {p1}, Lcom/obs/services/model/PutObjectRequest;->getCallback()Lcom/obs/services/model/Callback;

    move-result-object v5

    invoke-static {v5}, Lcom/obs/services/internal/utils/JSONChange;->objToJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    invoke-static {v5}, Lcom/obs/services/internal/utils/ServiceUtils;->toBase64([B)Ljava/lang/String;

    move-result-object v5

    .line 126
    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    :cond_77
    invoke-virtual {p0, v1, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transObjectRequestWithResult(Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;Lcom/obs/services/model/BaseObjectRequest;)Lcom/obs/services/internal/trans/NewTransResult;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v4, p0

    .line 132
    invoke-virtual/range {v4 .. v9}, Lcom/obs/services/internal/RestStorageService;->performRequest(Lcom/obs/services/internal/trans/NewTransResult;ZZZZ)Lokhttp3/Response;

    move-result-object p0
    :try_end_84
    .catchall {:try_start_8 .. :try_end_84} :catchall_50

    .line 134
    invoke-virtual {v1}, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;->getBody()Lokhttp3/RequestBody;

    move-result-object v2

    if-eqz v2, :cond_a1

    invoke-virtual {p1}, Lcom/obs/services/model/PutObjectRequest;->isAutoClose()Z

    move-result v2

    if-eqz v2, :cond_a1

    .line 135
    invoke-virtual {v1}, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;->getBody()Lokhttp3/RequestBody;

    move-result-object v2

    instance-of v2, v2, Ljava/io/Closeable;

    if-eqz v2, :cond_a1

    .line 136
    invoke-virtual {v1}, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;->getBody()Lokhttp3/RequestBody;

    move-result-object v1

    check-cast v1, Ljava/io/Closeable;

    invoke-static {v1}, Lcom/obs/services/internal/utils/ServiceUtils;->closeStream(Ljava/io/Closeable;)V

    .line 141
    :cond_a1
    new-instance v5, Lcom/obs/services/model/fs/ObsFSFile;

    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/obs/services/model/BaseObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v7

    const-string v1, "ETag"

    .line 142
    invoke-virtual {p0, v1}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 143
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v1

    invoke-interface {v1}, Lcom/obs/services/internal/IHeaders;->versionIdHeader()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 144
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v1

    .line 145
    invoke-interface {v1}, Lcom/obs/services/internal/IHeaders;->storageClassHeader()Ljava/lang/String;

    move-result-object v1

    .line 144
    invoke-virtual {p0, v1}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/obs/services/model/StorageClassEnum;->getValueFromCode(Ljava/lang/String;)Lcom/obs/services/model/StorageClassEnum;

    move-result-object v10

    .line 145
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/obs/services/model/BaseObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v2

    .line 146
    invoke-virtual {p1}, Lcom/obs/services/model/BaseObjectRequest;->getIsIgnorePort()Z

    move-result v11

    .line 145
    invoke-virtual {v4, v1, v2, v11}, Lcom/obs/services/internal/service/ObsObjectBaseService;->getObjectUrl(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v11

    invoke-direct/range {v5 .. v11}, Lcom/obs/services/model/fs/ObsFSFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/model/StorageClassEnum;Ljava/lang/String;)V

    move-object v6, v5

    .line 147
    invoke-virtual {p1}, Lcom/obs/services/model/PutObjectRequest;->getCallback()Lcom/obs/services/model/Callback;

    move-result-object v1

    if-eqz v1, :cond_106

    .line 149
    :try_start_ef
    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/obs/services/model/PutObjectResult;->setCallbackResponseBody(Ljava/io/InputStream;)V
    :try_end_fd
    .catch Ljava/lang/Exception; {:try_start_ef .. :try_end_fd} :catch_fe

    goto :goto_106

    :catch_fe
    move-exception v0

    move-object p0, v0

    .line 151
    new-instance p1, Lcom/obs/services/internal/ServiceException;

    invoke-direct {p1, p0}, Lcom/obs/services/internal/ServiceException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 154
    :cond_106
    :goto_106
    invoke-virtual {v4, v6, p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->setHeadersAndStatus(Lcom/obs/services/model/HeaderResponse;Lokhttp3/Response;)V

    if-nez v0, :cond_12e

    if-eqz v3, :cond_12e

    .line 157
    :try_start_10d
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/obs/services/model/BaseObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->isRequesterPays()Z

    move-result v5

    move-object v0, v4

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/obs/services/internal/service/AclHeaderConvertor;->putAclImpl(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/model/AccessControlList;Ljava/lang/String;Z)V
    :try_end_11e
    .catch Ljava/lang/Exception; {:try_start_10d .. :try_end_11e} :catch_11f

    return-object v6

    :catch_11f
    move-exception v0

    move-object p0, v0

    .line 159
    sget-object p1, Lcom/obs/services/internal/service/ObsObjectBaseService;->log:Lcom/obs/log/ILogger;

    invoke-interface {p1}, Lcom/obs/log/ILogger;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_12e

    .line 160
    const-string v0, "Try to set object acl error"

    invoke-interface {p1, v0, p0}, Lcom/obs/log/ILogger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_12e
    return-object v6

    :catchall_12f
    move-exception v0

    move-object p0, v0

    const/4 v1, 0x0

    :goto_132
    if-eqz v1, :cond_151

    .line 134
    invoke-virtual {v1}, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;->getBody()Lokhttp3/RequestBody;

    move-result-object v0

    if-eqz v0, :cond_151

    invoke-virtual {p1}, Lcom/obs/services/model/PutObjectRequest;->isAutoClose()Z

    move-result p1

    if-eqz p1, :cond_151

    .line 135
    invoke-virtual {v1}, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;->getBody()Lokhttp3/RequestBody;

    move-result-object p1

    instance-of p1, p1, Ljava/io/Closeable;

    if-eqz p1, :cond_151

    .line 136
    invoke-virtual {v1}, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;->getBody()Lokhttp3/RequestBody;

    move-result-object p1

    check-cast p1, Ljava/io/Closeable;

    invoke-static {p1}, Lcom/obs/services/internal/utils/ServiceUtils;->closeStream(Ljava/io/Closeable;)V

    .line 139
    :cond_151
    throw p0
.end method

.method protected putObjectInTwoBucketImpl(Lcom/obs/services/model/PutObjectInTwoBucketRequest;)Lcom/obs/services/model/PutObjectInTwoBucketResult;
    .registers 6

    const/4 v0, 0x2

    .line 168
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 171
    :try_start_5
    new-instance v1, Lcom/obs/services/internal/service/ObsObjectBaseService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/obs/services/internal/service/ObsObjectBaseService$$ExternalSyntheticLambda0;-><init>(Lcom/obs/services/internal/service/ObsObjectBaseService;Lcom/obs/services/model/PutObjectInTwoBucketRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 184
    new-instance v2, Lcom/obs/services/internal/service/ObsObjectBaseService$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Lcom/obs/services/internal/service/ObsObjectBaseService$$ExternalSyntheticLambda1;-><init>(Lcom/obs/services/internal/service/ObsObjectBaseService;Lcom/obs/services/model/PutObjectInTwoBucketRequest;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    .line 197
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 198
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide v2, 0x7fffffffffffffffL

    invoke-interface {v0, v2, v3, p1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    .line 200
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/obs/services/model/PutObjectInTwoBucketResult;

    .line 201
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/PutObjectInTwoBucketResult;

    .line 202
    invoke-virtual {p0}, Lcom/obs/services/model/PutObjectInTwoBucketResult;->getBackupBucketResult()Lcom/obs/services/model/PutObjectResult;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/obs/services/model/PutObjectInTwoBucketResult;->setBackupBucketResult(Lcom/obs/services/model/PutObjectResult;)V

    .line 203
    invoke-virtual {p0}, Lcom/obs/services/model/PutObjectInTwoBucketResult;->getBackupBucketException()Lcom/obs/services/exception/ObsException;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/obs/services/model/PutObjectInTwoBucketResult;->setBackupBucketException(Lcom/obs/services/exception/ObsException;)V
    :try_end_3e
    .catch Lcom/obs/services/internal/ServiceException; {:try_start_5 .. :try_end_3e} :catch_45
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_3e} :catch_3f

    return-object p1

    :catch_3f
    move-exception p0

    .line 207
    invoke-static {p0}, Lcom/obs/services/internal/utils/ServiceUtils;->changeFromException(Ljava/lang/Exception;)Lcom/obs/services/exception/ObsException;

    move-result-object p0

    throw p0

    :catch_45
    move-exception p0

    .line 205
    invoke-static {p0}, Lcom/obs/services/internal/utils/ServiceUtils;->changeFromServiceException(Lcom/obs/services/internal/ServiceException;)Lcom/obs/services/exception/ObsException;

    move-result-object p0

    throw p0
.end method

.method protected selectObjectContentImpl(Lcom/obs/services/model/select/SelectObjectRequest;)Lcom/obs/services/model/select/SelectObjectResult;
    .registers 11

    .line 275
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 276
    const-string v1, "Content-Type"

    const-string v2, "application/xml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    invoke-virtual {p1}, Lcom/obs/services/model/select/SelectObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v6

    .line 279
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 280
    const-string v1, "select"

    const/4 v3, 0x0

    invoke-interface {v5, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    const-string v1, "select-type"

    const-string v3, "2"

    invoke-interface {v5, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    invoke-virtual {p1}, Lcom/obs/services/model/select/SelectObjectRequest;->convertToXml()Ljava/lang/String;

    move-result-object v1

    .line 285
    sget-object v3, Lcom/obs/services/internal/service/ObsObjectBaseService;->log:Lcom/obs/log/ILogger;

    invoke-interface {v3}, Lcom/obs/log/ILogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 290
    invoke-virtual {p1}, Lcom/obs/services/model/select/SelectObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v6, v4, v1}, [Ljava/lang/Object;

    move-result-object v4

    .line 287
    const-string v7, "selectObjectContentImpl: bucket: %s; object: %s; request XML: %n%s%n"

    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 286
    invoke-interface {v3, v4}, Lcom/obs/log/ILogger;->debug(Ljava/lang/CharSequence;)V

    .line 293
    :cond_3f
    new-instance v3, Lcom/obs/services/internal/trans/NewTransResult;

    invoke-direct {v3}, Lcom/obs/services/internal/trans/NewTransResult;-><init>()V

    .line 294
    sget-object v4, Lcom/obs/services/model/HttpMethodEnum;->POST:Lcom/obs/services/model/HttpMethodEnum;

    invoke-virtual {v3, v4}, Lcom/obs/services/internal/trans/NewTransResult;->setHttpMethod(Lcom/obs/services/model/HttpMethodEnum;)V

    .line 295
    invoke-virtual {v3, v6}, Lcom/obs/services/internal/trans/NewTransResult;->setBucketName(Ljava/lang/String;)V

    .line 296
    invoke-virtual {p1}, Lcom/obs/services/model/select/SelectObjectRequest;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/obs/services/internal/trans/NewTransResult;->setObjectKey(Ljava/lang/String;)V

    .line 297
    invoke-virtual {v3, v5}, Lcom/obs/services/internal/trans/NewTransResult;->setParams(Ljava/util/Map;)V

    .line 298
    invoke-virtual {p0, v2, v1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->createRequestBody(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/obs/services/internal/trans/NewTransResult;->setBody(Lokhttp3/RequestBody;)V

    const/4 p1, 0x0

    .line 299
    invoke-virtual {p0, v3, p1, p1}, Lcom/obs/services/internal/RestConnectionService;->setupConnection(Lcom/obs/services/internal/trans/NewTransResult;ZZ)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 301
    invoke-virtual {p0, v6, p1, v0}, Lcom/obs/services/internal/RestStorageService;->renameMetadataKeys(Ljava/lang/String;Lokhttp3/Request$Builder;Ljava/util/Map;)V

    .line 304
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v4

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v3, p0

    .line 303
    invoke-virtual/range {v3 .. v8}, Lcom/obs/services/internal/RestStorageService;->performRequest(Lokhttp3/Request;Ljava/util/Map;Ljava/lang/String;ZZ)Lokhttp3/Response;

    move-result-object p0

    .line 306
    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p0

    .line 307
    new-instance p1, Lcom/obs/services/model/select/SelectObjectResult;

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/obs/services/model/select/SelectObjectResult;-><init>(Ljava/io/InputStream;)V

    return-object p1
.end method

.method protected setObjectAclImpl(Lcom/obs/services/model/SetObjectAclRequest;)Lcom/obs/services/model/HeaderResponse;
    .registers 8

    .line 405
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 406
    sget-object v1, Lcom/obs/services/model/SpecialParamEnum;->ACL:Lcom/obs/services/model/SpecialParamEnum;

    invoke-virtual {v1}, Lcom/obs/services/model/SpecialParamEnum;->getOriginalStringCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    invoke-virtual {p1}, Lcom/obs/services/model/SetObjectAclRequest;->getVersionId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 408
    const-string v1, "versionId"

    invoke-virtual {p1}, Lcom/obs/services/model/SetObjectAclRequest;->getVersionId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    :cond_1f
    invoke-virtual {p1}, Lcom/obs/services/model/SetObjectAclRequest;->getCannedACL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/obs/services/internal/utils/ServiceUtils;->isValid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 412
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/obs/services/internal/RestStorageService;->getIConvertor(Ljava/lang/String;)Lcom/obs/services/internal/IConvertor;

    move-result-object v1

    invoke-virtual {p1}, Lcom/obs/services/model/SetObjectAclRequest;->getCannedACL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/obs/services/internal/IConvertor;->transCannedAcl(Ljava/lang/String;)Lcom/obs/services/model/AccessControlList;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/obs/services/model/SetObjectAclRequest;->setAcl(Lcom/obs/services/model/AccessControlList;)V

    .line 414
    :cond_40
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 415
    const-string v3, "Content-Type"

    const-string v4, "application/xml"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/obs/services/model/SetObjectAclRequest;->getAcl()Lcom/obs/services/model/AccessControlList;

    move-result-object v5

    invoke-virtual {p0, v3, v1, v5}, Lcom/obs/services/internal/service/AclHeaderConvertor;->prepareRESTHeaderAclObject(Ljava/lang/String;Ljava/util/Map;Lcom/obs/services/model/AccessControlList;)Z

    move-result v3

    if-nez v3, :cond_8d

    .line 418
    invoke-virtual {p1}, Lcom/obs/services/model/SetObjectAclRequest;->getAcl()Lcom/obs/services/model/AccessControlList;

    move-result-object v3

    if-nez v3, :cond_61

    goto :goto_72

    .line 419
    :cond_61
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/obs/services/internal/RestStorageService;->getIConvertor(Ljava/lang/String;)Lcom/obs/services/internal/IConvertor;

    move-result-object v2

    invoke-virtual {p1}, Lcom/obs/services/model/SetObjectAclRequest;->getAcl()Lcom/obs/services/model/AccessControlList;

    move-result-object v3

    const/4 v5, 0x0

    invoke-interface {v2, v3, v5}, Lcom/obs/services/internal/IConvertor;->transAccessControlList(Lcom/obs/services/model/AccessControlList;Z)Ljava/lang/String;

    move-result-object v2

    .line 420
    :goto_72
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "Content-Length"

    invoke-interface {v1, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    const-string v3, "Content-MD5"

    invoke-static {v2}, Lcom/obs/services/internal/utils/ServiceUtils;->computeMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    invoke-virtual {p0, v4, v2}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->createRequestBody(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v2

    goto :goto_8e

    :cond_8d
    const/4 v2, 0x0

    .line 425
    :goto_8e
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v3

    invoke-virtual {p0, p1, v1, v3}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequestPaymentHeaders(Lcom/obs/services/model/GenericRequest;Ljava/util/Map;Lcom/obs/services/internal/IHeaders;)Ljava/util/Map;

    .line 426
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transObjectRequest(Lcom/obs/services/model/BaseObjectRequest;)Lcom/obs/services/internal/trans/NewTransResult;

    move-result-object p1

    .line 427
    invoke-virtual {p1, v0}, Lcom/obs/services/internal/trans/NewTransResult;->setParams(Ljava/util/Map;)V

    .line 428
    invoke-virtual {p1, v1}, Lcom/obs/services/internal/trans/NewTransResult;->setHeaders(Ljava/util/Map;)V

    .line 429
    invoke-virtual {p1, v2}, Lcom/obs/services/internal/trans/NewTransResult;->setBody(Lokhttp3/RequestBody;)V

    .line 430
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/RestStorageService;->performRequest(Lcom/obs/services/internal/trans/NewTransResult;)Lokhttp3/Response;

    move-result-object p1

    .line 431
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->build(Lokhttp3/Response;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method protected setObjectMetadataImpl(Lcom/obs/services/model/SetObjectMetadataRequest;)Lcom/obs/services/model/ObjectMetadata;
    .registers 4

    .line 394
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/RequestConvertor;->transSetObjectMetadataRequest(Lcom/obs/services/model/SetObjectMetadataRequest;)Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;

    move-result-object v0

    .line 395
    invoke-virtual {p0, v0, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transObjectRequestWithResult(Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;Lcom/obs/services/model/BaseObjectRequest;)Lcom/obs/services/internal/trans/NewTransResult;

    move-result-object v0

    .line 396
    invoke-virtual {p0, v0}, Lcom/obs/services/internal/RestStorageService;->performRequest(Lcom/obs/services/internal/trans/NewTransResult;)Lokhttp3/Response;

    move-result-object v0

    .line 397
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/obs/services/model/SetObjectMetadataRequest;->isEncodeHeaders()Z

    move-result p1

    invoke-virtual {p0, v1, v0, p1}, Lcom/obs/services/internal/service/ObsObjectBaseService;->getObsFSAttributeFromResponse(Ljava/lang/String;Lokhttp3/Response;Z)Lcom/obs/services/model/fs/ObsFSAttribute;

    move-result-object p0

    return-object p0
.end method
