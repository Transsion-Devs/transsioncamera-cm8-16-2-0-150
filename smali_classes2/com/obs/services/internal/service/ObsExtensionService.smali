.class public abstract Lcom/obs/services/internal/service/ObsExtensionService;
.super Lcom/obs/services/internal/service/ObsFileService;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Lcom/obs/services/internal/service/ObsFileService;-><init>()V

    return-void
.end method

.method private performRestGet(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lokhttp3/Response;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lokhttp3/Response;"
        }
    .end annotation

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/obs/services/internal/RestStorageService;->getProviderCredentials()Lcom/obs/services/internal/security/ProviderCredentials;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/obs/services/internal/security/ProviderCredentials;->getLocalAuthType(Ljava/lang/String;)Lcom/obs/services/model/AuthTypeEnum;

    move-result-object v1

    sget-object v2, Lcom/obs/services/model/AuthTypeEnum;->OBS:Lcom/obs/services/model/AuthTypeEnum;

    if-eq v1, v2, :cond_14

    const-string v1, "x-amz-"

    goto :goto_16

    :cond_14
    const-string v1, "x-obs-"

    :goto_16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "oef-marker"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "yes"

    invoke-interface {p3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v4, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    .line 81
    invoke-virtual/range {v2 .. v8}, Lcom/obs/services/internal/RestStorageService;->performRestGet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Z)Lokhttp3/Response;

    move-result-object p0

    .line 83
    invoke-virtual {v2, p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->verifyResponseContentTypeForJson(Lokhttp3/Response;)V

    return-object p0
.end method


# virtual methods
.method protected createFetchJobImpl(Ljava/lang/String;Ljava/lang/String;)Lcom/oef/services/model/CreateAsynchFetchJobsResult;
    .registers 14

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 102
    sget-object v1, Lcom/oef/services/model/RequestParamEnum;->ASYNC_FETCH_JOBS:Lcom/oef/services/model/RequestParamEnum;

    invoke-virtual {v1}, Lcom/oef/services/model/RequestParamEnum;->getOriginalStringCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 105
    const-string v2, "Content-Type"

    const-string v3, "application/json"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/obs/services/internal/RestStorageService;->getProviderCredentials()Lcom/obs/services/internal/security/ProviderCredentials;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/obs/services/internal/security/ProviderCredentials;->getLocalAuthType(Ljava/lang/String;)Lcom/obs/services/model/AuthTypeEnum;

    move-result-object v4

    sget-object v5, Lcom/obs/services/model/AuthTypeEnum;->OBS:Lcom/obs/services/model/AuthTypeEnum;

    if-eq v4, v5, :cond_30

    const-string v4, "x-amz-"

    goto :goto_32

    :cond_30
    const-string v4, "x-obs-"

    :goto_32
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "oef-marker"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "yes"

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    new-instance v6, Lcom/obs/services/internal/trans/NewTransResult;

    invoke-direct {v6}, Lcom/obs/services/internal/trans/NewTransResult;-><init>()V

    .line 110
    invoke-virtual {v6, p1}, Lcom/obs/services/internal/trans/NewTransResult;->setBucketName(Ljava/lang/String;)V

    .line 111
    sget-object p1, Lcom/obs/services/model/HttpMethodEnum;->POST:Lcom/obs/services/model/HttpMethodEnum;

    invoke-virtual {v6, p1}, Lcom/obs/services/internal/trans/NewTransResult;->setHttpMethod(Lcom/obs/services/model/HttpMethodEnum;)V

    .line 112
    invoke-virtual {v6, v0}, Lcom/obs/services/internal/trans/NewTransResult;->setParams(Ljava/util/Map;)V

    .line 113
    invoke-virtual {v6, v1}, Lcom/obs/services/internal/trans/NewTransResult;->setHeaders(Ljava/util/Map;)V

    .line 114
    invoke-virtual {p0, v3, p2}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->createRequestBody(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-virtual {v6, p1}, Lcom/obs/services/internal/trans/NewTransResult;->setBody(Lokhttp3/RequestBody;)V

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v5, p0

    .line 115
    invoke-virtual/range {v5 .. v10}, Lcom/obs/services/internal/RestStorageService;->performRequest(Lcom/obs/services/internal/trans/NewTransResult;ZZZZ)Lokhttp3/Response;

    move-result-object p0

    .line 117
    invoke-virtual {v5, p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->verifyResponseContentTypeForJson(Lokhttp3/Response;)V

    .line 119
    invoke-static {p0}, Lcom/obs/services/internal/utils/RestUtils;->readBodyFromResponse(Lokhttp3/Response;)Ljava/lang/String;

    move-result-object p1

    .line 121
    new-instance p2, Lcom/oef/services/model/CreateAsynchFetchJobsResult;

    invoke-direct {p2}, Lcom/oef/services/model/CreateAsynchFetchJobsResult;-><init>()V

    .line 122
    invoke-static {p2, p1}, Lcom/obs/services/internal/utils/JSONChange;->jsonToObj(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oef/services/model/CreateAsynchFetchJobsResult;

    .line 124
    invoke-virtual {v5, p1, p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->setHeadersAndStatus(Lcom/obs/services/model/HeaderResponse;Lokhttp3/Response;)V

    return-object p1
.end method

.method protected deleteExtensionPolicyImpl(Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;
    .registers 10

    .line 88
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 89
    sget-object v0, Lcom/oef/services/model/RequestParamEnum;->EXTENSION_POLICY:Lcom/oef/services/model/RequestParamEnum;

    invoke-virtual {v0}, Lcom/oef/services/model/RequestParamEnum;->getOriginalStringCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/obs/services/internal/RestStorageService;->getProviderCredentials()Lcom/obs/services/internal/security/ProviderCredentials;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/obs/services/internal/security/ProviderCredentials;->getLocalAuthType(Ljava/lang/String;)Lcom/obs/services/model/AuthTypeEnum;

    move-result-object v1

    sget-object v2, Lcom/obs/services/model/AuthTypeEnum;->OBS:Lcom/obs/services/model/AuthTypeEnum;

    if-eq v1, v2, :cond_29

    const-string v1, "x-amz-"

    goto :goto_2b

    :cond_29
    const-string v1, "x-obs-"

    :goto_2b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "oef-marker"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "yes"

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 95
    invoke-virtual/range {v0 .. v7}, Lcom/obs/services/internal/RestStorageService;->performRestDelete(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;ZZ)Lokhttp3/Response;

    move-result-object p0

    .line 96
    invoke-virtual {v0, p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->build(Lokhttp3/Response;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method protected deleteReadAheadObjectsImpl(Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/ReadAheadResult;
    .registers 9

    .line 172
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 173
    const-string v0, "readAhead"

    const-string v1, ""

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    const-string v0, "prefix"

    invoke-interface {v3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 176
    invoke-virtual/range {v0 .. v5}, Lcom/obs/services/internal/RestStorageService;->performRestDelete(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lokhttp3/Response;

    move-result-object p0

    .line 178
    invoke-virtual {v0, p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->verifyResponseContentTypeForJson(Lokhttp3/Response;)V

    .line 180
    invoke-static {p0}, Lcom/obs/services/internal/utils/RestUtils;->readBodyFromResponse(Lokhttp3/Response;)Ljava/lang/String;

    move-result-object p1

    .line 182
    new-instance p2, Lcom/obs/services/model/ReadAheadResult;

    invoke-direct {p2}, Lcom/obs/services/model/ReadAheadResult;-><init>()V

    invoke-static {p2, p1}, Lcom/obs/services/internal/utils/JSONChange;->jsonToObj(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/obs/services/model/ReadAheadResult;

    .line 184
    invoke-virtual {v0, p1, p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->setHeadersAndStatus(Lcom/obs/services/model/HeaderResponse;Lokhttp3/Response;)V

    return-object p1
.end method

.method protected queryExtensionPolicyImpl(Ljava/lang/String;)Lcom/oef/services/model/QueryExtensionPolicyResult;
    .registers 5

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 62
    sget-object v1, Lcom/oef/services/model/RequestParamEnum;->EXTENSION_POLICY:Lcom/oef/services/model/RequestParamEnum;

    invoke-virtual {v1}, Lcom/oef/services/model/RequestParamEnum;->getOriginalStringCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 65
    invoke-direct {p0, p1, v0, v1}, Lcom/obs/services/internal/service/ObsExtensionService;->performRestGet(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lokhttp3/Response;

    move-result-object p1

    .line 67
    invoke-static {p1}, Lcom/obs/services/internal/utils/RestUtils;->readBodyFromResponse(Lokhttp3/Response;)Ljava/lang/String;

    move-result-object v0

    .line 69
    new-instance v1, Lcom/oef/services/model/QueryExtensionPolicyResult;

    invoke-direct {v1}, Lcom/oef/services/model/QueryExtensionPolicyResult;-><init>()V

    .line 70
    invoke-static {v1, v0}, Lcom/obs/services/internal/utils/JSONChange;->jsonToObj(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oef/services/model/QueryExtensionPolicyResult;

    .line 72
    invoke-virtual {p0, v0, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->setHeadersAndStatus(Lcom/obs/services/model/HeaderResponse;Lokhttp3/Response;)V

    return-object v0
.end method

.method protected queryFetchJobImpl(Ljava/lang/String;Ljava/lang/String;)Lcom/oef/services/model/QueryAsynchFetchJobsResult;
    .registers 6

    .line 129
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/oef/services/model/RequestParamEnum;->ASYNC_FETCH_JOBS:Lcom/oef/services/model/RequestParamEnum;

    invoke-virtual {v2}, Lcom/oef/services/model/RequestParamEnum;->getOriginalStringCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, ""

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 133
    const-string v1, "Content-Type"

    const-string v2, "application/json"

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    invoke-direct {p0, p1, v0, p2}, Lcom/obs/services/internal/service/ObsExtensionService;->performRestGet(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lokhttp3/Response;

    move-result-object p1

    .line 136
    invoke-static {p1}, Lcom/obs/services/internal/utils/RestUtils;->readBodyFromResponse(Lokhttp3/Response;)Ljava/lang/String;

    move-result-object p2

    .line 138
    new-instance v0, Lcom/oef/services/model/QueryAsynchFetchJobsResult;

    invoke-direct {v0}, Lcom/oef/services/model/QueryAsynchFetchJobsResult;-><init>()V

    .line 139
    invoke-static {v0, p2}, Lcom/obs/services/internal/utils/JSONChange;->jsonToObj(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/oef/services/model/QueryAsynchFetchJobsResult;

    .line 141
    invoke-virtual {p0, p2, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->setHeadersAndStatus(Lcom/obs/services/model/HeaderResponse;Lokhttp3/Response;)V

    return-object p2
.end method

.method protected queryReadAheadObjectsTaskImpl(Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/ReadAheadQueryResult;
    .registers 9

    .line 191
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 192
    const-string v0, "readAhead"

    const-string v1, ""

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    const-string v0, "taskID"

    invoke-interface {v3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 195
    invoke-virtual/range {v0 .. v5}, Lcom/obs/services/internal/RestStorageService;->performRestGet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lokhttp3/Response;

    move-result-object p0

    .line 197
    invoke-virtual {v0, p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->verifyResponseContentTypeForJson(Lokhttp3/Response;)V

    .line 199
    invoke-static {p0}, Lcom/obs/services/internal/utils/RestUtils;->readBodyFromResponse(Lokhttp3/Response;)Ljava/lang/String;

    move-result-object p1

    .line 201
    new-instance p2, Lcom/obs/services/model/ReadAheadQueryResult;

    invoke-direct {p2}, Lcom/obs/services/model/ReadAheadQueryResult;-><init>()V

    invoke-static {p2, p1}, Lcom/obs/services/internal/utils/JSONChange;->jsonToObj(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/obs/services/model/ReadAheadQueryResult;

    .line 203
    invoke-virtual {v0, p1, p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->setHeadersAndStatus(Lcom/obs/services/model/HeaderResponse;Lokhttp3/Response;)V

    return-object p1
.end method

.method protected readAheadObjectsImpl(Lcom/obs/services/model/ReadAheadRequest;)Lcom/obs/services/model/ReadAheadResult;
    .registers 7

    .line 147
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 148
    const-string v1, "readAhead"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const-string v1, "prefix"

    invoke-virtual {p1}, Lcom/obs/services/model/ReadAheadRequest;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 152
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/obs/services/model/ReadAheadRequest;->getCacheOption()Lcom/obs/services/model/CacheOptionEnum;

    move-result-object v3

    invoke-virtual {v3}, Lcom/obs/services/model/CacheOptionEnum;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", ttl="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/obs/services/model/ReadAheadRequest;->getTtl()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 153
    const-string v3, "x-cache-control"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequest(Lcom/obs/services/model/GenericRequest;)Lcom/obs/services/internal/trans/NewTransResult;

    move-result-object p1

    .line 155
    invoke-virtual {p1, v1}, Lcom/obs/services/internal/trans/NewTransResult;->setHeaders(Ljava/util/Map;)V

    .line 156
    invoke-virtual {p1, v0}, Lcom/obs/services/internal/trans/NewTransResult;->setParams(Ljava/util/Map;)V

    .line 158
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/RestStorageService;->performRequest(Lcom/obs/services/internal/trans/NewTransResult;)Lokhttp3/Response;

    move-result-object p1

    .line 160
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->verifyResponseContentTypeForJson(Lokhttp3/Response;)V

    .line 162
    invoke-static {p1}, Lcom/obs/services/internal/utils/RestUtils;->readBodyFromResponse(Lokhttp3/Response;)Ljava/lang/String;

    move-result-object v0

    .line 164
    new-instance v1, Lcom/obs/services/model/ReadAheadResult;

    invoke-direct {v1}, Lcom/obs/services/model/ReadAheadResult;-><init>()V

    invoke-static {v1, v0}, Lcom/obs/services/internal/utils/JSONChange;->jsonToObj(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/obs/services/model/ReadAheadResult;

    .line 166
    invoke-virtual {p0, v0, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->setHeadersAndStatus(Lcom/obs/services/model/HeaderResponse;Lokhttp3/Response;)V

    return-object v0
.end method

.method protected setExtensionPolicyImpl(Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;
    .registers 14

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 45
    sget-object v1, Lcom/oef/services/model/RequestParamEnum;->EXTENSION_POLICY:Lcom/oef/services/model/RequestParamEnum;

    invoke-virtual {v1}, Lcom/oef/services/model/RequestParamEnum;->getOriginalStringCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 48
    const-string v2, "Content-Type"

    const-string v3, "application/json"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/obs/services/internal/RestStorageService;->getProviderCredentials()Lcom/obs/services/internal/security/ProviderCredentials;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/obs/services/internal/security/ProviderCredentials;->getLocalAuthType(Ljava/lang/String;)Lcom/obs/services/model/AuthTypeEnum;

    move-result-object v4

    sget-object v5, Lcom/obs/services/model/AuthTypeEnum;->OBS:Lcom/obs/services/model/AuthTypeEnum;

    if-eq v4, v5, :cond_30

    const-string v4, "x-amz-"

    goto :goto_32

    :cond_30
    const-string v4, "x-obs-"

    :goto_32
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "oef-marker"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "yes"

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    new-instance v6, Lcom/obs/services/internal/trans/NewTransResult;

    invoke-direct {v6}, Lcom/obs/services/internal/trans/NewTransResult;-><init>()V

    .line 52
    invoke-virtual {v6, v0}, Lcom/obs/services/internal/trans/NewTransResult;->setParams(Ljava/util/Map;)V

    .line 53
    sget-object v0, Lcom/obs/services/model/HttpMethodEnum;->PUT:Lcom/obs/services/model/HttpMethodEnum;

    invoke-virtual {v6, v0}, Lcom/obs/services/internal/trans/NewTransResult;->setHttpMethod(Lcom/obs/services/model/HttpMethodEnum;)V

    .line 54
    invoke-virtual {v6, p1}, Lcom/obs/services/internal/trans/NewTransResult;->setBucketName(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v6, v1}, Lcom/obs/services/internal/trans/NewTransResult;->setHeaders(Ljava/util/Map;)V

    .line 56
    invoke-virtual {p0, v3, p2}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->createRequestBody(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-virtual {v6, p1}, Lcom/obs/services/internal/trans/NewTransResult;->setBody(Lokhttp3/RequestBody;)V

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v5, p0

    .line 57
    invoke-virtual/range {v5 .. v10}, Lcom/obs/services/internal/RestStorageService;->performRequest(Lcom/obs/services/internal/trans/NewTransResult;ZZZZ)Lokhttp3/Response;

    move-result-object p0

    invoke-virtual {v5, p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->build(Lokhttp3/Response;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method
