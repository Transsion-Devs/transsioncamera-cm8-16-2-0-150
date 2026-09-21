.class public abstract Lcom/obs/services/internal/service/AbstractRequestConvertor;
.super Lcom/obs/services/internal/RestStorageService;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;
    }
.end annotation


# static fields
.field private static final log:Lcom/obs/log/ILogger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 56
    const-string v0, "com.obs.services.ObsClient"

    invoke-static {v0}, Lcom/obs/log/LoggerBuilder;->getLogger(Ljava/lang/String;)Lcom/obs/log/ILogger;

    move-result-object v0

    sput-object v0, Lcom/obs/services/internal/service/AbstractRequestConvertor;->log:Lcom/obs/log/ILogger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 55
    invoke-direct {p0}, Lcom/obs/services/internal/RestStorageService;-><init>()V

    return-void
.end method

.method private getAuthTypeNegotiationResponseImpl(Ljava/lang/String;)Lokhttp3/Response;
    .registers 5

    .line 354
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 355
    const-string v1, "apiversion"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 356
    invoke-virtual {p0, p1, v1, v0, v1}, Lcom/obs/services/internal/RestStorageService;->performRestForApiVersion(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lokhttp3/Response;

    move-result-object p0

    return-object p0
.end method

.method private parseAuthTypeInResponse(Ljava/lang/String;)Lcom/obs/services/model/AuthTypeEnum;
    .registers 3

    .line 339
    :try_start_0
    invoke-direct {p0, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->getAuthTypeNegotiationResponseImpl(Ljava/lang/String;)Lokhttp3/Response;

    move-result-object p0
    :try_end_4
    .catch Lcom/obs/services/internal/ServiceException; {:try_start_0 .. :try_end_4} :catch_26

    .line 349
    invoke-virtual {p0}, Lokhttp3/Response;->code()I

    move-result p1

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_23

    invoke-virtual {p0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object p0

    const-string p1, "x-obs-api"

    invoke-virtual {p0, p1}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_23

    const-string p1, "3.0"

    .line 350
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_23

    sget-object p0, Lcom/obs/services/model/AuthTypeEnum;->OBS:Lcom/obs/services/model/AuthTypeEnum;

    return-object p0

    :cond_23
    sget-object p0, Lcom/obs/services/model/AuthTypeEnum;->V2:Lcom/obs/services/model/AuthTypeEnum;

    return-object p0

    :catch_26
    move-exception p0

    .line 341
    invoke-virtual {p0}, Lcom/obs/services/internal/ServiceException;->getResponseCode()I

    move-result p1

    const/16 v0, 0x194

    if-eq p1, v0, :cond_48

    invoke-virtual {p0}, Lcom/obs/services/internal/ServiceException;->getResponseCode()I

    move-result p1

    if-lez p1, :cond_48

    invoke-virtual {p0}, Lcom/obs/services/internal/ServiceException;->getResponseCode()I

    move-result p1

    const/16 v0, 0x198

    if-eq p1, v0, :cond_48

    .line 342
    invoke-virtual {p0}, Lcom/obs/services/internal/ServiceException;->getResponseCode()I

    move-result p1

    const/16 v0, 0x1f4

    if-ge p1, v0, :cond_48

    .line 345
    sget-object p0, Lcom/obs/services/model/AuthTypeEnum;->V2:Lcom/obs/services/model/AuthTypeEnum;

    return-object p0

    .line 343
    :cond_48
    throw p0
.end method


# virtual methods
.method protected build(Lokhttp3/Response;)Lcom/obs/services/model/HeaderResponse;
    .registers 3

    .line 175
    new-instance v0, Lcom/obs/services/model/HeaderResponse;

    invoke-direct {v0}, Lcom/obs/services/model/HeaderResponse;-><init>()V

    .line 176
    invoke-virtual {p0, v0, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->setHeadersAndStatus(Lcom/obs/services/model/HeaderResponse;Lokhttp3/Response;)V

    return-object v0
.end method

.method protected createRequestBody(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/RequestBody;
    .registers 5

    .line 266
    sget-object p0, Lcom/obs/services/internal/service/AbstractRequestConvertor;->log:Lcom/obs/log/ILogger;

    invoke-interface {p0}, Lcom/obs/log/ILogger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Entity Content:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/obs/log/ILogger;->trace(Ljava/lang/CharSequence;)V

    .line 269
    :cond_1c
    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, p0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {p1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p1

    invoke-static {p0, p1}, Lokhttp3/RequestBody;->create([BLokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object p0

    return-object p0
.end method

.method protected getApiVersion(Ljava/lang/String;)Lcom/obs/services/model/AuthTypeEnum;
    .registers 3

    .line 306
    invoke-static {p1}, Lcom/obs/services/internal/utils/ServiceUtils;->isValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 307
    const-string p1, ""

    invoke-direct {p0, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->parseAuthTypeInResponse(Ljava/lang/String;)Lcom/obs/services/model/AuthTypeEnum;

    move-result-object p0

    return-object p0

    .line 310
    :cond_d
    invoke-direct {p0, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->parseAuthTypeInResponse(Ljava/lang/String;)Lcom/obs/services/model/AuthTypeEnum;

    move-result-object p0

    return-object p0
.end method

.method protected getHeaderByMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    .line 156
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object p0

    .line 157
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 158
    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_18

    .line 159
    const-string p0, ""

    return-object p0

    :catch_16
    move-exception p0

    goto :goto_1d

    :cond_18
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1c} :catch_16

    return-object p0

    .line 161
    :goto_1d
    sget-object p1, Lcom/obs/services/internal/service/AbstractRequestConvertor;->log:Lcom/obs/log/ILogger;

    invoke-interface {p1}, Lcom/obs/log/ILogger;->isWarnEnabled()Z

    move-result p2

    if-eqz p2, :cond_2a

    .line 162
    const-string p2, "Invoke getHeaderByMethodName error"

    invoke-interface {p1, p2, p0}, Lcom/obs/log/ILogger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_2a
    return-object v0
.end method

.method protected getOptionInfoResult(Ljava/lang/String;Lokhttp3/Response;)Lcom/obs/services/model/fs/GetBucketFSStatusResult;
    .registers 10

    .line 274
    invoke-virtual {p2}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v0

    .line 276
    invoke-virtual {v0}, Lokhttp3/Headers;->toMultimap()Ljava/util/Map;

    move-result-object v1

    .line 277
    const-string v2, "Access-Control-Max-Age"

    invoke-virtual {v0, v2}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 279
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object p1

    .line 280
    invoke-interface {p1}, Lcom/obs/services/internal/IHeaders;->fsFileInterfaceHeader()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/obs/services/model/fs/FSStatusEnum;->getValueFromCode(Ljava/lang/String;)Lcom/obs/services/model/fs/FSStatusEnum;

    move-result-object v3

    .line 282
    sget-object v4, Lcom/obs/services/model/BucketTypeEnum;->OBJECT:Lcom/obs/services/model/BucketTypeEnum;

    .line 283
    sget-object v5, Lcom/obs/services/model/fs/FSStatusEnum;->ENABLED:Lcom/obs/services/model/fs/FSStatusEnum;

    if-ne v5, v3, :cond_26

    .line 284
    sget-object v4, Lcom/obs/services/model/BucketTypeEnum;->PFS:Lcom/obs/services/model/BucketTypeEnum;

    .line 287
    :cond_26
    new-instance v5, Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;

    invoke-direct {v5}, Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;-><init>()V

    const-string v6, "Access-Control-Allow-Origin"

    .line 288
    invoke-virtual {v0, v6}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;->allowOrigin(Ljava/lang/String;)Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;

    move-result-object v5

    const-string v6, "Access-Control-Allow-Headers"

    .line 289
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-virtual {v5, v6}, Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;->allowHeaders(Ljava/util/List;)Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;

    move-result-object v5

    if-nez v2, :cond_45

    const/4 v2, 0x0

    goto :goto_49

    .line 290
    :cond_45
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    :goto_49
    invoke-virtual {v5, v2}, Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;->maxAge(I)Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;

    move-result-object v2

    const-string v5, "Access-Control-Allow-Methods"

    .line 291
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-virtual {v2, v5}, Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;->allowMethods(Ljava/util/List;)Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;

    move-result-object v2

    const-string v5, "Access-Control-Expose-Headers"

    .line 292
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v2, v1}, Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;->exposeHeaders(Ljava/util/List;)Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;

    move-result-object v1

    .line 293
    invoke-interface {p1}, Lcom/obs/services/internal/IHeaders;->defaultStorageClassHeader()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/obs/services/model/StorageClassEnum;->getValueFromCode(Ljava/lang/String;)Lcom/obs/services/model/StorageClassEnum;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;->storageClass(Lcom/obs/services/model/StorageClassEnum;)Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;

    move-result-object v1

    .line 294
    invoke-interface {p1}, Lcom/obs/services/internal/IHeaders;->bucketRegionHeader()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;->location(Ljava/lang/String;)Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;

    move-result-object v1

    .line 295
    invoke-interface {p1}, Lcom/obs/services/internal/IHeaders;->serverVersionHeader()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;->obsVersion(Ljava/lang/String;)Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;

    move-result-object v1

    .line 296
    invoke-virtual {v1, v3}, Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;->status(Lcom/obs/services/model/fs/FSStatusEnum;)Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;

    move-result-object v1

    .line 297
    invoke-interface {p1}, Lcom/obs/services/internal/IHeaders;->azRedundancyHeader()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/obs/services/model/AvailableZoneEnum;->getValueFromCode(Ljava/lang/String;)Lcom/obs/services/model/AvailableZoneEnum;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;->availableZone(Lcom/obs/services/model/AvailableZoneEnum;)Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;

    move-result-object v1

    .line 298
    invoke-interface {p1}, Lcom/obs/services/internal/IHeaders;->epidHeader()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;->epid(Ljava/lang/String;)Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;

    move-result-object p1

    .line 299
    invoke-virtual {p1, v4}, Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;->bucketType(Lcom/obs/services/model/BucketTypeEnum;)Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/obs/services/model/fs/GetBucketFSStatusResult$Builder;->build()Lcom/obs/services/model/fs/GetBucketFSStatusResult;

    move-result-object p1

    .line 301
    invoke-virtual {p0, p1, p2}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->setHeadersAndStatus(Lcom/obs/services/model/HeaderResponse;Lokhttp3/Response;)V

    return-object p1
.end method

.method protected getSpecialParamForStorageClass(Ljava/lang/String;)Lcom/obs/services/model/SpecialParamEnum;
    .registers 2

    .line 261
    invoke-virtual {p0}, Lcom/obs/services/internal/RestStorageService;->getProviderCredentials()Lcom/obs/services/internal/security/ProviderCredentials;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/obs/services/internal/security/ProviderCredentials;->getLocalAuthType(Ljava/lang/String;)Lcom/obs/services/model/AuthTypeEnum;

    move-result-object p0

    sget-object p1, Lcom/obs/services/model/AuthTypeEnum;->OBS:Lcom/obs/services/model/AuthTypeEnum;

    if-ne p0, p1, :cond_f

    sget-object p0, Lcom/obs/services/model/SpecialParamEnum;->STORAGECLASS:Lcom/obs/services/model/SpecialParamEnum;

    return-object p0

    :cond_f
    sget-object p0, Lcom/obs/services/model/SpecialParamEnum;->STORAGEPOLICY:Lcom/obs/services/model/SpecialParamEnum;

    return-object p0
.end method

.method protected putCleanedKeyAndValues(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 205
    sget-object p0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, p0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 206
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 208
    const-string v1, "Date"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_b2

    const-string v1, "Last-Modified"

    .line 209
    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    goto/16 :goto_b2

    .line 227
    :cond_22
    sget-object v1, Lcom/obs/services/internal/Constants;->NOT_NEED_HEADER_PREFIXES:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_46

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 228
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 229
    const-string v1, ""

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 233
    :cond_46
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_4a
    :goto_4a
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v3, "UTF-8"

    if-eqz v1, :cond_83

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz p4, :cond_7f

    .line 236
    :try_start_5a
    invoke-static {v1, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_61
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5a .. :try_end_61} :catch_62
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5a .. :try_end_61} :catch_62

    goto :goto_4a

    .line 238
    :catch_62
    sget-object v1, Lcom/obs/services/internal/service/AbstractRequestConvertor;->log:Lcom/obs/log/ILogger;

    invoke-interface {v1}, Lcom/obs/log/ILogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 239
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error to decode value of key:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/obs/log/ILogger;->debug(Ljava/lang/CharSequence;)V

    goto :goto_4a

    .line 243
    :cond_7f
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4a

    :cond_83
    if-eqz p4, :cond_a6

    .line 248
    :try_start_85
    invoke-static {p0, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_89
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_85 .. :try_end_89} :catch_8a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_85 .. :try_end_89} :catch_8a

    goto :goto_a6

    .line 250
    :catch_8a
    sget-object p3, Lcom/obs/services/internal/service/AbstractRequestConvertor;->log:Lcom/obs/log/ILogger;

    invoke-interface {p3}, Lcom/obs/log/ILogger;->isWarnEnabled()Z

    move-result p4

    if-eqz p4, :cond_a6

    .line 251
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error to decode key:"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p2}, Lcom/obs/log/ILogger;->debug(Ljava/lang/CharSequence;)V

    .line 255
    :cond_a6
    :goto_a6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_10b

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_10b

    .line 210
    :cond_b2
    :goto_b2
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    .line 211
    sget-object p4, Lcom/obs/services/internal/service/AbstractRequestConvertor;->log:Lcom/obs/log/ILogger;

    invoke-interface {p4}, Lcom/obs/log/ILogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_da

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Parsing date string \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\' into Date object for key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v0}, Lcom/obs/log/ILogger;->debug(Ljava/lang/CharSequence;)V

    .line 215
    :cond_da
    :try_start_da
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/obs/services/internal/utils/ServiceUtils;->parseRfc822Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_e2
    .catch Ljava/text/ParseException; {:try_start_da .. :try_end_e2} :catch_e3

    goto :goto_10b

    :catch_e3
    move-exception p4

    .line 219
    :try_start_e4
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/obs/services/internal/utils/ServiceUtils;->parseIso8601Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p2
    :try_end_ec
    .catch Ljava/text/ParseException; {:try_start_e4 .. :try_end_ec} :catch_ee

    move-object v0, p2

    goto :goto_10b

    .line 221
    :catch_ee
    sget-object v0, Lcom/obs/services/internal/service/AbstractRequestConvertor;->log:Lcom/obs/log/ILogger;

    invoke-interface {v0}, Lcom/obs/log/ILogger;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_10a

    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Date string is not RFC 822 or ISO-8601 compliant for metadata field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2, p4}, Lcom/obs/log/ILogger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_10a
    move-object v0, p3

    .line 257
    :cond_10b
    :goto_10b
    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected putHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 169
    invoke-static {p2}, Lcom/obs/services/internal/utils/ServiceUtils;->isValid(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 170
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    return-void
.end method

.method protected setHeadersAndStatus(Lcom/obs/services/model/HeaderResponse;Lokhttp3/Response;)V
    .registers 4

    const/4 v0, 0x1

    .line 181
    invoke-virtual {p0, p1, p2, v0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->setHeadersAndStatus(Lcom/obs/services/model/HeaderResponse;Lokhttp3/Response;Z)V

    return-void
.end method

.method protected setHeadersAndStatus(Lcom/obs/services/model/HeaderResponse;Lokhttp3/Response;Z)V
    .registers 10

    .line 185
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/obs/services/internal/service/InternalHeaderResponse;->setStatusCode(I)V

    .line 186
    invoke-virtual {p2}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/Headers;->toMultimap()Ljava/util/Map;

    move-result-object p2

    .line 187
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 188
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 189
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_23
    :goto_23
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_54

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 190
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 191
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v3, :cond_23

    if-eqz v1, :cond_23

    .line 193
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4c

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    goto :goto_4d

    :cond_4c
    move-object v4, v1

    .line 194
    :goto_4d
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    invoke-virtual {p0, v2, v3, v1, p3}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->putCleanedKeyAndValues(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Z)V

    goto :goto_23

    .line 199
    :cond_54
    invoke-virtual {p1, v0}, Lcom/obs/services/internal/service/InternalHeaderResponse;->setOriginalHeaders(Ljava/util/Map;)V

    .line 200
    invoke-virtual {p1, v2}, Lcom/obs/services/internal/service/InternalHeaderResponse;->setResponseHeaders(Ljava/util/Map;)V

    return-void
.end method

.method protected transObjectRequest(Lcom/obs/services/model/BaseObjectRequest;)Lcom/obs/services/internal/trans/NewTransResult;
    .registers 3

    .line 386
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequest(Lcom/obs/services/model/GenericRequest;)Lcom/obs/services/internal/trans/NewTransResult;

    move-result-object p0

    .line 387
    invoke-virtual {p1}, Lcom/obs/services/model/BaseObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/obs/services/internal/trans/NewTransResult;->setObjectKey(Ljava/lang/String;)V

    .line 388
    invoke-virtual {p1}, Lcom/obs/services/model/BaseObjectRequest;->isEncodeHeaders()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/obs/services/internal/trans/NewTransResult;->setIsEncodeHeaders(Z)V

    return-object p0
.end method

.method protected transObjectRequestWithResult(Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;Lcom/obs/services/model/BaseObjectRequest;)Lcom/obs/services/internal/trans/NewTransResult;
    .registers 3

    .line 371
    invoke-virtual {p0, p1, p2}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequestWithResult(Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;Lcom/obs/services/model/GenericRequest;)Lcom/obs/services/internal/trans/NewTransResult;

    move-result-object p0

    .line 372
    invoke-virtual {p2}, Lcom/obs/services/model/BaseObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/obs/services/internal/trans/NewTransResult;->setObjectKey(Ljava/lang/String;)V

    .line 373
    invoke-virtual {p2}, Lcom/obs/services/model/BaseObjectRequest;->isEncodeHeaders()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/obs/services/internal/trans/NewTransResult;->setIsEncodeHeaders(Z)V

    return-object p0
.end method

.method protected transRequest(Lcom/obs/services/model/GenericRequest;)Lcom/obs/services/internal/trans/NewTransResult;
    .registers 3

    .line 378
    new-instance p0, Lcom/obs/services/internal/trans/NewTransResult;

    invoke-direct {p0}, Lcom/obs/services/internal/trans/NewTransResult;-><init>()V

    .line 379
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getHttpMethod()Lcom/obs/services/model/HttpMethodEnum;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/obs/services/internal/trans/NewTransResult;->setHttpMethod(Lcom/obs/services/model/HttpMethodEnum;)V

    .line 380
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/obs/services/internal/trans/NewTransResult;->setBucketName(Ljava/lang/String;)V

    .line 381
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getUserHeaders()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/obs/services/internal/trans/NewTransResult;->setUserHeaders(Ljava/util/Map;)V

    return-object p0
.end method

.method protected transRequestPaymentHeaders(Lcom/obs/services/model/GenericRequest;Ljava/util/Map;Lcom/obs/services/internal/IHeaders;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/obs/services/model/GenericRequest;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/obs/services/internal/IHeaders;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 148
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->isRequesterPays()Z

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequestPaymentHeaders(ZLjava/util/Map;Lcom/obs/services/internal/IHeaders;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method protected transRequestPaymentHeaders(ZLjava/util/Map;Lcom/obs/services/internal/IHeaders;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/obs/services/internal/IHeaders;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_12

    if-nez p2, :cond_9

    .line 129
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 131
    :cond_9
    invoke-interface {p3}, Lcom/obs/services/internal/IHeaders;->requestPaymentHeader()Ljava/lang/String;

    move-result-object p1

    const-string p3, "requester"

    invoke-virtual {p0, p2, p1, p3}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->putHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    return-object p2
.end method

.method protected transRequestWithResult(Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;Lcom/obs/services/model/GenericRequest;)Lcom/obs/services/internal/trans/NewTransResult;
    .registers 4

    .line 360
    new-instance p0, Lcom/obs/services/internal/trans/NewTransResult;

    invoke-direct {p0}, Lcom/obs/services/internal/trans/NewTransResult;-><init>()V

    .line 361
    invoke-virtual {p2}, Lcom/obs/services/model/GenericRequest;->getHttpMethod()Lcom/obs/services/model/HttpMethodEnum;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/obs/services/internal/trans/NewTransResult;->setHttpMethod(Lcom/obs/services/model/HttpMethodEnum;)V

    .line 362
    invoke-virtual {p2}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/obs/services/internal/trans/NewTransResult;->setBucketName(Ljava/lang/String;)V

    .line 363
    invoke-virtual {p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;->getHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/obs/services/internal/trans/NewTransResult;->setHeaders(Ljava/util/Map;)V

    .line 364
    invoke-virtual {p2}, Lcom/obs/services/model/GenericRequest;->getUserHeaders()Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/obs/services/internal/trans/NewTransResult;->setUserHeaders(Ljava/util/Map;)V

    .line 365
    invoke-virtual {p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;->getBody()Lokhttp3/RequestBody;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/obs/services/internal/trans/NewTransResult;->setBody(Lokhttp3/RequestBody;)V

    .line 366
    invoke-virtual {p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;->getParams()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/obs/services/internal/trans/NewTransResult;->setParams(Ljava/util/Map;)V

    return-object p0
.end method

.method protected verifyResponseContentType(Lokhttp3/Response;)V
    .registers 4

    .line 314
    iget-object p0, p0, Lcom/obs/services/internal/RestConnectionService;->obsProperties:Lcom/obs/services/internal/ObsProperties;

    const-string v0, "obs.verify-content-type"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/obs/services/internal/ObsProperties;->getBoolProperty(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_39

    .line 315
    const-string p0, "Content-Type"

    invoke-virtual {p1, p0}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 316
    const-string p1, "application/xml"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_39

    const-string p1, "text/xml"

    .line 317
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_22

    goto :goto_39

    .line 318
    :cond_22
    new-instance p1, Lcom/obs/services/internal/ServiceException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected XML document response from OBS but received content type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/obs/services/internal/ServiceException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_39
    :goto_39
    return-void
.end method

.method protected verifyResponseContentTypeForJson(Lokhttp3/Response;)V
    .registers 4

    .line 325
    iget-object p0, p0, Lcom/obs/services/internal/RestConnectionService;->obsProperties:Lcom/obs/services/internal/ObsProperties;

    const-string v0, "obs.verify-content-type"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/obs/services/internal/ObsProperties;->getBoolProperty(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_3b

    .line 326
    const-string p0, "Content-Type"

    invoke-virtual {p1, p0}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_33

    .line 329
    const-string p1, "application/json"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1c

    goto :goto_3b

    .line 330
    :cond_1c
    new-instance p1, Lcom/obs/services/internal/ServiceException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected JSON document response  but received content type is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/obs/services/internal/ServiceException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 328
    :cond_33
    new-instance p0, Lcom/obs/services/internal/ServiceException;

    const-string p1, "Expected JSON document response  but received content type is null"

    invoke-direct {p0, p1}, Lcom/obs/services/internal/ServiceException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3b
    :goto_3b
    return-void
.end method
