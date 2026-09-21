.class public abstract Lcom/obs/services/internal/service/ObsObjectService;
.super Lcom/obs/services/internal/service/ObsMultipartObjectService;
.source "SourceFile"


# static fields
.field private static final log:Lcom/obs/log/ILogger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 55
    const-class v0, Lcom/obs/services/internal/service/ObsObjectService;

    invoke-static {v0}, Lcom/obs/log/LoggerBuilder;->getLogger(Ljava/lang/Class;)Lcom/obs/log/ILogger;

    move-result-object v0

    sput-object v0, Lcom/obs/services/internal/service/ObsObjectService;->log:Lcom/obs/log/ILogger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Lcom/obs/services/internal/service/ObsMultipartObjectService;-><init>()V

    return-void
.end method


# virtual methods
.method protected appendObjectImpl(Lcom/obs/services/model/AppendObjectRequest;)Lcom/obs/services/model/AppendObjectResult;
    .registers 15

    .line 125
    invoke-virtual {p1}, Lcom/obs/services/model/PutObjectBasicRequest;->getAcl()Lcom/obs/services/model/AccessControlList;

    move-result-object v3

    .line 127
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/RequestConvertor;->transAppendObjectRequest(Lcom/obs/services/model/AppendObjectRequest;)Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;

    move-result-object v1
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_ae

    .line 129
    :try_start_8
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;->getHeaders()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/obs/services/internal/service/AclHeaderConvertor;->prepareRESTHeaderAcl(Ljava/lang/String;Ljava/util/Map;Lcom/obs/services/model/AccessControlList;)Z

    move-result v0

    .line 131
    invoke-virtual {p0, v1, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transObjectRequestWithResult(Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;Lcom/obs/services/model/BaseObjectRequest;)Lcom/obs/services/internal/trans/NewTransResult;

    move-result-object v2

    .line 132
    invoke-virtual {p0, v2}, Lcom/obs/services/internal/RestStorageService;->performRequest(Lcom/obs/services/internal/trans/NewTransResult;)Lokhttp3/Response;

    move-result-object v2
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_ab

    .line 134
    invoke-virtual {v1}, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;->getBody()Lokhttp3/RequestBody;

    move-result-object v4

    if-eqz v4, :cond_31

    invoke-virtual {p1}, Lcom/obs/services/model/PutObjectRequest;->isAutoClose()Z

    move-result v4

    if-eqz v4, :cond_31

    .line 135
    invoke-virtual {v1}, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;->getBody()Lokhttp3/RequestBody;

    move-result-object v1

    check-cast v1, Lcom/obs/services/internal/RepeatableRequestEntity;

    .line 136
    invoke-static {v1}, Lcom/obs/services/internal/utils/ServiceUtils;->closeStream(Ljava/io/Closeable;)V

    .line 139
    :cond_31
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v1

    invoke-interface {v1}, Lcom/obs/services/internal/IHeaders;->nextPositionHeader()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 140
    new-instance v4, Lcom/obs/services/model/AppendObjectResult;

    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/obs/services/model/BaseObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ETag"

    .line 141
    invoke-virtual {v2, v7}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v1, :cond_58

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    goto :goto_5a

    :cond_58
    const-wide/16 v8, -0x1

    .line 142
    :goto_5a
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v1

    .line 143
    invoke-interface {v1}, Lcom/obs/services/internal/IHeaders;->storageClassHeader()Ljava/lang/String;

    move-result-object v1

    .line 142
    invoke-virtual {v2, v1}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/obs/services/model/StorageClassEnum;->getValueFromCode(Ljava/lang/String;)Lcom/obs/services/model/StorageClassEnum;

    move-result-object v10

    .line 144
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/obs/services/model/BaseObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1}, Lcom/obs/services/model/BaseObjectRequest;->getIsIgnorePort()Z

    move-result v12

    invoke-virtual {p0, v1, v11, v12}, Lcom/obs/services/internal/service/ObsObjectBaseService;->getObjectUrl(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v11

    invoke-direct/range {v4 .. v11}, Lcom/obs/services/model/AppendObjectResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/obs/services/model/StorageClassEnum;Ljava/lang/String;)V

    move-object v6, v4

    .line 146
    invoke-virtual {p0, v6, v2}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->setHeadersAndStatus(Lcom/obs/services/model/HeaderResponse;Lokhttp3/Response;)V

    if-nez v0, :cond_aa

    if-eqz v3, :cond_aa

    .line 149
    :try_start_89
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/obs/services/model/BaseObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->isRequesterPays()Z

    move-result v5

    const/4 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/obs/services/internal/service/AclHeaderConvertor;->putAclImpl(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/model/AccessControlList;Ljava/lang/String;Z)V
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_9a} :catch_9b

    return-object v6

    :catch_9b
    move-exception v0

    move-object p0, v0

    .line 151
    sget-object p1, Lcom/obs/services/internal/service/ObsObjectService;->log:Lcom/obs/log/ILogger;

    invoke-interface {p1}, Lcom/obs/log/ILogger;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 152
    const-string v0, "Try to set object acl error"

    invoke-interface {p1, v0, p0}, Lcom/obs/log/ILogger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_aa
    return-object v6

    :catchall_ab
    move-exception v0

    move-object p0, v0

    goto :goto_b1

    :catchall_ae
    move-exception v0

    move-object p0, v0

    const/4 v1, 0x0

    :goto_b1
    if-eqz v1, :cond_c8

    .line 134
    invoke-virtual {v1}, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;->getBody()Lokhttp3/RequestBody;

    move-result-object v0

    if-eqz v0, :cond_c8

    invoke-virtual {p1}, Lcom/obs/services/model/PutObjectRequest;->isAutoClose()Z

    move-result p1

    if-eqz p1, :cond_c8

    .line 135
    invoke-virtual {v1}, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;->getBody()Lokhttp3/RequestBody;

    move-result-object p1

    check-cast p1, Lcom/obs/services/internal/RepeatableRequestEntity;

    .line 136
    invoke-static {p1}, Lcom/obs/services/internal/utils/ServiceUtils;->closeStream(Ljava/io/Closeable;)V

    .line 138
    :cond_c8
    throw p0
.end method

.method protected deleteObjectTaggingImpl(Lcom/obs/services/model/ObjectTaggingRequest;)Lcom/obs/services/model/HeaderResponse;
    .registers 8

    .line 233
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 234
    sget-object v0, Lcom/obs/services/model/SpecialParamEnum;->TAGGING:Lcom/obs/services/model/SpecialParamEnum;

    invoke-virtual {v0}, Lcom/obs/services/model/SpecialParamEnum;->getOriginalStringCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    invoke-virtual {p1}, Lcom/obs/services/model/ObjectTaggingRequest;->getObjectVersionId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_29

    invoke-virtual {p1}, Lcom/obs/services/model/ObjectTaggingRequest;->getObjectVersionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 236
    const-string v0, "versionId"

    invoke-virtual {p1}, Lcom/obs/services/model/ObjectTaggingRequest;->getObjectVersionId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    :cond_29
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/obs/services/model/BaseObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v2

    .line 239
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {p0, p1, v4, v0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequestPaymentHeaders(Lcom/obs/services/model/GenericRequest;Ljava/util/Map;Lcom/obs/services/internal/IHeaders;)Ljava/util/Map;

    move-result-object v4

    .line 240
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getUserHeaders()Ljava/util/HashMap;

    move-result-object v5

    move-object v0, p0

    .line 238
    invoke-virtual/range {v0 .. v5}, Lcom/obs/services/internal/RestStorageService;->performRestDelete(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lokhttp3/Response;

    move-result-object p0

    .line 241
    invoke-virtual {v0, p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->build(Lokhttp3/Response;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method protected getObjectTaggingImpl(Lcom/obs/services/model/ObjectTaggingRequest;)Lcom/obs/services/model/ObjectTagResult;
    .registers 8

    .line 194
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 195
    sget-object v0, Lcom/obs/services/model/SpecialParamEnum;->TAGGING:Lcom/obs/services/model/SpecialParamEnum;

    invoke-virtual {v0}, Lcom/obs/services/model/SpecialParamEnum;->getOriginalStringCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    invoke-virtual {p1}, Lcom/obs/services/model/ObjectTaggingRequest;->getObjectVersionId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_29

    invoke-virtual {p1}, Lcom/obs/services/model/ObjectTaggingRequest;->getObjectVersionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 197
    const-string v0, "versionId"

    invoke-virtual {p1}, Lcom/obs/services/model/ObjectTaggingRequest;->getObjectVersionId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    :cond_29
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/obs/services/model/BaseObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v2

    .line 200
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {p0, p1, v4, v0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequestPaymentHeaders(Lcom/obs/services/model/GenericRequest;Ljava/util/Map;Lcom/obs/services/internal/IHeaders;)Ljava/util/Map;

    move-result-object v4

    .line 201
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getUserHeaders()Ljava/util/HashMap;

    move-result-object v5

    move-object v0, p0

    .line 199
    invoke-virtual/range {v0 .. v5}, Lcom/obs/services/internal/RestStorageService;->performRestGet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lokhttp3/Response;

    move-result-object p0

    .line 203
    invoke-virtual {v0, p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->verifyResponseContentType(Lokhttp3/Response;)V

    .line 205
    invoke-virtual {v0}, Lcom/obs/services/internal/RestStorageService;->getXmlResponseSaxParser()Lcom/obs/services/internal/handler/XmlResponsesSaxParser;

    move-result-object p1

    new-instance v1, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;

    invoke-direct {v1, p0}, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;-><init>(Lokhttp3/Response;)V

    const-class v2, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ObjectTagInfoHandler;

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->parse(Ljava/io/InputStream;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ObjectTagInfoHandler;

    .line 206
    invoke-virtual {p1}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ObjectTagInfoHandler;->getObjectTagInfo()Lcom/obs/services/model/ObjectTagResult;

    move-result-object p1

    .line 207
    invoke-virtual {v0, p1, p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->setHeadersAndStatus(Lcom/obs/services/model/HeaderResponse;Lokhttp3/Response;)V

    return-object p1
.end method

.method protected modifyObjectImpl(Lcom/obs/services/model/ModifyObjectRequest;)Lcom/obs/services/model/ModifyObjectResult;
    .registers 9

    .line 164
    invoke-virtual {p1}, Lcom/obs/services/model/PutObjectBasicRequest;->getAcl()Lcom/obs/services/model/AccessControlList;

    move-result-object v3

    .line 166
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/RequestConvertor;->transModifyObjectRequest(Lcom/obs/services/model/ModifyObjectRequest;)Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;

    move-result-object v1
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_6e

    .line 168
    :try_start_8
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;->getHeaders()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/obs/services/internal/service/AclHeaderConvertor;->prepareRESTHeaderAcl(Ljava/lang/String;Ljava/util/Map;Lcom/obs/services/model/AccessControlList;)Z

    move-result v0

    .line 170
    invoke-virtual {p0, v1, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transObjectRequestWithResult(Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;Lcom/obs/services/model/BaseObjectRequest;)Lcom/obs/services/internal/trans/NewTransResult;

    move-result-object v2

    .line 171
    invoke-virtual {p0, v2}, Lcom/obs/services/internal/RestStorageService;->performRequest(Lcom/obs/services/internal/trans/NewTransResult;)Lokhttp3/Response;

    move-result-object v2
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_6b

    .line 173
    invoke-virtual {v1}, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;->getBody()Lokhttp3/RequestBody;

    move-result-object v4

    if-eqz v4, :cond_39

    invoke-virtual {p1}, Lcom/obs/services/model/PutObjectRequest;->isAutoClose()Z

    move-result v4

    if-eqz v4, :cond_39

    .line 174
    invoke-virtual {v1}, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;->getBody()Lokhttp3/RequestBody;

    move-result-object v4

    instance-of v4, v4, Ljava/io/Closeable;

    if-eqz v4, :cond_39

    .line 175
    invoke-virtual {v1}, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;->getBody()Lokhttp3/RequestBody;

    move-result-object v1

    check-cast v1, Ljava/io/Closeable;

    invoke-static {v1}, Lcom/obs/services/internal/utils/ServiceUtils;->closeStream(Ljava/io/Closeable;)V

    .line 179
    :cond_39
    new-instance v6, Lcom/obs/services/model/ModifyObjectResult;

    invoke-direct {v6}, Lcom/obs/services/model/ModifyObjectResult;-><init>()V

    .line 181
    invoke-virtual {p1}, Lcom/obs/services/model/BaseObjectRequest;->isEncodeHeaders()Z

    move-result v1

    invoke-virtual {p0, v6, v2, v1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->setHeadersAndStatus(Lcom/obs/services/model/HeaderResponse;Lokhttp3/Response;Z)V

    if-nez v0, :cond_6a

    if-eqz v3, :cond_6a

    .line 184
    :try_start_49
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/obs/services/model/BaseObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->isRequesterPays()Z

    move-result v5

    const/4 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/obs/services/internal/service/AclHeaderConvertor;->putAclImpl(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/model/AccessControlList;Ljava/lang/String;Z)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_5a} :catch_5b

    return-object v6

    :catch_5b
    move-exception v0

    move-object p0, v0

    .line 186
    sget-object p1, Lcom/obs/services/internal/service/ObsObjectService;->log:Lcom/obs/log/ILogger;

    invoke-interface {p1}, Lcom/obs/log/ILogger;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 187
    const-string v0, "Try to set object acl error"

    invoke-interface {p1, v0, p0}, Lcom/obs/log/ILogger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_6a
    return-object v6

    :catchall_6b
    move-exception v0

    move-object p0, v0

    goto :goto_71

    :catchall_6e
    move-exception v0

    move-object p0, v0

    const/4 v1, 0x0

    :goto_71
    if-eqz v1, :cond_90

    .line 173
    invoke-virtual {v1}, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;->getBody()Lokhttp3/RequestBody;

    move-result-object v0

    if-eqz v0, :cond_90

    invoke-virtual {p1}, Lcom/obs/services/model/PutObjectRequest;->isAutoClose()Z

    move-result p1

    if-eqz p1, :cond_90

    .line 174
    invoke-virtual {v1}, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;->getBody()Lokhttp3/RequestBody;

    move-result-object p1

    instance-of p1, p1, Ljava/io/Closeable;

    if-eqz p1, :cond_90

    .line 175
    invoke-virtual {v1}, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;->getBody()Lokhttp3/RequestBody;

    move-result-object p1

    check-cast p1, Ljava/io/Closeable;

    invoke-static {p1}, Lcom/obs/services/internal/utils/ServiceUtils;->closeStream(Ljava/io/Closeable;)V

    .line 178
    :cond_90
    throw p0
.end method

.method protected renameObjectImpl(Lcom/obs/services/model/RenameObjectRequest;)Lcom/obs/services/model/RenameObjectResult;
    .registers 5

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 74
    sget-object v1, Lcom/obs/services/model/SpecialParamEnum;->RENAME:Lcom/obs/services/model/SpecialParamEnum;

    invoke-virtual {v1}, Lcom/obs/services/model/SpecialParamEnum;->getOriginalStringCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string v1, "name"

    invoke-virtual {p1}, Lcom/obs/services/model/RenameObjectRequest;->getNewObjectKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v1

    const/4 v2, 0x0

    .line 77
    invoke-virtual {p0, p1, v2, v1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequestPaymentHeaders(Lcom/obs/services/model/GenericRequest;Ljava/util/Map;Lcom/obs/services/internal/IHeaders;)Ljava/util/Map;

    move-result-object v1

    .line 80
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transObjectRequest(Lcom/obs/services/model/BaseObjectRequest;)Lcom/obs/services/internal/trans/NewTransResult;

    move-result-object p1

    .line 81
    invoke-virtual {p1, v0}, Lcom/obs/services/internal/trans/NewTransResult;->setParams(Ljava/util/Map;)V

    .line 82
    invoke-virtual {p1, v1}, Lcom/obs/services/internal/trans/NewTransResult;->setHeaders(Ljava/util/Map;)V

    .line 83
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/RestStorageService;->performRequest(Lcom/obs/services/internal/trans/NewTransResult;)Lokhttp3/Response;

    move-result-object p1

    .line 84
    new-instance v0, Lcom/obs/services/model/RenameObjectResult;

    invoke-direct {v0}, Lcom/obs/services/model/RenameObjectResult;-><init>()V

    .line 85
    invoke-virtual {p0, v0, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->setHeadersAndStatus(Lcom/obs/services/model/HeaderResponse;Lokhttp3/Response;)V

    return-object v0
.end method

.method protected restoreObjectImpl(Lcom/obs/services/model/RestoreObjectRequest;)Lcom/obs/services/model/RestoreObjectRequest$RestoreObjectStatus;
    .registers 2

    .line 90
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsObjectService;->restoreObjectV2Impl(Lcom/obs/services/model/RestoreObjectRequest;)Lcom/obs/services/model/RestoreObjectResult;

    move-result-object p1

    .line 91
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/RequestConvertor;->transRestoreObjectResultToRestoreObjectStatus(Lcom/obs/services/model/RestoreObjectResult;)Lcom/obs/services/model/RestoreObjectRequest$RestoreObjectStatus;

    move-result-object p0

    return-object p0
.end method

.method protected restoreObjectV2Impl(Lcom/obs/services/model/RestoreObjectRequest;)Lcom/obs/services/model/RestoreObjectResult;
    .registers 7

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 97
    sget-object v1, Lcom/obs/services/model/SpecialParamEnum;->RESTORE:Lcom/obs/services/model/SpecialParamEnum;

    invoke-virtual {v1}, Lcom/obs/services/model/SpecialParamEnum;->getOriginalStringCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    invoke-virtual {p1}, Lcom/obs/services/model/RestoreObjectRequest;->getVersionId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 99
    const-string v1, "versionId"

    invoke-virtual {p1}, Lcom/obs/services/model/RestoreObjectRequest;->getVersionId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    :cond_1f
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 103
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/obs/services/internal/RestStorageService;->getIConvertor(Ljava/lang/String;)Lcom/obs/services/internal/IConvertor;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/obs/services/internal/IConvertor;->transRestoreObjectRequest(Lcom/obs/services/model/RestoreObjectRequest;)Ljava/lang/String;

    move-result-object v2

    .line 104
    const-string v3, "Content-MD5"

    invoke-static {v2}, Lcom/obs/services/internal/utils/ServiceUtils;->computeMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string v3, "Content-Type"

    const-string v4, "application/xml"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v3

    invoke-virtual {p0, p1, v1, v3}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequestPaymentHeaders(Lcom/obs/services/model/GenericRequest;Ljava/util/Map;Lcom/obs/services/internal/IHeaders;)Ljava/util/Map;

    .line 108
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transObjectRequest(Lcom/obs/services/model/BaseObjectRequest;)Lcom/obs/services/internal/trans/NewTransResult;

    move-result-object v3

    .line 109
    invoke-virtual {v3, v0}, Lcom/obs/services/internal/trans/NewTransResult;->setParams(Ljava/util/Map;)V

    .line 110
    invoke-virtual {v3, v1}, Lcom/obs/services/internal/trans/NewTransResult;->setHeaders(Ljava/util/Map;)V

    .line 111
    invoke-virtual {p0, v4, v2}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->createRequestBody(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/obs/services/internal/trans/NewTransResult;->setBody(Lokhttp3/RequestBody;)V

    .line 112
    invoke-virtual {p0, v3}, Lcom/obs/services/internal/RestStorageService;->performRequest(Lcom/obs/services/internal/trans/NewTransResult;)Lokhttp3/Response;

    move-result-object v0

    .line 114
    new-instance v1, Lcom/obs/services/model/RestoreObjectResult;

    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    .line 115
    invoke-virtual {p1}, Lcom/obs/services/model/BaseObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/obs/services/model/RestoreObjectRequest;->getVersionId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, v3, p1}, Lcom/obs/services/model/RestoreObjectResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0, v1, v0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->setHeadersAndStatus(Lcom/obs/services/model/HeaderResponse;Lokhttp3/Response;)V

    return-object v1
.end method

.method protected setObjectTaggingImpl(Lcom/obs/services/model/ObjectTaggingRequest;)Lcom/obs/services/model/HeaderResponse;
    .registers 7

    .line 211
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 212
    sget-object v1, Lcom/obs/services/model/SpecialParamEnum;->TAGGING:Lcom/obs/services/model/SpecialParamEnum;

    invoke-virtual {v1}, Lcom/obs/services/model/SpecialParamEnum;->getOriginalStringCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    invoke-virtual {p1}, Lcom/obs/services/model/ObjectTaggingRequest;->getObjectVersionId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_29

    invoke-virtual {p1}, Lcom/obs/services/model/ObjectTaggingRequest;->getObjectVersionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 214
    const-string v1, "versionId"

    invoke-virtual {p1}, Lcom/obs/services/model/ObjectTaggingRequest;->getObjectVersionId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    :cond_29
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 218
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/obs/services/internal/RestStorageService;->getIConvertor(Ljava/lang/String;)Lcom/obs/services/internal/IConvertor;

    move-result-object v2

    invoke-virtual {p1}, Lcom/obs/services/model/ObjectTaggingRequest;->getObjectTagInfo()Lcom/obs/services/model/ObjectTagResult;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/obs/services/internal/IConvertor;->transObjectTagInfo(Lcom/obs/services/model/ObjectTagResult;)Ljava/lang/String;

    move-result-object v2

    .line 220
    const-string v3, "Content-MD5"

    invoke-static {v2}, Lcom/obs/services/internal/utils/ServiceUtils;->computeMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    const-string v3, "Content-Type"

    const-string v4, "application/xml"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v3

    invoke-virtual {p0, p1, v1, v3}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequestPaymentHeaders(Lcom/obs/services/model/GenericRequest;Ljava/util/Map;Lcom/obs/services/internal/IHeaders;)Ljava/util/Map;

    .line 225
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transObjectRequest(Lcom/obs/services/model/BaseObjectRequest;)Lcom/obs/services/internal/trans/NewTransResult;

    move-result-object p1

    .line 226
    invoke-virtual {p1, v0}, Lcom/obs/services/internal/trans/NewTransResult;->setParams(Ljava/util/Map;)V

    .line 227
    invoke-virtual {p1, v1}, Lcom/obs/services/internal/trans/NewTransResult;->setHeaders(Ljava/util/Map;)V

    .line 228
    invoke-virtual {p0, v4, v2}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->createRequestBody(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/obs/services/internal/trans/NewTransResult;->setBody(Lokhttp3/RequestBody;)V

    .line 229
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/RestStorageService;->performRequest(Lcom/obs/services/internal/trans/NewTransResult;)Lokhttp3/Response;

    move-result-object p1

    .line 230
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->build(Lokhttp3/Response;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method protected truncateObjectImpl(Lcom/obs/services/model/TruncateObjectRequest;)Lcom/obs/services/model/TruncateObjectResult;
    .registers 5

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 59
    sget-object v1, Lcom/obs/services/model/SpecialParamEnum;->TRUNCATE:Lcom/obs/services/model/SpecialParamEnum;

    invoke-virtual {v1}, Lcom/obs/services/model/SpecialParamEnum;->getOriginalStringCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    invoke-virtual {p1}, Lcom/obs/services/model/TruncateObjectRequest;->getNewLength()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "length"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v1

    const/4 v2, 0x0

    .line 61
    invoke-virtual {p0, p1, v2, v1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequestPaymentHeaders(Lcom/obs/services/model/GenericRequest;Ljava/util/Map;Lcom/obs/services/internal/IHeaders;)Ljava/util/Map;

    move-result-object v1

    .line 63
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transObjectRequest(Lcom/obs/services/model/BaseObjectRequest;)Lcom/obs/services/internal/trans/NewTransResult;

    move-result-object p1

    .line 64
    invoke-virtual {p1, v1}, Lcom/obs/services/internal/trans/NewTransResult;->setHeaders(Ljava/util/Map;)V

    .line 65
    invoke-virtual {p1, v0}, Lcom/obs/services/internal/trans/NewTransResult;->setParams(Ljava/util/Map;)V

    .line 66
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/RestStorageService;->performRequest(Lcom/obs/services/internal/trans/NewTransResult;)Lokhttp3/Response;

    move-result-object p1

    .line 67
    new-instance v0, Lcom/obs/services/model/TruncateObjectResult;

    invoke-direct {v0}, Lcom/obs/services/model/TruncateObjectResult;-><init>()V

    .line 68
    invoke-virtual {p0, v0, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->setHeadersAndStatus(Lcom/obs/services/model/HeaderResponse;Lokhttp3/Response;)V

    return-object v0
.end method
