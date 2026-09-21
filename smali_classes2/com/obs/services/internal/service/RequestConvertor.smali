.class public abstract Lcom/obs/services/internal/service/RequestConvertor;
.super Lcom/obs/services/internal/service/AclHeaderConvertor;
.source "SourceFile"


# static fields
.field private static final log:Lcom/obs/log/ILogger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 83
    const-string v0, "com.obs.services.ObsClient"

    invoke-static {v0}, Lcom/obs/log/LoggerBuilder;->getLogger(Ljava/lang/String;)Lcom/obs/log/ILogger;

    move-result-object v0

    sput-object v0, Lcom/obs/services/internal/service/RequestConvertor;->log:Lcom/obs/log/ILogger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 82
    invoke-direct {p0}, Lcom/obs/services/internal/service/AclHeaderConvertor;-><init>()V

    return-void
.end method

.method private getContentLengthFromFile(Lcom/obs/services/model/PutObjectRequest;JJ)J
    .registers 10

    .line 397
    invoke-virtual {p1}, Lcom/obs/services/model/PutObjectRequest;->getOffset()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_6c

    invoke-virtual {p1}, Lcom/obs/services/model/PutObjectRequest;->getOffset()J

    move-result-wide v0

    cmp-long p0, v0, p4

    if-gez p0, :cond_6c

    cmp-long p0, p2, v2

    if-lez p0, :cond_21

    .line 399
    invoke-virtual {p1}, Lcom/obs/services/model/PutObjectRequest;->getOffset()J

    move-result-wide v0

    sub-long v0, p4, v0

    cmp-long p0, p2, v0

    if-gtz p0, :cond_21

    goto :goto_27

    .line 400
    :cond_21
    invoke-virtual {p1}, Lcom/obs/services/model/PutObjectRequest;->getOffset()J

    move-result-wide p2

    sub-long p2, p4, p2

    .line 402
    :goto_27
    :try_start_27
    invoke-virtual {p1}, Lcom/obs/services/model/PutObjectRequest;->getInput()Ljava/io/InputStream;

    move-result-object p0

    invoke-virtual {p1}, Lcom/obs/services/model/PutObjectRequest;->getOffset()J

    move-result-wide p4

    invoke-virtual {p0, p4, p5}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p4

    .line 403
    sget-object p0, Lcom/obs/services/internal/service/RequestConvertor;->log:Lcom/obs/log/ILogger;

    invoke-interface {p0}, Lcom/obs/log/ILogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skip "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p4, " bytes; offset : "

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/obs/services/model/PutObjectRequest;->getOffset()J

    move-result-wide p4

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p0, p4}, Lcom/obs/log/ILogger;->debug(Ljava/lang/CharSequence;)V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_5b} :catch_5c

    return-wide p2

    :catch_5c
    move-exception p0

    goto :goto_5f

    :cond_5e
    return-wide p2

    .line 407
    :goto_5f
    invoke-virtual {p1}, Lcom/obs/services/model/PutObjectRequest;->getInput()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lcom/obs/services/internal/utils/ServiceUtils;->closeStream(Ljava/io/Closeable;)V

    .line 408
    new-instance p1, Lcom/obs/services/internal/ServiceException;

    invoke-direct {p1, p0}, Lcom/obs/services/internal/ServiceException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_6c
    cmp-long p0, p2, v2

    if-ltz p0, :cond_76

    cmp-long p0, p2, p4

    if-lez p0, :cond_75

    goto :goto_76

    :cond_75
    return-wide p2

    :cond_76
    :goto_76
    return-wide p4
.end method

.method private selectAllowedHeader(Ljava/util/Map;Lcom/obs/services/model/ObjectMetadata;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/obs/services/model/ObjectMetadata;",
            ")V"
        }
    .end annotation

    .line 172
    invoke-virtual {p2}, Lcom/obs/services/model/ObjectMetadata;->getAllMetadata()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_67

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 173
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 174
    invoke-static {v0}, Lcom/obs/services/internal/utils/ServiceUtils;->isValid(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_25

    goto :goto_c

    .line 177
    :cond_25
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 178
    sget-object v1, Lcom/obs/services/internal/RestStorageService;->CAN_USE_STANDARD_HTTP_HEADERS:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_43

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_52

    .line 179
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_52

    :cond_43
    sget-object v1, Lcom/obs/services/internal/Constants;->ALLOWED_REQUEST_HTTP_HEADER_METADATA_NAMES:Ljava/util/List;

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 180
    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_52

    goto :goto_c

    .line 183
    :cond_52
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_5b

    const-string p2, ""

    goto :goto_63

    :cond_5b
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_63
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    :cond_67
    return-void
.end method

.method private setBaseHeaderFromMetadata(Ljava/lang/String;Ljava/util/Map;Lcom/obs/services/model/ObjectMetadata;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/obs/services/model/ObjectMetadata;",
            ")V"
        }
    .end annotation

    .line 418
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/RestStorageService;->getIConvertor(Ljava/lang/String;)Lcom/obs/services/internal/IConvertor;

    move-result-object v0

    .line 419
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v1

    .line 421
    invoke-direct {p0, p2, p3}, Lcom/obs/services/internal/service/RequestConvertor;->selectAllowedHeader(Ljava/util/Map;Lcom/obs/services/model/ObjectMetadata;)V

    .line 423
    invoke-virtual {p3}, Lcom/obs/services/model/ObjectMetadata;->getContentMd5()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/obs/services/internal/utils/ServiceUtils;->isValid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 424
    invoke-virtual {p3}, Lcom/obs/services/model/ObjectMetadata;->getContentMd5()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Content-MD5"

    invoke-interface {p2, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    :cond_22
    invoke-virtual {p3}, Lcom/obs/services/model/ObjectMetadata;->getContentEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/obs/services/internal/utils/ServiceUtils;->isValid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 428
    invoke-virtual {p3}, Lcom/obs/services/model/ObjectMetadata;->getContentEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Content-Encoding"

    invoke-interface {p2, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    :cond_39
    invoke-virtual {p3}, Lcom/obs/services/model/ObjectMetadata;->getContentDisposition()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/obs/services/internal/utils/ServiceUtils;->isValid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 432
    invoke-virtual {p3}, Lcom/obs/services/model/ObjectMetadata;->getContentDisposition()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Content-Disposition"

    invoke-interface {p2, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    :cond_50
    invoke-virtual {p3}, Lcom/obs/services/model/ObjectMetadata;->getCacheControl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/obs/services/internal/utils/ServiceUtils;->isValid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_67

    .line 436
    invoke-virtual {p3}, Lcom/obs/services/model/ObjectMetadata;->getCacheControl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Cache-Control"

    invoke-interface {p2, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    :cond_67
    invoke-virtual {p3}, Lcom/obs/services/model/ObjectMetadata;->getContentLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/obs/services/internal/utils/ServiceUtils;->isValid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 440
    invoke-virtual {p3}, Lcom/obs/services/model/ObjectMetadata;->getContentLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Content-Language"

    invoke-interface {p2, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    :cond_7e
    invoke-virtual {p3}, Lcom/obs/services/model/ObjectMetadata;->getExpires()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/obs/services/internal/utils/ServiceUtils;->isValid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_95

    .line 444
    invoke-virtual {p3}, Lcom/obs/services/model/ObjectMetadata;->getExpires()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Expires"

    invoke-interface {p2, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    :cond_95
    invoke-virtual {p3}, Lcom/obs/services/model/ObjectMetadata;->getCrc64()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/obs/services/internal/utils/ServiceUtils;->isValid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_bb

    .line 448
    invoke-virtual {p0}, Lcom/obs/services/internal/RestStorageService;->getProviderCredentials()Lcom/obs/services/internal/security/ProviderCredentials;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/obs/services/internal/security/ProviderCredentials;->getLocalAuthType(Ljava/lang/String;)Lcom/obs/services/model/AuthTypeEnum;

    move-result-object p1

    sget-object v2, Lcom/obs/services/model/AuthTypeEnum;->OBS:Lcom/obs/services/model/AuthTypeEnum;

    if-eq p1, v2, :cond_ae

    const-string p1, "x-amz-"

    goto :goto_b0

    :cond_ae
    const-string p1, "x-obs-hash-crc64ecma"

    .line 450
    :goto_b0
    invoke-virtual {p3}, Lcom/obs/services/model/ObjectMetadata;->getCrc64()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 448
    invoke-interface {p2, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    :cond_bb
    invoke-virtual {p3}, Lcom/obs/services/model/ObjectMetadata;->getObjectStorageClass()Lcom/obs/services/model/StorageClassEnum;

    move-result-object p1

    if-eqz p1, :cond_d0

    .line 454
    invoke-interface {v1}, Lcom/obs/services/internal/IHeaders;->storageClassHeader()Ljava/lang/String;

    move-result-object p1

    .line 455
    invoke-virtual {p3}, Lcom/obs/services/model/ObjectMetadata;->getObjectStorageClass()Lcom/obs/services/model/StorageClassEnum;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/obs/services/internal/IConvertor;->transStorageClass(Lcom/obs/services/model/StorageClassEnum;)Ljava/lang/String;

    move-result-object v0

    .line 454
    invoke-virtual {p0, p2, p1, v0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->putHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    :cond_d0
    invoke-virtual {p3}, Lcom/obs/services/model/ObjectMetadata;->getWebSiteRedirectLocation()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_e1

    .line 459
    invoke-interface {v1}, Lcom/obs/services/internal/IHeaders;->websiteRedirectLocationHeader()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Lcom/obs/services/model/ObjectMetadata;->getWebSiteRedirectLocation()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p2, p1, p3}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->putHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_e1
    return-void
.end method


# virtual methods
.method protected transAppendObjectRequest(Lcom/obs/services/model/AppendObjectRequest;)Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;
    .registers 5

    .line 486
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/RequestConvertor;->transPutObjectRequest(Lcom/obs/services/model/PutObjectRequest;)Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;

    move-result-object p0

    .line 487
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 488
    sget-object v1, Lcom/obs/services/model/SpecialParamEnum;->APPEND:Lcom/obs/services/model/SpecialParamEnum;

    invoke-virtual {v1}, Lcom/obs/services/model/SpecialParamEnum;->getOriginalStringCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    invoke-virtual {p1}, Lcom/obs/services/model/AppendObjectRequest;->getPosition()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string v1, "position"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    invoke-virtual {p0, v0}, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;->setParams(Ljava/util/Map;)V

    return-object p0
.end method

.method protected transConditionCopyHeaders(Lcom/obs/services/model/CopyObjectRequest;Ljava/util/Map;Lcom/obs/services/internal/IHeaders;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/obs/services/model/CopyObjectRequest;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/obs/services/internal/IHeaders;",
            ")V"
        }
    .end annotation

    .line 586
    invoke-virtual {p1}, Lcom/obs/services/model/CopyObjectRequest;->getIfModifiedSince()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 587
    invoke-interface {p3}, Lcom/obs/services/internal/IHeaders;->copySourceIfModifiedSinceHeader()Ljava/lang/String;

    move-result-object v0

    .line 588
    invoke-virtual {p1}, Lcom/obs/services/model/CopyObjectRequest;->getIfModifiedSince()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lcom/obs/services/internal/utils/ServiceUtils;->formatRfc822Date(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 587
    invoke-virtual {p0, p2, v0, v1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->putHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    :cond_15
    invoke-virtual {p1}, Lcom/obs/services/model/CopyObjectRequest;->getIfUnmodifiedSince()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 591
    invoke-interface {p3}, Lcom/obs/services/internal/IHeaders;->copySourceIfUnmodifiedSinceHeader()Ljava/lang/String;

    move-result-object v0

    .line 592
    invoke-virtual {p1}, Lcom/obs/services/model/CopyObjectRequest;->getIfUnmodifiedSince()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lcom/obs/services/internal/utils/ServiceUtils;->formatRfc822Date(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 591
    invoke-virtual {p0, p2, v0, v1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->putHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    :cond_2a
    invoke-virtual {p1}, Lcom/obs/services/model/CopyObjectRequest;->getIfMatchTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/obs/services/internal/utils/ServiceUtils;->isValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 595
    invoke-interface {p3}, Lcom/obs/services/internal/IHeaders;->copySourceIfMatchHeader()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/obs/services/model/CopyObjectRequest;->getIfMatchTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p2, v0, v1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->putHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    :cond_43
    invoke-virtual {p1}, Lcom/obs/services/model/CopyObjectRequest;->getIfNoneMatchTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/obs/services/internal/utils/ServiceUtils;->isValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 598
    invoke-interface {p3}, Lcom/obs/services/internal/IHeaders;->copySourceIfNoneMatchHeader()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lcom/obs/services/model/CopyObjectRequest;->getIfNoneMatchTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p3, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->putHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5c
    return-void
.end method

.method protected transConditionGetObjectHeaders(Lcom/obs/services/model/GetObjectRequest;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/obs/services/model/GetObjectRequest;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 686
    invoke-virtual {p1}, Lcom/obs/services/model/GetObjectRequest;->getIfModifiedSince()Ljava/util/Date;

    move-result-object p0

    if-eqz p0, :cond_13

    .line 687
    invoke-virtual {p1}, Lcom/obs/services/model/GetObjectRequest;->getIfModifiedSince()Ljava/util/Date;

    move-result-object p0

    invoke-static {p0}, Lcom/obs/services/internal/utils/ServiceUtils;->formatRfc822Date(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "If-Modified-Since"

    invoke-interface {p2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    :cond_13
    invoke-virtual {p1}, Lcom/obs/services/model/GetObjectRequest;->getIfUnmodifiedSince()Ljava/util/Date;

    move-result-object p0

    if-eqz p0, :cond_26

    .line 691
    invoke-virtual {p1}, Lcom/obs/services/model/GetObjectRequest;->getIfUnmodifiedSince()Ljava/util/Date;

    move-result-object p0

    invoke-static {p0}, Lcom/obs/services/internal/utils/ServiceUtils;->formatRfc822Date(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    .line 690
    const-string v0, "If-Unmodified-Since"

    invoke-interface {p2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    :cond_26
    invoke-virtual {p1}, Lcom/obs/services/model/GetObjectRequest;->getIfMatchTag()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/obs/services/internal/utils/ServiceUtils;->isValid(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3d

    .line 694
    invoke-virtual {p1}, Lcom/obs/services/model/GetObjectRequest;->getIfMatchTag()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v0, "If-Match"

    invoke-interface {p2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    :cond_3d
    invoke-virtual {p1}, Lcom/obs/services/model/GetObjectRequest;->getIfNoneMatchTag()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/obs/services/internal/utils/ServiceUtils;->isValid(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_54

    .line 697
    invoke-virtual {p1}, Lcom/obs/services/model/GetObjectRequest;->getIfNoneMatchTag()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v0, "If-None-Match"

    invoke-interface {p2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    :cond_54
    invoke-virtual {p1}, Lcom/obs/services/model/GetObjectRequest;->isAutoUnzipResponse()Z

    move-result p0

    if-nez p0, :cond_61

    .line 700
    const-string p0, "Accept-Encoding"

    const-string p1, "identity"

    invoke-interface {p2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_61
    return-void
.end method

.method protected transCopyObjectRequest(Lcom/obs/services/model/CopyObjectRequest;)Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;
    .registers 11

    .line 495
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 496
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/obs/services/internal/RestStorageService;->getIConvertor(Ljava/lang/String;)Lcom/obs/services/internal/IConvertor;

    move-result-object v1

    .line 497
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v2

    .line 499
    invoke-virtual {p1}, Lcom/obs/services/model/CopyObjectRequest;->getNewObjectMetadata()Lcom/obs/services/model/ObjectMetadata;

    move-result-object v3

    if-nez v3, :cond_21

    new-instance v3, Lcom/obs/services/model/ObjectMetadata;

    invoke-direct {v3}, Lcom/obs/services/model/ObjectMetadata;-><init>()V

    goto :goto_25

    .line 500
    :cond_21
    invoke-virtual {p1}, Lcom/obs/services/model/CopyObjectRequest;->getNewObjectMetadata()Lcom/obs/services/model/ObjectMetadata;

    move-result-object v3

    .line 502
    :goto_25
    invoke-interface {v2}, Lcom/obs/services/internal/IHeaders;->metadataDirectiveHeader()Ljava/lang/String;

    move-result-object v4

    .line 503
    invoke-virtual {p1}, Lcom/obs/services/model/CopyObjectRequest;->isReplaceMetadata()Z

    move-result v5

    if-eqz v5, :cond_32

    const-string v5, "REPLACE"

    goto :goto_34

    :cond_32
    const-string v5, "COPY"

    .line 502
    :goto_34
    invoke-virtual {p0, v0, v4, v5}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->putHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    invoke-virtual {p1}, Lcom/obs/services/model/CopyObjectRequest;->isReplaceMetadata()Z

    move-result v4

    if-eqz v4, :cond_a0

    .line 505
    invoke-virtual {v3}, Lcom/obs/services/model/ObjectMetadata;->getAllMetadata()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v2}, Lcom/obs/services/internal/IHeaders;->requestIdHeader()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    invoke-virtual {v3}, Lcom/obs/services/model/ObjectMetadata;->getAllMetadata()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v2}, Lcom/obs/services/internal/IHeaders;->requestId2Header()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    invoke-virtual {v3}, Lcom/obs/services/model/ObjectMetadata;->getAllMetadata()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 508
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 509
    invoke-static {v6}, Lcom/obs/services/internal/utils/ServiceUtils;->isValid(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_78

    goto :goto_5f

    .line 512
    :cond_78
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 513
    sget-object v7, Lcom/obs/services/internal/Constants;->ALLOWED_REQUEST_HTTP_HEADER_METADATA_NAMES:Ljava/util/List;

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v6, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8b

    goto :goto_5f

    .line 516
    :cond_8b
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_94

    const-string v5, ""

    goto :goto_9c

    :cond_94
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_9c
    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5f

    .line 520
    :cond_a0
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v0, v3}, Lcom/obs/services/internal/service/RequestConvertor;->setBaseHeaderFromMetadata(Ljava/lang/String;Ljava/util/Map;Lcom/obs/services/model/ObjectMetadata;)V

    .line 522
    invoke-virtual {v3}, Lcom/obs/services/model/ObjectMetadata;->getObjectStorageClass()Lcom/obs/services/model/StorageClassEnum;

    move-result-object v4

    if-eqz v4, :cond_bc

    .line 523
    invoke-interface {v2}, Lcom/obs/services/internal/IHeaders;->storageClassHeader()Ljava/lang/String;

    move-result-object v4

    .line 524
    invoke-virtual {v3}, Lcom/obs/services/model/ObjectMetadata;->getObjectStorageClass()Lcom/obs/services/model/StorageClassEnum;

    move-result-object v5

    invoke-interface {v1, v5}, Lcom/obs/services/internal/IConvertor;->transStorageClass(Lcom/obs/services/model/StorageClassEnum;)Ljava/lang/String;

    move-result-object v1

    .line 523
    invoke-virtual {p0, v0, v4, v1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->putHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    :cond_bc
    invoke-virtual {v3}, Lcom/obs/services/model/ObjectMetadata;->getWebSiteRedirectLocation()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_cd

    .line 528
    invoke-interface {v2}, Lcom/obs/services/internal/IHeaders;->websiteRedirectLocationHeader()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Lcom/obs/services/model/ObjectMetadata;->getWebSiteRedirectLocation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v3}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->putHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    :cond_cd
    invoke-virtual {p1}, Lcom/obs/services/model/PutObjectBasicRequest;->getSuccessRedirectLocation()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_de

    .line 532
    invoke-interface {v2}, Lcom/obs/services/internal/IHeaders;->successRedirectLocationHeader()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/obs/services/model/PutObjectBasicRequest;->getSuccessRedirectLocation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v3}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->putHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    :cond_de
    invoke-virtual {p0, p1, v0, v2}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequestPaymentHeaders(Lcom/obs/services/model/GenericRequest;Ljava/util/Map;Lcom/obs/services/internal/IHeaders;)Ljava/util/Map;

    .line 536
    invoke-virtual {p0, p1, v0}, Lcom/obs/services/internal/service/RequestConvertor;->transExtensionPermissions(Lcom/obs/services/model/PutObjectBasicRequest;Ljava/util/Map;)V

    .line 537
    invoke-virtual {p0, p1, v0, v2}, Lcom/obs/services/internal/service/RequestConvertor;->transSseHeaders(Lcom/obs/services/model/PutObjectBasicRequest;Ljava/util/Map;Lcom/obs/services/internal/IHeaders;)V

    .line 539
    invoke-virtual {p1}, Lcom/obs/services/model/CopyObjectRequest;->getSseCHeaderSource()Lcom/obs/services/model/SseCHeader;

    move-result-object v1

    invoke-virtual {p0, v1, v0, v2}, Lcom/obs/services/internal/service/RequestConvertor;->transSseCSourceHeaders(Lcom/obs/services/model/SseCHeader;Ljava/util/Map;Lcom/obs/services/internal/IHeaders;)V

    .line 541
    invoke-virtual {p0, p1, v0, v2}, Lcom/obs/services/internal/service/RequestConvertor;->transConditionCopyHeaders(Lcom/obs/services/model/CopyObjectRequest;Ljava/util/Map;Lcom/obs/services/internal/IHeaders;)V

    .line 543
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/obs/services/model/CopyObjectRequest;->getSourceBucketName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/obs/services/internal/utils/RestUtils;->encodeUrlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    invoke-virtual {p1}, Lcom/obs/services/model/CopyObjectRequest;->getSourceObjectKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/obs/services/internal/utils/RestUtils;->encodeUrlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 545
    invoke-virtual {p1}, Lcom/obs/services/model/CopyObjectRequest;->getVersionId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/obs/services/internal/utils/ServiceUtils;->isValid(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13b

    .line 546
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?versionId="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/obs/services/model/CopyObjectRequest;->getVersionId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 548
    :cond_13b
    invoke-interface {v2}, Lcom/obs/services/internal/IHeaders;->copySourceHeader()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1, v1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->putHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    new-instance p0, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;

    invoke-direct {p0, v0}, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;-><init>(Ljava/util/Map;)V

    return-object p0
.end method

.method protected transCopyPartRequest(Lcom/obs/services/model/CopyPartRequest;)Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;
    .registers 7

    .line 765
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 766
    invoke-virtual {p1}, Lcom/obs/services/model/CopyPartRequest;->getPartNumber()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "partNumber"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    const-string v1, "uploadId"

    invoke-virtual {p1}, Lcom/obs/services/model/AbstractMultipartRequest;->getUploadId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 769
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 770
    invoke-virtual {p1}, Lcom/obs/services/model/CopyPartRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v2

    .line 772
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/obs/services/model/CopyPartRequest;->getSourceBucketName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/obs/services/internal/utils/RestUtils;->encodeUrlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 773
    invoke-virtual {p1}, Lcom/obs/services/model/CopyPartRequest;->getSourceObjectKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/obs/services/internal/utils/RestUtils;->encodeUrlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 774
    invoke-virtual {p1}, Lcom/obs/services/model/CopyPartRequest;->getVersionId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/obs/services/internal/utils/ServiceUtils;->isValid(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_72

    .line 775
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "?versionId="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/obs/services/model/CopyPartRequest;->getVersionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 777
    :cond_72
    invoke-interface {v2}, Lcom/obs/services/internal/IHeaders;->copySourceHeader()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1, v4, v3}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->putHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    invoke-virtual {p1}, Lcom/obs/services/model/CopyPartRequest;->getByteRangeStart()Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_a5

    .line 780
    invoke-virtual {p1}, Lcom/obs/services/model/CopyPartRequest;->getByteRangeEnd()Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_8e

    invoke-virtual {p1}, Lcom/obs/services/model/CopyPartRequest;->getByteRangeEnd()Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_90

    :cond_8e
    const-string v3, ""

    .line 781
    :goto_90
    invoke-virtual {p1}, Lcom/obs/services/model/CopyPartRequest;->getByteRangeStart()Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v4, v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "bytes=%s-%s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 782
    invoke-interface {v2}, Lcom/obs/services/internal/IHeaders;->copySourceRangeHeader()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1, v4, v3}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->putHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    :cond_a5
    invoke-virtual {p0, p1, v1, v2}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequestPaymentHeaders(Lcom/obs/services/model/GenericRequest;Ljava/util/Map;Lcom/obs/services/internal/IHeaders;)Ljava/util/Map;

    .line 786
    invoke-virtual {p1}, Lcom/obs/services/model/CopyPartRequest;->getSseCHeaderDestination()Lcom/obs/services/model/SseCHeader;

    move-result-object v3

    invoke-virtual {p0, v3, v1, v2}, Lcom/obs/services/internal/service/RequestConvertor;->transSseCHeaders(Lcom/obs/services/model/SseCHeader;Ljava/util/Map;Lcom/obs/services/internal/IHeaders;)V

    .line 787
    invoke-virtual {p1}, Lcom/obs/services/model/CopyPartRequest;->getSseCHeaderSource()Lcom/obs/services/model/SseCHeader;

    move-result-object p1

    invoke-virtual {p0, p1, v1, v2}, Lcom/obs/services/internal/service/RequestConvertor;->transSseCSourceHeaders(Lcom/obs/services/model/SseCHeader;Ljava/util/Map;Lcom/obs/services/internal/IHeaders;)V

    .line 789
    new-instance p0, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;

    const/4 p1, 0x0

    invoke-direct {p0, v1, v0, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;-><init>(Ljava/util/Map;Ljava/util/Map;Lokhttp3/RequestBody;)V

    return-object p0
.end method

.method protected transCreateBucketRequest(Lcom/obs/services/model/CreateBucketRequest;)Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;
    .registers 11

    .line 246
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 247
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/obs/services/internal/RestStorageService;->getIConvertor(Ljava/lang/String;)Lcom/obs/services/internal/IConvertor;

    move-result-object v1

    .line 249
    invoke-virtual {p1}, Lcom/obs/services/model/CreateBucketRequest;->getBucketStorageClass()Lcom/obs/services/model/StorageClassEnum;

    move-result-object v2

    if-eqz v2, :cond_2a

    .line 250
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v2

    invoke-interface {v2}, Lcom/obs/services/internal/IHeaders;->defaultStorageClassHeader()Ljava/lang/String;

    move-result-object v2

    .line 251
    invoke-virtual {p1}, Lcom/obs/services/model/CreateBucketRequest;->getBucketStorageClass()Lcom/obs/services/model/StorageClassEnum;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/obs/services/internal/IConvertor;->transStorageClass(Lcom/obs/services/model/StorageClassEnum;)Ljava/lang/String;

    move-result-object v3

    .line 250
    invoke-virtual {p0, v0, v2, v3}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->putHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    :cond_2a
    invoke-virtual {p1}, Lcom/obs/services/model/CreateBucketRequest;->getEpid()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_43

    .line 255
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v2

    invoke-interface {v2}, Lcom/obs/services/internal/IHeaders;->epidHeader()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/obs/services/model/CreateBucketRequest;->getEpid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->putHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    :cond_43
    instance-of v2, p1, Lcom/obs/services/model/fs/NewBucketRequest;

    const-string v3, "Enabled"

    if-eqz v2, :cond_58

    .line 259
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v2

    invoke-interface {v2}, Lcom/obs/services/internal/IHeaders;->fsFileInterfaceHeader()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->putHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    :cond_58
    invoke-virtual {p1}, Lcom/obs/services/model/CreateBucketRequest;->getBucketType()Lcom/obs/services/model/BucketTypeEnum;

    move-result-object v2

    if-eqz v2, :cond_75

    sget-object v2, Lcom/obs/services/model/BucketTypeEnum;->PFS:Lcom/obs/services/model/BucketTypeEnum;

    invoke-virtual {p1}, Lcom/obs/services/model/CreateBucketRequest;->getBucketType()Lcom/obs/services/model/BucketTypeEnum;

    move-result-object v4

    if-ne v2, v4, :cond_75

    .line 263
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v2

    invoke-interface {v2}, Lcom/obs/services/internal/IHeaders;->fsFileInterfaceHeader()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->putHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    :cond_75
    invoke-virtual {p1}, Lcom/obs/services/model/CreateBucketRequest;->getAvailableZone()Lcom/obs/services/model/AvailableZoneEnum;

    move-result-object v2

    if-eqz v2, :cond_92

    .line 267
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v2

    invoke-interface {v2}, Lcom/obs/services/internal/IHeaders;->azRedundancyHeader()Ljava/lang/String;

    move-result-object v2

    .line 268
    invoke-virtual {p1}, Lcom/obs/services/model/CreateBucketRequest;->getAvailableZone()Lcom/obs/services/model/AvailableZoneEnum;

    move-result-object v3

    invoke-virtual {v3}, Lcom/obs/services/model/AvailableZoneEnum;->getCode()Ljava/lang/String;

    move-result-object v3

    .line 267
    invoke-virtual {p0, v0, v2, v3}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->putHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    :cond_92
    invoke-virtual {p1}, Lcom/obs/services/model/CreateBucketRequest;->getAllGrantPermissions()Ljava/util/Set;

    move-result-object v2

    .line 272
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_f4

    .line 273
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/obs/services/model/ExtensionBucketPermissionEnum;

    .line 274
    invoke-virtual {p1, v3}, Lcom/obs/services/model/CreateBucketRequest;->getDomainIdsByGrantPermission(Lcom/obs/services/model/ExtensionBucketPermissionEnum;)Ljava/util/Set;

    move-result-object v4

    .line 275
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 276
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_bd
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_de

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 277
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_bd

    .line 279
    :cond_de
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/obs/services/model/ExtensionBucketPermissionEnum;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v4, v3}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->getHeaderByMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    .line 280
    invoke-static {v5, v4}, Lcom/obs/services/internal/utils/ServiceUtils;->join(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 279
    invoke-virtual {p0, v0, v3, v4}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->putHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a0

    .line 284
    :cond_f4
    invoke-virtual {p1}, Lcom/obs/services/model/CreateBucketRequest;->getExtensionHeaderMap()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_122

    .line 285
    invoke-virtual {p1}, Lcom/obs/services/model/CreateBucketRequest;->getExtensionHeaderMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_106
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_122

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 286
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v0, v4, v3}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->putHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_106

    .line 290
    :cond_122
    invoke-virtual {p0}, Lcom/obs/services/internal/RestStorageService;->getProviderCredentials()Lcom/obs/services/internal/security/ProviderCredentials;

    move-result-object v2

    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/obs/services/internal/security/ProviderCredentials;->getLocalAuthType(Ljava/lang/String;)Lcom/obs/services/model/AuthTypeEnum;

    move-result-object v2

    sget-object v3, Lcom/obs/services/model/AuthTypeEnum;->OBS:Lcom/obs/services/model/AuthTypeEnum;

    if-eq v2, v3, :cond_135

    const-string v2, "x-amz-"

    goto :goto_137

    :cond_135
    const-string v2, "x-obs-"

    .line 292
    :goto_137
    invoke-virtual {p1}, Lcom/obs/services/model/CreateBucketRequest;->getBucketRedundancy()Lcom/obs/services/model/fusion/RedundancyTypeEnum;

    move-result-object v3

    sget-object v4, Lcom/obs/services/model/fusion/RedundancyTypeEnum;->FUSION:Lcom/obs/services/model/fusion/RedundancyTypeEnum;

    if-ne v3, v4, :cond_15b

    .line 293
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "bucket-redundancy"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 294
    invoke-virtual {v4}, Lcom/obs/services/model/fusion/RedundancyTypeEnum;->getCode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 293
    invoke-virtual {p0, v0, v3, v4}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->putHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    :cond_15b
    invoke-virtual {p1}, Lcom/obs/services/model/CreateBucketRequest;->getFusionAllowUpgrade()Lcom/obs/services/model/ActionEnum;

    move-result-object v3

    sget-object v4, Lcom/obs/services/model/ActionEnum;->DEFAULT:Lcom/obs/services/model/ActionEnum;

    if-eq v3, v4, :cond_183

    .line 297
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "fusion-allow-upgrade"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 298
    invoke-virtual {p1}, Lcom/obs/services/model/CreateBucketRequest;->getFusionAllowUpgrade()Lcom/obs/services/model/ActionEnum;

    move-result-object v5

    invoke-virtual {v5}, Lcom/obs/services/model/ActionEnum;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 297
    invoke-virtual {p0, v0, v3, v5}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->putHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    :cond_183
    invoke-virtual {p1}, Lcom/obs/services/model/CreateBucketRequest;->getFusionAllowAlternative()Lcom/obs/services/model/ActionEnum;

    move-result-object v3

    if-eq v3, v4, :cond_1a9

    .line 301
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "fusion-allow-alternative"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 302
    invoke-virtual {p1}, Lcom/obs/services/model/CreateBucketRequest;->getFusionAllowAlternative()Lcom/obs/services/model/ActionEnum;

    move-result-object v3

    invoke-virtual {v3}, Lcom/obs/services/model/ActionEnum;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 301
    invoke-virtual {p0, v0, v2, v3}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->putHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    :cond_1a9
    const-string v2, "Content-Type"

    const-string v3, "application/xml"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    new-instance v2, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;

    invoke-direct {v2, v0}, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;-><init>(Ljava/util/Map;)V

    .line 308
    invoke-virtual {p1}, Lcom/obs/services/model/CreateBucketRequest;->getLocation()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/obs/services/internal/utils/ServiceUtils;->isValid(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1db

    .line 309
    invoke-virtual {p1}, Lcom/obs/services/model/CreateBucketRequest;->getLocation()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/obs/services/internal/IConvertor;->transBucketLoction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 310
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "Content-Length"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    invoke-virtual {p0, v3, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->createRequestBody(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p0

    .line 312
    invoke-virtual {v2, p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;->setBody(Lokhttp3/RequestBody;)V

    :cond_1db
    return-object v2
.end method

.method protected transExtensionPermissions(Lcom/obs/services/model/PutObjectBasicRequest;Ljava/util/Map;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/obs/services/model/PutObjectBasicRequest;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 188
    invoke-virtual {p1}, Lcom/obs/services/model/PutObjectBasicRequest;->getAllGrantPermissions()Ljava/util/Set;

    move-result-object v0

    .line 189
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_62

    .line 190
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_62

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/obs/services/model/ExtensionObjectPermissionEnum;

    .line 191
    invoke-virtual {p1, v1}, Lcom/obs/services/model/PutObjectBasicRequest;->getDomainIdsByGrantPermission(Lcom/obs/services/model/ExtensionObjectPermissionEnum;)Ljava/util/Set;

    move-result-object v2

    .line 192
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 193
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 194
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    .line 196
    :cond_4c
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/obs/services/model/ExtensionObjectPermissionEnum;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->getHeaderByMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    .line 197
    invoke-static {v3, v2}, Lcom/obs/services/internal/utils/ServiceUtils;->join(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 196
    invoke-virtual {p0, p2, v1, v2}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->putHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :cond_62
    return-void
.end method

.method protected transGetContentSummaryFs(Lcom/obs/services/model/fs/ContentSummaryFsRequest;)Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;
    .registers 5

    .line 884
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 885
    sget-object v1, Lcom/obs/services/model/SpecialParamEnum;->GETCONTENTSUMMARY:Lcom/obs/services/model/SpecialParamEnum;

    invoke-virtual {v1}, Lcom/obs/services/model/SpecialParamEnum;->getOriginalStringCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 886
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 888
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v2

    .line 887
    invoke-virtual {p0, p1, v1, v2}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequestPaymentHeaders(Lcom/obs/services/model/GenericRequest;Ljava/util/Map;Lcom/obs/services/internal/IHeaders;)Ljava/util/Map;

    .line 889
    new-instance p0, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;

    const/4 p1, 0x0

    invoke-direct {p0, v1, v0, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;-><init>(Ljava/util/Map;Ljava/util/Map;Lokhttp3/RequestBody;)V

    return-object p0
.end method

.method protected transGetObjectParams(Lcom/obs/services/model/GetObjectRequest;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/obs/services/model/GetObjectRequest;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 650
    invoke-virtual {p1}, Lcom/obs/services/model/GetObjectRequest;->getReplaceMetadata()Lcom/obs/services/model/ObjectRepleaceMetadata;

    move-result-object p0

    if-eqz p0, :cond_a8

    .line 651
    invoke-virtual {p1}, Lcom/obs/services/model/GetObjectRequest;->getReplaceMetadata()Lcom/obs/services/model/ObjectRepleaceMetadata;

    move-result-object p0

    invoke-virtual {p0}, Lcom/obs/services/model/ObjectRepleaceMetadata;->getCacheControl()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/obs/services/internal/utils/ServiceUtils;->isValid(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_21

    .line 652
    invoke-virtual {p1}, Lcom/obs/services/model/GetObjectRequest;->getReplaceMetadata()Lcom/obs/services/model/ObjectRepleaceMetadata;

    move-result-object p0

    invoke-virtual {p0}, Lcom/obs/services/model/ObjectRepleaceMetadata;->getCacheControl()Ljava/lang/String;

    move-result-object p0

    const-string v0, "response-cache-control"

    invoke-interface {p2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    :cond_21
    invoke-virtual {p1}, Lcom/obs/services/model/GetObjectRequest;->getReplaceMetadata()Lcom/obs/services/model/ObjectRepleaceMetadata;

    move-result-object p0

    invoke-virtual {p0}, Lcom/obs/services/model/ObjectRepleaceMetadata;->getContentDisposition()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/obs/services/internal/utils/ServiceUtils;->isValid(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3c

    .line 656
    invoke-virtual {p1}, Lcom/obs/services/model/GetObjectRequest;->getReplaceMetadata()Lcom/obs/services/model/ObjectRepleaceMetadata;

    move-result-object p0

    invoke-virtual {p0}, Lcom/obs/services/model/ObjectRepleaceMetadata;->getContentDisposition()Ljava/lang/String;

    move-result-object p0

    .line 655
    const-string v0, "response-content-disposition"

    invoke-interface {p2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    :cond_3c
    invoke-virtual {p1}, Lcom/obs/services/model/GetObjectRequest;->getReplaceMetadata()Lcom/obs/services/model/ObjectRepleaceMetadata;

    move-result-object p0

    invoke-virtual {p0}, Lcom/obs/services/model/ObjectRepleaceMetadata;->getContentEncoding()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/obs/services/internal/utils/ServiceUtils;->isValid(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_57

    .line 660
    invoke-virtual {p1}, Lcom/obs/services/model/GetObjectRequest;->getReplaceMetadata()Lcom/obs/services/model/ObjectRepleaceMetadata;

    move-result-object p0

    invoke-virtual {p0}, Lcom/obs/services/model/ObjectRepleaceMetadata;->getContentEncoding()Ljava/lang/String;

    move-result-object p0

    .line 659
    const-string v0, "response-content-encoding"

    invoke-interface {p2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    :cond_57
    invoke-virtual {p1}, Lcom/obs/services/model/GetObjectRequest;->getReplaceMetadata()Lcom/obs/services/model/ObjectRepleaceMetadata;

    move-result-object p0

    invoke-virtual {p0}, Lcom/obs/services/model/ObjectRepleaceMetadata;->getContentLanguage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/obs/services/internal/utils/ServiceUtils;->isValid(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_72

    .line 664
    invoke-virtual {p1}, Lcom/obs/services/model/GetObjectRequest;->getReplaceMetadata()Lcom/obs/services/model/ObjectRepleaceMetadata;

    move-result-object p0

    invoke-virtual {p0}, Lcom/obs/services/model/ObjectRepleaceMetadata;->getContentLanguage()Ljava/lang/String;

    move-result-object p0

    .line 663
    const-string v0, "response-content-language"

    invoke-interface {p2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    :cond_72
    invoke-virtual {p1}, Lcom/obs/services/model/GetObjectRequest;->getReplaceMetadata()Lcom/obs/services/model/ObjectRepleaceMetadata;

    move-result-object p0

    invoke-virtual {p0}, Lcom/obs/services/model/ObjectRepleaceMetadata;->getContentType()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/obs/services/internal/utils/ServiceUtils;->isValid(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_8d

    .line 667
    invoke-virtual {p1}, Lcom/obs/services/model/GetObjectRequest;->getReplaceMetadata()Lcom/obs/services/model/ObjectRepleaceMetadata;

    move-result-object p0

    invoke-virtual {p0}, Lcom/obs/services/model/ObjectRepleaceMetadata;->getContentType()Ljava/lang/String;

    move-result-object p0

    const-string v0, "response-content-type"

    invoke-interface {p2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    :cond_8d
    invoke-virtual {p1}, Lcom/obs/services/model/GetObjectRequest;->getReplaceMetadata()Lcom/obs/services/model/ObjectRepleaceMetadata;

    move-result-object p0

    invoke-virtual {p0}, Lcom/obs/services/model/ObjectRepleaceMetadata;->getExpires()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/obs/services/internal/utils/ServiceUtils;->isValid(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a8

    .line 670
    invoke-virtual {p1}, Lcom/obs/services/model/GetObjectRequest;->getReplaceMetadata()Lcom/obs/services/model/ObjectRepleaceMetadata;

    move-result-object p0

    invoke-virtual {p0}, Lcom/obs/services/model/ObjectRepleaceMetadata;->getExpires()Ljava/lang/String;

    move-result-object p0

    const-string v0, "response-expires"

    invoke-interface {p2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    :cond_a8
    invoke-virtual {p1}, Lcom/obs/services/model/GetObjectRequest;->getImageProcess()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/obs/services/internal/utils/ServiceUtils;->isValid(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_bb

    .line 674
    const-string p0, "x-image-process"

    invoke-virtual {p1}, Lcom/obs/services/model/GetObjectRequest;->getImageProcess()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    :cond_bb
    invoke-virtual {p1}, Lcom/obs/services/model/GetObjectRequest;->getVersionId()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_ca

    .line 677
    const-string p0, "versionId"

    invoke-virtual {p1}, Lcom/obs/services/model/GetObjectRequest;->getVersionId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    :cond_ca
    invoke-virtual {p1}, Lcom/obs/services/model/GetObjectRequest;->getCacheOption()Lcom/obs/services/model/CacheOptionEnum;

    move-result-object p0

    if-eqz p0, :cond_f5

    .line 680
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/obs/services/model/GetObjectRequest;->getCacheOption()Lcom/obs/services/model/CacheOptionEnum;

    move-result-object v0

    invoke-virtual {v0}, Lcom/obs/services/model/CacheOptionEnum;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", ttl="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/obs/services/model/GetObjectRequest;->getTtl()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 681
    const-string p1, "x-cache-control"

    invoke-interface {p2, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f5
    return-void
.end method

.method protected transGetObjectRequest(Lcom/obs/services/model/GetObjectRequest;)Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;
    .registers 5

    .line 603
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 604
    invoke-virtual {p1}, Lcom/obs/services/model/GetObjectRequest;->getSseCHeader()Lcom/obs/services/model/SseCHeader;

    move-result-object v1

    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/obs/services/internal/service/RequestConvertor;->transSseCHeaders(Lcom/obs/services/model/SseCHeader;Ljava/util/Map;Lcom/obs/services/internal/IHeaders;)V

    .line 605
    invoke-virtual {p0, p1, v0}, Lcom/obs/services/internal/service/RequestConvertor;->transConditionGetObjectHeaders(Lcom/obs/services/model/GetObjectRequest;Ljava/util/Map;)V

    .line 607
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequestPaymentHeaders(Lcom/obs/services/model/GenericRequest;Ljava/util/Map;Lcom/obs/services/internal/IHeaders;)Ljava/util/Map;

    .line 608
    invoke-virtual {p0, p1, v0}, Lcom/obs/services/internal/service/RequestConvertor;->transRangeHeader(Lcom/obs/services/model/GetObjectRequest;Ljava/util/Map;)V

    .line 610
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 611
    invoke-virtual {p0, p1, v1}, Lcom/obs/services/internal/service/RequestConvertor;->transGetObjectParams(Lcom/obs/services/model/GetObjectRequest;Ljava/util/Map;)V

    .line 613
    new-instance p0, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;

    const/4 p1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;-><init>(Ljava/util/Map;Ljava/util/Map;Lokhttp3/RequestBody;)V

    return-object p0
.end method

.method protected transInitiateMultipartUploadRequest(Lcom/obs/services/model/InitiateMultipartUploadRequest;)Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;
    .registers 8

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 120
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v1

    .line 121
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/obs/services/internal/RestStorageService;->getIConvertor(Ljava/lang/String;)Lcom/obs/services/internal/IConvertor;

    move-result-object v2

    .line 123
    invoke-virtual {p1}, Lcom/obs/services/model/InitiateMultipartUploadRequest;->getMetadata()Lcom/obs/services/model/ObjectMetadata;

    move-result-object v3

    if-nez v3, :cond_21

    new-instance v3, Lcom/obs/services/model/ObjectMetadata;

    invoke-direct {v3}, Lcom/obs/services/model/ObjectMetadata;-><init>()V

    goto :goto_25

    :cond_21
    invoke-virtual {p1}, Lcom/obs/services/model/InitiateMultipartUploadRequest;->getMetadata()Lcom/obs/services/model/ObjectMetadata;

    move-result-object v3

    .line 125
    :goto_25
    invoke-direct {p0, v0, v3}, Lcom/obs/services/internal/service/RequestConvertor;->selectAllowedHeader(Ljava/util/Map;Lcom/obs/services/model/ObjectMetadata;)V

    .line 127
    invoke-virtual {v3}, Lcom/obs/services/model/ObjectMetadata;->getObjectStorageClass()Lcom/obs/services/model/StorageClassEnum;

    move-result-object v4

    if-eqz v4, :cond_3d

    .line 128
    invoke-interface {v1}, Lcom/obs/services/internal/IHeaders;->storageClassHeader()Ljava/lang/String;

    move-result-object v4

    .line 129
    invoke-virtual {v3}, Lcom/obs/services/model/ObjectMetadata;->getObjectStorageClass()Lcom/obs/services/model/StorageClassEnum;

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/obs/services/internal/IConvertor;->transStorageClass(Lcom/obs/services/model/StorageClassEnum;)Ljava/lang/String;

    move-result-object v2

    .line 128
    invoke-virtual {p0, v0, v4, v2}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->putHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_3d
    invoke-virtual {v3}, Lcom/obs/services/model/ObjectMetadata;->getWebSiteRedirectLocation()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/obs/services/internal/utils/ServiceUtils;->isValid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 133
    invoke-interface {v1}, Lcom/obs/services/internal/IHeaders;->websiteRedirectLocationHeader()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Lcom/obs/services/model/ObjectMetadata;->getWebSiteRedirectLocation()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, v2, v4}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->putHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :cond_52
    invoke-virtual {p1}, Lcom/obs/services/model/PutObjectBasicRequest;->getSuccessRedirectLocation()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/obs/services/internal/utils/ServiceUtils;->isValid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_67

    .line 137
    invoke-interface {v1}, Lcom/obs/services/internal/IHeaders;->successRedirectLocationHeader()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/obs/services/model/PutObjectBasicRequest;->getSuccessRedirectLocation()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, v2, v4}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->putHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_67
    invoke-virtual {p1}, Lcom/obs/services/model/InitiateMultipartUploadRequest;->getExpires()I

    move-result v2

    if-lez v2, :cond_7c

    .line 141
    invoke-interface {v1}, Lcom/obs/services/internal/IHeaders;->expiresHeader()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/obs/services/model/InitiateMultipartUploadRequest;->getExpires()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, v2, v4}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->putHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :cond_7c
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0, v3}, Lcom/obs/services/internal/service/RequestConvertor;->setBaseHeaderFromMetadata(Ljava/lang/String;Ljava/util/Map;Lcom/obs/services/model/ObjectMetadata;)V

    .line 146
    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequestPaymentHeaders(Lcom/obs/services/model/GenericRequest;Ljava/util/Map;Lcom/obs/services/internal/IHeaders;)Ljava/util/Map;

    .line 148
    invoke-virtual {p0, p1, v0}, Lcom/obs/services/internal/service/RequestConvertor;->transExtensionPermissions(Lcom/obs/services/model/PutObjectBasicRequest;Ljava/util/Map;)V

    .line 150
    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/internal/service/RequestConvertor;->transSseHeaders(Lcom/obs/services/model/PutObjectBasicRequest;Ljava/util/Map;Lcom/obs/services/internal/IHeaders;)V

    .line 152
    invoke-virtual {v3}, Lcom/obs/services/model/ObjectMetadata;->getContentType()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Content-Type"

    if-nez p0, :cond_99

    .line 153
    invoke-virtual {v3, v1}, Lcom/obs/services/model/ObjectMetadata;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_9d

    :cond_99
    invoke-virtual {v3}, Lcom/obs/services/model/ObjectMetadata;->getContentType()Ljava/lang/String;

    move-result-object p0

    :goto_9d
    if-nez p0, :cond_ab

    .line 155
    invoke-static {}, Lcom/obs/services/internal/utils/Mimetypes;->getInstance()Lcom/obs/services/internal/utils/Mimetypes;

    move-result-object p0

    invoke-virtual {p1}, Lcom/obs/services/model/BaseObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/obs/services/internal/utils/Mimetypes;->getMimetype(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 158
    :cond_ab
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 159
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 162
    sget-object v1, Lcom/obs/services/model/SpecialParamEnum;->UPLOADS:Lcom/obs/services/model/SpecialParamEnum;

    invoke-virtual {v1}, Lcom/obs/services/model/SpecialParamEnum;->getOriginalStringCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    invoke-virtual {p1}, Lcom/obs/services/model/InitiateMultipartUploadRequest;->getEncodingType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d5

    .line 165
    const-string v1, "encoding-type"

    invoke-virtual {p1}, Lcom/obs/services/model/InitiateMultipartUploadRequest;->getEncodingType()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    :cond_d5
    new-instance p1, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;

    const/4 v1, 0x0

    invoke-direct {p1, v0, p0, v1}, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;-><init>(Ljava/util/Map;Ljava/util/Map;Lokhttp3/RequestBody;)V

    return-object p1
.end method

.method protected transListContentSummaryFsRequest(Lcom/obs/services/model/fs/ListContentSummaryFsRequest;)Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;
    .registers 12

    .line 849
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 850
    sget-object v1, Lcom/obs/services/model/SpecialParamEnum;->LISTCONTENTSUMMARYFS:Lcom/obs/services/model/SpecialParamEnum;

    invoke-virtual {v1}, Lcom/obs/services/model/SpecialParamEnum;->getOriginalStringCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 851
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 854
    :try_start_15
    const-string v2, "MultiListContentSummary"

    invoke-static {v2}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->create(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v2

    .line 855
    const-string v3, "MaxKeys"

    invoke-virtual {v2, v3}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/obs/services/model/fs/ListContentSummaryFsRequest;->getMaxKeys()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->text(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    .line 856
    invoke-virtual {p1}, Lcom/obs/services/model/fs/ListContentSummaryFsRequest;->getDirLayers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_93

    .line 857
    invoke-virtual {p1}, Lcom/obs/services/model/fs/ListContentSummaryFsRequest;->getDirLayers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_93

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/obs/services/model/fs/ListContentSummaryFsRequest$DirLayer;

    .line 858
    const-string v5, "Dir"

    invoke-static {v5}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->create(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v5

    .line 859
    const-string v6, "Key"

    invoke-virtual {v5, v6}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/obs/services/model/fs/ListContentSummaryFsRequest$DirLayer;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->text(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    .line 860
    invoke-virtual {v4}, Lcom/obs/services/model/fs/ListContentSummaryFsRequest$DirLayer;->getMarker()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/obs/services/internal/utils/ServiceUtils;->isValid(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_74

    .line 861
    const-string v6, "Marker"

    invoke-virtual {v5, v6}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/obs/services/model/fs/ListContentSummaryFsRequest$DirLayer;->getMarker()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->text(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    .line 863
    :cond_74
    invoke-virtual {v4}, Lcom/obs/services/model/fs/ListContentSummaryFsRequest$DirLayer;->getInode()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_8f

    .line 864
    const-string v6, "Inode"

    invoke-virtual {v5, v6}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/obs/services/model/fs/ListContentSummaryFsRequest$DirLayer;->getInode()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->text(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    .line 866
    :cond_8f
    invoke-virtual {v2, v5}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->importXMLBuilder(Lcom/jamesmurty/utils/BaseXMLBuilder;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    goto :goto_3e

    .line 869
    :cond_93
    invoke-virtual {v2}, Lcom/jamesmurty/utils/BaseXMLBuilder;->asString()Ljava/lang/String;

    move-result-object v2
    :try_end_97
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_15 .. :try_end_97} :catch_dc
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_15 .. :try_end_97} :catch_dc
    .catch Ljavax/xml/transform/TransformerException; {:try_start_15 .. :try_end_97} :catch_dc

    .line 874
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/obs/services/internal/RestStorageService;->getProviderCredentials()Lcom/obs/services/internal/security/ProviderCredentials;

    move-result-object v4

    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/obs/services/internal/security/ProviderCredentials;->getLocalAuthType(Ljava/lang/String;)Lcom/obs/services/model/AuthTypeEnum;

    move-result-object v4

    sget-object v5, Lcom/obs/services/model/AuthTypeEnum;->OBS:Lcom/obs/services/model/AuthTypeEnum;

    if-eq v4, v5, :cond_af

    const-string v4, "x-amz-"

    goto :goto_b1

    :cond_af
    const-string v4, "x-obs-"

    :goto_b1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "fs-summary-dir-list"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 877
    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/obs/services/internal/utils/ServiceUtils;->toBase64([B)Ljava/lang/String;

    move-result-object v2

    .line 874
    invoke-virtual {p0, v1, v3, v2}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->putHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v2

    .line 878
    invoke-virtual {p0, p1, v1, v2}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequestPaymentHeaders(Lcom/obs/services/model/GenericRequest;Ljava/util/Map;Lcom/obs/services/internal/IHeaders;)Ljava/util/Map;

    .line 880
    new-instance p0, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;

    const/4 p1, 0x0

    invoke-direct {p0, v1, v0, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;-><init>(Ljava/util/Map;Ljava/util/Map;Lokhttp3/RequestBody;)V

    return-object p0

    :catch_dc
    move-exception p0

    .line 871
    new-instance p1, Lcom/obs/services/internal/ServiceException;

    const-string v0, "Failed to build XML document for MultiListContentSummary"

    invoke-direct {p1, v0, p0}, Lcom/obs/services/internal/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method protected transListContentSummaryRequest(Lcom/obs/services/model/fs/ListContentSummaryRequest;)Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;
    .registers 5

    .line 821
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 822
    invoke-virtual {p1}, Lcom/obs/services/model/fs/ListContentSummaryRequest;->getPrefix()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 823
    const-string v1, "prefix"

    invoke-virtual {p1}, Lcom/obs/services/model/fs/ListContentSummaryRequest;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 825
    :cond_14
    invoke-virtual {p1}, Lcom/obs/services/model/fs/ListContentSummaryRequest;->getDelimiter()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_23

    .line 826
    const-string v1, "delimiter"

    invoke-virtual {p1}, Lcom/obs/services/model/fs/ListContentSummaryRequest;->getDelimiter()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 828
    :cond_23
    invoke-virtual {p1}, Lcom/obs/services/model/fs/ListContentSummaryRequest;->getMaxKeys()I

    move-result v1

    if-lez v1, :cond_36

    .line 829
    invoke-virtual {p1}, Lcom/obs/services/model/fs/ListContentSummaryRequest;->getMaxKeys()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "max-keys"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 832
    :cond_36
    invoke-virtual {p1}, Lcom/obs/services/model/fs/ListContentSummaryRequest;->getMarker()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_45

    .line 833
    const-string v1, "marker"

    invoke-virtual {p1}, Lcom/obs/services/model/fs/ListContentSummaryRequest;->getMarker()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 836
    :cond_45
    sget-object v1, Lcom/obs/services/model/SpecialParamEnum;->LISTCONTENTSUMMARY:Lcom/obs/services/model/SpecialParamEnum;

    invoke-virtual {v1}, Lcom/obs/services/model/SpecialParamEnum;->getOriginalStringCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 838
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 840
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v2

    .line 839
    invoke-virtual {p0, p1, v1, v2}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequestPaymentHeaders(Lcom/obs/services/model/GenericRequest;Ljava/util/Map;Lcom/obs/services/internal/IHeaders;)Ljava/util/Map;

    .line 841
    invoke-virtual {p1}, Lcom/obs/services/model/fs/ListContentSummaryRequest;->getListTimeout()I

    move-result v2

    if-lez v2, :cond_7d

    .line 842
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v2

    invoke-interface {v2}, Lcom/obs/services/internal/IHeaders;->listTimeoutHeader()Ljava/lang/String;

    move-result-object v2

    .line 843
    invoke-virtual {p1}, Lcom/obs/services/model/fs/ListContentSummaryRequest;->getListTimeout()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 842
    invoke-virtual {p0, v1, v2, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->putHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    :cond_7d
    new-instance p0, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;

    const/4 p1, 0x0

    invoke-direct {p0, v1, v0, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;-><init>(Ljava/util/Map;Ljava/util/Map;Lokhttp3/RequestBody;)V

    return-object p0
.end method

.method protected transListObjectsRequest(Lcom/obs/services/model/ListObjectsRequest;)Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;
    .registers 5

    .line 793
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 794
    invoke-virtual {p1}, Lcom/obs/services/model/ListObjectsRequest;->getPrefix()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 795
    const-string v1, "prefix"

    invoke-virtual {p1}, Lcom/obs/services/model/ListObjectsRequest;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 797
    :cond_14
    invoke-virtual {p1}, Lcom/obs/services/model/ListObjectsRequest;->getDelimiter()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_23

    .line 798
    const-string v1, "delimiter"

    invoke-virtual {p1}, Lcom/obs/services/model/ListObjectsRequest;->getDelimiter()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 800
    :cond_23
    invoke-virtual {p1}, Lcom/obs/services/model/ListObjectsRequest;->getMaxKeys()I

    move-result v1

    if-lez v1, :cond_36

    .line 801
    invoke-virtual {p1}, Lcom/obs/services/model/ListObjectsRequest;->getMaxKeys()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "max-keys"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    :cond_36
    invoke-virtual {p1}, Lcom/obs/services/model/ListObjectsRequest;->getMarker()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_45

    .line 804
    const-string v1, "marker"

    invoke-virtual {p1}, Lcom/obs/services/model/ListObjectsRequest;->getMarker()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 806
    :cond_45
    invoke-virtual {p1}, Lcom/obs/services/model/ListObjectsRequest;->getEncodingType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_54

    .line 807
    const-string v1, "encoding-type"

    invoke-virtual {p1}, Lcom/obs/services/model/ListObjectsRequest;->getEncodingType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 810
    :cond_54
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 811
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v2

    invoke-virtual {p0, p1, v1, v2}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequestPaymentHeaders(Lcom/obs/services/model/GenericRequest;Ljava/util/Map;Lcom/obs/services/internal/IHeaders;)Ljava/util/Map;

    .line 812
    invoke-virtual {p1}, Lcom/obs/services/model/ListObjectsRequest;->getListTimeout()I

    move-result v2

    if-lez v2, :cond_81

    .line 813
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v2

    invoke-interface {v2}, Lcom/obs/services/internal/IHeaders;->listTimeoutHeader()Ljava/lang/String;

    move-result-object v2

    .line 814
    invoke-virtual {p1}, Lcom/obs/services/model/ListObjectsRequest;->getListTimeout()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 813
    invoke-virtual {p0, v1, v2, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->putHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    :cond_81
    new-instance p0, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;

    const/4 p1, 0x0

    invoke-direct {p0, v1, v0, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;-><init>(Ljava/util/Map;Ljava/util/Map;Lokhttp3/RequestBody;)V

    return-object p0
.end method

.method protected transListVersionsRequest(Lcom/obs/services/model/ListVersionsRequest;)Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;
    .registers 6

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 87
    sget-object v1, Lcom/obs/services/model/SpecialParamEnum;->VERSIONS:Lcom/obs/services/model/SpecialParamEnum;

    invoke-virtual {v1}, Lcom/obs/services/model/SpecialParamEnum;->getOriginalStringCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    invoke-virtual {p1}, Lcom/obs/services/model/ListVersionsRequest;->getPrefix()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 89
    const-string v1, "prefix"

    invoke-virtual {p1}, Lcom/obs/services/model/ListVersionsRequest;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    :cond_1f
    invoke-virtual {p1}, Lcom/obs/services/model/ListVersionsRequest;->getDelimiter()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2e

    .line 92
    const-string v1, "delimiter"

    invoke-virtual {p1}, Lcom/obs/services/model/ListVersionsRequest;->getDelimiter()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    :cond_2e
    invoke-virtual {p1}, Lcom/obs/services/model/ListVersionsRequest;->getMaxKeys()I

    move-result v1

    if-lez v1, :cond_41

    .line 95
    invoke-virtual {p1}, Lcom/obs/services/model/ListVersionsRequest;->getMaxKeys()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "max-keys"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    :cond_41
    invoke-virtual {p1}, Lcom/obs/services/model/ListVersionsRequest;->getKeyMarker()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_50

    .line 98
    const-string v1, "key-marker"

    invoke-virtual {p1}, Lcom/obs/services/model/ListVersionsRequest;->getKeyMarker()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    :cond_50
    invoke-virtual {p1}, Lcom/obs/services/model/ListVersionsRequest;->getVersionIdMarker()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5f

    .line 101
    const-string v1, "version-id-marker"

    invoke-virtual {p1}, Lcom/obs/services/model/ListVersionsRequest;->getVersionIdMarker()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :cond_5f
    invoke-virtual {p1}, Lcom/obs/services/model/ListVersionsRequest;->getEncodingType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6e

    .line 104
    const-string v1, "encoding-type"

    invoke-virtual {p1}, Lcom/obs/services/model/ListVersionsRequest;->getEncodingType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    :cond_6e
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 107
    invoke-virtual {p1}, Lcom/obs/services/model/ListVersionsRequest;->getListTimeout()I

    move-result v2

    if-lez v2, :cond_90

    .line 108
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v2

    invoke-interface {v2}, Lcom/obs/services/internal/IHeaders;->listTimeoutHeader()Ljava/lang/String;

    move-result-object v2

    .line 109
    invoke-virtual {p1}, Lcom/obs/services/model/ListVersionsRequest;->getListTimeout()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 108
    invoke-virtual {p0, v1, v2, v3}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->putHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_90
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v2

    invoke-virtual {p0, p1, v1, v2}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequestPaymentHeaders(Lcom/obs/services/model/GenericRequest;Ljava/util/Map;Lcom/obs/services/internal/IHeaders;)Ljava/util/Map;

    .line 114
    new-instance p0, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;

    const/4 p1, 0x0

    invoke-direct {p0, v1, v0, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;-><init>(Ljava/util/Map;Ljava/util/Map;Lokhttp3/RequestBody;)V

    return-object p0
.end method

.method protected transModifyObjectRequest(Lcom/obs/services/model/ModifyObjectRequest;)Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;
    .registers 6

    .line 475
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/RequestConvertor;->transPutObjectRequest(Lcom/obs/services/model/PutObjectRequest;)Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;

    move-result-object p0

    .line 476
    invoke-virtual {p1}, Lcom/obs/services/model/AppendObjectRequest;->getPosition()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2e

    .line 477
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 478
    sget-object v1, Lcom/obs/services/model/SpecialParamEnum;->MODIFY:Lcom/obs/services/model/SpecialParamEnum;

    invoke-virtual {v1}, Lcom/obs/services/model/SpecialParamEnum;->getOriginalStringCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    invoke-virtual {p1}, Lcom/obs/services/model/AppendObjectRequest;->getPosition()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string v1, "position"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    invoke-virtual {p0, v0}, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;->setParams(Ljava/util/Map;)V

    :cond_2e
    return-object p0
.end method

.method protected transPutObjectRequest(Lcom/obs/services/model/PutObjectRequest;)Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 326
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 327
    invoke-virtual {v1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v2

    .line 329
    invoke-virtual {v1}, Lcom/obs/services/model/PutObjectRequest;->getMetadata()Lcom/obs/services/model/ObjectMetadata;

    move-result-object v3

    if-nez v3, :cond_1d

    new-instance v3, Lcom/obs/services/model/ObjectMetadata;

    invoke-direct {v3}, Lcom/obs/services/model/ObjectMetadata;-><init>()V

    goto :goto_21

    :cond_1d
    invoke-virtual {v1}, Lcom/obs/services/model/PutObjectRequest;->getMetadata()Lcom/obs/services/model/ObjectMetadata;

    move-result-object v3

    .line 331
    :goto_21
    invoke-virtual {v1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4, v6, v3}, Lcom/obs/services/internal/service/RequestConvertor;->setBaseHeaderFromMetadata(Ljava/lang/String;Ljava/util/Map;Lcom/obs/services/model/ObjectMetadata;)V

    .line 333
    invoke-virtual {v1}, Lcom/obs/services/model/PutObjectRequest;->getExpires()I

    move-result v4

    if-ltz v4, :cond_3d

    .line 334
    invoke-interface {v2}, Lcom/obs/services/internal/IHeaders;->expiresHeader()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/obs/services/model/PutObjectRequest;->getExpires()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v6, v4, v5}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->putHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    :cond_3d
    invoke-virtual {v1}, Lcom/obs/services/model/PutObjectBasicRequest;->getSuccessRedirectLocation()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4e

    .line 338
    invoke-interface {v2}, Lcom/obs/services/internal/IHeaders;->successRedirectLocationHeader()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/obs/services/model/PutObjectBasicRequest;->getSuccessRedirectLocation()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v6, v4, v5}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->putHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    :cond_4e
    invoke-virtual {v0, v1, v6, v2}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequestPaymentHeaders(Lcom/obs/services/model/GenericRequest;Ljava/util/Map;Lcom/obs/services/internal/IHeaders;)Ljava/util/Map;

    .line 343
    invoke-virtual {v0, v1, v6}, Lcom/obs/services/internal/service/RequestConvertor;->transExtensionPermissions(Lcom/obs/services/model/PutObjectBasicRequest;Ljava/util/Map;)V

    .line 345
    invoke-virtual {v0, v1, v6, v2}, Lcom/obs/services/internal/service/RequestConvertor;->transSseHeaders(Lcom/obs/services/model/PutObjectBasicRequest;Ljava/util/Map;Lcom/obs/services/internal/IHeaders;)V

    .line 347
    invoke-virtual {v3}, Lcom/obs/services/model/ObjectMetadata;->getContentType()Ljava/lang/String;

    move-result-object v2

    const-string v7, "Content-Type"

    if-nez v2, :cond_64

    .line 348
    invoke-virtual {v3, v7}, Lcom/obs/services/model/ObjectMetadata;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_68

    :cond_64
    invoke-virtual {v3}, Lcom/obs/services/model/ObjectMetadata;->getContentType()Ljava/lang/String;

    move-result-object v2

    :goto_68
    if-nez v2, :cond_76

    .line 350
    invoke-static {}, Lcom/obs/services/internal/utils/Mimetypes;->getInstance()Lcom/obs/services/internal/utils/Mimetypes;

    move-result-object v2

    invoke-virtual {v1}, Lcom/obs/services/model/BaseObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/obs/services/internal/utils/Mimetypes;->getMimetype(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 352
    :cond_76
    invoke-virtual {v3}, Lcom/obs/services/model/ObjectMetadata;->getContentLength()Ljava/lang/Long;

    move-result-object v4

    .line 354
    const-string v8, "Content-Length"

    if-nez v4, :cond_82

    .line 355
    invoke-virtual {v3, v8}, Lcom/obs/services/model/ObjectMetadata;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    :cond_82
    const-wide/16 v9, -0x1

    if-nez v4, :cond_88

    move-wide v3, v9

    goto :goto_90

    .line 358
    :cond_88
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 360
    :goto_90
    invoke-virtual {v1}, Lcom/obs/services/model/PutObjectRequest;->getFile()Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_c6

    .line 361
    const-string v5, "application/octet-stream"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_aa

    .line 362
    invoke-static {}, Lcom/obs/services/internal/utils/Mimetypes;->getInstance()Lcom/obs/services/internal/utils/Mimetypes;

    move-result-object v2

    invoke-virtual {v1}, Lcom/obs/services/model/PutObjectRequest;->getFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/obs/services/internal/utils/Mimetypes;->getMimetype(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    :cond_aa
    move-object v11, v2

    .line 365
    invoke-virtual {v1}, Lcom/obs/services/model/PutObjectRequest;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v12

    .line 367
    :try_start_b3
    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {v1}, Lcom/obs/services/model/PutObjectRequest;->getFile()Ljava/io/File;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1, v2}, Lcom/obs/services/model/PutObjectRequest;->setInput(Ljava/io/InputStream;)V
    :try_end_bf
    .catch Ljava/io/FileNotFoundException; {:try_start_b3 .. :try_end_bf} :catch_c8

    move-wide v2, v3

    move-wide v4, v12

    .line 372
    invoke-direct/range {v0 .. v5}, Lcom/obs/services/internal/service/RequestConvertor;->getContentLengthFromFile(Lcom/obs/services/model/PutObjectRequest;JJ)J

    move-result-wide v3

    move-object v2, v11

    :cond_c6
    move-wide v14, v3

    goto :goto_d0

    .line 369
    :catch_c8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "File doesnot exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 375
    :goto_d0
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 376
    invoke-interface {v6, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    cmp-long v3, v14, v9

    if-lez v3, :cond_e6

    .line 379
    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v6, v8, v3}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->putHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    :cond_e6
    invoke-virtual {v1}, Lcom/obs/services/model/PutObjectRequest;->getInput()Ljava/io/InputStream;

    move-result-object v3

    if-eqz v3, :cond_120

    invoke-virtual {v1}, Lcom/obs/services/model/PutObjectRequest;->getProgressListener()Lcom/obs/services/model/ProgressListener;

    move-result-object v3

    if-eqz v3, :cond_120

    .line 383
    new-instance v11, Lcom/obs/services/internal/SimpleProgressManager;

    .line 384
    invoke-virtual {v1}, Lcom/obs/services/model/PutObjectRequest;->getProgressListener()Lcom/obs/services/model/ProgressListener;

    move-result-object v16

    invoke-virtual {v1}, Lcom/obs/services/model/PutObjectRequest;->getProgressInterval()J

    move-result-wide v3

    const-wide/16 v7, 0x0

    cmp-long v3, v3, v7

    if-lez v3, :cond_10a

    invoke-virtual {v1}, Lcom/obs/services/model/PutObjectRequest;->getProgressInterval()J

    move-result-wide v3

    :goto_106
    move-wide/from16 v17, v3

    move-wide v12, v14

    goto :goto_10e

    :cond_10a
    const-wide/32 v3, 0x19000

    goto :goto_106

    :goto_10e
    const-wide/16 v14, 0x0

    invoke-direct/range {v11 .. v18}, Lcom/obs/services/internal/SimpleProgressManager;-><init>(JJLcom/obs/services/model/ProgressListener;J)V

    .line 386
    new-instance v3, Lcom/obs/services/internal/io/ProgressInputStream;

    invoke-virtual {v1}, Lcom/obs/services/model/PutObjectRequest;->getInput()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4, v11}, Lcom/obs/services/internal/io/ProgressInputStream;-><init>(Ljava/io/InputStream;Lcom/obs/services/internal/ProgressManager;)V

    invoke-virtual {v1, v3}, Lcom/obs/services/model/PutObjectRequest;->setInput(Ljava/io/InputStream;)V

    goto :goto_121

    :cond_120
    move-wide v12, v14

    .line 389
    :goto_121
    invoke-virtual {v1}, Lcom/obs/services/model/PutObjectRequest;->getInput()Ljava/io/InputStream;

    move-result-object v3

    if-nez v3, :cond_129

    const/4 v0, 0x0

    goto :goto_13a

    :cond_129
    new-instance v11, Lcom/obs/services/internal/RepeatableRequestEntity;

    .line 390
    invoke-virtual {v1}, Lcom/obs/services/model/PutObjectRequest;->getInput()Ljava/io/InputStream;

    move-result-object v1

    iget-object v0, v0, Lcom/obs/services/internal/RestConnectionService;->obsProperties:Lcom/obs/services/internal/ObsProperties;

    move-object/from16 v16, v0

    move-wide v14, v12

    move-object v12, v1

    move-object v13, v2

    invoke-direct/range {v11 .. v16}, Lcom/obs/services/internal/RepeatableRequestEntity;-><init>(Ljava/io/InputStream;Ljava/lang/String;JLcom/obs/services/internal/ObsProperties;)V

    move-object v0, v11

    .line 393
    :goto_13a
    new-instance v1, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;

    invoke-direct {v1, v6, v0}, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;-><init>(Ljava/util/Map;Lokhttp3/RequestBody;)V

    return-object v1
.end method

.method protected transRangeHeader(Lcom/obs/services/model/GetObjectRequest;Ljava/util/Map;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/obs/services/model/GetObjectRequest;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 625
    invoke-virtual {p1}, Lcom/obs/services/model/GetObjectRequest;->getRangeStart()Ljava/lang/Long;

    move-result-object p0

    const-string v0, ""

    if-eqz p0, :cond_1e

    .line 626
    invoke-virtual {p1}, Lcom/obs/services/model/GetObjectRequest;->getRangeStart()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-string p0, "start range should not be negative."

    invoke-static {v1, v2, p0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNegative(JLjava/lang/String;)V

    .line 628
    invoke-virtual {p1}, Lcom/obs/services/model/GetObjectRequest;->getRangeStart()Ljava/lang/Long;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1f

    :cond_1e
    move-object p0, v0

    .line 631
    :goto_1f
    invoke-virtual {p1}, Lcom/obs/services/model/GetObjectRequest;->getRangeEnd()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_3b

    .line 632
    invoke-virtual {p1}, Lcom/obs/services/model/GetObjectRequest;->getRangeEnd()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-string v3, "end range should not be negative."

    invoke-static {v1, v2, v3}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNegative(JLjava/lang/String;)V

    .line 634
    invoke-virtual {p1}, Lcom/obs/services/model/GetObjectRequest;->getRangeEnd()Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3c

    :cond_3b
    move-object v1, v0

    .line 637
    :goto_3c
    invoke-virtual {p1}, Lcom/obs/services/model/GetObjectRequest;->getRangeStart()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_65

    invoke-virtual {p1}, Lcom/obs/services/model/GetObjectRequest;->getRangeEnd()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_65

    .line 638
    invoke-virtual {p1}, Lcom/obs/services/model/GetObjectRequest;->getRangeStart()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/obs/services/model/GetObjectRequest;->getRangeEnd()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-gtz p1, :cond_5d

    goto :goto_65

    .line 639
    :cond_5d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "start must be less than end."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 643
    :cond_65
    :goto_65
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_73

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_72

    goto :goto_73

    :cond_72
    return-void

    .line 644
    :cond_73
    :goto_73
    const-string p1, "bytes=%s-%s"

    filled-new-array {p0, v1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 645
    const-string p1, "Range"

    invoke-interface {p2, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected transRestoreObjectResultToRestoreObjectStatus(Lcom/obs/services/model/RestoreObjectResult;)Lcom/obs/services/model/RestoreObjectRequest$RestoreObjectStatus;
    .registers 3

    .line 318
    invoke-virtual {p1}, Lcom/obs/services/model/HeaderResponse;->getStatusCode()I

    move-result p0

    invoke-static {p0}, Lcom/obs/services/model/RestoreObjectRequest$RestoreObjectStatus;->valueOf(I)Lcom/obs/services/model/RestoreObjectRequest$RestoreObjectStatus;

    move-result-object p0

    .line 319
    invoke-virtual {p1}, Lcom/obs/services/model/HeaderResponse;->getResponseHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/obs/services/internal/service/InternalHeaderResponse;->setResponseHeaders(Ljava/util/Map;)V

    .line 320
    invoke-virtual {p1}, Lcom/obs/services/model/HeaderResponse;->getStatusCode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/InternalHeaderResponse;->setStatusCode(I)V

    return-object p0
.end method

.method protected transSetObjectMetadataRequest(Lcom/obs/services/model/SetObjectMetadataRequest;)Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;
    .registers 10

    .line 705
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 706
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v1

    .line 707
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/obs/services/internal/RestStorageService;->getIConvertor(Ljava/lang/String;)Lcom/obs/services/internal/IConvertor;

    move-result-object v2

    .line 709
    invoke-virtual {p1}, Lcom/obs/services/model/SetObjectMetadataRequest;->getAllUserMetadata()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_21
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, ""

    if-eqz v4, :cond_52

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 710
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 711
    invoke-static {v6}, Lcom/obs/services/internal/utils/ServiceUtils;->isValid(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3c

    goto :goto_21

    .line 714
    :cond_3c
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 715
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_47

    goto :goto_4e

    :cond_47
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    :goto_4e
    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_21

    .line 718
    :cond_52
    invoke-virtual {p1}, Lcom/obs/services/model/SetObjectMetadataRequest;->getObjectStorageClass()Lcom/obs/services/model/StorageClassEnum;

    move-result-object v3

    if-eqz v3, :cond_67

    .line 719
    invoke-interface {v1}, Lcom/obs/services/internal/IHeaders;->storageClassHeader()Ljava/lang/String;

    move-result-object v3

    .line 720
    invoke-virtual {p1}, Lcom/obs/services/model/SetObjectMetadataRequest;->getObjectStorageClass()Lcom/obs/services/model/StorageClassEnum;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/obs/services/internal/IConvertor;->transStorageClass(Lcom/obs/services/model/StorageClassEnum;)Ljava/lang/String;

    move-result-object v2

    .line 719
    invoke-virtual {p0, v0, v3, v2}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->putHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    :cond_67
    invoke-virtual {p1}, Lcom/obs/services/model/SetObjectMetadataRequest;->getWebSiteRedirectLocation()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_78

    .line 724
    invoke-interface {v1}, Lcom/obs/services/internal/IHeaders;->websiteRedirectLocationHeader()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/obs/services/model/SetObjectMetadataRequest;->getWebSiteRedirectLocation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->putHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    :cond_78
    invoke-virtual {p1}, Lcom/obs/services/model/SetObjectMetadataRequest;->getContentDisposition()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_87

    .line 728
    const-string v2, "Content-Disposition"

    invoke-virtual {p1}, Lcom/obs/services/model/SetObjectMetadataRequest;->getContentDisposition()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->putHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    :cond_87
    invoke-virtual {p1}, Lcom/obs/services/model/SetObjectMetadataRequest;->getContentEncoding()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_96

    .line 732
    const-string v2, "Content-Encoding"

    invoke-virtual {p1}, Lcom/obs/services/model/SetObjectMetadataRequest;->getContentEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->putHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    :cond_96
    invoke-virtual {p1}, Lcom/obs/services/model/SetObjectMetadataRequest;->getContentLanguage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a5

    .line 736
    const-string v2, "Content-Language"

    invoke-virtual {p1}, Lcom/obs/services/model/SetObjectMetadataRequest;->getContentLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->putHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    :cond_a5
    invoke-virtual {p1}, Lcom/obs/services/model/SetObjectMetadataRequest;->getContentType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b4

    .line 740
    const-string v2, "Content-Type"

    invoke-virtual {p1}, Lcom/obs/services/model/SetObjectMetadataRequest;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->putHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    :cond_b4
    invoke-virtual {p1}, Lcom/obs/services/model/SetObjectMetadataRequest;->getCacheControl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c3

    .line 744
    const-string v2, "Cache-Control"

    invoke-virtual {p1}, Lcom/obs/services/model/SetObjectMetadataRequest;->getCacheControl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->putHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    :cond_c3
    invoke-virtual {p1}, Lcom/obs/services/model/SetObjectMetadataRequest;->getExpires()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_d2

    .line 748
    const-string v2, "Expires"

    invoke-virtual {p1}, Lcom/obs/services/model/SetObjectMetadataRequest;->getExpires()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->putHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    :cond_d2
    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequestPaymentHeaders(Lcom/obs/services/model/GenericRequest;Ljava/util/Map;Lcom/obs/services/internal/IHeaders;)Ljava/util/Map;

    .line 752
    invoke-interface {v1}, Lcom/obs/services/internal/IHeaders;->metadataDirectiveHeader()Ljava/lang/String;

    move-result-object v1

    .line 753
    invoke-virtual {p1}, Lcom/obs/services/model/SetObjectMetadataRequest;->isRemoveUnset()Z

    move-result v2

    if-eqz v2, :cond_e2

    const-string v2, "REPLACE"

    goto :goto_e4

    :cond_e2
    const-string v2, "REPLACE_NEW"

    .line 752
    :goto_e4
    invoke-virtual {p0, v0, v1, v2}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->putHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 756
    sget-object v1, Lcom/obs/services/model/SpecialParamEnum;->METADATA:Lcom/obs/services/model/SpecialParamEnum;

    invoke-virtual {v1}, Lcom/obs/services/model/SpecialParamEnum;->getOriginalStringCode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 757
    invoke-virtual {p1}, Lcom/obs/services/model/SetObjectMetadataRequest;->getVersionId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_104

    .line 758
    const-string v1, "versionId"

    invoke-virtual {p1}, Lcom/obs/services/model/SetObjectMetadataRequest;->getVersionId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    :cond_104
    new-instance p1, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;

    const/4 v1, 0x0

    invoke-direct {p1, v0, p0, v1}, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;-><init>(Ljava/util/Map;Ljava/util/Map;Lokhttp3/RequestBody;)V

    return-object p1
.end method

.method protected transSseCHeaders(Lcom/obs/services/model/SseCHeader;Ljava/util/Map;Lcom/obs/services/internal/IHeaders;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/obs/services/model/SseCHeader;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/obs/services/internal/IHeaders;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_4

    goto/16 :goto_8e

    .line 217
    :cond_4
    invoke-virtual {p1}, Lcom/obs/services/model/SseCHeader;->getSSEAlgorithm()Lcom/obs/services/model/SSEAlgorithmEnum;

    move-result-object v0

    invoke-virtual {v0}, Lcom/obs/services/model/SSEAlgorithmEnum;->getCode()Ljava/lang/String;

    move-result-object v0

    .line 219
    invoke-interface {p3}, Lcom/obs/services/internal/IHeaders;->sseCHeader()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/obs/services/internal/utils/ServiceUtils;->toValid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v1, v0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->putHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-virtual {p1}, Lcom/obs/services/model/SseCHeader;->getSseCKeyBase64()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fail to read sseCkey"

    if-eqz v0, :cond_52

    .line 222
    :try_start_1f
    invoke-interface {p3}, Lcom/obs/services/internal/IHeaders;->sseCKeyHeader()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/obs/services/model/SseCHeader;->getSseCKeyBase64()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p2, v0, v2}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->putHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-interface {p3}, Lcom/obs/services/internal/IHeaders;->sseCKeyMd5Header()Ljava/lang/String;

    move-result-object p3

    .line 224
    invoke-virtual {p1}, Lcom/obs/services/model/SseCHeader;->getSseCKeyBase64()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/obs/services/internal/utils/ServiceUtils;->fromBase64(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/obs/services/internal/utils/ServiceUtils;->computeMD5Hash([B)[B

    move-result-object p1

    invoke-static {p1}, Lcom/obs/services/internal/utils/ServiceUtils;->toBase64([B)Ljava/lang/String;

    move-result-object p1

    .line 223
    invoke-virtual {p0, p2, p3, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->putHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_41} :catch_44
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1f .. :try_end_41} :catch_42

    return-void

    :catch_42
    move-exception p0

    goto :goto_46

    :catch_44
    move-exception p0

    goto :goto_4c

    .line 228
    :goto_46
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 226
    :goto_4c
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 230
    :cond_52
    invoke-virtual {p1}, Lcom/obs/services/model/SseCHeader;->getSseCKey()[B

    move-result-object v0

    if-eqz v0, :cond_8e

    .line 231
    invoke-virtual {p1}, Lcom/obs/services/model/SseCHeader;->getSseCKey()[B

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_8e

    .line 233
    :try_start_5f
    invoke-virtual {p1}, Lcom/obs/services/model/SseCHeader;->getSseCKey()[B

    move-result-object p1

    .line 234
    invoke-interface {p3}, Lcom/obs/services/internal/IHeaders;->sseCKeyHeader()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/obs/services/internal/utils/ServiceUtils;->toBase64([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p2, v0, v2}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->putHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    invoke-interface {p3}, Lcom/obs/services/internal/IHeaders;->sseCKeyMd5Header()Ljava/lang/String;

    move-result-object p3

    .line 236
    invoke-static {p1}, Lcom/obs/services/internal/utils/ServiceUtils;->computeMD5Hash([B)[B

    move-result-object p1

    invoke-static {p1}, Lcom/obs/services/internal/utils/ServiceUtils;->toBase64([B)Ljava/lang/String;

    move-result-object p1

    .line 235
    invoke-virtual {p0, p2, p3, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->putHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_7d} :catch_80
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5f .. :try_end_7d} :catch_7e

    return-void

    :catch_7e
    move-exception p0

    goto :goto_82

    :catch_80
    move-exception p0

    goto :goto_88

    .line 240
    :goto_82
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 238
    :goto_88
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_8e
    :goto_8e
    return-void
.end method

.method protected transSseCSourceHeaders(Lcom/obs/services/model/SseCHeader;Ljava/util/Map;Lcom/obs/services/internal/IHeaders;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/obs/services/model/SseCHeader;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/obs/services/internal/IHeaders;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_8c

    .line 556
    invoke-virtual {p1}, Lcom/obs/services/model/SseCHeader;->getSSEAlgorithm()Lcom/obs/services/model/SSEAlgorithmEnum;

    move-result-object v0

    invoke-virtual {v0}, Lcom/obs/services/model/SSEAlgorithmEnum;->getCode()Ljava/lang/String;

    move-result-object v0

    .line 557
    invoke-interface {p3}, Lcom/obs/services/internal/IHeaders;->copySourceSseCHeader()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/obs/services/internal/utils/ServiceUtils;->toValid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v1, v0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->putHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    invoke-virtual {p1}, Lcom/obs/services/model/SseCHeader;->getSseCKeyBase64()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fail to read sseCkey"

    if-eqz v0, :cond_50

    .line 560
    :try_start_1d
    invoke-interface {p3}, Lcom/obs/services/internal/IHeaders;->copySourceSseCKeyHeader()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/obs/services/model/SseCHeader;->getSseCKeyBase64()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p2, v0, v2}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->putHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    invoke-interface {p3}, Lcom/obs/services/internal/IHeaders;->copySourceSseCKeyMd5Header()Ljava/lang/String;

    move-result-object p3

    .line 562
    invoke-virtual {p1}, Lcom/obs/services/model/SseCHeader;->getSseCKeyBase64()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/obs/services/internal/utils/ServiceUtils;->fromBase64(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/obs/services/internal/utils/ServiceUtils;->computeMD5Hash([B)[B

    move-result-object p1

    .line 561
    invoke-static {p1}, Lcom/obs/services/internal/utils/ServiceUtils;->toBase64([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p3, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->putHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_3f} :catch_42
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1d .. :try_end_3f} :catch_40

    return-void

    :catch_40
    move-exception p0

    goto :goto_44

    :catch_42
    move-exception p0

    goto :goto_4a

    .line 566
    :goto_44
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 564
    :goto_4a
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 568
    :cond_50
    invoke-virtual {p1}, Lcom/obs/services/model/SseCHeader;->getSseCKey()[B

    move-result-object v0

    if-eqz v0, :cond_8c

    .line 569
    invoke-virtual {p1}, Lcom/obs/services/model/SseCHeader;->getSseCKey()[B

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_8c

    .line 571
    :try_start_5d
    invoke-virtual {p1}, Lcom/obs/services/model/SseCHeader;->getSseCKey()[B

    move-result-object p1

    .line 572
    invoke-interface {p3}, Lcom/obs/services/internal/IHeaders;->copySourceSseCKeyHeader()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/obs/services/internal/utils/ServiceUtils;->toBase64([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p2, v0, v2}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->putHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    invoke-interface {p3}, Lcom/obs/services/internal/IHeaders;->copySourceSseCKeyMd5Header()Ljava/lang/String;

    move-result-object p3

    .line 574
    invoke-static {p1}, Lcom/obs/services/internal/utils/ServiceUtils;->computeMD5Hash([B)[B

    move-result-object p1

    invoke-static {p1}, Lcom/obs/services/internal/utils/ServiceUtils;->toBase64([B)Ljava/lang/String;

    move-result-object p1

    .line 573
    invoke-virtual {p0, p2, p3, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->putHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_7b} :catch_7e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5d .. :try_end_7b} :catch_7c

    return-void

    :catch_7c
    move-exception p0

    goto :goto_80

    :catch_7e
    move-exception p0

    goto :goto_86

    .line 578
    :goto_80
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 576
    :goto_86
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_8c
    return-void
.end method

.method protected transSseHeaders(Lcom/obs/services/model/PutObjectBasicRequest;Ljava/util/Map;Lcom/obs/services/internal/IHeaders;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/obs/services/model/PutObjectBasicRequest;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/obs/services/internal/IHeaders;",
            ")V"
        }
    .end annotation

    .line 204
    invoke-virtual {p1}, Lcom/obs/services/model/PutObjectBasicRequest;->getSseCHeader()Lcom/obs/services/model/SseCHeader;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 205
    invoke-virtual {p1}, Lcom/obs/services/model/PutObjectBasicRequest;->getSseCHeader()Lcom/obs/services/model/SseCHeader;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/obs/services/internal/service/RequestConvertor;->transSseCHeaders(Lcom/obs/services/model/SseCHeader;Ljava/util/Map;Lcom/obs/services/internal/IHeaders;)V

    return-void

    .line 206
    :cond_e
    invoke-virtual {p1}, Lcom/obs/services/model/PutObjectBasicRequest;->getSseKmsHeader()Lcom/obs/services/model/SseKmsHeader;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 207
    invoke-virtual {p1}, Lcom/obs/services/model/PutObjectBasicRequest;->getSseKmsHeader()Lcom/obs/services/model/SseKmsHeader;

    move-result-object v0

    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p2, p3, p1}, Lcom/obs/services/internal/service/RequestConvertor;->transSseKmsHeaders(Lcom/obs/services/model/SseKmsHeader;Ljava/util/Map;Lcom/obs/services/internal/IHeaders;Ljava/lang/String;)V

    :cond_1f
    return-void
.end method

.method protected transSseKmsHeaders(Lcom/obs/services/model/SseKmsHeader;Ljava/util/Map;Lcom/obs/services/internal/IHeaders;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/obs/services/model/SseKmsHeader;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/obs/services/internal/IHeaders;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_3

    goto :goto_66

    .line 959
    :cond_3
    invoke-virtual {p0}, Lcom/obs/services/internal/RestStorageService;->getProviderCredentials()Lcom/obs/services/internal/security/ProviderCredentials;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/obs/services/internal/security/ProviderCredentials;->getLocalAuthType(Ljava/lang/String;)Lcom/obs/services/model/AuthTypeEnum;

    move-result-object p4

    sget-object v0, Lcom/obs/services/model/AuthTypeEnum;->OBS:Lcom/obs/services/model/AuthTypeEnum;

    if-eq p4, v0, :cond_29

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "aws:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 960
    invoke-virtual {p1}, Lcom/obs/services/model/SseKmsHeader;->getSSEAlgorithm()Lcom/obs/services/model/SSEAlgorithmEnum;

    move-result-object v0

    invoke-virtual {v0}, Lcom/obs/services/model/SSEAlgorithmEnum;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    goto :goto_31

    :cond_29
    invoke-virtual {p1}, Lcom/obs/services/model/SseKmsHeader;->getSSEAlgorithm()Lcom/obs/services/model/SSEAlgorithmEnum;

    move-result-object p4

    invoke-virtual {p4}, Lcom/obs/services/model/SSEAlgorithmEnum;->getCode()Ljava/lang/String;

    move-result-object p4

    .line 961
    :goto_31
    invoke-interface {p3}, Lcom/obs/services/internal/IHeaders;->sseKmsHeader()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4}, Lcom/obs/services/internal/utils/ServiceUtils;->toValid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p2, v0, p4}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->putHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    invoke-virtual {p1}, Lcom/obs/services/model/SseKmsHeader;->getKmsKeyId()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/obs/services/internal/utils/ServiceUtils;->isValid(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_51

    .line 963
    invoke-interface {p3}, Lcom/obs/services/internal/IHeaders;->sseKmsKeyHeader()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1}, Lcom/obs/services/model/SseKmsHeader;->getKmsKeyId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, p4, v0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->putHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    :cond_51
    invoke-virtual {p1}, Lcom/obs/services/model/SseKmsHeader;->getProjectId()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/obs/services/internal/utils/ServiceUtils;->isValid(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_66

    .line 967
    invoke-interface {p3}, Lcom/obs/services/internal/IHeaders;->sseKmsProjectIdHeader()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lcom/obs/services/model/SseKmsHeader;->getProjectId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p3, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->putHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_66
    :goto_66
    return-void
.end method

.method protected transUploadPartRequest(Lcom/obs/services/model/UploadPartRequest;)Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;
    .registers 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 893
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 894
    invoke-virtual {v1}, Lcom/obs/services/model/UploadPartRequest;->getPartNumber()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "partNumber"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 895
    const-string v3, "uploadId"

    invoke-virtual {v1}, Lcom/obs/services/model/AbstractMultipartRequest;->getUploadId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 897
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 898
    invoke-virtual {v1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v4

    .line 900
    invoke-virtual {v1}, Lcom/obs/services/model/UploadPartRequest;->getContentMd5()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/obs/services/internal/utils/ServiceUtils;->isValid(Ljava/lang/String;)Z

    move-result v5

    const-string v6, "Content-MD5"

    if-eqz v5, :cond_43

    .line 901
    invoke-virtual {v1}, Lcom/obs/services/model/UploadPartRequest;->getContentMd5()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 904
    :cond_43
    invoke-virtual {v0, v1, v3, v4}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequestPaymentHeaders(Lcom/obs/services/model/GenericRequest;Ljava/util/Map;Lcom/obs/services/internal/IHeaders;)Ljava/util/Map;

    .line 905
    invoke-virtual {v1}, Lcom/obs/services/model/UploadPartRequest;->getSseCHeader()Lcom/obs/services/model/SseCHeader;

    move-result-object v5

    invoke-virtual {v0, v5, v3, v4}, Lcom/obs/services/internal/service/RequestConvertor;->transSseCHeaders(Lcom/obs/services/model/SseCHeader;Ljava/util/Map;Lcom/obs/services/internal/IHeaders;)V

    .line 908
    invoke-virtual {v1}, Lcom/obs/services/model/UploadPartRequest;->getFile()Ljava/io/File;

    move-result-object v4

    const-wide/16 v8, 0x0

    if-eqz v4, :cond_111

    .line 909
    invoke-virtual {v1}, Lcom/obs/services/model/UploadPartRequest;->getFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 910
    invoke-virtual {v1}, Lcom/obs/services/model/UploadPartRequest;->getOffset()J

    move-result-wide v10

    cmp-long v10, v10, v8

    if-ltz v10, :cond_72

    invoke-virtual {v1}, Lcom/obs/services/model/UploadPartRequest;->getOffset()J

    move-result-wide v10

    cmp-long v10, v10, v4

    if-gez v10, :cond_72

    invoke-virtual {v1}, Lcom/obs/services/model/UploadPartRequest;->getOffset()J

    move-result-wide v10

    goto :goto_73

    :cond_72
    move-wide v10, v8

    .line 911
    :goto_73
    invoke-virtual {v1}, Lcom/obs/services/model/UploadPartRequest;->getPartSize()Ljava/lang/Long;

    move-result-object v12

    if-eqz v12, :cond_9c

    invoke-virtual {v1}, Lcom/obs/services/model/UploadPartRequest;->getPartSize()Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    cmp-long v12, v12, v8

    if-lez v12, :cond_9c

    .line 912
    invoke-virtual {v1}, Lcom/obs/services/model/UploadPartRequest;->getPartSize()Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    sub-long v14, v4, v10

    cmp-long v12, v12, v14

    if-gtz v12, :cond_9c

    invoke-virtual {v1}, Lcom/obs/services/model/UploadPartRequest;->getPartSize()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_9d

    :cond_9c
    sub-long/2addr v4, v10

    .line 916
    :goto_9d
    :try_start_9d
    invoke-virtual {v1}, Lcom/obs/services/model/UploadPartRequest;->isAttachMd5()Z

    move-result v12

    if-eqz v12, :cond_c4

    invoke-virtual {v1}, Lcom/obs/services/model/UploadPartRequest;->getContentMd5()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/obs/services/internal/utils/ServiceUtils;->isValid(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_c4

    .line 917
    new-instance v12, Ljava/io/FileInputStream;

    .line 918
    invoke-virtual {v1}, Lcom/obs/services/model/UploadPartRequest;->getFile()Ljava/io/File;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v12, v4, v5, v10, v11}, Lcom/obs/services/internal/utils/ServiceUtils;->computeMD5Hash(Ljava/io/InputStream;JJ)[B

    move-result-object v12

    .line 917
    invoke-static {v12}, Lcom/obs/services/internal/utils/ServiceUtils;->toBase64([B)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v3, v6, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c4

    :catch_c2
    move-exception v0

    goto :goto_104

    .line 920
    :cond_c4
    :goto_c4
    new-instance v6, Ljava/io/FileInputStream;

    invoke-virtual {v1}, Lcom/obs/services/model/UploadPartRequest;->getFile()Ljava/io/File;

    move-result-object v12

    invoke-direct {v6, v12}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1, v6}, Lcom/obs/services/model/UploadPartRequest;->setInput(Ljava/io/InputStream;)V

    .line 921
    invoke-virtual {v1}, Lcom/obs/services/model/UploadPartRequest;->getInput()Ljava/io/InputStream;

    move-result-object v6

    invoke-virtual {v6, v10, v11}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v12

    .line 922
    sget-object v6, Lcom/obs/services/internal/service/RequestConvertor;->log:Lcom/obs/log/ILogger;

    invoke-interface {v6}, Lcom/obs/log/ILogger;->isDebugEnabled()Z

    move-result v14

    if-eqz v14, :cond_ff

    .line 923
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v15, -0x1

    const-string v7, "Skip "

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " bytes; offset : "

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/obs/log/ILogger;->debug(Ljava/lang/CharSequence;)V
    :try_end_fe
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_fe} :catch_c2

    goto :goto_101

    :cond_ff
    const-wide/16 v15, -0x1

    :goto_101
    move-wide/from16 v18, v4

    goto :goto_136

    .line 926
    :goto_104
    invoke-virtual {v1}, Lcom/obs/services/model/UploadPartRequest;->getInput()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/obs/services/internal/utils/ServiceUtils;->closeStream(Ljava/io/Closeable;)V

    .line 927
    new-instance v1, Lcom/obs/services/internal/ServiceException;

    invoke-direct {v1, v0}, Lcom/obs/services/internal/ServiceException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_111
    const-wide/16 v15, -0x1

    .line 929
    invoke-virtual {v1}, Lcom/obs/services/model/UploadPartRequest;->getInput()Ljava/io/InputStream;

    move-result-object v4

    if-eqz v4, :cond_134

    .line 930
    invoke-virtual {v1}, Lcom/obs/services/model/UploadPartRequest;->getPartSize()Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_134

    invoke-virtual {v1}, Lcom/obs/services/model/UploadPartRequest;->getPartSize()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v8

    if-lez v4, :cond_134

    .line 931
    invoke-virtual {v1}, Lcom/obs/services/model/UploadPartRequest;->getPartSize()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_101

    :cond_134
    move-wide/from16 v18, v15

    .line 935
    :goto_136
    invoke-virtual {v1}, Lcom/obs/services/model/UploadPartRequest;->getInput()Ljava/io/InputStream;

    move-result-object v4

    if-eqz v4, :cond_16e

    invoke-virtual {v1}, Lcom/obs/services/model/UploadPartRequest;->getProgressListener()Lcom/obs/services/model/ProgressListener;

    move-result-object v4

    if-eqz v4, :cond_16e

    .line 936
    new-instance v17, Lcom/obs/services/internal/SimpleProgressManager;

    invoke-virtual {v1}, Lcom/obs/services/model/UploadPartRequest;->getProgressListener()Lcom/obs/services/model/ProgressListener;

    move-result-object v22

    .line 937
    invoke-virtual {v1}, Lcom/obs/services/model/UploadPartRequest;->getProgressInterval()J

    move-result-wide v4

    cmp-long v4, v4, v8

    if-lez v4, :cond_157

    invoke-virtual {v1}, Lcom/obs/services/model/UploadPartRequest;->getProgressInterval()J

    move-result-wide v4

    :goto_154
    move-wide/from16 v23, v4

    goto :goto_15b

    :cond_157
    const-wide/32 v4, 0x19000

    goto :goto_154

    :goto_15b
    const-wide/16 v20, 0x0

    invoke-direct/range {v17 .. v24}, Lcom/obs/services/internal/SimpleProgressManager;-><init>(JJLcom/obs/services/model/ProgressListener;J)V

    move-object/from16 v4, v17

    .line 939
    new-instance v5, Lcom/obs/services/internal/io/ProgressInputStream;

    invoke-virtual {v1}, Lcom/obs/services/model/UploadPartRequest;->getInput()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Lcom/obs/services/internal/io/ProgressInputStream;-><init>(Ljava/io/InputStream;Lcom/obs/services/internal/ProgressManager;)V

    invoke-virtual {v1, v5}, Lcom/obs/services/model/UploadPartRequest;->setInput(Ljava/io/InputStream;)V

    .line 942
    :cond_16e
    invoke-static {}, Lcom/obs/services/internal/utils/Mimetypes;->getInstance()Lcom/obs/services/internal/utils/Mimetypes;

    move-result-object v4

    invoke-virtual {v1}, Lcom/obs/services/model/BaseObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/obs/services/internal/utils/Mimetypes;->getMimetype(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 943
    const-string v5, "Content-Type"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    cmp-long v5, v18, v15

    if-lez v5, :cond_18c

    .line 946
    const-string v5, "Content-Length"

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v3, v5, v6}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->putHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    :cond_18c
    invoke-virtual {v1}, Lcom/obs/services/model/UploadPartRequest;->getInput()Ljava/io/InputStream;

    move-result-object v5

    if-nez v5, :cond_194

    const/4 v0, 0x0

    goto :goto_1a9

    :cond_194
    new-instance v17, Lcom/obs/services/internal/RepeatableRequestEntity;

    .line 949
    invoke-virtual {v1}, Lcom/obs/services/model/UploadPartRequest;->getInput()Ljava/io/InputStream;

    move-result-object v1

    iget-object v0, v0, Lcom/obs/services/internal/RestConnectionService;->obsProperties:Lcom/obs/services/internal/ObsProperties;

    move-object/from16 v22, v0

    move-wide/from16 v20, v18

    move-object/from16 v18, v1

    move-object/from16 v19, v4

    invoke-direct/range {v17 .. v22}, Lcom/obs/services/internal/RepeatableRequestEntity;-><init>(Ljava/io/InputStream;Ljava/lang/String;JLcom/obs/services/internal/ObsProperties;)V

    move-object/from16 v0, v17

    .line 950
    :goto_1a9
    new-instance v1, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;

    invoke-direct {v1, v3, v2, v0}, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;-><init>(Ljava/util/Map;Ljava/util/Map;Lokhttp3/RequestBody;)V

    return-object v1
.end method

.method protected transWriteFileRequest(Lcom/obs/services/model/fs/WriteFileRequest;)Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;
    .registers 6

    .line 464
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/RequestConvertor;->transPutObjectRequest(Lcom/obs/services/model/PutObjectRequest;)Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;

    move-result-object p0

    .line 465
    invoke-virtual {p1}, Lcom/obs/services/model/AppendObjectRequest;->getPosition()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2e

    .line 466
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 467
    sget-object v1, Lcom/obs/services/model/SpecialParamEnum;->MODIFY:Lcom/obs/services/model/SpecialParamEnum;

    invoke-virtual {v1}, Lcom/obs/services/model/SpecialParamEnum;->getOriginalStringCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    invoke-virtual {p1}, Lcom/obs/services/model/AppendObjectRequest;->getPosition()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string v1, "position"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    invoke-virtual {p0, v0}, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;->setParams(Ljava/util/Map;)V

    :cond_2e
    return-object p0
.end method
