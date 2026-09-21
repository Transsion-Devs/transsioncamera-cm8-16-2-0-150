.class public abstract Lcom/obs/services/internal/service/ObsMultipartObjectService;
.super Lcom/obs/services/internal/service/ObsObjectBaseService;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Lcom/obs/services/internal/service/ObsObjectBaseService;-><init>()V

    return-void
.end method


# virtual methods
.method protected abortMultipartUploadImpl(Lcom/obs/services/model/AbortMultipartUploadRequest;)Lcom/obs/services/model/HeaderResponse;
    .registers 8

    .line 76
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 77
    const-string v0, "uploadId"

    invoke-virtual {p1}, Lcom/obs/services/model/AbstractMultipartRequest;->getUploadId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/obs/services/model/BaseObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v2

    .line 80
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {p0, p1, v4, v0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequestPaymentHeaders(Lcom/obs/services/model/GenericRequest;Ljava/util/Map;Lcom/obs/services/internal/IHeaders;)Ljava/util/Map;

    move-result-object v4

    .line 81
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getUserHeaders()Ljava/util/HashMap;

    move-result-object v5

    move-object v0, p0

    .line 79
    invoke-virtual/range {v0 .. v5}, Lcom/obs/services/internal/RestStorageService;->performRestDelete(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lokhttp3/Response;

    move-result-object p0

    .line 82
    invoke-virtual {v0, p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->build(Lokhttp3/Response;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method protected completeMultipartUploadImpl(Lcom/obs/services/model/CompleteMultipartUploadRequest;)Lcom/obs/services/model/CompleteMultipartUploadResult;
    .registers 14

    .line 87
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 88
    const-string v2, "uploadId"

    invoke-virtual {p1}, Lcom/obs/services/model/AbstractMultipartRequest;->getUploadId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-virtual {p1}, Lcom/obs/services/model/CompleteMultipartUploadRequest;->getEncodingType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1d

    .line 90
    const-string v2, "encoding-type"

    invoke-virtual {p1}, Lcom/obs/services/model/CompleteMultipartUploadRequest;->getEncodingType()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    :cond_1d
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 95
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v3

    invoke-virtual {p0, p1, v2, v3}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequestPaymentHeaders(Lcom/obs/services/model/GenericRequest;Ljava/util/Map;Lcom/obs/services/internal/IHeaders;)Ljava/util/Map;

    .line 96
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/obs/services/internal/RestStorageService;->getIConvertor(Ljava/lang/String;)Lcom/obs/services/internal/IConvertor;

    move-result-object v3

    invoke-virtual {p1}, Lcom/obs/services/model/CompleteMultipartUploadRequest;->getPartEtag()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/obs/services/internal/IConvertor;->transCompleteMultipartUpload(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 97
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Content-Length"

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string v4, "Content-MD5"

    invoke-static {v3}, Lcom/obs/services/internal/utils/ServiceUtils;->computeMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v4, "Content-Type"

    const-string v5, "application/xml"

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    invoke-virtual {p1}, Lcom/obs/services/model/CompleteMultipartUploadRequest;->getCallback()Lcom/obs/services/model/Callback;

    move-result-object v4

    if-eqz v4, :cond_9b

    .line 101
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/obs/services/internal/RestStorageService;->getProviderCredentials()Lcom/obs/services/internal/security/ProviderCredentials;

    move-result-object v7

    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/obs/services/internal/security/ProviderCredentials;->getLocalAuthType(Ljava/lang/String;)Lcom/obs/services/model/AuthTypeEnum;

    move-result-object v7

    sget-object v8, Lcom/obs/services/model/AuthTypeEnum;->OBS:Lcom/obs/services/model/AuthTypeEnum;

    if-eq v7, v8, :cond_78

    const-string v7, "x-amz-"

    goto :goto_7a

    :cond_78
    const-string v7, "x-obs-"

    :goto_7a
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "callback"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 103
    invoke-virtual {p1}, Lcom/obs/services/model/CompleteMultipartUploadRequest;->getCallback()Lcom/obs/services/model/Callback;

    move-result-object v7

    invoke-static {v7}, Lcom/obs/services/internal/utils/JSONChange;->objToJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    invoke-static {v7}, Lcom/obs/services/internal/utils/ServiceUtils;->toBase64([B)Ljava/lang/String;

    move-result-object v7

    .line 101
    invoke-interface {v2, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    :cond_9b
    invoke-virtual/range {p0 .. p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transObjectRequest(Lcom/obs/services/model/BaseObjectRequest;)Lcom/obs/services/internal/trans/NewTransResult;

    move-result-object v4

    .line 107
    invoke-virtual {v4, v1}, Lcom/obs/services/internal/trans/NewTransResult;->setParams(Ljava/util/Map;)V

    .line 108
    invoke-virtual {v4, v2}, Lcom/obs/services/internal/trans/NewTransResult;->setHeaders(Ljava/util/Map;)V

    .line 109
    invoke-virtual {p0, v5, v3}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->createRequestBody(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/obs/services/internal/trans/NewTransResult;->setBody(Lokhttp3/RequestBody;)V

    move-object v1, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    .line 111
    invoke-virtual/range {v0 .. v5}, Lcom/obs/services/internal/RestStorageService;->performRequest(Lcom/obs/services/internal/trans/NewTransResult;ZZZZ)Lokhttp3/Response;

    move-result-object v1

    .line 114
    invoke-virtual {p1}, Lcom/obs/services/model/CompleteMultipartUploadRequest;->getCallback()Lcom/obs/services/model/Callback;

    move-result-object v2

    if-nez v2, :cond_107

    .line 115
    invoke-virtual {p0, v1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->verifyResponseContentType(Lokhttp3/Response;)V

    .line 116
    invoke-virtual {p0}, Lcom/obs/services/internal/RestStorageService;->getXmlResponseSaxParser()Lcom/obs/services/internal/handler/XmlResponsesSaxParser;

    move-result-object v2

    new-instance v3, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;

    invoke-direct {v3, v1}, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;-><init>(Lokhttp3/Response;)V

    const-class v4, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$CompleteMultipartUploadHandler;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->parse(Ljava/io/InputStream;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$CompleteMultipartUploadHandler;

    .line 120
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v3

    invoke-interface {v3}, Lcom/obs/services/internal/IHeaders;->versionIdHeader()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 122
    new-instance v4, Lcom/obs/services/model/CompleteMultipartUploadResult;

    invoke-virtual {v2}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->getBucketName()Ljava/lang/String;

    move-result-object v5

    .line 123
    invoke-virtual {v2}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->getObjectKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->getEtag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->getLocation()Ljava/lang/String;

    move-result-object v8

    .line 124
    invoke-virtual {v2}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->getBucketName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->getObjectKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/obs/services/model/BaseObjectRequest;->getIsIgnorePort()Z

    move-result v10

    invoke-virtual {p0, v3, v2, v10}, Lcom/obs/services/internal/service/ObsObjectBaseService;->getObjectUrl(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    invoke-direct/range {v4 .. v10}, Lcom/obs/services/model/CompleteMultipartUploadResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_136

    .line 126
    :cond_107
    new-instance v5, Lcom/obs/services/model/CompleteMultipartUploadResult;

    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v6

    .line 127
    invoke-virtual {p1}, Lcom/obs/services/model/BaseObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    .line 128
    invoke-virtual {p1}, Lcom/obs/services/model/BaseObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/obs/services/model/BaseObjectRequest;->getIsIgnorePort()Z

    move-result v4

    .line 127
    invoke-virtual {p0, v2, v3, v4}, Lcom/obs/services/internal/service/ObsObjectBaseService;->getObjectUrl(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v11

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v11}, Lcom/obs/services/model/CompleteMultipartUploadResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :try_start_127
    invoke-virtual {v1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/obs/services/model/CompleteMultipartUploadResult;->setCallbackResponseBody(Ljava/io/InputStream;)V
    :try_end_135
    .catch Ljava/lang/Exception; {:try_start_127 .. :try_end_135} :catch_13a

    move-object v4, v5

    .line 135
    :goto_136
    invoke-virtual {p0, v4, v1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->setHeadersAndStatus(Lcom/obs/services/model/HeaderResponse;Lokhttp3/Response;)V

    return-object v4

    :catch_13a
    move-exception v0

    .line 132
    new-instance v1, Lcom/obs/services/internal/ServiceException;

    invoke-direct {v1, v0}, Lcom/obs/services/internal/ServiceException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected copyPartImpl(Lcom/obs/services/model/CopyPartRequest;)Lcom/obs/services/model/CopyPartResult;
    .registers 9

    .line 259
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/RequestConvertor;->transCopyPartRequest(Lcom/obs/services/model/CopyPartRequest;)Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;

    move-result-object v0

    .line 260
    invoke-virtual {p0, v0, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transObjectRequestWithResult(Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;Lcom/obs/services/model/BaseObjectRequest;)Lcom/obs/services/internal/trans/NewTransResult;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v1, p0

    .line 261
    invoke-virtual/range {v1 .. v6}, Lcom/obs/services/internal/RestStorageService;->performRequest(Lcom/obs/services/internal/trans/NewTransResult;ZZZZ)Lokhttp3/Response;

    move-result-object p0

    .line 262
    invoke-virtual {v1, p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->verifyResponseContentType(Lokhttp3/Response;)V

    .line 264
    invoke-virtual {v1}, Lcom/obs/services/internal/RestStorageService;->getXmlResponseSaxParser()Lcom/obs/services/internal/handler/XmlResponsesSaxParser;

    move-result-object v0

    new-instance v2, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;

    invoke-direct {v2, p0}, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;-><init>(Lokhttp3/Response;)V

    const-class v3, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$CopyPartResultHandler;

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->parse(Ljava/io/InputStream;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$CopyPartResultHandler;

    .line 265
    invoke-virtual {p1}, Lcom/obs/services/model/CopyPartRequest;->getPartNumber()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$CopyPartResultHandler;->getCopyPartResult(I)Lcom/obs/services/model/CopyPartResult;

    move-result-object p1

    .line 267
    invoke-virtual {v1, p1, p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->setHeadersAndStatus(Lcom/obs/services/model/HeaderResponse;Lokhttp3/Response;)V

    return-object p1
.end method

.method protected initiateMultipartUploadImpl(Lcom/obs/services/model/InitiateMultipartUploadRequest;)Lcom/obs/services/model/InitiateMultipartUploadResult;
    .registers 12

    .line 58
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/RequestConvertor;->transInitiateMultipartUploadRequest(Lcom/obs/services/model/InitiateMultipartUploadRequest;)Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;

    move-result-object v0

    .line 60
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;->getHeaders()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p1}, Lcom/obs/services/model/PutObjectBasicRequest;->getAcl()Lcom/obs/services/model/AccessControlList;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/obs/services/internal/service/AclHeaderConvertor;->prepareRESTHeaderAcl(Ljava/lang/String;Ljava/util/Map;Lcom/obs/services/model/AccessControlList;)Z

    .line 62
    invoke-virtual {p0, v0, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transObjectRequestWithResult(Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;Lcom/obs/services/model/BaseObjectRequest;)Lcom/obs/services/internal/trans/NewTransResult;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v4, p0

    .line 63
    invoke-virtual/range {v4 .. v9}, Lcom/obs/services/internal/RestStorageService;->performRequest(Lcom/obs/services/internal/trans/NewTransResult;ZZZZ)Lokhttp3/Response;

    move-result-object p0

    .line 65
    invoke-virtual {v4, p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->verifyResponseContentType(Lokhttp3/Response;)V

    .line 67
    invoke-virtual {v4}, Lcom/obs/services/internal/RestStorageService;->getXmlResponseSaxParser()Lcom/obs/services/internal/handler/XmlResponsesSaxParser;

    move-result-object p1

    new-instance v0, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;

    invoke-direct {v0, p0}, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;-><init>(Lokhttp3/Response;)V

    const-class v1, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$InitiateMultipartUploadHandler;

    const/4 v2, 0x1

    .line 68
    invoke-virtual {p1, v0, v1, v2}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->parse(Ljava/io/InputStream;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$InitiateMultipartUploadHandler;

    .line 70
    invoke-virtual {p1}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$InitiateMultipartUploadHandler;->getInitiateMultipartUploadResult()Lcom/obs/services/model/InitiateMultipartUploadResult;

    move-result-object p1

    .line 71
    invoke-virtual {v4, p1, p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->setHeadersAndStatus(Lcom/obs/services/model/HeaderResponse;Lokhttp3/Response;)V

    return-object p1
.end method

.method protected listMultipartUploadsImpl(Lcom/obs/services/model/ListMultipartUploadsRequest;)Lcom/obs/services/model/MultipartUploadListing;
    .registers 8

    .line 142
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 143
    sget-object v0, Lcom/obs/services/model/SpecialParamEnum;->UPLOADS:Lcom/obs/services/model/SpecialParamEnum;

    invoke-virtual {v0}, Lcom/obs/services/model/SpecialParamEnum;->getOriginalStringCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    invoke-virtual {p1}, Lcom/obs/services/model/ListMultipartUploadsRequest;->getPrefix()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 145
    const-string v0, "prefix"

    invoke-virtual {p1}, Lcom/obs/services/model/ListMultipartUploadsRequest;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    :cond_1f
    invoke-virtual {p1}, Lcom/obs/services/model/ListMultipartUploadsRequest;->getDelimiter()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 148
    const-string v0, "delimiter"

    invoke-virtual {p1}, Lcom/obs/services/model/ListMultipartUploadsRequest;->getDelimiter()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    :cond_2e
    invoke-virtual {p1}, Lcom/obs/services/model/ListMultipartUploadsRequest;->getMaxUploads()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 151
    invoke-virtual {p1}, Lcom/obs/services/model/ListMultipartUploadsRequest;->getMaxUploads()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "max-uploads"

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    :cond_41
    invoke-virtual {p1}, Lcom/obs/services/model/ListMultipartUploadsRequest;->getKeyMarker()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_50

    .line 154
    const-string v0, "key-marker"

    invoke-virtual {p1}, Lcom/obs/services/model/ListMultipartUploadsRequest;->getKeyMarker()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    :cond_50
    invoke-virtual {p1}, Lcom/obs/services/model/ListMultipartUploadsRequest;->getUploadIdMarker()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5f

    .line 157
    const-string v0, "upload-id-marker"

    invoke-virtual {p1}, Lcom/obs/services/model/ListMultipartUploadsRequest;->getUploadIdMarker()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    :cond_5f
    invoke-virtual {p1}, Lcom/obs/services/model/ListMultipartUploadsRequest;->getEncodingType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6e

    .line 160
    const-string v0, "encoding-type"

    invoke-virtual {p1}, Lcom/obs/services/model/ListMultipartUploadsRequest;->getEncodingType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    :cond_6e
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    .line 164
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequestPaymentHeaders(Lcom/obs/services/model/GenericRequest;Ljava/util/Map;Lcom/obs/services/internal/IHeaders;)Ljava/util/Map;

    move-result-object v4

    .line 165
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getUserHeaders()Ljava/util/HashMap;

    move-result-object v5

    move-object v0, p0

    .line 163
    invoke-virtual/range {v0 .. v5}, Lcom/obs/services/internal/RestStorageService;->performRestGet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lokhttp3/Response;

    move-result-object p0

    .line 167
    invoke-virtual {v0, p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->verifyResponseContentType(Lokhttp3/Response;)V

    .line 169
    invoke-virtual {v0}, Lcom/obs/services/internal/RestStorageService;->getXmlResponseSaxParser()Lcom/obs/services/internal/handler/XmlResponsesSaxParser;

    move-result-object v1

    new-instance v2, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;

    invoke-direct {v2, p0}, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;-><init>(Lokhttp3/Response;)V

    const-class v3, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListMultipartUploadsHandler;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->parse(Ljava/io/InputStream;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListMultipartUploadsHandler;

    .line 173
    new-instance v2, Lcom/obs/services/model/MultipartUploadListing$Builder;

    invoke-direct {v2}, Lcom/obs/services/model/MultipartUploadListing$Builder;-><init>()V

    .line 174
    invoke-virtual {v1}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListMultipartUploadsHandler;->getBucketName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_ad

    .line 175
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v3

    goto :goto_b1

    :cond_ad
    invoke-virtual {v1}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListMultipartUploadsHandler;->getBucketName()Ljava/lang/String;

    move-result-object v3

    .line 174
    :goto_b1
    invoke-virtual {v2, v3}, Lcom/obs/services/model/MultipartUploadListing$Builder;->bucketName(Ljava/lang/String;)Lcom/obs/services/model/MultipartUploadListing$Builder;

    move-result-object v2

    .line 176
    invoke-virtual {v1}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListMultipartUploadsHandler;->getKeyMarker()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_c0

    .line 177
    invoke-virtual {p1}, Lcom/obs/services/model/ListMultipartUploadsRequest;->getKeyMarker()Ljava/lang/String;

    move-result-object v3

    goto :goto_c4

    :cond_c0
    invoke-virtual {v1}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListMultipartUploadsHandler;->getKeyMarker()Ljava/lang/String;

    move-result-object v3

    .line 176
    :goto_c4
    invoke-virtual {v2, v3}, Lcom/obs/services/model/MultipartUploadListing$Builder;->keyMarker(Ljava/lang/String;)Lcom/obs/services/model/MultipartUploadListing$Builder;

    move-result-object v2

    .line 178
    invoke-virtual {v1}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListMultipartUploadsHandler;->getUploadIdMarker()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_d3

    .line 179
    invoke-virtual {p1}, Lcom/obs/services/model/ListMultipartUploadsRequest;->getUploadIdMarker()Ljava/lang/String;

    move-result-object v3

    goto :goto_d7

    :cond_d3
    invoke-virtual {v1}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListMultipartUploadsHandler;->getUploadIdMarker()Ljava/lang/String;

    move-result-object v3

    .line 178
    :goto_d7
    invoke-virtual {v2, v3}, Lcom/obs/services/model/MultipartUploadListing$Builder;->uploadIdMarker(Ljava/lang/String;)Lcom/obs/services/model/MultipartUploadListing$Builder;

    move-result-object v2

    .line 180
    invoke-virtual {v1}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListMultipartUploadsHandler;->getNextKeyMarker()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/obs/services/model/MultipartUploadListing$Builder;->nextKeyMarker(Ljava/lang/String;)Lcom/obs/services/model/MultipartUploadListing$Builder;

    move-result-object v2

    .line 181
    invoke-virtual {v1}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListMultipartUploadsHandler;->getNextUploadIdMarker()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/obs/services/model/MultipartUploadListing$Builder;->nextUploadIdMarker(Ljava/lang/String;)Lcom/obs/services/model/MultipartUploadListing$Builder;

    move-result-object v2

    .line 182
    invoke-virtual {v1}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListMultipartUploadsHandler;->getPrefix()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_f6

    .line 183
    invoke-virtual {p1}, Lcom/obs/services/model/ListMultipartUploadsRequest;->getPrefix()Ljava/lang/String;

    move-result-object v3

    goto :goto_fa

    :cond_f6
    invoke-virtual {v1}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListMultipartUploadsHandler;->getPrefix()Ljava/lang/String;

    move-result-object v3

    .line 182
    :goto_fa
    invoke-virtual {v2, v3}, Lcom/obs/services/model/MultipartUploadListing$Builder;->prefix(Ljava/lang/String;)Lcom/obs/services/model/MultipartUploadListing$Builder;

    move-result-object v2

    .line 184
    invoke-virtual {v1}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListMultipartUploadsHandler;->getMaxUploads()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/obs/services/model/MultipartUploadListing$Builder;->maxUploads(I)Lcom/obs/services/model/MultipartUploadListing$Builder;

    move-result-object v2

    .line 185
    invoke-virtual {v1}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListMultipartUploadsHandler;->isTruncated()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/obs/services/model/MultipartUploadListing$Builder;->truncated(Z)Lcom/obs/services/model/MultipartUploadListing$Builder;

    move-result-object v2

    .line 186
    invoke-virtual {v1}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListMultipartUploadsHandler;->getMultipartUploadList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/obs/services/model/MultipartUploadListing$Builder;->multipartTaskList(Ljava/util/List;)Lcom/obs/services/model/MultipartUploadListing$Builder;

    move-result-object v2

    .line 187
    invoke-virtual {v1}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListMultipartUploadsHandler;->getDelimiter()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_121

    .line 188
    invoke-virtual {p1}, Lcom/obs/services/model/ListMultipartUploadsRequest;->getDelimiter()Ljava/lang/String;

    move-result-object p1

    goto :goto_125

    :cond_121
    invoke-virtual {v1}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListMultipartUploadsHandler;->getDelimiter()Ljava/lang/String;

    move-result-object p1

    .line 187
    :goto_125
    invoke-virtual {v2, p1}, Lcom/obs/services/model/MultipartUploadListing$Builder;->delimiter(Ljava/lang/String;)Lcom/obs/services/model/MultipartUploadListing$Builder;

    move-result-object p1

    .line 189
    invoke-virtual {v1}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListMultipartUploadsHandler;->getCommonPrefixes()Ljava/util/List;

    move-result-object v2

    .line 190
    invoke-virtual {v1}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListMultipartUploadsHandler;->getCommonPrefixes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 189
    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/obs/services/model/MultipartUploadListing$Builder;->commonPrefixes([Ljava/lang/String;)Lcom/obs/services/model/MultipartUploadListing$Builder;

    move-result-object p1

    .line 191
    invoke-virtual {p1}, Lcom/obs/services/model/MultipartUploadListing$Builder;->builder()Lcom/obs/services/model/MultipartUploadListing;

    move-result-object p1

    .line 192
    invoke-virtual {v0, p1, p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->setHeadersAndStatus(Lcom/obs/services/model/HeaderResponse;Lokhttp3/Response;)V

    return-object p1
.end method

.method protected listPartsImpl(Lcom/obs/services/model/ListPartsRequest;)Lcom/obs/services/model/ListPartsResult;
    .registers 9

    .line 197
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 198
    const-string v0, "uploadId"

    invoke-virtual {p1}, Lcom/obs/services/model/ListPartsRequest;->getUploadId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    invoke-virtual {p1}, Lcom/obs/services/model/ListPartsRequest;->getMaxParts()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 200
    invoke-virtual {p1}, Lcom/obs/services/model/ListPartsRequest;->getMaxParts()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "max-parts"

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    :cond_21
    invoke-virtual {p1}, Lcom/obs/services/model/ListPartsRequest;->getPartNumberMarker()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 203
    invoke-virtual {p1}, Lcom/obs/services/model/ListPartsRequest;->getPartNumberMarker()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "part-number-marker"

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    :cond_34
    invoke-virtual {p1}, Lcom/obs/services/model/ListPartsRequest;->getEncodingType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_43

    .line 206
    const-string v0, "encoding-type"

    invoke-virtual {p1}, Lcom/obs/services/model/ListPartsRequest;->getEncodingType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    :cond_43
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/obs/services/model/BaseObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v2

    .line 210
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v0

    const/4 v6, 0x0

    invoke-virtual {p0, p1, v6, v0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequestPaymentHeaders(Lcom/obs/services/model/GenericRequest;Ljava/util/Map;Lcom/obs/services/internal/IHeaders;)Ljava/util/Map;

    move-result-object v4

    .line 211
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getUserHeaders()Ljava/util/HashMap;

    move-result-object v5

    move-object v0, p0

    .line 209
    invoke-virtual/range {v0 .. v5}, Lcom/obs/services/internal/RestStorageService;->performRestGet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lokhttp3/Response;

    move-result-object p0

    .line 213
    invoke-virtual {v0, p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->verifyResponseContentType(Lokhttp3/Response;)V

    .line 215
    invoke-virtual {v0}, Lcom/obs/services/internal/RestStorageService;->getXmlResponseSaxParser()Lcom/obs/services/internal/handler/XmlResponsesSaxParser;

    move-result-object v1

    new-instance v2, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;

    invoke-direct {v2, p0}, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;-><init>(Lokhttp3/Response;)V

    const-class v3, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListPartsHandler;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->parse(Ljava/io/InputStream;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListPartsHandler;

    .line 218
    new-instance v2, Lcom/obs/services/model/ListPartsResult$Builder;

    invoke-direct {v2}, Lcom/obs/services/model/ListPartsResult$Builder;-><init>()V

    .line 219
    invoke-virtual {v1}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListPartsHandler;->getBucketName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_86

    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v3

    goto :goto_8a

    :cond_86
    invoke-virtual {v1}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListPartsHandler;->getBucketName()Ljava/lang/String;

    move-result-object v3

    :goto_8a
    invoke-virtual {v2, v3}, Lcom/obs/services/model/ListPartsResult$Builder;->bucket(Ljava/lang/String;)Lcom/obs/services/model/ListPartsResult$Builder;

    move-result-object v2

    .line 220
    invoke-virtual {v1}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListPartsHandler;->getObjectKey()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_99

    invoke-virtual {p1}, Lcom/obs/services/model/BaseObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v3

    goto :goto_9d

    :cond_99
    invoke-virtual {v1}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListPartsHandler;->getObjectKey()Ljava/lang/String;

    move-result-object v3

    :goto_9d
    invoke-virtual {v2, v3}, Lcom/obs/services/model/ListPartsResult$Builder;->key(Ljava/lang/String;)Lcom/obs/services/model/ListPartsResult$Builder;

    move-result-object v2

    .line 221
    invoke-virtual {v1}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListPartsHandler;->getUploadId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_ac

    invoke-virtual {p1}, Lcom/obs/services/model/ListPartsRequest;->getUploadId()Ljava/lang/String;

    move-result-object v3

    goto :goto_b0

    :cond_ac
    invoke-virtual {v1}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListPartsHandler;->getUploadId()Ljava/lang/String;

    move-result-object v3

    :goto_b0
    invoke-virtual {v2, v3}, Lcom/obs/services/model/ListPartsResult$Builder;->uploadId(Ljava/lang/String;)Lcom/obs/services/model/ListPartsResult$Builder;

    move-result-object v2

    .line 222
    invoke-virtual {v1}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListPartsHandler;->getInitiator()Lcom/obs/services/model/Owner;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/obs/services/model/ListPartsResult$Builder;->initiator(Lcom/obs/services/model/Owner;)Lcom/obs/services/model/ListPartsResult$Builder;

    move-result-object v2

    .line 223
    invoke-virtual {v1}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListPartsHandler;->getOwner()Lcom/obs/services/model/Owner;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/obs/services/model/ListPartsResult$Builder;->owner(Lcom/obs/services/model/Owner;)Lcom/obs/services/model/ListPartsResult$Builder;

    move-result-object v2

    .line 224
    invoke-virtual {v1}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListPartsHandler;->getStorageClass()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/obs/services/model/StorageClassEnum;->getValueFromCode(Ljava/lang/String;)Lcom/obs/services/model/StorageClassEnum;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/obs/services/model/ListPartsResult$Builder;->storageClass(Lcom/obs/services/model/StorageClassEnum;)Lcom/obs/services/model/ListPartsResult$Builder;

    move-result-object v2

    .line 225
    invoke-virtual {v1}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListPartsHandler;->getMultiPartList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/obs/services/model/ListPartsResult$Builder;->multipartList(Ljava/util/List;)Lcom/obs/services/model/ListPartsResult$Builder;

    move-result-object v2

    .line 226
    invoke-virtual {v1}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListPartsHandler;->getMaxParts()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/obs/services/model/ListPartsResult$Builder;->maxParts(Ljava/lang/Integer;)Lcom/obs/services/model/ListPartsResult$Builder;

    move-result-object v2

    .line 227
    invoke-virtual {v1}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListPartsHandler;->isTruncated()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/obs/services/model/ListPartsResult$Builder;->isTruncated(Z)Lcom/obs/services/model/ListPartsResult$Builder;

    move-result-object v2

    .line 228
    invoke-virtual {v1}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListPartsHandler;->getPartNumberMarker()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_102

    .line 229
    invoke-virtual {p1}, Lcom/obs/services/model/ListPartsRequest;->getPartNumberMarker()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_f9

    goto :goto_106

    :cond_f9
    invoke-virtual {p1}, Lcom/obs/services/model/ListPartsRequest;->getPartNumberMarker()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_106

    .line 230
    :cond_102
    invoke-virtual {v1}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListPartsHandler;->getPartNumberMarker()Ljava/lang/String;

    move-result-object v6

    .line 228
    :goto_106
    invoke-virtual {v2, v6}, Lcom/obs/services/model/ListPartsResult$Builder;->partNumberMarker(Ljava/lang/String;)Lcom/obs/services/model/ListPartsResult$Builder;

    move-result-object p1

    .line 231
    invoke-virtual {v1}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListPartsHandler;->getNextPartNumberMarker()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/obs/services/model/ListPartsResult$Builder;->nextPartNumberMarker(Ljava/lang/String;)Lcom/obs/services/model/ListPartsResult$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/obs/services/model/ListPartsResult$Builder;->builder()Lcom/obs/services/model/ListPartsResult;

    move-result-object p1

    .line 233
    invoke-virtual {v0, p1, p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->setHeadersAndStatus(Lcom/obs/services/model/HeaderResponse;Lokhttp3/Response;)V

    return-object p1
.end method

.method protected uploadPartImpl(Lcom/obs/services/model/UploadPartRequest;)Lcom/obs/services/model/UploadPartResult;
    .registers 5

    .line 241
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/RequestConvertor;->transUploadPartRequest(Lcom/obs/services/model/UploadPartRequest;)Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_3e

    .line 242
    :try_start_4
    invoke-virtual {p0, v0, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transObjectRequestWithResult(Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;Lcom/obs/services/model/BaseObjectRequest;)Lcom/obs/services/internal/trans/NewTransResult;

    move-result-object v1

    .line 243
    invoke-virtual {p0, v1}, Lcom/obs/services/internal/RestStorageService;->performRequest(Lcom/obs/services/internal/trans/NewTransResult;)Lokhttp3/Response;

    move-result-object v1
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_3c

    if-eqz v0, :cond_23

    .line 245
    invoke-virtual {v0}, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;->getBody()Lokhttp3/RequestBody;

    move-result-object v2

    if-eqz v2, :cond_23

    invoke-virtual {p1}, Lcom/obs/services/model/UploadPartRequest;->isAutoClose()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 246
    invoke-virtual {v0}, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;->getBody()Lokhttp3/RequestBody;

    move-result-object v0

    check-cast v0, Lcom/obs/services/internal/RepeatableRequestEntity;

    .line 247
    invoke-static {v0}, Lcom/obs/services/internal/utils/ServiceUtils;->closeStream(Ljava/io/Closeable;)V

    .line 250
    :cond_23
    new-instance v0, Lcom/obs/services/model/UploadPartResult;

    invoke-direct {v0}, Lcom/obs/services/model/UploadPartResult;-><init>()V

    .line 251
    const-string v2, "ETag"

    invoke-virtual {v1, v2}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/obs/services/model/UploadPartResult;->setEtag(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p1}, Lcom/obs/services/model/UploadPartRequest;->getPartNumber()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/obs/services/model/UploadPartResult;->setPartNumber(I)V

    .line 253
    invoke-virtual {p0, v0, v1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->setHeadersAndStatus(Lcom/obs/services/model/HeaderResponse;Lokhttp3/Response;)V

    return-object v0

    :catchall_3c
    move-exception p0

    goto :goto_40

    :catchall_3e
    move-exception p0

    const/4 v0, 0x0

    :goto_40
    if-eqz v0, :cond_57

    .line 245
    invoke-virtual {v0}, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;->getBody()Lokhttp3/RequestBody;

    move-result-object v1

    if-eqz v1, :cond_57

    invoke-virtual {p1}, Lcom/obs/services/model/UploadPartRequest;->isAutoClose()Z

    move-result p1

    if-eqz p1, :cond_57

    .line 246
    invoke-virtual {v0}, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;->getBody()Lokhttp3/RequestBody;

    move-result-object p1

    check-cast p1, Lcom/obs/services/internal/RepeatableRequestEntity;

    .line 247
    invoke-static {p1}, Lcom/obs/services/internal/utils/ServiceUtils;->closeStream(Ljava/io/Closeable;)V

    .line 249
    :cond_57
    throw p0
.end method
