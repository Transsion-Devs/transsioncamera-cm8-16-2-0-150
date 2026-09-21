.class public abstract Lcom/obs/services/AbstractClient;
.super Lcom/obs/services/internal/ObsService;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;
.implements Lcom/obs/services/IObsClient;
.implements Lcom/obs/services/IFSClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/obs/services/AbstractClient$ActionCallbackWithResult;
    }
.end annotation


# static fields
.field private static final ILOG:Lcom/obs/log/ILogger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 56
    const-class v0, Lcom/obs/services/AbstractClient;

    invoke-static {v0}, Lcom/obs/log/LoggerBuilder;->getLogger(Ljava/lang/Class;)Lcom/obs/log/ILogger;

    move-result-object v0

    sput-object v0, Lcom/obs/services/AbstractClient;->ILOG:Lcom/obs/log/ILogger;

    const/4 v0, 0x0

    .line 59
    sput-boolean v0, Lcom/jamesmurty/utils/BaseXMLBuilder;->failIfExternalEntityParsingCannotBeConfigured:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 55
    invoke-direct {p0}, Lcom/obs/services/internal/ObsService;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/obs/services/AbstractClient;)Lcom/obs/services/internal/security/ProviderCredentials;
    .registers 1

    .line 55
    invoke-virtual {p0}, Lcom/obs/services/internal/RestStorageService;->getProviderCredentials()Lcom/obs/services/internal/security/ProviderCredentials;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/obs/services/AbstractClient;Ljava/lang/String;)Lcom/obs/services/model/AuthTypeEnum;
    .registers 2

    .line 55
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->getApiVersion(Ljava/lang/String;)Lcom/obs/services/model/AuthTypeEnum;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/obs/services/AbstractClient;)Lcom/obs/services/internal/security/ProviderCredentials;
    .registers 1

    .line 55
    invoke-virtual {p0}, Lcom/obs/services/internal/RestStorageService;->getProviderCredentials()Lcom/obs/services/internal/security/ProviderCredentials;

    move-result-object p0

    return-object p0
.end method

.method private createPolicyGetRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/obs/services/model/PolicyTempSignatureRequest;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/obs/services/model/PolicyTempSignatureRequest;"
        }
    .end annotation

    .line 456
    new-instance v0, Lcom/obs/services/model/PolicyTempSignatureRequest;

    sget-object v1, Lcom/obs/services/model/HttpMethodEnum;->GET:Lcom/obs/services/model/HttpMethodEnum;

    invoke-direct {v0, v1, p1, p2}, Lcom/obs/services/model/PolicyTempSignatureRequest;-><init>(Lcom/obs/services/model/HttpMethodEnum;Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 458
    new-instance v1, Lcom/obs/services/model/PolicyConditionItem;

    sget-object v2, Lcom/obs/services/model/PolicyConditionItem$ConditionOperator;->STARTS_WITH:Lcom/obs/services/model/PolicyConditionItem$ConditionOperator;

    const-string v3, "key"

    invoke-direct {v1, v2, v3, p3}, Lcom/obs/services/model/PolicyConditionItem;-><init>(Lcom/obs/services/model/PolicyConditionItem$ConditionOperator;Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    invoke-virtual {p0}, Lcom/obs/services/internal/RestConnectionService;->isCname()Z

    move-result p3

    if-eqz p3, :cond_1f

    invoke-virtual {p0}, Lcom/obs/services/internal/RestConnectionService;->getEndpoint()Ljava/lang/String;

    move-result-object p1

    .line 462
    :cond_1f
    new-instance p0, Lcom/obs/services/model/PolicyConditionItem;

    sget-object p3, Lcom/obs/services/model/PolicyConditionItem$ConditionOperator;->EQUAL:Lcom/obs/services/model/PolicyConditionItem$ConditionOperator;

    const-string v2, "bucket"

    invoke-direct {p0, p3, v2, p1}, Lcom/obs/services/model/PolicyConditionItem;-><init>(Lcom/obs/services/model/PolicyConditionItem$ConditionOperator;Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 466
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 467
    invoke-virtual {v0, p2}, Lcom/obs/services/model/PolicyTempSignatureRequest;->setConditions(Ljava/util/List;)V

    .line 468
    invoke-virtual {v0, p4}, Lcom/obs/services/model/AbstractTemporarySignatureRequest;->setHeaders(Ljava/util/Map;)V

    .line 469
    invoke-virtual {v0, p5}, Lcom/obs/services/model/AbstractTemporarySignatureRequest;->setQueryParams(Ljava/util/Map;)V

    return-object v0
.end method

.method private createPostSignature(Lcom/obs/services/model/PostSignatureRequest;Lcom/obs/log/InterfaceLogBean;Z)Lcom/obs/services/model/PostSignatureResponse;
    .registers 4

    .line 477
    :try_start_0
    invoke-virtual {p0, p1, p3}, Lcom/obs/services/internal/ObsService;->createPostSignatureResponse(Lcom/obs/services/model/PostSignatureRequest;Z)Lcom/obs/services/model/PostSignatureResponse;

    move-result-object p0

    .line 479
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p2, p1}, Lcom/obs/log/InterfaceLogBean;->setRespTime(Ljava/util/Date;)V

    .line 480
    const-string p1, "0"

    invoke-virtual {p2, p1}, Lcom/obs/log/InterfaceLogBean;->setResultCode(Ljava/lang/String;)V

    .line 481
    sget-object p1, Lcom/obs/services/AbstractClient;->ILOG:Lcom/obs/log/ILogger;

    invoke-interface {p1}, Lcom/obs/log/ILogger;->isInfoEnabled()Z

    move-result p3

    if-eqz p3, :cond_1f

    .line 482
    invoke-interface {p1, p2}, Lcom/obs/log/ILogger;->info(Ljava/lang/Object;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d

    return-object p0

    :catch_1d
    move-exception p0

    goto :goto_20

    :cond_1f
    return-object p0

    .line 486
    :goto_20
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p2, p1}, Lcom/obs/log/InterfaceLogBean;->setRespTime(Ljava/util/Date;)V

    .line 487
    sget-object p1, Lcom/obs/services/AbstractClient;->ILOG:Lcom/obs/log/ILogger;

    invoke-interface {p1}, Lcom/obs/log/ILogger;->isErrorEnabled()Z

    move-result p3

    if-eqz p3, :cond_33

    .line 488
    invoke-interface {p1, p2}, Lcom/obs/log/ILogger;->error(Ljava/lang/Object;)V

    .line 490
    :cond_33
    new-instance p1, Lcom/obs/services/exception/ObsException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/obs/services/exception/ObsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public base64Md5(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 2

    .line 451
    invoke-static {p1}, Lcom/obs/services/internal/utils/ServiceUtils;->computeMD5Hash(Ljava/io/InputStream;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/obs/services/internal/utils/ServiceUtils;->toBase64([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public base64Md5(Ljava/io/InputStream;JJ)Ljava/lang/String;
    .registers 6

    .line 447
    invoke-static {p1, p2, p3, p4, p5}, Lcom/obs/services/internal/utils/ServiceUtils;->computeMD5Hash(Ljava/io/InputStream;JJ)[B

    move-result-object p0

    invoke-static {p0}, Lcom/obs/services/internal/utils/ServiceUtils;->toBase64([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public close()V
    .registers 1

    .line 443
    invoke-virtual {p0}, Lcom/obs/services/internal/RestConnectionService;->shutdown()V

    return-void
.end method

.method public createGetTemporarySignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;Ljava/util/Map;)Lcom/obs/services/model/TemporarySignatureResponse;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/obs/services/model/TemporarySignatureResponse;"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p6

    move-object v5, p7

    .line 296
    :try_start_6
    invoke-direct/range {v0 .. v5}, Lcom/obs/services/AbstractClient;->createPolicyGetRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/obs/services/model/PolicyTempSignatureRequest;

    move-result-object p0

    .line 298
    invoke-virtual {p0, p4, p5}, Lcom/obs/services/model/PolicyTempSignatureRequest;->setExpires(J)V

    .line 299
    invoke-virtual {v0, p0}, Lcom/obs/services/internal/ObsService;->createTemporarySignatureResponse(Lcom/obs/services/model/AbstractTemporarySignatureRequest;)Lcom/obs/services/model/TemporarySignatureResponse;

    move-result-object p0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_11} :catch_12

    return-object p0

    :catch_12
    move-exception v0

    move-object p0, v0

    .line 301
    new-instance p1, Lcom/obs/services/exception/ObsException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/obs/services/exception/ObsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public createGetTemporarySignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Map;Ljava/util/Map;)Lcom/obs/services/model/TemporarySignatureResponse;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/obs/services/model/TemporarySignatureResponse;"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    .line 263
    :try_start_6
    invoke-direct/range {v0 .. v5}, Lcom/obs/services/AbstractClient;->createPolicyGetRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/obs/services/model/PolicyTempSignatureRequest;

    move-result-object p0

    .line 265
    invoke-virtual {p0, p4}, Lcom/obs/services/model/PolicyTempSignatureRequest;->setExpiryDate(Ljava/util/Date;)V

    .line 266
    invoke-virtual {v0, p0}, Lcom/obs/services/internal/ObsService;->createTemporarySignatureResponse(Lcom/obs/services/model/AbstractTemporarySignatureRequest;)Lcom/obs/services/model/TemporarySignatureResponse;

    move-result-object p0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_11} :catch_12

    return-object p0

    :catch_12
    move-exception v0

    move-object p0, v0

    .line 268
    new-instance p1, Lcom/obs/services/exception/ObsException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/obs/services/exception/ObsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public createPostSignature(JLjava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/PostSignatureResponse;
    .registers 11

    .line 349
    new-instance v0, Lcom/obs/services/model/PostSignatureRequest;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    move-wide v1, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/obs/services/model/PostSignatureRequest;-><init>(JLjava/util/Date;Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    invoke-virtual {p0, v0}, Lcom/obs/services/AbstractClient;->createPostSignature(Lcom/obs/services/model/PostSignatureRequest;)Lcom/obs/services/model/PostSignatureResponse;

    move-result-object p0

    return-object p0
.end method

.method public createPostSignature(Lcom/obs/services/model/PostSignatureRequest;)Lcom/obs/services/model/PostSignatureResponse;
    .registers 6

    .line 362
    const-string v0, "PostSignatureRequest is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 363
    new-instance v0, Lcom/obs/log/InterfaceLogBean;

    invoke-virtual {p0}, Lcom/obs/services/internal/RestConnectionService;->getEndpoint()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const-string v3, "createPostSignature"

    invoke-direct {v0, v3, v1, v2}, Lcom/obs/log/InterfaceLogBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    invoke-virtual {p0}, Lcom/obs/services/internal/RestStorageService;->getProviderCredentials()Lcom/obs/services/internal/security/ProviderCredentials;

    move-result-object v1

    .line 365
    invoke-virtual {p1}, Lcom/obs/services/model/PostSignatureRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/obs/services/internal/security/ProviderCredentials;->getLocalAuthType(Ljava/lang/String;)Lcom/obs/services/model/AuthTypeEnum;

    move-result-object v1

    sget-object v2, Lcom/obs/services/model/AuthTypeEnum;->V4:Lcom/obs/services/model/AuthTypeEnum;

    if-ne v1, v2, :cond_24

    const/4 v1, 0x1

    goto :goto_25

    :cond_24
    const/4 v1, 0x0

    .line 364
    :goto_25
    invoke-direct {p0, p1, v0, v1}, Lcom/obs/services/AbstractClient;->createPostSignature(Lcom/obs/services/model/PostSignatureRequest;Lcom/obs/log/InterfaceLogBean;Z)Lcom/obs/services/model/PostSignatureResponse;

    move-result-object p0

    return-object p0
.end method

.method public createPostSignature(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/PostSignatureResponse;
    .registers 13

    .line 325
    new-instance v0, Lcom/obs/services/model/PostSignatureRequest;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    move-wide v1, p3

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/obs/services/model/PostSignatureRequest;-><init>(JLjava/util/Date;Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    invoke-virtual {v0}, Lcom/obs/services/model/PostSignatureRequest;->getFormParams()Ljava/util/Map;

    move-result-object p3

    .line 327
    invoke-virtual {p0}, Lcom/obs/services/internal/RestStorageService;->getProviderCredentials()Lcom/obs/services/internal/security/ProviderCredentials;

    move-result-object p4

    invoke-virtual {p4, v4}, Lcom/obs/services/internal/security/ProviderCredentials;->getLocalAuthType(Ljava/lang/String;)Lcom/obs/services/model/AuthTypeEnum;

    move-result-object p4

    sget-object p5, Lcom/obs/services/model/AuthTypeEnum;->V4:Lcom/obs/services/model/AuthTypeEnum;

    if-ne p4, p5, :cond_20

    const-string p4, "acl"

    goto :goto_28

    .line 328
    :cond_20
    invoke-virtual {p0, v4}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object p4

    invoke-interface {p4}, Lcom/obs/services/internal/IHeaders;->aclHeader()Ljava/lang/String;

    move-result-object p4

    .line 326
    :goto_28
    invoke-interface {p3, p4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    invoke-virtual {v0}, Lcom/obs/services/model/PostSignatureRequest;->getFormParams()Ljava/util/Map;

    move-result-object p1

    const-string p3, "Content-Type"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    invoke-virtual {p0, v0}, Lcom/obs/services/AbstractClient;->createPostSignature(Lcom/obs/services/model/PostSignatureRequest;)Lcom/obs/services/model/PostSignatureResponse;

    move-result-object p0

    return-object p0
.end method

.method public createSignedUrl(Lcom/obs/services/model/HttpMethodEnum;Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/model/SpecialParamEnum;JLjava/util/Map;Ljava/util/Map;)Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/obs/services/model/HttpMethodEnum;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/obs/services/model/SpecialParamEnum;",
            "J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 162
    new-instance v0, Lcom/obs/services/model/TemporarySignatureRequest;

    invoke-direct {v0}, Lcom/obs/services/model/TemporarySignatureRequest;-><init>()V

    .line 163
    invoke-virtual {v0, p1}, Lcom/obs/services/model/AbstractTemporarySignatureRequest;->setMethod(Lcom/obs/services/model/HttpMethodEnum;)V

    .line 164
    invoke-virtual {v0, p2}, Lcom/obs/services/model/AbstractTemporarySignatureRequest;->setBucketName(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v0, p3}, Lcom/obs/services/model/AbstractTemporarySignatureRequest;->setObjectKey(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v0, p4}, Lcom/obs/services/model/AbstractTemporarySignatureRequest;->setSpecialParam(Lcom/obs/services/model/SpecialParamEnum;)V

    .line 167
    invoke-virtual {v0, p7}, Lcom/obs/services/model/AbstractTemporarySignatureRequest;->setHeaders(Ljava/util/Map;)V

    .line 168
    invoke-virtual {v0, p8}, Lcom/obs/services/model/AbstractTemporarySignatureRequest;->setQueryParams(Ljava/util/Map;)V

    const-wide/16 p1, 0x0

    cmp-long p1, p5, p1

    if-lez p1, :cond_20

    .line 170
    invoke-virtual {v0, p5, p6}, Lcom/obs/services/model/TemporarySignatureRequest;->setExpires(J)V

    .line 172
    :cond_20
    invoke-virtual {p0, v0}, Lcom/obs/services/AbstractClient;->createTemporarySignature(Lcom/obs/services/model/TemporarySignatureRequest;)Lcom/obs/services/model/TemporarySignatureResponse;

    move-result-object p0

    invoke-virtual {p0}, Lcom/obs/services/model/TemporarySignatureResponse;->getSignedUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public createSignedUrl(Lcom/obs/services/model/HttpMethodEnum;Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/model/SpecialParamEnum;Ljava/util/Date;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/obs/services/model/HttpMethodEnum;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/obs/services/model/SpecialParamEnum;",
            "Ljava/util/Date;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p5, :cond_f

    const-wide/16 v0, 0x12c

    :goto_4
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-wide v7, v0

    goto :goto_1c

    .line 132
    :cond_f
    invoke-virtual/range {p5 .. p5}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    goto :goto_4

    .line 131
    :goto_1c
    invoke-virtual/range {v2 .. v10}, Lcom/obs/services/AbstractClient;->createSignedUrl(Lcom/obs/services/model/HttpMethodEnum;Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/model/SpecialParamEnum;JLjava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public createTemporarySignature(Lcom/obs/services/model/TemporarySignatureRequest;)Lcom/obs/services/model/TemporarySignatureResponse;
    .registers 6

    .line 225
    const-string v0, "TemporarySignatureRequest is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    new-instance v0, Lcom/obs/log/InterfaceLogBean;

    invoke-virtual {p0}, Lcom/obs/services/internal/RestConnectionService;->getEndpoint()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const-string v3, "createTemporarySignature"

    invoke-direct {v0, v3, v1, v2}, Lcom/obs/log/InterfaceLogBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :try_start_12
    invoke-virtual {p0}, Lcom/obs/services/internal/RestStorageService;->getProviderCredentials()Lcom/obs/services/internal/security/ProviderCredentials;

    move-result-object v1

    invoke-virtual {p1}, Lcom/obs/services/model/AbstractTemporarySignatureRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/obs/services/internal/security/ProviderCredentials;->getLocalAuthType(Ljava/lang/String;)Lcom/obs/services/model/AuthTypeEnum;

    move-result-object v1

    sget-object v2, Lcom/obs/services/model/AuthTypeEnum;->V4:Lcom/obs/services/model/AuthTypeEnum;

    if-ne v1, v2, :cond_29

    .line 229
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/ObsService;->createV4TemporarySignature(Lcom/obs/services/model/TemporarySignatureRequest;)Lcom/obs/services/model/TemporarySignatureResponse;

    move-result-object p0

    return-object p0

    :catch_27
    move-exception p0

    goto :goto_2e

    :cond_29
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/ObsService;->createTemporarySignatureResponse(Lcom/obs/services/model/AbstractTemporarySignatureRequest;)Lcom/obs/services/model/TemporarySignatureResponse;

    move-result-object p0
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_2d} :catch_27

    return-object p0

    .line 231
    :goto_2e
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, p1}, Lcom/obs/log/InterfaceLogBean;->setRespTime(Ljava/util/Date;)V

    .line 232
    sget-object p1, Lcom/obs/services/AbstractClient;->ILOG:Lcom/obs/log/ILogger;

    invoke-interface {p1}, Lcom/obs/log/ILogger;->isErrorEnabled()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 233
    invoke-interface {p1, v0}, Lcom/obs/log/ILogger;->error(Ljava/lang/Object;)V

    .line 235
    :cond_41
    new-instance p1, Lcom/obs/services/exception/ObsException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/obs/services/exception/ObsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public createV4PostSignature(JLjava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/V4PostSignatureResponse;
    .registers 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 205
    new-instance v0, Lcom/obs/services/model/V4PostSignatureRequest;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    move-wide v1, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/obs/services/model/V4PostSignatureRequest;-><init>(JLjava/util/Date;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0, v0}, Lcom/obs/services/AbstractClient;->createV4PostSignature(Lcom/obs/services/model/V4PostSignatureRequest;)Lcom/obs/services/model/V4PostSignatureResponse;

    move-result-object p0

    return-object p0
.end method

.method public createV4PostSignature(Lcom/obs/services/model/V4PostSignatureRequest;)Lcom/obs/services/model/V4PostSignatureResponse;
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 211
    const-string v0, "V4PostSignatureRequest is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    new-instance v0, Lcom/obs/log/InterfaceLogBean;

    invoke-virtual {p0}, Lcom/obs/services/internal/RestConnectionService;->getEndpoint()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const-string v3, "createV4PostSignature"

    invoke-direct {v0, v3, v1, v2}, Lcom/obs/log/InterfaceLogBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 213
    invoke-direct {p0, p1, v0, v1}, Lcom/obs/services/AbstractClient;->createPostSignature(Lcom/obs/services/model/PostSignatureRequest;Lcom/obs/log/InterfaceLogBean;Z)Lcom/obs/services/model/PostSignatureResponse;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/V4PostSignatureResponse;

    return-object p0
.end method

.method public createV4PostSignature(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/V4PostSignatureResponse;
    .registers 13
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 196
    new-instance v0, Lcom/obs/services/model/V4PostSignatureRequest;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    move-wide v1, p3

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/obs/services/model/V4PostSignatureRequest;-><init>(JLjava/util/Date;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-virtual {v0}, Lcom/obs/services/model/PostSignatureRequest;->getFormParams()Ljava/util/Map;

    move-result-object p3

    const-string p4, "acl"

    invoke-interface {p3, p4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    invoke-virtual {v0}, Lcom/obs/services/model/PostSignatureRequest;->getFormParams()Ljava/util/Map;

    move-result-object p1

    const-string p3, "content-type"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    invoke-virtual {p0, v0}, Lcom/obs/services/AbstractClient;->createV4PostSignature(Lcom/obs/services/model/V4PostSignatureRequest;)Lcom/obs/services/model/V4PostSignatureResponse;

    move-result-object p0

    return-object p0
.end method

.method public createV4TemporarySignature(Lcom/obs/services/model/V4TemporarySignatureRequest;)Lcom/obs/services/model/V4TemporarySignatureResponse;
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 177
    const-string v0, "V4TemporarySignatureRequest is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    new-instance v0, Lcom/obs/log/InterfaceLogBean;

    invoke-virtual {p0}, Lcom/obs/services/internal/RestConnectionService;->getEndpoint()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const-string v3, "createV4TemporarySignature"

    invoke-direct {v0, v3, v1, v2}, Lcom/obs/log/InterfaceLogBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :try_start_12
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/ObsService;->createV4TemporarySignature(Lcom/obs/services/model/TemporarySignatureRequest;)Lcom/obs/services/model/TemporarySignatureResponse;

    move-result-object p0

    .line 181
    new-instance p1, Lcom/obs/services/model/V4TemporarySignatureResponse;

    invoke-virtual {p0}, Lcom/obs/services/model/TemporarySignatureResponse;->getSignedUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/obs/services/model/V4TemporarySignatureResponse;-><init>(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p1}, Lcom/obs/services/model/TemporarySignatureResponse;->getActualSignedRequestHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0}, Lcom/obs/services/model/TemporarySignatureResponse;->getActualSignedRequestHeaders()Ljava/util/Map;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_2a} :catch_2b

    return-object p1

    :catch_2b
    move-exception p0

    .line 185
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, p1}, Lcom/obs/log/InterfaceLogBean;->setRespTime(Ljava/util/Date;)V

    .line 186
    sget-object p1, Lcom/obs/services/AbstractClient;->ILOG:Lcom/obs/log/ILogger;

    invoke-interface {p1}, Lcom/obs/log/ILogger;->isErrorEnabled()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 187
    invoke-interface {p1, v0}, Lcom/obs/log/ILogger;->error(Ljava/lang/Object;)V

    .line 189
    :cond_3f
    new-instance p1, Lcom/obs/services/exception/ObsException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/obs/services/exception/ObsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method protected doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/obs/services/AbstractClient$ActionCallbackWithResult<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 384
    invoke-virtual {p0}, Lcom/obs/services/internal/RestConnectionService;->isCname()Z

    move-result v0

    if-nez v0, :cond_b

    .line 385
    const-string v0, "bucketName is null"

    invoke-static {p2, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    :cond_b
    new-instance v0, Lcom/obs/log/InterfaceLogBean;

    invoke-virtual {p0}, Lcom/obs/services/internal/RestConnectionService;->getEndpoint()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-direct {v0, p1, v1, v2}, Lcom/obs/log/InterfaceLogBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    :try_start_16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 390
    invoke-virtual {p0}, Lcom/obs/services/internal/RestStorageService;->isAuthTypeNegotiation()Z

    move-result p0

    if-eqz p0, :cond_26

    .line 391
    invoke-virtual {p3, p2}, Lcom/obs/services/AbstractClient$ActionCallbackWithResult;->authTypeNegotiate(Ljava/lang/String;)V

    goto :goto_26

    :catch_24
    move-exception p0

    goto :goto_6c

    .line 393
    :cond_26
    :goto_26
    invoke-virtual {p3}, Lcom/obs/services/AbstractClient$ActionCallbackWithResult;->action()Ljava/lang/Object;

    move-result-object p0

    .line 394
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, p2}, Lcom/obs/log/InterfaceLogBean;->setRespTime(Ljava/util/Date;)V

    .line 395
    const-string p2, "0"

    invoke-virtual {v0, p2}, Lcom/obs/log/InterfaceLogBean;->setResultCode(Ljava/lang/String;)V

    .line 396
    sget-object p2, Lcom/obs/services/AbstractClient;->ILOG:Lcom/obs/log/ILogger;

    invoke-interface {p2}, Lcom/obs/log/ILogger;->isInfoEnabled()Z

    move-result p3

    if-eqz p3, :cond_68

    .line 397
    invoke-interface {p2, v0}, Lcom/obs/log/ILogger;->info(Ljava/lang/Object;)V

    .line 398
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ObsClient ["

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] cost "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {p3, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " ms"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/obs/log/ILogger;->info(Ljava/lang/CharSequence;)V
    :try_end_68
    .catch Lcom/obs/services/internal/ServiceException; {:try_start_16 .. :try_end_68} :catch_24
    .catchall {:try_start_16 .. :try_end_68} :catchall_be

    .line 417
    :cond_68
    invoke-static {}, Lcom/obs/services/internal/utils/AccessLoggerUtils;->printLog()V

    return-object p0

    .line 403
    :goto_6c
    :try_start_6c
    invoke-static {p0}, Lcom/obs/services/internal/utils/ServiceUtils;->changeFromServiceException(Lcom/obs/services/internal/ServiceException;)Lcom/obs/services/exception/ObsException;

    move-result-object p1

    .line 404
    invoke-virtual {p1}, Lcom/obs/services/exception/ObsException;->getResponseCode()I

    move-result p2

    const/16 p3, 0x190

    if-lt p2, p3, :cond_9f

    invoke-virtual {p1}, Lcom/obs/services/exception/ObsException;->getResponseCode()I

    move-result p2

    const/16 p3, 0x1f4

    if-ge p2, p3, :cond_9f

    .line 405
    sget-object p2, Lcom/obs/services/AbstractClient;->ILOG:Lcom/obs/log/ILogger;

    invoke-interface {p2}, Lcom/obs/log/ILogger;->isWarnEnabled()Z

    move-result p3

    if-eqz p3, :cond_bd

    .line 406
    new-instance p3, Ljava/util/Date;

    invoke-direct {p3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, p3}, Lcom/obs/log/InterfaceLogBean;->setRespTime(Ljava/util/Date;)V

    .line 407
    invoke-virtual {p0}, Lcom/obs/services/internal/ServiceException;->getResponseCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/obs/log/InterfaceLogBean;->setResultCode(Ljava/lang/String;)V

    .line 408
    invoke-interface {p2, v0}, Lcom/obs/log/ILogger;->warn(Ljava/lang/Object;)V

    goto :goto_bd

    .line 410
    :cond_9f
    sget-object p0, Lcom/obs/services/AbstractClient;->ILOG:Lcom/obs/log/ILogger;

    invoke-interface {p0}, Lcom/obs/log/ILogger;->isErrorEnabled()Z

    move-result p2

    if-eqz p2, :cond_bd

    .line 411
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, p2}, Lcom/obs/log/InterfaceLogBean;->setRespTime(Ljava/util/Date;)V

    .line 412
    invoke-virtual {p1}, Lcom/obs/services/exception/ObsException;->getResponseCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/obs/log/InterfaceLogBean;->setResultCode(Ljava/lang/String;)V

    .line 413
    invoke-interface {p0, v0}, Lcom/obs/log/ILogger;->error(Ljava/lang/Object;)V

    .line 415
    :cond_bd
    :goto_bd
    throw p1
    :try_end_be
    .catchall {:try_start_6c .. :try_end_be} :catchall_be

    :catchall_be
    move-exception p0

    .line 417
    invoke-static {}, Lcom/obs/services/internal/utils/AccessLoggerUtils;->printLog()V

    .line 418
    throw p0
.end method

.method protected init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/ObsConfiguration;)V
    .registers 9

    .line 63
    new-instance v0, Lcom/obs/log/InterfaceLogBean;

    invoke-virtual {p4}, Lcom/obs/services/ObsConfiguration;->getEndPoint()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const-string v3, "ObsClient"

    invoke-direct {v0, v3, v1, v2}, Lcom/obs/log/InterfaceLogBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    new-instance v1, Lcom/obs/services/internal/security/ProviderCredentials;

    invoke-direct {v1, p1, p2, p3}, Lcom/obs/services/internal/security/ProviderCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-static {p4}, Lcom/obs/services/internal/utils/ServiceUtils;->changeFromObsConfiguration(Lcom/obs/services/ObsConfiguration;)Lcom/obs/services/internal/ObsProperties;

    move-result-object p1

    .line 66
    invoke-virtual {p4}, Lcom/obs/services/ObsConfiguration;->getAuthType()Lcom/obs/services/model/AuthTypeEnum;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/obs/services/internal/security/ProviderCredentials;->setAuthType(Lcom/obs/services/model/AuthTypeEnum;)V

    .line 67
    invoke-virtual {p4}, Lcom/obs/services/ObsConfiguration;->getLocalAuthTypeCacheCapacity()I

    move-result p2

    invoke-virtual {v1, p2}, Lcom/obs/services/internal/security/ProviderCredentials;->setLocalAuthTypeCacheCapacity(I)V

    .line 68
    invoke-virtual {p4}, Lcom/obs/services/ObsConfiguration;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/obs/services/internal/security/ProviderCredentials;->setSecureRandom(Ljava/security/SecureRandom;)V

    .line 69
    iput-object p1, p0, Lcom/obs/services/internal/RestConnectionService;->obsProperties:Lcom/obs/services/internal/ObsProperties;

    .line 70
    iput-object v1, p0, Lcom/obs/services/internal/RestConnectionService;->credentials:Lcom/obs/services/internal/security/ProviderCredentials;

    .line 71
    invoke-virtual {p4}, Lcom/obs/services/ObsConfiguration;->getKeyManagerFactory()Ljavax/net/ssl/KeyManagerFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/obs/services/internal/RestConnectionService;->keyManagerFactory:Ljavax/net/ssl/KeyManagerFactory;

    .line 72
    invoke-virtual {p4}, Lcom/obs/services/ObsConfiguration;->getTrustManagerFactory()Ljavax/net/ssl/TrustManagerFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/obs/services/internal/RestConnectionService;->trustManagerFactory:Ljavax/net/ssl/TrustManagerFactory;

    .line 73
    invoke-virtual {p0}, Lcom/obs/services/internal/RestStorageService;->isAuthTypeNegotiation()Z

    move-result p1

    if-eqz p1, :cond_49

    .line 74
    invoke-virtual {p0}, Lcom/obs/services/internal/RestStorageService;->getProviderCredentials()Lcom/obs/services/internal/security/ProviderCredentials;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/obs/services/internal/security/ProviderCredentials;->setIsAuthTypeNegotiation(Z)V

    .line 76
    :cond_49
    invoke-virtual {p4}, Lcom/obs/services/ObsConfiguration;->getHttpDispatcher()Lokhttp3/Dispatcher;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/obs/services/internal/RestConnectionService;->initHttpClient(Lokhttp3/Dispatcher;)V

    .line 77
    invoke-virtual {p4}, Lcom/obs/services/ObsConfiguration;->getXmlDocumentBuilderFactoryClass()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->setXmlDocumentBuilderFactoryClass(Ljava/lang/String;)V

    .line 78
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, p1}, Lcom/obs/log/InterfaceLogBean;->setRespTime(Ljava/util/Date;)V

    .line 79
    const-string p1, "0"

    invoke-virtual {v0, p1}, Lcom/obs/log/InterfaceLogBean;->setResultCode(Ljava/lang/String;)V

    .line 80
    sget-object p1, Lcom/obs/services/AbstractClient;->ILOG:Lcom/obs/log/ILogger;

    invoke-interface {p1}, Lcom/obs/log/ILogger;->isInfoEnabled()Z

    move-result p2

    if-eqz p2, :cond_6f

    .line 81
    invoke-interface {p1, v0}, Lcom/obs/log/ILogger;->info(Ljava/lang/Object;)V

    .line 84
    :cond_6f
    invoke-interface {p1}, Lcom/obs/log/ILogger;->isWarnEnabled()Z

    move-result p2

    if-eqz p2, :cond_fb

    .line 85
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "[OBS SDK Version="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    const-string p3, "3.23.9"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    const-string p3, "];"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    const-string p4, "[Endpoint="

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {p0}, Lcom/obs/services/internal/RestConnectionService;->getHttpsOnly()Z

    move-result p4

    const-string v0, "/"

    const-string v1, ":"

    if-eqz p4, :cond_b8

    .line 91
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://"

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/obs/services/internal/RestConnectionService;->getEndpoint()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/obs/services/internal/RestConnectionService;->getHttpsPort()I

    move-result v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    goto :goto_da

    .line 93
    :cond_b8
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/obs/services/internal/RestConnectionService;->getEndpoint()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/obs/services/internal/RestConnectionService;->getHttpPort()I

    move-result v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 95
    :goto_da
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    const-string p3, "[Access Mode="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {p0}, Lcom/obs/services/internal/RestConnectionService;->isPathStyle()Z

    move-result p0

    if-eqz p0, :cond_ee

    const-string p0, "Path"

    goto :goto_f0

    :cond_ee
    const-string p0, "Virtul Hosting"

    :goto_f0
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    const-string p0, "]"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-interface {p1, p2}, Lcom/obs/log/ILogger;->warn(Ljava/lang/CharSequence;)V

    :cond_fb
    return-void
.end method

.method public refresh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 429
    new-instance v0, Lcom/obs/services/internal/security/ProviderCredentials;

    invoke-direct {v0, p1, p2, p3}, Lcom/obs/services/internal/security/ProviderCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    iget-object p1, p0, Lcom/obs/services/internal/RestConnectionService;->credentials:Lcom/obs/services/internal/security/ProviderCredentials;

    invoke-virtual {p1}, Lcom/obs/services/internal/security/ProviderCredentials;->getIsAuthTypeNegotiation()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/obs/services/internal/security/ProviderCredentials;->setIsAuthTypeNegotiation(Z)V

    .line 431
    iget-object p1, p0, Lcom/obs/services/internal/RestConnectionService;->credentials:Lcom/obs/services/internal/security/ProviderCredentials;

    invoke-virtual {p1}, Lcom/obs/services/internal/security/ProviderCredentials;->getAuthType()Lcom/obs/services/model/AuthTypeEnum;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/obs/services/internal/security/ProviderCredentials;->setAuthType(Lcom/obs/services/model/AuthTypeEnum;)V

    .line 432
    iget-object p1, p0, Lcom/obs/services/internal/RestConnectionService;->credentials:Lcom/obs/services/internal/security/ProviderCredentials;

    invoke-virtual {p1}, Lcom/obs/services/internal/security/ProviderCredentials;->getLocalAuthType()Ljava/util/LinkedHashMap;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/obs/services/internal/security/ProviderCredentials;->setLocalAuthType(Ljava/util/LinkedHashMap;)V

    .line 433
    invoke-virtual {p0, v0}, Lcom/obs/services/internal/RestStorageService;->setProviderCredentials(Lcom/obs/services/internal/security/ProviderCredentials;)V

    return-void
.end method
