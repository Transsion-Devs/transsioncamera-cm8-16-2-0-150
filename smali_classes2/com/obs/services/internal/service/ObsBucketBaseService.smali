.class public abstract Lcom/obs/services/internal/service/ObsBucketBaseService;
.super Lcom/obs/services/internal/service/RequestConvertor;
.source "SourceFile"


# static fields
.field private static final log:Lcom/obs/log/ILogger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 72
    const-class v0, Lcom/obs/services/internal/service/ObsBucketBaseService;

    invoke-static {v0}, Lcom/obs/log/LoggerBuilder;->getLogger(Ljava/lang/Class;)Lcom/obs/log/ILogger;

    move-result-object v0

    sput-object v0, Lcom/obs/services/internal/service/ObsBucketBaseService;->log:Lcom/obs/log/ILogger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 70
    invoke-direct {p0}, Lcom/obs/services/internal/service/RequestConvertor;-><init>()V

    return-void
.end method


# virtual methods
.method protected createBucketImpl(Lcom/obs/services/model/CreateBucketRequest;)Lcom/obs/services/model/ObsBucket;
    .registers 10

    .line 75
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/RequestConvertor;->transCreateBucketRequest(Lcom/obs/services/model/CreateBucketRequest;)Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;

    move-result-object v0

    .line 76
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    .line 77
    invoke-virtual {p1}, Lcom/obs/services/model/CreateBucketRequest;->getAcl()Lcom/obs/services/model/AccessControlList;

    move-result-object v4

    .line 79
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;->getHeaders()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p0, v1, v3, v4}, Lcom/obs/services/internal/service/AclHeaderConvertor;->prepareRESTHeaderAcl(Ljava/lang/String;Ljava/util/Map;Lcom/obs/services/model/AccessControlList;)Z

    move-result v1

    .line 80
    invoke-virtual {p0, v0, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequestWithResult(Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;Lcom/obs/services/model/GenericRequest;)Lcom/obs/services/internal/trans/NewTransResult;

    move-result-object v0

    .line 81
    invoke-virtual {p0, v0}, Lcom/obs/services/internal/RestStorageService;->performRequest(Lcom/obs/services/internal/trans/NewTransResult;)Lokhttp3/Response;

    move-result-object v7

    if-nez v1, :cond_4b

    if-eqz v4, :cond_4b

    .line 84
    sget-object v0, Lcom/obs/services/internal/service/ObsBucketBaseService;->log:Lcom/obs/log/ILogger;

    invoke-interface {v0}, Lcom/obs/log/ILogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 85
    const-string v1, "Creating bucket with a non-canned ACL using REST, so an extra ACL Put is required"

    invoke-interface {v0, v1}, Lcom/obs/log/ILogger;->debug(Ljava/lang/CharSequence;)V

    :cond_31
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    .line 88
    :try_start_35
    invoke-virtual/range {v1 .. v6}, Lcom/obs/services/internal/service/AclHeaderConvertor;->putAclImpl(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/model/AccessControlList;Ljava/lang/String;Z)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_38} :catch_39

    goto :goto_4c

    :catch_39
    move-exception v0

    move-object p0, v0

    .line 90
    sget-object v0, Lcom/obs/services/internal/service/ObsBucketBaseService;->log:Lcom/obs/log/ILogger;

    invoke-interface {v0}, Lcom/obs/log/ILogger;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 91
    sget-object v0, Lcom/obs/services/internal/service/ObsBucketBaseService;->log:Lcom/obs/log/ILogger;

    const-string v3, "Try to set bucket acl error"

    invoke-interface {v0, v3, p0}, Lcom/obs/log/ILogger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_4c

    :cond_4b
    move-object v1, p0

    .line 96
    :cond_4c
    :goto_4c
    new-instance p0, Lcom/obs/services/model/ObsBucket;

    invoke-direct {p0}, Lcom/obs/services/model/ObsBucket;-><init>()V

    .line 97
    invoke-virtual {p0, v2}, Lcom/obs/services/model/ObsBucket;->setBucketName(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p1}, Lcom/obs/services/model/CreateBucketRequest;->getLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/obs/services/model/ObsBucket;->setLocation(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0, v4}, Lcom/obs/services/model/ObsBucket;->setAcl(Lcom/obs/services/model/AccessControlList;)V

    .line 100
    invoke-virtual {p1}, Lcom/obs/services/model/CreateBucketRequest;->getBucketStorageClass()Lcom/obs/services/model/StorageClassEnum;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/obs/services/model/ObsBucket;->setBucketStorageClass(Lcom/obs/services/model/StorageClassEnum;)V

    .line 101
    invoke-virtual {v1, p0, v7}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->setHeadersAndStatus(Lcom/obs/services/model/HeaderResponse;Lokhttp3/Response;)V

    return-object p0
.end method

.method protected deleteBucketImpl(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/HeaderResponse;
    .registers 8

    .line 106
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    .line 107
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequestPaymentHeaders(Lcom/obs/services/model/GenericRequest;Ljava/util/Map;Lcom/obs/services/internal/IHeaders;)Ljava/util/Map;

    move-result-object v4

    .line 108
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getUserHeaders()Ljava/util/HashMap;

    move-result-object v5

    const/4 v3, 0x0

    move-object v0, p0

    .line 106
    invoke-virtual/range {v0 .. v5}, Lcom/obs/services/internal/RestStorageService;->performRestDelete(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lokhttp3/Response;

    move-result-object p0

    .line 109
    invoke-virtual {v0, p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->build(Lokhttp3/Response;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method protected deleteBucketPolicyImpl(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/HeaderResponse;
    .registers 8

    .line 330
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 331
    sget-object v0, Lcom/obs/services/model/SpecialParamEnum;->POLICY:Lcom/obs/services/model/SpecialParamEnum;

    invoke-virtual {v0}, Lcom/obs/services/model/SpecialParamEnum;->getOriginalStringCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    .line 333
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequestPaymentHeaders(Lcom/obs/services/model/GenericRequest;Ljava/util/Map;Lcom/obs/services/internal/IHeaders;)Ljava/util/Map;

    move-result-object v4

    .line 334
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getUserHeaders()Ljava/util/HashMap;

    move-result-object v5

    move-object v0, p0

    .line 332
    invoke-virtual/range {v0 .. v5}, Lcom/obs/services/internal/RestStorageService;->performRestDelete(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lokhttp3/Response;

    move-result-object p0

    .line 335
    invoke-virtual {v0, p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->build(Lokhttp3/Response;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method protected deleteInventoryConfigurationImpl(Lcom/obs/services/model/inventory/DeleteInventoryConfigurationRequest;)Lcom/obs/services/model/HeaderResponse;
    .registers 11

    .line 501
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 502
    sget-object v1, Lcom/obs/services/model/SpecialParamEnum;->INVENTORY:Lcom/obs/services/model/SpecialParamEnum;

    invoke-virtual {v1}, Lcom/obs/services/model/SpecialParamEnum;->getOriginalStringCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    sget-object v1, Lcom/obs/services/model/SpecialParamEnum;->ID:Lcom/obs/services/model/SpecialParamEnum;

    invoke-virtual {v1}, Lcom/obs/services/model/SpecialParamEnum;->getOriginalStringCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/obs/services/model/inventory/DeleteInventoryConfigurationRequest;->getConfigurationId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequest(Lcom/obs/services/model/GenericRequest;)Lcom/obs/services/internal/trans/NewTransResult;

    move-result-object v4

    .line 506
    invoke-virtual {v4, v0}, Lcom/obs/services/internal/trans/NewTransResult;->setParams(Ljava/util/Map;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v3, p0

    .line 507
    invoke-virtual/range {v3 .. v8}, Lcom/obs/services/internal/RestStorageService;->performRequest(Lcom/obs/services/internal/trans/NewTransResult;ZZZZ)Lokhttp3/Response;

    move-result-object p0

    .line 509
    invoke-virtual {v3, p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->build(Lokhttp3/Response;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method protected getBucketLocationImpl(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/BucketLocationResponse;
    .registers 8

    .line 280
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 281
    sget-object v0, Lcom/obs/services/model/SpecialParamEnum;->LOCATION:Lcom/obs/services/model/SpecialParamEnum;

    invoke-virtual {v0}, Lcom/obs/services/model/SpecialParamEnum;->getOriginalStringCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    .line 284
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequestPaymentHeaders(Lcom/obs/services/model/GenericRequest;Ljava/util/Map;Lcom/obs/services/internal/IHeaders;)Ljava/util/Map;

    move-result-object v4

    .line 285
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getUserHeaders()Ljava/util/HashMap;

    move-result-object v5

    move-object v0, p0

    .line 283
    invoke-virtual/range {v0 .. v5}, Lcom/obs/services/internal/RestStorageService;->performRestGet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lokhttp3/Response;

    move-result-object p0

    .line 287
    invoke-virtual {v0, p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->verifyResponseContentType(Lokhttp3/Response;)V

    .line 289
    new-instance p1, Lcom/obs/services/model/BucketLocationResponse;

    .line 290
    invoke-virtual {v0}, Lcom/obs/services/internal/RestStorageService;->getXmlResponseSaxParser()Lcom/obs/services/internal/handler/XmlResponsesSaxParser;

    move-result-object v1

    new-instance v2, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;

    invoke-direct {v2, p0}, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;-><init>(Lokhttp3/Response;)V

    const-class v3, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketLocationHandler;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->parse(Ljava/io/InputStream;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketLocationHandler;

    .line 291
    invoke-virtual {v1}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketLocationHandler;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/obs/services/model/BucketLocationResponse;-><init>(Ljava/lang/String;)V

    .line 293
    invoke-virtual {v0, p1, p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->setHeadersAndStatus(Lcom/obs/services/model/HeaderResponse;Lokhttp3/Response;)V

    return-object p1
.end method

.method protected getBucketMetadataImpl(Lcom/obs/services/model/BucketMetadataInfoRequest;)Lcom/obs/services/model/fs/GetBucketFSStatusResult;
    .registers 14

    .line 161
    invoke-virtual {p1}, Lcom/obs/services/model/OptionsInfoRequest;->getOrigin()Ljava/lang/String;

    move-result-object v0

    .line 162
    invoke-virtual {p1}, Lcom/obs/services/model/OptionsInfoRequest;->getRequestHeaders()Ljava/util/List;

    move-result-object v1

    .line 163
    const-string v2, "Origin"

    if-eqz v0, :cond_78

    if-eqz v1, :cond_78

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_78

    .line 164
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_77

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 165
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 166
    invoke-interface {v9, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const-string v5, "Access-Control-Request-Headers"

    invoke-interface {v9, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    invoke-virtual {p1}, Lcom/obs/services/model/BucketMetadataInfoRequest;->getBucketName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v4

    .line 168
    invoke-virtual {p0, p1, v9, v4}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequestPaymentHeaders(Lcom/obs/services/model/GenericRequest;Ljava/util/Map;Lcom/obs/services/internal/IHeaders;)Ljava/util/Map;

    .line 171
    invoke-virtual {p1}, Lcom/obs/services/model/BucketMetadataInfoRequest;->getBucketName()Ljava/lang/String;

    move-result-object v6

    .line 172
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getUserHeaders()Ljava/util/HashMap;

    move-result-object v10

    const/4 v11, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v5, p0

    .line 171
    invoke-virtual/range {v5 .. v11}, Lcom/obs/services/internal/RestStorageService;->performRestHead(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Z)Lokhttp3/Response;

    move-result-object p0

    move-object v4, v5

    if-nez v3, :cond_59

    .line 175
    invoke-virtual {p1}, Lcom/obs/services/model/BucketMetadataInfoRequest;->getBucketName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3, p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->getOptionInfoResult(Ljava/lang/String;Lokhttp3/Response;)Lcom/obs/services/model/fs/GetBucketFSStatusResult;

    move-result-object v3

    goto :goto_72

    .line 177
    :cond_59
    const-string v5, "Access-Control-Allow-Headers"

    invoke-virtual {p0, v5}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_72

    .line 179
    invoke-virtual {v3}, Lcom/obs/services/model/OptionsInfoResult;->getAllowHeaders()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_72

    .line 180
    invoke-virtual {v3}, Lcom/obs/services/model/OptionsInfoResult;->getAllowHeaders()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    :cond_72
    :goto_72
    invoke-virtual {p0}, Lokhttp3/Response;->close()V

    move-object p0, v4

    goto :goto_19

    :cond_77
    return-object v3

    :cond_78
    move-object v4, p0

    .line 187
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    if-eqz v0, :cond_83

    .line 189
    invoke-interface {v8, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    :cond_83
    invoke-virtual {p1}, Lcom/obs/services/model/BucketMetadataInfoRequest;->getBucketName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object p0

    .line 191
    invoke-virtual {v4, p1, v8, p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequestPaymentHeaders(Lcom/obs/services/model/GenericRequest;Ljava/util/Map;Lcom/obs/services/internal/IHeaders;)Ljava/util/Map;

    .line 194
    invoke-virtual {p1}, Lcom/obs/services/model/BucketMetadataInfoRequest;->getBucketName()Ljava/lang/String;

    move-result-object v5

    .line 195
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getUserHeaders()Ljava/util/HashMap;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 194
    invoke-virtual/range {v4 .. v10}, Lcom/obs/services/internal/RestStorageService;->performRestHead(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Z)Lokhttp3/Response;

    move-result-object p0

    .line 196
    invoke-virtual {p1}, Lcom/obs/services/model/BucketMetadataInfoRequest;->getBucketName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1, p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->getOptionInfoResult(Ljava/lang/String;Lokhttp3/Response;)Lcom/obs/services/model/fs/GetBucketFSStatusResult;

    move-result-object p1

    .line 197
    invoke-virtual {p0}, Lokhttp3/Response;->close()V

    return-object p1
.end method

.method protected getBucketPolicyImpl(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/BucketPolicyResponse;
    .registers 8

    .line 314
    :try_start_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 315
    sget-object v0, Lcom/obs/services/model/SpecialParamEnum;->POLICY:Lcom/obs/services/model/SpecialParamEnum;

    invoke-virtual {v0}, Lcom/obs/services/model/SpecialParamEnum;->getOriginalStringCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    .line 318
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequestPaymentHeaders(Lcom/obs/services/model/GenericRequest;Ljava/util/Map;Lcom/obs/services/internal/IHeaders;)Ljava/util/Map;

    move-result-object v4

    .line 319
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getUserHeaders()Ljava/util/HashMap;

    move-result-object v5

    const/4 v2, 0x0

    move-object v0, p0

    .line 317
    invoke-virtual/range {v0 .. v5}, Lcom/obs/services/internal/RestStorageService;->performRestGet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lokhttp3/Response;

    move-result-object p0

    .line 320
    new-instance p1, Lcom/obs/services/model/BucketPolicyResponse;

    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/obs/services/model/BucketPolicyResponse;-><init>(Ljava/lang/String;)V

    .line 322
    invoke-virtual {v0, p1, p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->setHeadersAndStatus(Lcom/obs/services/model/HeaderResponse;Lokhttp3/Response;)V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3b} :catch_3c

    return-object p1

    :catch_3c
    move-exception v0

    move-object p0, v0

    .line 325
    new-instance p1, Lcom/obs/services/internal/ServiceException;

    invoke-direct {p1, p0}, Lcom/obs/services/internal/ServiceException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method protected getBucketStorageInfoImpl(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/BucketStorageInfo;
    .registers 8

    .line 264
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 265
    sget-object v0, Lcom/obs/services/model/SpecialParamEnum;->STORAGEINFO:Lcom/obs/services/model/SpecialParamEnum;

    invoke-virtual {v0}, Lcom/obs/services/model/SpecialParamEnum;->getOriginalStringCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    .line 268
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequestPaymentHeaders(Lcom/obs/services/model/GenericRequest;Ljava/util/Map;Lcom/obs/services/internal/IHeaders;)Ljava/util/Map;

    move-result-object v4

    .line 269
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getUserHeaders()Ljava/util/HashMap;

    move-result-object v5

    move-object v0, p0

    .line 267
    invoke-virtual/range {v0 .. v5}, Lcom/obs/services/internal/RestStorageService;->performRestGet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lokhttp3/Response;

    move-result-object p0

    .line 271
    invoke-virtual {v0, p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->verifyResponseContentType(Lokhttp3/Response;)V

    .line 273
    invoke-virtual {v0}, Lcom/obs/services/internal/RestStorageService;->getXmlResponseSaxParser()Lcom/obs/services/internal/handler/XmlResponsesSaxParser;

    move-result-object p1

    new-instance v1, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;

    invoke-direct {v1, p0}, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;-><init>(Lokhttp3/Response;)V

    const-class v2, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketStorageInfoHandler;

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->parse(Ljava/io/InputStream;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketStorageInfoHandler;

    .line 274
    invoke-virtual {p1}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketStorageInfoHandler;->getStorageInfo()Lcom/obs/services/model/BucketStorageInfo;

    move-result-object p1

    .line 275
    invoke-virtual {v0, p1, p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->setHeadersAndStatus(Lcom/obs/services/model/HeaderResponse;Lokhttp3/Response;)V

    return-object p1
.end method

.method protected getBucketStoragePolicyImpl(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/BucketStoragePolicyConfiguration;
    .registers 8

    .line 225
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 226
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->getSpecialParamForStorageClass(Ljava/lang/String;)Lcom/obs/services/model/SpecialParamEnum;

    move-result-object v0

    invoke-virtual {v0}, Lcom/obs/services/model/SpecialParamEnum;->getOriginalStringCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    .line 229
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequestPaymentHeaders(Lcom/obs/services/model/GenericRequest;Ljava/util/Map;Lcom/obs/services/internal/IHeaders;)Ljava/util/Map;

    move-result-object v4

    .line 230
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getUserHeaders()Ljava/util/HashMap;

    move-result-object v5

    move-object v0, p0

    .line 228
    invoke-virtual/range {v0 .. v5}, Lcom/obs/services/internal/RestStorageService;->performRestGet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lokhttp3/Response;

    move-result-object p0

    .line 232
    invoke-virtual {v0, p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->verifyResponseContentType(Lokhttp3/Response;)V

    .line 234
    invoke-virtual {v0}, Lcom/obs/services/internal/RestStorageService;->getXmlResponseSaxParser()Lcom/obs/services/internal/handler/XmlResponsesSaxParser;

    move-result-object p1

    new-instance v1, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;

    invoke-direct {v1, p0}, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;-><init>(Lokhttp3/Response;)V

    const-class v2, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketStoragePolicyHandler;

    const/4 v3, 0x0

    .line 235
    invoke-virtual {p1, v1, v2, v3}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->parse(Ljava/io/InputStream;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketStoragePolicyHandler;

    .line 237
    invoke-virtual {p1}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketStoragePolicyHandler;->getStoragePolicy()Lcom/obs/services/model/BucketStoragePolicyConfiguration;

    move-result-object p1

    .line 238
    invoke-virtual {v0, p1, p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->setHeadersAndStatus(Lcom/obs/services/model/HeaderResponse;Lokhttp3/Response;)V

    return-object p1
.end method

.method protected getBucketVersioningImpl(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/BucketVersioningConfiguration;
    .registers 8

    .line 430
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 431
    sget-object v0, Lcom/obs/services/model/SpecialParamEnum;->VERSIONING:Lcom/obs/services/model/SpecialParamEnum;

    invoke-virtual {v0}, Lcom/obs/services/model/SpecialParamEnum;->getOriginalStringCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    .line 434
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequestPaymentHeaders(Lcom/obs/services/model/GenericRequest;Ljava/util/Map;Lcom/obs/services/internal/IHeaders;)Ljava/util/Map;

    move-result-object v4

    .line 435
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getUserHeaders()Ljava/util/HashMap;

    move-result-object v5

    move-object v0, p0

    .line 433
    invoke-virtual/range {v0 .. v5}, Lcom/obs/services/internal/RestStorageService;->performRestGet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lokhttp3/Response;

    move-result-object p0

    .line 437
    invoke-virtual {v0, p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->verifyResponseContentType(Lokhttp3/Response;)V

    .line 439
    invoke-virtual {v0}, Lcom/obs/services/internal/RestStorageService;->getXmlResponseSaxParser()Lcom/obs/services/internal/handler/XmlResponsesSaxParser;

    move-result-object p1

    new-instance v1, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;

    invoke-direct {v1, p0}, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;-><init>(Lokhttp3/Response;)V

    const-class v2, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketVersioningHandler;

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->parse(Ljava/io/InputStream;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketVersioningHandler;

    .line 440
    invoke-virtual {p1}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketVersioningHandler;->getVersioningStatus()Lcom/obs/services/model/BucketVersioningConfiguration;

    move-result-object p1

    .line 441
    invoke-virtual {v0, p1, p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->setHeadersAndStatus(Lcom/obs/services/model/HeaderResponse;Lokhttp3/Response;)V

    return-object p1
.end method

.method protected getInventoryConfigurationImpl(Lcom/obs/services/model/inventory/GetInventoryConfigurationRequest;)Lcom/obs/services/model/inventory/GetInventoryConfigurationResult;
    .registers 11

    .line 462
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 463
    sget-object v1, Lcom/obs/services/model/SpecialParamEnum;->INVENTORY:Lcom/obs/services/model/SpecialParamEnum;

    invoke-virtual {v1}, Lcom/obs/services/model/SpecialParamEnum;->getOriginalStringCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    sget-object v1, Lcom/obs/services/model/SpecialParamEnum;->ID:Lcom/obs/services/model/SpecialParamEnum;

    invoke-virtual {v1}, Lcom/obs/services/model/SpecialParamEnum;->getOriginalStringCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/obs/services/model/inventory/GetInventoryConfigurationRequest;->getConfigurationId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequest(Lcom/obs/services/model/GenericRequest;)Lcom/obs/services/internal/trans/NewTransResult;

    move-result-object v4

    .line 467
    invoke-virtual {v4, v0}, Lcom/obs/services/internal/trans/NewTransResult;->setParams(Ljava/util/Map;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v3, p0

    .line 468
    invoke-virtual/range {v3 .. v8}, Lcom/obs/services/internal/RestStorageService;->performRequest(Lcom/obs/services/internal/trans/NewTransResult;ZZZZ)Lokhttp3/Response;

    move-result-object p0

    .line 469
    invoke-virtual {v3, p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->verifyResponseContentType(Lokhttp3/Response;)V

    .line 471
    new-instance v0, Lcom/obs/services/model/inventory/GetInventoryConfigurationResult;

    invoke-direct {v0}, Lcom/obs/services/model/inventory/GetInventoryConfigurationResult;-><init>()V

    .line 472
    invoke-virtual {v3}, Lcom/obs/services/internal/RestStorageService;->getXmlResponseSaxParser()Lcom/obs/services/internal/handler/XmlResponsesSaxParser;

    move-result-object v1

    new-instance v2, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;

    invoke-direct {v2, p0}, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;-><init>(Lokhttp3/Response;)V

    const-class v4, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$InventoryConfigurationsHandler;

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v4, v5}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->parse(Ljava/io/InputStream;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$InventoryConfigurationsHandler;

    .line 473
    invoke-virtual {v1}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$InventoryConfigurationsHandler;->getInventoryConfigurations()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_5e

    .line 474
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_54

    goto :goto_5e

    .line 477
    :cond_54
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/obs/services/model/inventory/InventoryConfiguration;

    invoke-virtual {v0, p1}, Lcom/obs/services/model/inventory/GetInventoryConfigurationResult;->setInventoryConfiguration(Lcom/obs/services/model/inventory/InventoryConfiguration;)V

    goto :goto_78

    .line 475
    :cond_5e
    :goto_5e
    sget-object v1, Lcom/obs/services/internal/service/ObsBucketBaseService;->log:Lcom/obs/log/ILogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No configuration got, config id is :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/obs/services/model/inventory/GetInventoryConfigurationRequest;->getConfigurationId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/obs/log/ILogger;->warn(Ljava/lang/CharSequence;)V

    .line 479
    :goto_78
    invoke-virtual {v3, v0, p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->setHeadersAndStatus(Lcom/obs/services/model/HeaderResponse;Lokhttp3/Response;)V

    return-object v0
.end method

.method protected headBucketImpl(Lcom/obs/services/model/BaseBucketRequest;)Z
    .registers 9

    .line 147
    :try_start_0
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    .line 148
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequestPaymentHeaders(Lcom/obs/services/model/GenericRequest;Ljava/util/Map;Lcom/obs/services/internal/IHeaders;)Ljava/util/Map;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    .line 147
    invoke-virtual/range {v0 .. v6}, Lcom/obs/services/internal/RestStorageService;->performRestHead(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Z)Lokhttp3/Response;
    :try_end_19
    .catch Lcom/obs/services/internal/ServiceException; {:try_start_0 .. :try_end_19} :catch_1b

    const/4 p0, 0x1

    return p0

    :catch_1b
    move-exception v0

    move-object p0, v0

    .line 151
    invoke-virtual {p0}, Lcom/obs/services/internal/ServiceException;->getResponseCode()I

    move-result p1

    const/16 v0, 0x194

    if-ne p1, v0, :cond_27

    const/4 p0, 0x0

    return p0

    .line 154
    :cond_27
    throw p0
.end method

.method protected listAllBucketsImpl(Lcom/obs/services/model/ListBucketsRequest;)Lcom/obs/services/model/ListBucketsResult;
    .registers 10

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 114
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 116
    const-string v2, ""

    if-eqz p1, :cond_5c

    .line 117
    invoke-virtual {p1}, Lcom/obs/services/model/ListBucketsRequest;->isQueryLocation()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 118
    invoke-virtual {p0, v2}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v3

    invoke-interface {v3}, Lcom/obs/services/internal/IHeaders;->locationHeader()Ljava/lang/String;

    move-result-object v3

    const-string v4, "true"

    invoke-virtual {p0, v0, v3, v4}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->putHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_21
    invoke-virtual {p1}, Lcom/obs/services/model/ListBucketsRequest;->getBucketType()Lcom/obs/services/model/BucketTypeEnum;

    move-result-object v3

    if-eqz v3, :cond_3a

    .line 121
    invoke-virtual {p0, v2}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v3

    invoke-interface {v3}, Lcom/obs/services/internal/IHeaders;->bucketTypeHeader()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/obs/services/model/ListBucketsRequest;->getBucketType()Lcom/obs/services/model/BucketTypeEnum;

    move-result-object v4

    invoke-virtual {v4}, Lcom/obs/services/model/BucketTypeEnum;->getCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, v3, v4}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->putHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_3a
    invoke-virtual {p1}, Lcom/obs/services/model/ListBucketsRequest;->getMaxKeys()I

    move-result v3

    if-lez v3, :cond_4d

    .line 124
    invoke-virtual {p1}, Lcom/obs/services/model/ListBucketsRequest;->getMaxKeys()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "max-keys"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    :cond_4d
    invoke-virtual {p1}, Lcom/obs/services/model/ListBucketsRequest;->getMarker()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5c

    .line 127
    const-string v3, "marker"

    invoke-virtual {p1}, Lcom/obs/services/model/ListBucketsRequest;->getMarker()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5c
    const/4 p1, 0x0

    .line 131
    invoke-virtual {p0, v2, p1, v1, v0}, Lcom/obs/services/internal/RestStorageService;->performRestGetForListBuckets(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lokhttp3/Response;

    move-result-object p1

    .line 133
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->verifyResponseContentType(Lokhttp3/Response;)V

    .line 135
    invoke-virtual {p0}, Lcom/obs/services/internal/RestStorageService;->getXmlResponseSaxParser()Lcom/obs/services/internal/handler/XmlResponsesSaxParser;

    move-result-object v0

    new-instance v1, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;

    invoke-direct {v1, p1}, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;-><init>(Lokhttp3/Response;)V

    const-class v2, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListBucketsHandler;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->parse(Ljava/io/InputStream;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListBucketsHandler;

    .line 138
    new-instance v1, Lcom/obs/services/model/ListBucketsResult;

    invoke-virtual {v0}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListBucketsHandler;->getBuckets()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListBucketsHandler;->getOwner()Lcom/obs/services/model/Owner;

    move-result-object v3

    .line 139
    invoke-virtual {v0}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListBucketsHandler;->isTruncated()Z

    move-result v4

    invoke-virtual {v0}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListBucketsHandler;->getMarker()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListBucketsHandler;->getMaxKeys()I

    move-result v6

    invoke-virtual {v0}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListBucketsHandler;->getNextMarker()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v1 .. v7}, Lcom/obs/services/model/ListBucketsResult;-><init>(Ljava/util/List;Lcom/obs/services/model/Owner;ZLjava/lang/String;ILjava/lang/String;)V

    .line 140
    invoke-virtual {p0, v1, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->setHeadersAndStatus(Lcom/obs/services/model/HeaderResponse;Lokhttp3/Response;)V

    return-object v1
.end method

.method protected listInventoryConfigurationImpl(Lcom/obs/services/model/inventory/ListInventoryConfigurationRequest;)Lcom/obs/services/model/inventory/ListInventoryConfigurationResult;
    .registers 11

    .line 484
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 485
    sget-object v1, Lcom/obs/services/model/SpecialParamEnum;->INVENTORY:Lcom/obs/services/model/SpecialParamEnum;

    invoke-virtual {v1}, Lcom/obs/services/model/SpecialParamEnum;->getOriginalStringCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequest(Lcom/obs/services/model/GenericRequest;)Lcom/obs/services/internal/trans/NewTransResult;

    move-result-object v4

    .line 488
    invoke-virtual {v4, v0}, Lcom/obs/services/internal/trans/NewTransResult;->setParams(Ljava/util/Map;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v3, p0

    .line 489
    invoke-virtual/range {v3 .. v8}, Lcom/obs/services/internal/RestStorageService;->performRequest(Lcom/obs/services/internal/trans/NewTransResult;ZZZZ)Lokhttp3/Response;

    move-result-object p0

    .line 490
    invoke-virtual {v3, p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->verifyResponseContentType(Lokhttp3/Response;)V

    .line 492
    new-instance p1, Lcom/obs/services/model/inventory/ListInventoryConfigurationResult;

    invoke-direct {p1}, Lcom/obs/services/model/inventory/ListInventoryConfigurationResult;-><init>()V

    .line 493
    invoke-virtual {v3}, Lcom/obs/services/internal/RestStorageService;->getXmlResponseSaxParser()Lcom/obs/services/internal/handler/XmlResponsesSaxParser;

    move-result-object v0

    new-instance v1, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;

    invoke-direct {v1, p0}, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;-><init>(Lokhttp3/Response;)V

    const-class v2, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$InventoryConfigurationsHandler;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v4}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->parse(Ljava/io/InputStream;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$InventoryConfigurationsHandler;

    .line 494
    invoke-virtual {v0}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$InventoryConfigurationsHandler;->getInventoryConfigurations()Ljava/util/ArrayList;

    move-result-object v0

    .line 495
    invoke-virtual {p1, v0}, Lcom/obs/services/model/inventory/ListInventoryConfigurationResult;->setInventoryConfigurations(Ljava/util/List;)V

    .line 496
    invoke-virtual {v3, p1, p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->setHeadersAndStatus(Lcom/obs/services/model/HeaderResponse;Lokhttp3/Response;)V

    return-object p1
.end method

.method protected listObjectsImpl(Lcom/obs/services/model/ListObjectsRequest;)Lcom/obs/services/model/ObjectListing;
    .registers 9

    .line 373
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/RequestConvertor;->transListObjectsRequest(Lcom/obs/services/model/ListObjectsRequest;)Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;

    move-result-object v0

    .line 375
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;->getParams()Ljava/util/Map;

    move-result-object v4

    .line 376
    invoke-virtual {v0}, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;->getHeaders()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getUserHeaders()Ljava/util/HashMap;

    move-result-object v6

    const/4 v3, 0x0

    move-object v1, p0

    .line 375
    invoke-virtual/range {v1 .. v6}, Lcom/obs/services/internal/RestStorageService;->performRestGet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lokhttp3/Response;

    move-result-object p0

    .line 378
    invoke-virtual {v1, p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->verifyResponseContentType(Lokhttp3/Response;)V

    .line 380
    invoke-virtual {v1}, Lcom/obs/services/internal/RestStorageService;->getXmlResponseSaxParser()Lcom/obs/services/internal/handler/XmlResponsesSaxParser;

    move-result-object v0

    new-instance v2, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;

    invoke-direct {v2, p0}, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;-><init>(Lokhttp3/Response;)V

    const-class v3, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListObjectsHandler;

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->parse(Ljava/io/InputStream;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListObjectsHandler;

    .line 383
    new-instance v2, Lcom/obs/services/model/ObjectListing$Builder;

    invoke-direct {v2}, Lcom/obs/services/model/ObjectListing$Builder;-><init>()V

    .line 384
    invoke-virtual {v0}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListObjectsHandler;->getObjects()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/obs/services/model/ObjectListing$Builder;->objectSummaries(Ljava/util/List;)Lcom/obs/services/model/ObjectListing$Builder;

    move-result-object v2

    .line 385
    invoke-virtual {v0}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListObjectsHandler;->getCommonPrefixes()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/obs/services/model/ObjectListing$Builder;->commonPrefixes(Ljava/util/List;)Lcom/obs/services/model/ObjectListing$Builder;

    move-result-object v2

    .line 386
    invoke-virtual {v0}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListObjectsHandler;->getBucketName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4f

    .line 387
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v3

    goto :goto_53

    :cond_4f
    invoke-virtual {v0}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListObjectsHandler;->getBucketName()Ljava/lang/String;

    move-result-object v3

    .line 386
    :goto_53
    invoke-virtual {v2, v3}, Lcom/obs/services/model/ObjectListing$Builder;->bucketName(Ljava/lang/String;)Lcom/obs/services/model/ObjectListing$Builder;

    move-result-object v2

    .line 388
    invoke-virtual {v0}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListObjectsHandler;->isListingTruncated()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/obs/services/model/ObjectListing$Builder;->truncated(Z)Lcom/obs/services/model/ObjectListing$Builder;

    move-result-object v2

    .line 389
    invoke-virtual {v0}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListObjectsHandler;->getRequestPrefix()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_6a

    .line 390
    invoke-virtual {p1}, Lcom/obs/services/model/ListObjectsRequest;->getPrefix()Ljava/lang/String;

    move-result-object v3

    goto :goto_6e

    :cond_6a
    invoke-virtual {v0}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListObjectsHandler;->getRequestPrefix()Ljava/lang/String;

    move-result-object v3

    .line 389
    :goto_6e
    invoke-virtual {v2, v3}, Lcom/obs/services/model/ObjectListing$Builder;->prefix(Ljava/lang/String;)Lcom/obs/services/model/ObjectListing$Builder;

    move-result-object v2

    .line 391
    invoke-virtual {v0}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListObjectsHandler;->getRequestMarker()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_7d

    .line 392
    invoke-virtual {p1}, Lcom/obs/services/model/ListObjectsRequest;->getMarker()Ljava/lang/String;

    move-result-object v3

    goto :goto_81

    :cond_7d
    invoke-virtual {v0}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListObjectsHandler;->getRequestMarker()Ljava/lang/String;

    move-result-object v3

    .line 391
    :goto_81
    invoke-virtual {v2, v3}, Lcom/obs/services/model/ObjectListing$Builder;->marker(Ljava/lang/String;)Lcom/obs/services/model/ObjectListing$Builder;

    move-result-object v2

    .line 393
    invoke-virtual {v0}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListObjectsHandler;->getRequestMaxKeys()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/obs/services/model/ObjectListing$Builder;->maxKeys(I)Lcom/obs/services/model/ObjectListing$Builder;

    move-result-object v2

    .line 394
    invoke-virtual {v0}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListObjectsHandler;->getRequestDelimiter()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_98

    .line 395
    invoke-virtual {p1}, Lcom/obs/services/model/ListObjectsRequest;->getDelimiter()Ljava/lang/String;

    move-result-object v3

    goto :goto_9c

    :cond_98
    invoke-virtual {v0}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListObjectsHandler;->getRequestDelimiter()Ljava/lang/String;

    move-result-object v3

    .line 394
    :goto_9c
    invoke-virtual {v2, v3}, Lcom/obs/services/model/ObjectListing$Builder;->delimiter(Ljava/lang/String;)Lcom/obs/services/model/ObjectListing$Builder;

    move-result-object v2

    .line 396
    invoke-virtual {v0}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListObjectsHandler;->getMarkerForNextListing()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/obs/services/model/ObjectListing$Builder;->nextMarker(Ljava/lang/String;)Lcom/obs/services/model/ObjectListing$Builder;

    move-result-object v2

    .line 397
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object p1

    .line 398
    invoke-interface {p1}, Lcom/obs/services/internal/IHeaders;->bucketRegionHeader()Ljava/lang/String;

    move-result-object p1

    .line 397
    invoke-virtual {p0, p1}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/obs/services/model/ObjectListing$Builder;->location(Ljava/lang/String;)Lcom/obs/services/model/ObjectListing$Builder;

    move-result-object p1

    .line 399
    invoke-virtual {v0}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListObjectsHandler;->getExtendCommonPrefixes()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/obs/services/model/ObjectListing$Builder;->extendCommonPrefixes(Ljava/util/List;)Lcom/obs/services/model/ObjectListing$Builder;

    move-result-object p1

    .line 400
    invoke-virtual {p1}, Lcom/obs/services/model/ObjectListing$Builder;->builder()Lcom/obs/services/model/ObjectListing;

    move-result-object p1

    .line 402
    invoke-virtual {v1, p1, p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->setHeadersAndStatus(Lcom/obs/services/model/HeaderResponse;Lokhttp3/Response;)V

    return-object p1
.end method

.method protected listVersionsImpl(Lcom/obs/services/model/ListVersionsRequest;)Lcom/obs/services/model/ListVersionsResult;
    .registers 9

    .line 340
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/RequestConvertor;->transListVersionsRequest(Lcom/obs/services/model/ListVersionsRequest;)Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;

    move-result-object v0

    .line 342
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;->getParams()Ljava/util/Map;

    move-result-object v4

    .line 343
    invoke-virtual {v0}, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;->getHeaders()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getUserHeaders()Ljava/util/HashMap;

    move-result-object v6

    const/4 v3, 0x0

    move-object v1, p0

    .line 342
    invoke-virtual/range {v1 .. v6}, Lcom/obs/services/internal/RestStorageService;->performRestGet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lokhttp3/Response;

    move-result-object p0

    .line 345
    invoke-virtual {v1, p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->verifyResponseContentType(Lokhttp3/Response;)V

    .line 347
    invoke-virtual {v1}, Lcom/obs/services/internal/RestStorageService;->getXmlResponseSaxParser()Lcom/obs/services/internal/handler/XmlResponsesSaxParser;

    move-result-object v0

    new-instance v2, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;

    invoke-direct {v2, p0}, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;-><init>(Lokhttp3/Response;)V

    const-class v3, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->parse(Ljava/io/InputStream;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;

    .line 349
    invoke-virtual {v0}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;->getItems()Ljava/util/List;

    move-result-object v2

    .line 351
    new-instance v3, Lcom/obs/services/model/ListVersionsResult$Builder;

    invoke-direct {v3}, Lcom/obs/services/model/ListVersionsResult$Builder;-><init>()V

    .line 352
    invoke-virtual {v0}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;->getBucketName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_43

    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v4

    goto :goto_47

    :cond_43
    invoke-virtual {v0}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;->getBucketName()Ljava/lang/String;

    move-result-object v4

    :goto_47
    invoke-virtual {v3, v4}, Lcom/obs/services/model/ListVersionsResult$Builder;->bucketName(Ljava/lang/String;)Lcom/obs/services/model/ListVersionsResult$Builder;

    move-result-object v3

    .line 353
    invoke-virtual {v0}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;->getRequestPrefix()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_56

    invoke-virtual {p1}, Lcom/obs/services/model/ListVersionsRequest;->getPrefix()Ljava/lang/String;

    move-result-object v4

    goto :goto_5a

    :cond_56
    invoke-virtual {v0}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;->getRequestPrefix()Ljava/lang/String;

    move-result-object v4

    :goto_5a
    invoke-virtual {v3, v4}, Lcom/obs/services/model/ListVersionsResult$Builder;->prefix(Ljava/lang/String;)Lcom/obs/services/model/ListVersionsResult$Builder;

    move-result-object v3

    .line 354
    invoke-virtual {v0}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;->getKeyMarker()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_69

    invoke-virtual {p1}, Lcom/obs/services/model/ListVersionsRequest;->getKeyMarker()Ljava/lang/String;

    move-result-object v4

    goto :goto_6d

    :cond_69
    invoke-virtual {v0}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;->getKeyMarker()Ljava/lang/String;

    move-result-object v4

    :goto_6d
    invoke-virtual {v3, v4}, Lcom/obs/services/model/ListVersionsResult$Builder;->keyMarker(Ljava/lang/String;)Lcom/obs/services/model/ListVersionsResult$Builder;

    move-result-object v3

    .line 355
    invoke-virtual {v0}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;->getNextKeyMarker()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/obs/services/model/ListVersionsResult$Builder;->nextKeyMarker(Ljava/lang/String;)Lcom/obs/services/model/ListVersionsResult$Builder;

    move-result-object v3

    .line 356
    invoke-virtual {v0}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;->getVersionIdMarker()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_84

    .line 357
    invoke-virtual {p1}, Lcom/obs/services/model/ListVersionsRequest;->getVersionIdMarker()Ljava/lang/String;

    move-result-object v4

    goto :goto_88

    :cond_84
    invoke-virtual {v0}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;->getVersionIdMarker()Ljava/lang/String;

    move-result-object v4

    .line 356
    :goto_88
    invoke-virtual {v3, v4}, Lcom/obs/services/model/ListVersionsResult$Builder;->versionIdMarker(Ljava/lang/String;)Lcom/obs/services/model/ListVersionsResult$Builder;

    move-result-object v3

    .line 358
    invoke-virtual {v0}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;->getNextVersionIdMarker()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/obs/services/model/ListVersionsResult$Builder;->nextVersionIdMarker(Ljava/lang/String;)Lcom/obs/services/model/ListVersionsResult$Builder;

    move-result-object v3

    .line 359
    invoke-virtual {v0}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;->getRequestMaxKeys()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/obs/services/model/ListVersionsResult$Builder;->maxKeys(Ljava/lang/String;)Lcom/obs/services/model/ListVersionsResult$Builder;

    move-result-object v3

    .line 360
    invoke-virtual {v0}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;->isListingTruncated()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/obs/services/model/ListVersionsResult$Builder;->isTruncated(Z)Lcom/obs/services/model/ListVersionsResult$Builder;

    move-result-object v3

    .line 361
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lcom/obs/services/model/VersionOrDeleteMarker;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/obs/services/model/VersionOrDeleteMarker;

    invoke-virtual {v3, v2}, Lcom/obs/services/model/ListVersionsResult$Builder;->versions([Lcom/obs/services/model/VersionOrDeleteMarker;)Lcom/obs/services/model/ListVersionsResult$Builder;

    move-result-object v2

    .line 362
    invoke-virtual {v0}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;->getCommonPrefixes()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/obs/services/model/ListVersionsResult$Builder;->commonPrefixes(Ljava/util/List;)Lcom/obs/services/model/ListVersionsResult$Builder;

    move-result-object v2

    .line 363
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v3

    invoke-interface {v3}, Lcom/obs/services/internal/IHeaders;->bucketRegionHeader()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/obs/services/model/ListVersionsResult$Builder;->location(Ljava/lang/String;)Lcom/obs/services/model/ListVersionsResult$Builder;

    move-result-object v2

    .line 364
    invoke-virtual {v0}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;->getDelimiter()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_df

    invoke-virtual {p1}, Lcom/obs/services/model/ListVersionsRequest;->getDelimiter()Ljava/lang/String;

    move-result-object p1

    goto :goto_e3

    :cond_df
    invoke-virtual {v0}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;->getDelimiter()Ljava/lang/String;

    move-result-object p1

    :goto_e3
    invoke-virtual {v2, p1}, Lcom/obs/services/model/ListVersionsResult$Builder;->delimiter(Ljava/lang/String;)Lcom/obs/services/model/ListVersionsResult$Builder;

    move-result-object p1

    .line 365
    invoke-virtual {p1}, Lcom/obs/services/model/ListVersionsResult$Builder;->builder()Lcom/obs/services/model/ListVersionsResult;

    move-result-object p1

    .line 367
    invoke-virtual {v1, p1, p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->setHeadersAndStatus(Lcom/obs/services/model/HeaderResponse;Lokhttp3/Response;)V

    return-object p1
.end method

.method protected optionsImpl(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/model/OptionsInfoRequest;)Lcom/obs/services/model/BucketMetadataInfoResult;
    .registers 10

    .line 408
    new-instance v3, Ljava/util/IdentityHashMap;

    invoke-direct {v3}, Ljava/util/IdentityHashMap;-><init>()V

    .line 410
    invoke-virtual {p3}, Lcom/obs/services/model/OptionsInfoRequest;->getOrigin()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/obs/services/internal/utils/ServiceUtils;->isValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 411
    invoke-virtual {p3}, Lcom/obs/services/model/OptionsInfoRequest;->getOrigin()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Origin"

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    const/4 v0, 0x0

    move v1, v0

    .line 414
    :goto_1e
    invoke-virtual {p3}, Lcom/obs/services/model/OptionsInfoRequest;->getRequestMethod()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_48

    invoke-virtual {p3}, Lcom/obs/services/model/OptionsInfoRequest;->getRequestMethod()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_48

    .line 415
    new-instance v2, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Access-Control-Request-Method"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    .line 416
    invoke-virtual {p3}, Lcom/obs/services/model/OptionsInfoRequest;->getRequestMethod()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 415
    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 418
    :cond_48
    :goto_48
    invoke-virtual {p3}, Lcom/obs/services/model/OptionsInfoRequest;->getRequestHeaders()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_72

    invoke-virtual {p3}, Lcom/obs/services/model/OptionsInfoRequest;->getRequestHeaders()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_72

    .line 419
    new-instance v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Access-Control-Request-Headers"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    .line 420
    invoke-virtual {p3}, Lcom/obs/services/model/OptionsInfoRequest;->getRequestHeaders()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 419
    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_48

    .line 422
    :cond_72
    invoke-virtual {p3}, Lcom/obs/services/model/GenericRequest;->isRequesterPays()Z

    move-result p3

    invoke-virtual {p0, p1}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v0

    invoke-virtual {p0, p3, v3, v0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequestPaymentHeaders(ZLjava/util/Map;Lcom/obs/services/internal/IHeaders;)Ljava/util/Map;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 424
    invoke-virtual/range {v0 .. v5}, Lcom/obs/services/internal/RestStorageService;->performRestOptions(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lokhttp3/Response;

    move-result-object p0

    .line 425
    invoke-virtual {v0, v1, p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->getOptionInfoResult(Ljava/lang/String;Lokhttp3/Response;)Lcom/obs/services/model/fs/GetBucketFSStatusResult;

    move-result-object p0

    return-object p0
.end method

.method protected setBucketFSStatusImpl(Lcom/obs/services/model/fs/SetBucketFSStatusRequest;)Lcom/obs/services/model/HeaderResponse;
    .registers 7

    .line 204
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 205
    sget-object v1, Lcom/obs/services/model/SpecialParamEnum;->FILEINTERFACE:Lcom/obs/services/model/SpecialParamEnum;

    invoke-virtual {v1}, Lcom/obs/services/model/SpecialParamEnum;->getOriginalStringCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v1

    const/4 v2, 0x0

    .line 207
    invoke-virtual {p0, p1, v2, v1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequestPaymentHeaders(Lcom/obs/services/model/GenericRequest;Ljava/util/Map;Lcom/obs/services/internal/IHeaders;)Ljava/util/Map;

    move-result-object v1

    .line 210
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/obs/services/internal/RestStorageService;->getIConvertor(Ljava/lang/String;)Lcom/obs/services/internal/IConvertor;

    move-result-object v2

    invoke-virtual {p1}, Lcom/obs/services/model/fs/SetBucketFSStatusRequest;->getStatus()Lcom/obs/services/model/fs/FSStatusEnum;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/obs/services/internal/IConvertor;->transBucketFileInterface(Lcom/obs/services/model/fs/FSStatusEnum;)Ljava/lang/String;

    move-result-object v2

    .line 211
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Content-Length"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    const-string v3, "Content-MD5"

    invoke-static {v2}, Lcom/obs/services/internal/utils/ServiceUtils;->computeMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequest(Lcom/obs/services/model/GenericRequest;)Lcom/obs/services/internal/trans/NewTransResult;

    move-result-object p1

    .line 215
    invoke-virtual {p1, v0}, Lcom/obs/services/internal/trans/NewTransResult;->setParams(Ljava/util/Map;)V

    .line 216
    invoke-virtual {p1, v1}, Lcom/obs/services/internal/trans/NewTransResult;->setHeaders(Ljava/util/Map;)V

    .line 217
    const-string v0, "application/xml"

    invoke-virtual {p0, v0, v2}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->createRequestBody(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/obs/services/internal/trans/NewTransResult;->setBody(Lokhttp3/RequestBody;)V

    .line 218
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/RestStorageService;->performRequest(Lcom/obs/services/internal/trans/NewTransResult;)Lokhttp3/Response;

    move-result-object p1

    .line 220
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->build(Lokhttp3/Response;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method protected setBucketPolicyImpl(Lcom/obs/services/model/SetBucketPolicyRequest;)Lcom/obs/services/model/HeaderResponse;
    .registers 6

    .line 298
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 299
    sget-object v1, Lcom/obs/services/model/SpecialParamEnum;->POLICY:Lcom/obs/services/model/SpecialParamEnum;

    invoke-virtual {v1}, Lcom/obs/services/model/SpecialParamEnum;->getOriginalStringCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 302
    const-string v2, "Content-Type"

    const-string v3, "text/plain"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v2

    invoke-virtual {p0, p1, v1, v2}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequestPaymentHeaders(Lcom/obs/services/model/GenericRequest;Ljava/util/Map;Lcom/obs/services/internal/IHeaders;)Ljava/util/Map;

    .line 304
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequest(Lcom/obs/services/model/GenericRequest;)Lcom/obs/services/internal/trans/NewTransResult;

    move-result-object v2

    .line 305
    invoke-virtual {v2, v0}, Lcom/obs/services/internal/trans/NewTransResult;->setParams(Ljava/util/Map;)V

    .line 306
    invoke-virtual {v2, v1}, Lcom/obs/services/internal/trans/NewTransResult;->setHeaders(Ljava/util/Map;)V

    .line 307
    invoke-virtual {p1}, Lcom/obs/services/model/SetBucketPolicyRequest;->getPolicy()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->createRequestBody(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/obs/services/internal/trans/NewTransResult;->setBody(Lokhttp3/RequestBody;)V

    .line 308
    invoke-virtual {p0, v2}, Lcom/obs/services/internal/RestStorageService;->performRequest(Lcom/obs/services/internal/trans/NewTransResult;)Lokhttp3/Response;

    move-result-object p1

    .line 309
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->build(Lokhttp3/Response;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method protected setBucketStorageImpl(Lcom/obs/services/model/SetBucketStoragePolicyRequest;)Lcom/obs/services/model/HeaderResponse;
    .registers 8

    .line 243
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 244
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->getSpecialParamForStorageClass(Ljava/lang/String;)Lcom/obs/services/model/SpecialParamEnum;

    move-result-object v1

    invoke-virtual {v1}, Lcom/obs/services/model/SpecialParamEnum;->getOriginalStringCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 246
    invoke-virtual {p1}, Lcom/obs/services/model/SetBucketStoragePolicyRequest;->getBucketStorage()Lcom/obs/services/model/BucketStoragePolicyConfiguration;

    move-result-object v3

    if-nez v3, :cond_22

    goto :goto_32

    .line 247
    :cond_22
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/obs/services/internal/RestStorageService;->getIConvertor(Ljava/lang/String;)Lcom/obs/services/internal/IConvertor;

    move-result-object v2

    invoke-virtual {p1}, Lcom/obs/services/model/SetBucketStoragePolicyRequest;->getBucketStorage()Lcom/obs/services/model/BucketStoragePolicyConfiguration;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/obs/services/internal/IConvertor;->transStoragePolicy(Lcom/obs/services/model/BucketStoragePolicyConfiguration;)Ljava/lang/String;

    move-result-object v2

    .line 249
    :goto_32
    const-string v3, "Content-Type"

    const-string v4, "application/xml"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "Content-Length"

    invoke-interface {v1, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    const-string v3, "Content-MD5"

    invoke-static {v2}, Lcom/obs/services/internal/utils/ServiceUtils;->computeMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v3

    invoke-virtual {p0, p1, v1, v3}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequestPaymentHeaders(Lcom/obs/services/model/GenericRequest;Ljava/util/Map;Lcom/obs/services/internal/IHeaders;)Ljava/util/Map;

    .line 255
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequest(Lcom/obs/services/model/GenericRequest;)Lcom/obs/services/internal/trans/NewTransResult;

    move-result-object p1

    .line 256
    invoke-virtual {p1, v0}, Lcom/obs/services/internal/trans/NewTransResult;->setParams(Ljava/util/Map;)V

    .line 257
    invoke-virtual {p1, v1}, Lcom/obs/services/internal/trans/NewTransResult;->setHeaders(Ljava/util/Map;)V

    .line 258
    invoke-virtual {p0, v4, v2}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->createRequestBody(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/obs/services/internal/trans/NewTransResult;->setBody(Lokhttp3/RequestBody;)V

    .line 259
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/RestStorageService;->performRequest(Lcom/obs/services/internal/trans/NewTransResult;)Lokhttp3/Response;

    move-result-object p1

    .line 260
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->build(Lokhttp3/Response;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method protected setInventoryConfigurationImpl(Lcom/obs/services/model/inventory/SetInventoryConfigurationRequest;)Lcom/obs/services/model/HeaderResponse;
    .registers 6

    .line 446
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 447
    sget-object v1, Lcom/obs/services/model/SpecialParamEnum;->INVENTORY:Lcom/obs/services/model/SpecialParamEnum;

    invoke-virtual {v1}, Lcom/obs/services/model/SpecialParamEnum;->getOriginalStringCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    sget-object v1, Lcom/obs/services/model/SpecialParamEnum;->ID:Lcom/obs/services/model/SpecialParamEnum;

    invoke-virtual {v1}, Lcom/obs/services/model/SpecialParamEnum;->getOriginalStringCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/obs/services/model/inventory/SetInventoryConfigurationRequest;->getInventoryConfiguration()Lcom/obs/services/model/inventory/InventoryConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/obs/services/model/inventory/InventoryConfiguration;->getConfigurationId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/obs/services/internal/RestStorageService;->getIConvertor(Ljava/lang/String;)Lcom/obs/services/internal/IConvertor;

    move-result-object v1

    invoke-virtual {p1}, Lcom/obs/services/model/inventory/SetInventoryConfigurationRequest;->getInventoryConfiguration()Lcom/obs/services/model/inventory/InventoryConfiguration;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/obs/services/internal/IConvertor;->transBucketInventoryConfiguration(Lcom/obs/services/model/inventory/InventoryConfiguration;)Ljava/lang/String;

    move-result-object v1

    .line 450
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 451
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v3

    invoke-virtual {p0, p1, v2, v3}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequestPaymentHeaders(Lcom/obs/services/model/GenericRequest;Ljava/util/Map;Lcom/obs/services/internal/IHeaders;)Ljava/util/Map;

    .line 452
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequest(Lcom/obs/services/model/GenericRequest;)Lcom/obs/services/internal/trans/NewTransResult;

    move-result-object p1

    .line 453
    invoke-virtual {p1, v0}, Lcom/obs/services/internal/trans/NewTransResult;->setParams(Ljava/util/Map;)V

    .line 454
    const-string v0, "Content-Type"

    const-string v3, "text/plain"

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    invoke-virtual {p1, v2}, Lcom/obs/services/internal/trans/NewTransResult;->setHeaders(Ljava/util/Map;)V

    .line 456
    invoke-virtual {p0, v3, v1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->createRequestBody(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/obs/services/internal/trans/NewTransResult;->setBody(Lokhttp3/RequestBody;)V

    .line 457
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/RestStorageService;->performRequest(Lcom/obs/services/internal/trans/NewTransResult;)Lokhttp3/Response;

    move-result-object p1

    .line 458
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->build(Lokhttp3/Response;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method
