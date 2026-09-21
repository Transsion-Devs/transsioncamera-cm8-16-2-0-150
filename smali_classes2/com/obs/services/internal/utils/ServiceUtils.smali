.class public Lcom/obs/services/internal/utils/ServiceUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final ISO_8601_DATE_PARSER_STRING:Ljava/lang/String; = "yyyy-MM-dd"

.field protected static final ISO_8601_TIME_MIDNING_PARSER_STRING:Ljava/lang/String; = "yyyy-MM-dd\'T\'00:00:00\'Z\'"

.field protected static final ISO_8601_TIME_PARSER_STRING:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

.field protected static final ISO_8601_TIME_PARSER_WALRUS_STRING:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss"

.field public static final LoggableAmzMetadata:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final LoggableInfo:Ljava/lang/String; = "******"

.field public static final LoggableObsMetadata:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final LoggableResponseHeader:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static final RFC_822_TIME_PARSER_STRING:Ljava/lang/String; = "EEE, dd MMM yyyy HH:mm:ss z"

.field private static final log:Lcom/obs/log/ILogger;

.field private static pattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 23

    .line 64
    const-class v0, Lcom/obs/services/internal/utils/ServiceUtils;

    invoke-static {v0}, Lcom/obs/log/LoggerBuilder;->getLogger(Ljava/lang/Class;)Lcom/obs/log/ILogger;

    move-result-object v0

    sput-object v0, Lcom/obs/services/internal/utils/ServiceUtils;->log:Lcom/obs/log/ILogger;

    .line 72
    const-string v0, "^((2[0-4]\\d|25[0-5]|[01]?\\d\\d?)\\.){3}(2[0-4]\\d|25[0-5]|[01]?\\d\\d?)$"

    .line 73
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/obs/services/internal/utils/ServiceUtils;->pattern:Ljava/util/regex/Pattern;

    .line 738
    new-instance v0, Ljava/util/HashSet;

    const-string v21, "content-range"

    const-string v22, "accept-encoding"

    const-string v1, "content-type"

    const-string v2, "content-length"

    const-string v3, "content-language"

    const-string v4, "expires"

    const-string v5, "origin"

    const-string v6, "cache-control"

    const-string v7, "content-disposition"

    const-string v8, "content-encoding"

    const-string v9, "access-control-request-method"

    const-string v10, "access-control-request-headers"

    const-string v11, "x-default-storage-class"

    const-string v12, "location"

    const-string v13, "date"

    const-string v14, "range"

    const-string v15, "host"

    const-string v16, "if-modified-since"

    const-string v17, "if-unmodified-since"

    const-string v18, "if-match"

    const-string v19, "if-none-match"

    const-string v20, "last-modified"

    filled-new-array/range {v1 .. v22}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/obs/services/internal/utils/ServiceUtils;->LoggableResponseHeader:Ljava/util/HashSet;

    .line 745
    new-instance v0, Ljava/util/HashSet;

    const-string v20, "x-obs-object-lock-mode"

    const-string v21, "x-obs-object-lock-retain-until-date"

    const-string v1, "Origin"

    const-string v2, "Access-Control-Request-Headers"

    const-string v3, "x-obs-server-side-encryption-customer-algorithm"

    const-string v4, "x-obs-expiration"

    const-string v5, "x-obs-website-redirect-location"

    const-string v6, "x-obs-version-id"

    const-string v7, "Access-Control-Allow-Origin"

    const-string v8, "Access-Control-Allow-Headers"

    const-string v9, "Access-Control-Max-Age"

    const-string v10, "Access-Control-Allow-Methods"

    const-string v11, "Access-Control-Expose-Headers"

    const-string v12, "x-obs-server-side-encryption"

    const-string v13, "x-obs-server-side-data-encryption"

    const-string v14, "x-obs-server-side-encryption-customer-algorithm"

    const-string v15, "x-obs-storage-class"

    const-string v16, "x-obs-restore"

    const-string v17, "x-obs-object-type"

    const-string v18, "x-obs-next-append-position"

    const-string v19, "x-obs-uploadId"

    filled-new-array/range {v1 .. v21}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/obs/services/internal/utils/ServiceUtils;->LoggableObsMetadata:Ljava/util/HashSet;

    .line 754
    new-instance v0, Ljava/util/HashSet;

    const-string v13, "x-amz-object-lock-mode"

    const-string v14, "x-amz-object-lock-retain-until-date"

    const-string v1, "x-amz-server-side-encryption-customer-algorithm"

    const-string v2, "x-amz-expiration"

    const-string v3, "x-amz-website-redirect-location"

    const-string v4, "x-amz-version-id"

    const-string v5, "x-amz-server-side-encryption"

    const-string v6, "x-amz-server-side-data-encryption"

    const-string v7, "x-amz-server-side-encryption-customer-algorithm"

    const-string v8, "x-amz-storage-class"

    const-string v9, "x-amz-restore"

    const-string v10, "x-amz-object-type"

    const-string v11, "x-amz-next-append-position"

    const-string v12, "x-amz-uploadId"

    filled-new-array/range {v1 .. v14}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/obs/services/internal/utils/ServiceUtils;->LoggableAmzMetadata:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assertParameterNotNegative(JLjava/lang/String;)V
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-ltz p0, :cond_7

    return-void

    .line 107
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 2

    if-eqz p0, :cond_3

    return-void

    .line 101
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static assertParameterNotNull(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    .line 88
    invoke-static {p0}, Lcom/obs/services/internal/utils/ServiceUtils;->isValid(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    return-void

    .line 89
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static assertParameterNotNull2(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    if-eqz p0, :cond_3

    return-void

    .line 95
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static changeFromException(Ljava/lang/Exception;)Lcom/obs/services/exception/ObsException;
    .registers 3

    .line 529
    instance-of v0, p0, Lcom/obs/services/exception/ObsException;

    if-nez v0, :cond_e

    .line 531
    new-instance v0, Lcom/obs/services/exception/ObsException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/obs/services/exception/ObsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    .line 533
    :cond_e
    check-cast p0, Lcom/obs/services/exception/ObsException;

    return-object p0
.end method

.method public static changeFromObsConfiguration(Lcom/obs/services/ObsConfiguration;)Lcom/obs/services/internal/ObsProperties;
    .registers 8

    .line 598
    new-instance v0, Lcom/obs/services/internal/ObsProperties;

    invoke-direct {v0}, Lcom/obs/services/internal/ObsProperties;-><init>()V

    .line 600
    invoke-virtual {p0}, Lcom/obs/services/ObsConfiguration;->getEndPoint()Ljava/lang/String;

    move-result-object v1

    .line 603
    :goto_9
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    const/4 v5, 0x0

    if-ne v2, v3, :cond_1d

    .line 604
    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    .line 607
    :cond_1d
    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 608
    invoke-virtual {p0, v5}, Lcom/obs/services/ObsConfiguration;->setHttpsOnly(Z)V

    const/4 v2, 0x7

    .line 609
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3f

    .line 610
    :cond_2e
    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 611
    invoke-virtual {p0, v4}, Lcom/obs/services/ObsConfiguration;->setHttpsOnly(Z)V

    const/16 v2, 0x8

    .line 612
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 615
    :cond_3f
    :goto_3f
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_62

    add-int/lit8 v3, v2, 0x1

    .line 616
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 617
    invoke-virtual {p0}, Lcom/obs/services/ObsConfiguration;->isHttpsOnly()Z

    move-result v6

    if-eqz v6, :cond_5b

    .line 618
    invoke-virtual {p0, v3}, Lcom/obs/services/ObsConfiguration;->setEndpointHttpsPort(I)V

    goto :goto_5e

    .line 620
    :cond_5b
    invoke-virtual {p0, v3}, Lcom/obs/services/ObsConfiguration;->setEndpointHttpPort(I)V

    .line 622
    :goto_5e
    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 625
    :cond_62
    sget-object v2, Lcom/obs/services/internal/utils/ServiceUtils;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 626
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_71

    .line 627
    invoke-virtual {p0, v4}, Lcom/obs/services/ObsConfiguration;->setPathStyle(Z)V

    .line 630
    :cond_71
    invoke-virtual {p0}, Lcom/obs/services/ObsConfiguration;->isPathStyle()Z

    move-result v2

    if-nez v2, :cond_7d

    invoke-virtual {p0}, Lcom/obs/services/ObsConfiguration;->isCname()Z

    move-result v2

    if-eqz v2, :cond_8d

    .line 631
    :cond_7d
    invoke-virtual {p0, v5}, Lcom/obs/services/ObsConfiguration;->setAuthTypeNegotiation(Z)V

    .line 632
    invoke-virtual {p0}, Lcom/obs/services/ObsConfiguration;->getAuthType()Lcom/obs/services/model/AuthTypeEnum;

    move-result-object v2

    sget-object v3, Lcom/obs/services/model/AuthTypeEnum;->OBS:Lcom/obs/services/model/AuthTypeEnum;

    if-ne v2, v3, :cond_8d

    .line 633
    sget-object v2, Lcom/obs/services/model/AuthTypeEnum;->V2:Lcom/obs/services/model/AuthTypeEnum;

    invoke-virtual {p0, v2}, Lcom/obs/services/ObsConfiguration;->setAuthType(Lcom/obs/services/model/AuthTypeEnum;)V

    .line 637
    :cond_8d
    invoke-virtual {p0, v1}, Lcom/obs/services/ObsConfiguration;->setEndPoint(Ljava/lang/String;)V

    .line 638
    invoke-static {p0, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->setObsProperties(Lcom/obs/services/ObsConfiguration;Lcom/obs/services/internal/ObsProperties;)V

    return-object v0
.end method

.method public static changeFromServiceException(Lcom/obs/services/internal/ServiceException;)Lcom/obs/services/exception/ObsException;
    .registers 5

    .line 539
    invoke-virtual {p0}, Lcom/obs/services/internal/ServiceException;->getResponseCode()I

    move-result v0

    if-gez v0, :cond_25

    .line 540
    new-instance v0, Lcom/obs/services/exception/ObsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OBS service Error Message. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/obs/services/exception/ObsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    .line 542
    :cond_25
    new-instance v0, Lcom/obs/services/exception/ObsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 543
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_48

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4a

    :cond_48
    const-string v2, ""

    :goto_4a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "OBS service Error Message."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 544
    invoke-virtual {p0}, Lcom/obs/services/internal/ServiceException;->getXmlMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/obs/services/exception/ObsException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 545
    invoke-virtual {p0}, Lcom/obs/services/internal/ServiceException;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/obs/services/exception/ObsException;->setErrorCode(Ljava/lang/String;)V

    .line 546
    invoke-virtual {p0}, Lcom/obs/services/internal/ServiceException;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_73

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_77

    :cond_73
    invoke-virtual {p0}, Lcom/obs/services/internal/ServiceException;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    :goto_77
    invoke-virtual {v0, v1}, Lcom/obs/services/exception/ObsException;->setErrorMessage(Ljava/lang/String;)V

    .line 547
    invoke-virtual {p0}, Lcom/obs/services/internal/ServiceException;->getErrorRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/obs/services/exception/ObsException;->setErrorRequestId(Ljava/lang/String;)V

    .line 548
    invoke-virtual {p0}, Lcom/obs/services/internal/ServiceException;->getErrorHostId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/obs/services/exception/ObsException;->setErrorHostId(Ljava/lang/String;)V

    .line 549
    invoke-virtual {p0}, Lcom/obs/services/internal/ServiceException;->getResponseCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/obs/services/exception/ObsException;->setResponseCode(I)V

    .line 550
    invoke-virtual {p0}, Lcom/obs/services/internal/ServiceException;->getResponseStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/obs/services/exception/ObsException;->setResponseStatus(Ljava/lang/String;)V

    .line 551
    invoke-virtual {p0}, Lcom/obs/services/internal/ServiceException;->getResponseHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/obs/services/exception/ObsException;->setResponseHeaders(Ljava/util/Map;)V

    .line 552
    invoke-virtual {p0}, Lcom/obs/services/internal/ServiceException;->getErrorIndicator()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/obs/services/exception/ObsException;->setErrorIndicator(Ljava/lang/String;)V

    return-object v0
.end method

.method public static cleanListMetadata(Ljava/util/Map;ZLjava/util/Map;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 286
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 287
    invoke-interface {p0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-eqz p1, :cond_27

    .line 289
    check-cast v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 291
    :cond_27
    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_2d
    const/16 p0, 0xb

    .line 294
    invoke-virtual {p3, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static cleanRestMetadataMapV2(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 201
    sget-object v0, Lcom/obs/services/internal/utils/ServiceUtils;->log:Lcom/obs/log/ILogger;

    invoke-interface {v0}, Lcom/obs/log/ILogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 202
    const-string v1, "Cleaning up REST metadata items"

    invoke-interface {v0, v1}, Lcom/obs/log/ILogger;->debug(Ljava/lang/CharSequence;)V

    .line 204
    :cond_d
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    if-eqz p0, :cond_109

    .line 207
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1c
    :goto_1c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_109

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 208
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 209
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v2, :cond_37

    goto :goto_39

    .line 212
    :cond_37
    const-string v2, ""

    .line 213
    :goto_39
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "Error to decode value of key:"

    const-string v6, "UTF-8"

    if-eqz v4, :cond_70

    .line 215
    :try_start_49
    invoke-static {p1, p2, v2, p3}, Lcom/obs/services/internal/utils/ServiceUtils;->transRealKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    if-eqz p3, :cond_dc

    .line 217
    invoke-static {v1, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_53
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_49 .. :try_end_53} :catch_55
    .catch Ljava/lang/IllegalArgumentException; {:try_start_49 .. :try_end_53} :catch_55

    goto/16 :goto_dc

    .line 220
    :catch_55
    sget-object v3, Lcom/obs/services/internal/utils/ServiceUtils;->log:Lcom/obs/log/ILogger;

    invoke-interface {v3}, Lcom/obs/log/ILogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_dc

    .line 221
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/obs/log/ILogger;->debug(Ljava/lang/CharSequence;)V

    goto :goto_dc

    .line 225
    :cond_70
    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "x-obs-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a4

    .line 227
    :try_start_7c
    const-string v3, "x-obs-meta-"

    invoke-static {v4, v3, v2, p3}, Lcom/obs/services/internal/utils/ServiceUtils;->transRealKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    if-eqz p3, :cond_dc

    .line 230
    invoke-static {v1, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_88
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7c .. :try_end_88} :catch_89
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7c .. :try_end_88} :catch_89

    goto :goto_dc

    .line 233
    :catch_89
    sget-object v3, Lcom/obs/services/internal/utils/ServiceUtils;->log:Lcom/obs/log/ILogger;

    invoke-interface {v3}, Lcom/obs/log/ILogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_dc

    .line 234
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/obs/log/ILogger;->debug(Ljava/lang/CharSequence;)V

    goto :goto_dc

    .line 237
    :cond_a4
    sget-object v3, Lcom/obs/services/internal/Constants;->ALLOWED_RESPONSE_HTTP_HEADER_METADATA_NAMES:Ljava/util/List;

    .line 238
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "="

    if-eqz v3, :cond_e1

    .line 239
    sget-object v3, Lcom/obs/services/internal/utils/ServiceUtils;->log:Lcom/obs/log/ILogger;

    invoke-interface {v3}, Lcom/obs/log/ILogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_dc

    .line 240
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Leaving HTTP header item unchanged: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->getLoggableInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/obs/log/ILogger;->debug(Ljava/lang/CharSequence;)V

    .line 250
    :cond_dc
    :goto_dc
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1c

    .line 243
    :cond_e1
    sget-object v3, Lcom/obs/services/internal/utils/ServiceUtils;->log:Lcom/obs/log/ILogger;

    invoke-interface {v3}, Lcom/obs/log/ILogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 244
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring metadata item: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->getLoggableInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Lcom/obs/log/ILogger;->debug(Ljava/lang/CharSequence;)V

    goto/16 :goto_1c

    :cond_109
    return-object v0
.end method

.method public static cleanUserMetadata(Ljava/util/Map;Z)Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 257
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 258
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_84

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 259
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 260
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "x-obs-meta-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3b

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "x-amz-meta-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 261
    :cond_3b
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 263
    :try_start_3f
    instance-of v4, v3, Ljava/util/ArrayList;

    if-eqz v4, :cond_47

    .line 264
    invoke-static {p0, p1, v0, v2}, Lcom/obs/services/internal/utils/ServiceUtils;->cleanListMetadata(Ljava/util/Map;ZLjava/util/Map;Ljava/lang/String;)V

    goto :goto_f

    :cond_47
    const/16 v4, 0xb

    if-eqz p1, :cond_5b

    .line 267
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    check-cast v3, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-static {v3, v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    .line 270
    :cond_5b
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_66
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3f .. :try_end_66} :catch_67
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3f .. :try_end_66} :catch_67

    goto :goto_f

    .line 274
    :catch_67
    sget-object v3, Lcom/obs/services/internal/utils/ServiceUtils;->log:Lcom/obs/log/ILogger;

    invoke-interface {v3}, Lcom/obs/log/ILogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 275
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error to decode value of key:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/obs/log/ILogger;->debug(Ljava/lang/CharSequence;)V

    goto :goto_f

    :cond_84
    return-object v0
.end method

.method public static cloneDateIgnoreNull(Ljava/util/Date;)Ljava/util/Date;
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 712
    :cond_4
    invoke-virtual {p0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Date;

    return-object p0
.end method

.method public static closeStream(Ljava/io/Closeable;)V
    .registers 3

    if-eqz p0, :cond_16

    .line 560
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p0

    .line 562
    sget-object v0, Lcom/obs/services/internal/utils/ServiceUtils;->log:Lcom/obs/log/ILogger;

    invoke-interface {v0}, Lcom/obs/log/ILogger;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 563
    sget-object v0, Lcom/obs/services/internal/utils/ServiceUtils;->log:Lcom/obs/log/ILogger;

    const-string v1, "close failed."

    invoke-interface {v0, v1, p0}, Lcom/obs/log/ILogger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_16
    return-void
.end method

.method public static computeMD5(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 423
    :try_start_0
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/obs/services/internal/utils/ServiceUtils;->computeMD5Hash([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/obs/services/internal/utils/ServiceUtils;->toBase64([B)Ljava/lang/String;

    move-result-object p0
    :try_end_e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_e} :catch_f

    return-object p0

    .line 425
    :catch_f
    new-instance v0, Lcom/obs/services/internal/ServiceException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get MD5 for requestXmlElement:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/obs/services/internal/ServiceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static computeMD5Hash(Ljava/io/InputStream;)[B
    .registers 8

    .line 363
    const-string v0, "close failed."

    const/4 v1, 0x0

    .line 365
    :try_start_3
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_38

    .line 366
    :try_start_8
    const-string p0, "MD5"

    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    const/16 v1, 0x4000

    .line 367
    new-array v3, v1, [B

    :goto_12
    const/4 v4, 0x0

    .line 369
    invoke-virtual {v2, v3, v4, v1}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_21

    .line 370
    invoke-virtual {p0, v3, v4, v5}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_12

    :catchall_1e
    move-exception p0

    move-object v1, v2

    goto :goto_39

    .line 372
    :cond_21
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_1e

    .line 376
    :try_start_25
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_29

    return-object p0

    :catch_29
    move-exception v1

    .line 378
    sget-object v2, Lcom/obs/services/internal/utils/ServiceUtils;->log:Lcom/obs/log/ILogger;

    invoke-interface {v2}, Lcom/obs/log/ILogger;->isWarnEnabled()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 379
    sget-object v2, Lcom/obs/services/internal/utils/ServiceUtils;->log:Lcom/obs/log/ILogger;

    invoke-interface {v2, v0, v1}, Lcom/obs/log/ILogger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_37
    return-object p0

    :catchall_38
    move-exception p0

    :goto_39
    if-eqz v1, :cond_4d

    .line 376
    :try_start_3b
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_3f

    goto :goto_4d

    :catch_3f
    move-exception v1

    .line 378
    sget-object v2, Lcom/obs/services/internal/utils/ServiceUtils;->log:Lcom/obs/log/ILogger;

    invoke-interface {v2}, Lcom/obs/log/ILogger;->isWarnEnabled()Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 379
    sget-object v2, Lcom/obs/services/internal/utils/ServiceUtils;->log:Lcom/obs/log/ILogger;

    invoke-interface {v2, v0, v1}, Lcom/obs/log/ILogger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 383
    :cond_4d
    :goto_4d
    throw p0
.end method

.method public static computeMD5Hash(Ljava/io/InputStream;JJ)[B
    .registers 14

    .line 388
    const-string v0, "close failed."

    const/4 v1, 0x0

    .line 390
    :try_start_3
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_7a

    const-wide/16 v3, 0x0

    cmp-long p0, p3, v3

    if-lez p0, :cond_37

    .line 392
    :try_start_e
    invoke-virtual {v2, p3, p4}, Ljava/io/BufferedInputStream;->skip(J)J

    move-result-wide p3

    .line 393
    sget-object p0, Lcom/obs/services/internal/utils/ServiceUtils;->log:Lcom/obs/log/ILogger;

    invoke-interface {p0}, Lcom/obs/log/ILogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 394
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "computeMD5Hash: Skip "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " bytes"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p0, p3}, Lcom/obs/log/ILogger;->debug(Ljava/lang/CharSequence;)V

    goto :goto_37

    :catchall_34
    move-exception p0

    move-object v1, v2

    goto :goto_7b

    .line 397
    :cond_37
    :goto_37
    const-string p0, "MD5"

    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    const/16 p3, 0x4000

    .line 398
    new-array p3, p3, [B

    const-wide/16 v5, 0x4000

    cmp-long p4, v5, p1

    if-lez p4, :cond_49

    move-wide v7, p1

    goto :goto_4a

    :cond_49
    :goto_49
    move-wide v7, v5

    :cond_4a
    :goto_4a
    cmp-long p4, v3, p1

    if-gez p4, :cond_63

    long-to-int p4, v7

    const/4 v1, 0x0

    .line 402
    invoke-virtual {v2, p3, v1, p4}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result p4

    const/4 v7, -0x1

    if-eq p4, v7, :cond_63

    .line 403
    invoke-virtual {p0, p3, v1, p4}, Ljava/security/MessageDigest;->update([BII)V

    int-to-long v7, p4

    add-long/2addr v3, v7

    sub-long v7, p1, v3

    cmp-long p4, v7, v5

    if-lez p4, :cond_4a

    goto :goto_49

    .line 407
    :cond_63
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0
    :try_end_67
    .catchall {:try_start_e .. :try_end_67} :catchall_34

    .line 411
    :try_start_67
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6a} :catch_6b

    return-object p0

    :catch_6b
    move-exception p1

    .line 413
    sget-object p2, Lcom/obs/services/internal/utils/ServiceUtils;->log:Lcom/obs/log/ILogger;

    invoke-interface {p2}, Lcom/obs/log/ILogger;->isWarnEnabled()Z

    move-result p2

    if-eqz p2, :cond_79

    .line 414
    sget-object p2, Lcom/obs/services/internal/utils/ServiceUtils;->log:Lcom/obs/log/ILogger;

    invoke-interface {p2, v0, p1}, Lcom/obs/log/ILogger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_79
    return-object p0

    :catchall_7a
    move-exception p0

    :goto_7b
    if-eqz v1, :cond_8f

    .line 411
    :try_start_7d
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_80} :catch_81

    goto :goto_8f

    :catch_81
    move-exception p1

    .line 413
    sget-object p2, Lcom/obs/services/internal/utils/ServiceUtils;->log:Lcom/obs/log/ILogger;

    invoke-interface {p2}, Lcom/obs/log/ILogger;->isWarnEnabled()Z

    move-result p2

    if-eqz p2, :cond_8f

    .line 414
    sget-object p2, Lcom/obs/services/internal/utils/ServiceUtils;->log:Lcom/obs/log/ILogger;

    invoke-interface {p2, v0, p1}, Lcom/obs/log/ILogger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 418
    :cond_8f
    :goto_8f
    throw p0
.end method

.method public static computeMD5Hash([B)[B
    .registers 2

    .line 430
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lcom/obs/services/internal/utils/ServiceUtils;->computeMD5Hash(Ljava/io/InputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method public static deleteFileIgnoreException(Ljava/lang/String;)V
    .registers 4

    if-nez p0, :cond_3

    goto :goto_29

    .line 721
    :cond_3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/obs/services/internal/utils/ServiceUtils;->deleteFileIgnoreException(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 722
    sget-object v0, Lcom/obs/services/internal/utils/ServiceUtils;->log:Lcom/obs/log/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete file \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' failed"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/obs/log/ILogger;->warn(Ljava/lang/CharSequence;)V

    :cond_29
    :goto_29
    return-void
.end method

.method public static deleteFileIgnoreException(Ljava/io/File;)Z
    .registers 3

    const/4 v0, 0x1

    if-nez p0, :cond_4

    return v0

    .line 731
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 732
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    return p0

    :cond_15
    return v0
.end method

.method public static formatIso8601Date(Ljava/util/Date;)Ljava/lang/String;
    .registers 3

    .line 140
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 141
    sget-object v1, Lcom/obs/services/internal/Constants;->GMT_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 142
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatIso8601MidnightDate(Ljava/util/Date;)Ljava/lang/String;
    .registers 3

    .line 146
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'00:00:00\'Z\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 147
    sget-object v1, Lcom/obs/services/internal/Constants;->GMT_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 148
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatRfc822Date(Ljava/util/Date;)Ljava/lang/String;
    .registers 4

    .line 158
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss z"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 159
    sget-object v1, Lcom/obs/services/internal/Constants;->GMT_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 160
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static fromBase64(Ljava/lang/String;)[B
    .registers 1

    .line 359
    invoke-static {p0}, Lcom/obs/services/internal/utils/ReflectUtils;->fromBase64(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static fromHex(Ljava/lang/String;)[B
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_6

    .line 319
    new-array p0, v0, [B

    return-object p0

    .line 322
    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_42

    const-string v1, "[a-fA-F0-9]"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_42

    .line 326
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    div-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    move v2, v0

    .line 330
    :goto_27
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_41

    add-int/lit8 v3, v0, 0x2

    .line 331
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v4, v2, 0x1

    const/16 v5, 0x10

    .line 333
    invoke-static {v0, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    move v0, v3

    move v2, v4

    goto :goto_27

    :cond_41
    return-object v1

    .line 323
    :cond_42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' is not a hex string"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static generateHostnameForBucket(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 458
    invoke-static {p0}, Lcom/obs/services/internal/utils/ServiceUtils;->isBucketNameValidDNSName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    if-nez p1, :cond_1d

    .line 463
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1d
    return-object p2

    .line 459
    :cond_1e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "the bucketName is illegal"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getExpirationDateFormat()Ljava/text/SimpleDateFormat;
    .registers 2

    .line 523
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 524
    sget-object v1, Lcom/obs/services/internal/Constants;->GMT_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-object v0
.end method

.method public static getLoggableInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 768
    invoke-static {p0}, Lcom/obs/services/internal/utils/ServiceUtils;->isInfoLoggable(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    return-object p1

    .line 771
    :cond_7
    const-string p0, "******"

    return-object p0
.end method

.method public static getLongDateFormat()Ljava/text/SimpleDateFormat;
    .registers 2

    .line 517
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd\'T\'HHmmss\'Z\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 518
    sget-object v1, Lcom/obs/services/internal/Constants;->GMT_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-object v0
.end method

.method public static getShortDateFormat()Ljava/text/SimpleDateFormat;
    .registers 2

    .line 511
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 512
    sget-object v1, Lcom/obs/services/internal/Constants;->GMT_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-object v0
.end method

.method public static isBucketNameValidDNSName(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_50

    .line 434
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x3f

    if-gt v1, v2, :cond_50

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_13

    goto :goto_50

    .line 438
    :cond_13
    const-string v1, "^[a-z0-9][a-z0-9.-]+$"

    invoke-static {v1, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1c

    return v0

    .line 442
    :cond_1c
    const-string v1, "(\\d{1,3}\\.){3}\\d{1,3}"

    invoke-static {v1, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_25

    return v0

    .line 446
    :cond_25
    const-string v1, "\\."

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 447
    array-length v1, p0

    move v2, v0

    :goto_2d
    if-ge v2, v1, :cond_4e

    aget-object v3, p0, v2

    .line 448
    const-string v4, "^-.*"

    invoke-static {v4, v3}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4d

    const-string v4, "^.{0,62}-$"

    invoke-static {v4, v3}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4d

    const-string v4, "^$"

    .line 449
    invoke-static {v4, v3}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4a

    goto :goto_4d

    :cond_4a
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    :cond_4d
    :goto_4d
    return v0

    :cond_4e
    const/4 p0, 0x1

    return p0

    :cond_50
    :goto_50
    return v0
.end method

.method public static isInfoLoggable(Ljava/lang/String;)Z
    .registers 2

    .line 763
    sget-object v0, Lcom/obs/services/internal/utils/ServiceUtils;->LoggableObsMetadata:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    sget-object v0, Lcom/obs/services/internal/utils/ServiceUtils;->LoggableResponseHeader:Ljava/util/HashSet;

    .line 764
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    sget-object v0, Lcom/obs/services/internal/utils/ServiceUtils;->LoggableAmzMetadata:Ljava/util/HashSet;

    .line 765
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    return p0

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    return p0
.end method

.method public static isValid(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_c

    .line 76
    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public static isValid2(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_c

    .line 80
    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public static join(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 355
    invoke-static {p0, p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->join(Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static join(Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 344
    :goto_6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2b

    .line 345
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz p2, :cond_1a

    .line 346
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    :cond_1a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_28

    .line 348
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 351
    :cond_2b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static loadXMLReader()Lorg/xml/sax/XMLReader;
    .registers 12

    .line 472
    const-string v0, "Enable protection for XML External Entity Injection Failed"

    const-string v1, "http://xml.org/sax/features/external-parameter-entities"

    const-string v2, "http://xml.org/sax/features/external-general-entities"

    const-string v3, "http://apache.org/xml/features/nonvalidating/load-external-dtd"

    const-string v4, "http://apache.org/xml/features/disallow-doctype-decl"

    const/4 v5, 0x1

    const/4 v6, 0x0

    :try_start_c
    invoke-static {}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v7
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_10} :catch_23

    .line 474
    :try_start_10
    invoke-interface {v7, v4, v5}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    .line 475
    invoke-interface {v7, v3, v6}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    .line 476
    invoke-interface {v7, v2, v6}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    .line 477
    invoke-interface {v7, v1, v6}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1c} :catch_1d

    return-object v7

    .line 479
    :catch_1d
    :try_start_1d
    sget-object v8, Lcom/obs/services/internal/utils/ServiceUtils;->log:Lcom/obs/log/ILogger;

    invoke-interface {v8, v0}, Lcom/obs/log/ILogger;->warn(Ljava/lang/CharSequence;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_22} :catch_23

    return-object v7

    :catch_23
    move-exception v7

    .line 487
    const-string v8, "org.apache.crimson.parser.XMLReaderImpl"

    const-string v9, "org.xmlpull.v1.sax2.Driver"

    filled-new-array {v8, v9}, [Ljava/lang/String;

    move-result-object v8

    move v9, v6

    :goto_2d
    const/4 v10, 0x2

    if-ge v9, v10, :cond_4c

    .line 489
    aget-object v10, v8, v9

    .line 491
    :try_start_32
    invoke-static {v10}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader(Ljava/lang/String;)Lorg/xml/sax/XMLReader;

    move-result-object v10
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_36} :catch_49

    .line 493
    :try_start_36
    invoke-interface {v10, v4, v5}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    .line 494
    invoke-interface {v10, v3, v6}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    .line 495
    invoke-interface {v10, v2, v6}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    .line 496
    invoke-interface {v10, v1, v6}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_42} :catch_43

    goto :goto_48

    .line 498
    :catch_43
    :try_start_43
    sget-object v11, Lcom/obs/services/internal/utils/ServiceUtils;->log:Lcom/obs/log/ILogger;

    invoke-interface {v11, v0}, Lcom/obs/log/ILogger;->warn(Ljava/lang/CharSequence;)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_48} :catch_49

    :goto_48
    return-object v10

    :catch_49
    add-int/lit8 v9, v9, 0x1

    goto :goto_2d

    .line 507
    :cond_4c
    new-instance v0, Lcom/obs/services/internal/ServiceException;

    const-string v1, "Failed to initialize a SAX XMLReader"

    invoke-direct {v0, v1, v7}, Lcom/obs/services/internal/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static parseIso8601Date(Ljava/lang/String;)Ljava/util/Date;
    .registers 5

    .line 113
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 114
    sget-object v1, Lcom/obs/services/internal/Constants;->GMT_TIMEZONE:Ljava/util/TimeZone;

    .line 115
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 117
    :try_start_c
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_10
    .catch Ljava/text/ParseException; {:try_start_c .. :try_end_10} :catch_11

    return-object p0

    .line 121
    :catch_11
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 124
    :try_start_1b
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_1f
    .catch Ljava/text/ParseException; {:try_start_1b .. :try_end_1f} :catch_20

    return-object p0

    :catch_20
    move-exception v0

    .line 129
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 132
    :try_start_2b
    invoke-virtual {v2, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2f} :catch_30

    return-object p0

    :catch_30
    move-exception p0

    .line 134
    sget-object v1, Lcom/obs/services/internal/utils/ServiceUtils;->log:Lcom/obs/log/ILogger;

    const-string v2, "date parser failed."

    invoke-interface {v1, v2, p0}, Lcom/obs/log/ILogger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 136
    throw v0
.end method

.method public static parseRfc822Date(Ljava/lang/String;)Ljava/util/Date;
    .registers 4

    .line 152
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss z"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 153
    sget-object v1, Lcom/obs/services/internal/Constants;->GMT_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 154
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method private static setObsProperties(Lcom/obs/services/ObsConfiguration;Lcom/obs/services/internal/ObsProperties;)V
    .registers 6

    .line 644
    const-string v0, "obs-endpoint"

    invoke-virtual {p0}, Lcom/obs/services/ObsConfiguration;->getEndPoint()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/obs/services/internal/ObsProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    invoke-virtual {p0}, Lcom/obs/services/ObsConfiguration;->getEndpointHttpPort()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "obs-endpoint-http-port"

    invoke-virtual {p1, v1, v0}, Lcom/obs/services/internal/ObsProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    invoke-virtual {p0}, Lcom/obs/services/ObsConfiguration;->isHttpsOnly()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "obs.https-only"

    invoke-virtual {p1, v1, v0}, Lcom/obs/services/internal/ObsProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    invoke-virtual {p0}, Lcom/obs/services/ObsConfiguration;->isPathStyle()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "obs.disable-dns-buckets"

    invoke-virtual {p1, v1, v0}, Lcom/obs/services/internal/ObsProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    invoke-virtual {p0}, Lcom/obs/services/ObsConfiguration;->getEndpointHttpsPort()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "obs-endpoint-https-port"

    invoke-virtual {p1, v1, v0}, Lcom/obs/services/internal/ObsProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    invoke-virtual {p0}, Lcom/obs/services/ObsConfiguration;->getSocketTimeout()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "httpclient.socket-timeout-ms"

    invoke-virtual {p1, v1, v0}, Lcom/obs/services/internal/ObsProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    invoke-virtual {p0}, Lcom/obs/services/ObsConfiguration;->getMaxConnections()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "httpclient.max-connections"

    invoke-virtual {p1, v1, v0}, Lcom/obs/services/internal/ObsProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    invoke-virtual {p0}, Lcom/obs/services/ObsConfiguration;->getMaxErrorRetry()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "httpclient.retry-max"

    invoke-virtual {p1, v1, v0}, Lcom/obs/services/internal/ObsProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    invoke-virtual {p0}, Lcom/obs/services/ObsConfiguration;->getConnectionTimeout()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "httpclient.connection-timeout-ms"

    invoke-virtual {p1, v1, v0}, Lcom/obs/services/internal/ObsProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "httpclient.proxy-enable"

    invoke-virtual {p1, v1, v0}, Lcom/obs/services/internal/ObsProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    invoke-virtual {p0}, Lcom/obs/services/ObsConfiguration;->isValidateCertificate()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "httpclient.validate-certificate"

    invoke-virtual {p1, v2, v0}, Lcom/obs/services/internal/ObsProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    invoke-virtual {p0}, Lcom/obs/services/ObsConfiguration;->isVerifyResponseContentType()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    .line 658
    const-string v2, "obs.verify-content-type"

    invoke-virtual {p1, v2, v0}, Lcom/obs/services/internal/ObsProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    invoke-virtual {p0}, Lcom/obs/services/ObsConfiguration;->getWriteBufferSize()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "httpclient.write-buffer-size"

    invoke-virtual {p1, v2, v0}, Lcom/obs/services/internal/ObsProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    invoke-virtual {p0}, Lcom/obs/services/ObsConfiguration;->getReadBufferSize()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "httpclient.read-buffer-size"

    invoke-virtual {p1, v2, v0}, Lcom/obs/services/internal/ObsProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    invoke-virtual {p0}, Lcom/obs/services/ObsConfiguration;->getSocketWriteBufferSize()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 662
    const-string v2, "socket.write-buffer-size"

    invoke-virtual {p1, v2, v0}, Lcom/obs/services/internal/ObsProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    invoke-virtual {p0}, Lcom/obs/services/ObsConfiguration;->getSocketReadBufferSize()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 664
    const-string v2, "socket.read-buffer-size"

    invoke-virtual {p1, v2, v0}, Lcom/obs/services/internal/ObsProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    invoke-virtual {p0}, Lcom/obs/services/ObsConfiguration;->isStrictHostnameVerification()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    .line 666
    const-string v2, "httpclient.strict-hostname-verification"

    invoke-virtual {p1, v2, v0}, Lcom/obs/services/internal/ObsProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    invoke-virtual {p0}, Lcom/obs/services/ObsConfiguration;->getIdleConnectionTime()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 668
    const-string v2, "httpclient.idle-connection-time"

    invoke-virtual {p1, v2, v0}, Lcom/obs/services/internal/ObsProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    invoke-virtual {p0}, Lcom/obs/services/ObsConfiguration;->getMaxIdleConnections()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 670
    const-string v2, "httpclient.max-idle-connections"

    invoke-virtual {p1, v2, v0}, Lcom/obs/services/internal/ObsProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    invoke-virtual {p0}, Lcom/obs/services/ObsConfiguration;->getSslProvider()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    if-nez v0, :cond_fb

    move-object v0, v2

    goto :goto_ff

    :cond_fb
    invoke-virtual {p0}, Lcom/obs/services/ObsConfiguration;->getSslProvider()Ljava/lang/String;

    move-result-object v0

    .line 672
    :goto_ff
    const-string v3, "httpclient.ssl-provider"

    invoke-virtual {p1, v3, v0}, Lcom/obs/services/internal/ObsProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    invoke-virtual {p0}, Lcom/obs/services/ObsConfiguration;->isKeepAlive()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v3, "httpclient.keep-alive"

    invoke-virtual {p1, v3, v0}, Lcom/obs/services/internal/ObsProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    invoke-virtual {p0}, Lcom/obs/services/ObsConfiguration;->getDelimiter()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_11a

    const-string v0, "/"

    goto :goto_11e

    :cond_11a
    invoke-virtual {p0}, Lcom/obs/services/ObsConfiguration;->getDelimiter()Ljava/lang/String;

    move-result-object v0

    .line 675
    :goto_11e
    const-string v3, "filesystem.delimiter"

    invoke-virtual {p1, v3, v0}, Lcom/obs/services/internal/ObsProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    invoke-virtual {p0}, Lcom/obs/services/ObsConfiguration;->getHttpProtocolType()Lcom/obs/services/model/HttpProtocolTypeEnum;

    move-result-object v0

    if-nez v0, :cond_130

    sget-object v0, Lcom/obs/services/model/HttpProtocolTypeEnum;->HTTP1_1:Lcom/obs/services/model/HttpProtocolTypeEnum;

    .line 678
    :goto_12b
    invoke-virtual {v0}, Lcom/obs/services/model/HttpProtocolTypeEnum;->getCode()Ljava/lang/String;

    move-result-object v0

    goto :goto_135

    :cond_130
    invoke-virtual {p0}, Lcom/obs/services/ObsConfiguration;->getHttpProtocolType()Lcom/obs/services/model/HttpProtocolTypeEnum;

    move-result-object v0

    goto :goto_12b

    .line 677
    :goto_135
    const-string v3, "httpclient.protocol"

    invoke-virtual {p1, v3, v0}, Lcom/obs/services/internal/ObsProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    invoke-virtual {p0}, Lcom/obs/services/ObsConfiguration;->isCname()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v3, "httpclient.is-cname"

    invoke-virtual {p1, v3, v0}, Lcom/obs/services/internal/ObsProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    invoke-virtual {p0}, Lcom/obs/services/ObsConfiguration;->isAuthTypeNegotiation()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v3, "httpclient.auth-type-negotiation"

    invoke-virtual {p1, v3, v0}, Lcom/obs/services/internal/ObsProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    invoke-virtual {p0}, Lcom/obs/services/ObsConfiguration;->getHttpProxy()Lcom/obs/services/HttpProxyConfiguration;

    move-result-object v0

    if-eqz v0, :cond_1b5

    .line 683
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/obs/services/internal/ObsProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    invoke-virtual {p0}, Lcom/obs/services/ObsConfiguration;->getHttpProxy()Lcom/obs/services/HttpProxyConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/obs/services/HttpProxyConfiguration;->getProxyAddr()Ljava/lang/String;

    move-result-object v0

    const-string v1, "httpclient.proxy-host"

    invoke-virtual {p1, v1, v0}, Lcom/obs/services/internal/ObsProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    invoke-virtual {p0}, Lcom/obs/services/ObsConfiguration;->getHttpProxy()Lcom/obs/services/HttpProxyConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/obs/services/HttpProxyConfiguration;->getProxyPort()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "httpclient.proxy-port"

    invoke-virtual {p1, v1, v0}, Lcom/obs/services/internal/ObsProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    invoke-virtual {p0}, Lcom/obs/services/ObsConfiguration;->getHttpProxy()Lcom/obs/services/HttpProxyConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/obs/services/HttpProxyConfiguration;->getProxyUName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "httpclient.proxy-user"

    invoke-virtual {p1, v1, v0}, Lcom/obs/services/internal/ObsProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    invoke-virtual {p0}, Lcom/obs/services/ObsConfiguration;->getHttpProxy()Lcom/obs/services/HttpProxyConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/obs/services/HttpProxyConfiguration;->getUserPasswd()Ljava/lang/String;

    move-result-object v0

    const-string v1, "httpclient.proxy-password"

    invoke-virtual {p1, v1, v0}, Lcom/obs/services/internal/ObsProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    invoke-virtual {p0}, Lcom/obs/services/ObsConfiguration;->getHttpProxy()Lcom/obs/services/HttpProxyConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/obs/services/HttpProxyConfiguration;->getDomain()Ljava/lang/String;

    move-result-object v0

    const-string v1, "httpclient.proxy-domain"

    invoke-virtual {p1, v1, v0}, Lcom/obs/services/internal/ObsProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    invoke-virtual {p0}, Lcom/obs/services/ObsConfiguration;->getHttpProxy()Lcom/obs/services/HttpProxyConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/obs/services/HttpProxyConfiguration;->getWorkstation()Ljava/lang/String;

    move-result-object v0

    const-string v1, "httpclient.proxy-workstation"

    invoke-virtual {p1, v1, v0}, Lcom/obs/services/internal/ObsProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    :cond_1b5
    instance-of v0, p0, Lcom/obs/services/internal/ext/ExtObsConfiguration;

    if-eqz v0, :cond_1d6

    .line 694
    move-object v0, p0

    check-cast v0, Lcom/obs/services/internal/ext/ExtObsConfiguration;

    .line 695
    invoke-virtual {v0}, Lcom/obs/services/internal/ext/ExtObsConfiguration;->isRetryOnConnectionFailureInOkhttp()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    .line 694
    const-string v3, "httpclient.is-retry-on-connection-failure-in-okhttp"

    invoke-virtual {p1, v3, v1}, Lcom/obs/services/internal/ObsProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    invoke-virtual {v0}, Lcom/obs/services/internal/ext/ExtObsConfiguration;->getMaxRetryOnUnexpectedEndException()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 698
    const-string v1, "httpclient.max-retry-on-unexpected-end-exception"

    invoke-virtual {p1, v1, v0}, Lcom/obs/services/internal/ObsProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    :cond_1d6
    invoke-virtual {p0}, Lcom/obs/services/ObsConfiguration;->getXmlDocumentBuilderFactoryClass()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f3

    .line 702
    invoke-virtual {p0}, Lcom/obs/services/ObsConfiguration;->getXmlDocumentBuilderFactoryClass()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f3

    .line 703
    const-string v0, "obs.xml.document.builder.factory"

    .line 704
    invoke-virtual {p0}, Lcom/obs/services/ObsConfiguration;->getXmlDocumentBuilderFactoryClass()Ljava/lang/String;

    move-result-object p0

    .line 703
    invoke-virtual {p1, v0, p0}, Lcom/obs/services/internal/ObsProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f3
    return-void
.end method

.method public static signWithHmacSha1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 165
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const-string v2, "HmacSHA1"

    invoke-direct {v0, p0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 169
    :try_start_d
    invoke-static {v2}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object p0
    :try_end_11
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_d .. :try_end_11} :catch_2a

    .line 174
    :try_start_11
    invoke-virtual {p0, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_14
    .catch Ljava/security/InvalidKeyException; {:try_start_11 .. :try_end_14} :catch_21

    .line 179
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/obs/services/internal/utils/ServiceUtils;->toBase64([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_21
    move-exception p0

    .line 176
    new-instance p1, Lcom/obs/services/exception/ObsException;

    const-string v0, "Could not initialize the MAC algorithm"

    invoke-direct {p1, v0, p0}, Lcom/obs/services/exception/ObsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_2a
    move-exception p0

    .line 171
    new-instance p1, Lcom/obs/services/internal/ServiceException;

    const-string v0, "Could not find sha1 algorithm"

    invoke-direct {p1, v0, p0}, Lcom/obs/services/internal/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static toBase64([B)Ljava/lang/String;
    .registers 1

    .line 339
    invoke-static {p0}, Lcom/obs/services/internal/utils/ReflectUtils;->toBase64([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toHex([B)Ljava/lang/String;
    .registers 7

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 301
    :cond_4
    array-length v0, p0

    if-gtz v0, :cond_a

    .line 302
    const-string p0, ""

    return-object p0

    .line 304
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 305
    array-length v1, p0

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v1, :cond_39

    aget-byte v3, p0, v2

    .line 306
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 307
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_26

    .line 308
    const-string v4, "0"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_33

    .line 309
    :cond_26
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_33

    const/4 v4, 0x6

    .line 310
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 312
    :cond_33
    :goto_33
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 314
    :cond_39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 7

    .line 570
    const-string v0, "close failed."

    const/4 v1, 0x0

    if-eqz p0, :cond_57

    .line 572
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 575
    :try_start_a
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, p0, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_3c

    .line 577
    :goto_16
    :try_start_16
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_22

    .line 578
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    :catchall_20
    move-exception v1

    goto :goto_3f

    .line 580
    :cond_22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_26
    .catchall {:try_start_16 .. :try_end_26} :catchall_20

    .line 584
    :try_start_26
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_2a

    goto :goto_38

    :catch_2a
    move-exception v2

    .line 586
    sget-object v3, Lcom/obs/services/internal/utils/ServiceUtils;->log:Lcom/obs/log/ILogger;

    invoke-interface {v3}, Lcom/obs/log/ILogger;->isWarnEnabled()Z

    move-result v3

    if-eqz v3, :cond_38

    .line 587
    sget-object v3, Lcom/obs/services/internal/utils/ServiceUtils;->log:Lcom/obs/log/ILogger;

    invoke-interface {v3, v0, v2}, Lcom/obs/log/ILogger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 591
    :cond_38
    :goto_38
    invoke-static {p0}, Lcom/obs/services/internal/utils/ServiceUtils;->closeStream(Ljava/io/Closeable;)V

    return-object v1

    :catchall_3c
    move-exception v2

    move-object v3, v1

    move-object v1, v2

    :goto_3f
    if-eqz v3, :cond_53

    .line 584
    :try_start_41
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_45

    goto :goto_53

    :catch_45
    move-exception v2

    .line 586
    sget-object v3, Lcom/obs/services/internal/utils/ServiceUtils;->log:Lcom/obs/log/ILogger;

    invoke-interface {v3}, Lcom/obs/log/ILogger;->isWarnEnabled()Z

    move-result v3

    if-eqz v3, :cond_53

    .line 587
    sget-object v3, Lcom/obs/services/internal/utils/ServiceUtils;->log:Lcom/obs/log/ILogger;

    invoke-interface {v3, v0, v2}, Lcom/obs/log/ILogger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 591
    :cond_53
    :goto_53
    invoke-static {p0}, Lcom/obs/services/internal/utils/ServiceUtils;->closeStream(Ljava/io/Closeable;)V

    .line 592
    throw v1

    :cond_57
    return-object v1
.end method

.method public static toValid(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    if-nez p0, :cond_4

    .line 84
    const-string p0, ""

    :cond_4
    return-object p0
.end method

.method private static transRealKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 5

    .line 184
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 185
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p3, :cond_1c

    .line 187
    const-string p2, "UTF-8"

    invoke-static {p0, p2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 189
    :cond_1c
    sget-object p2, Lcom/obs/services/internal/utils/ServiceUtils;->log:Lcom/obs/log/ILogger;

    invoke-interface {p2}, Lcom/obs/log/ILogger;->isDebugEnabled()Z

    move-result p3

    if-eqz p3, :cond_48

    .line 190
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Removed metadata header prefix "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " from key: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "=>"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/obs/log/ILogger;->debug(Ljava/lang/CharSequence;)V

    :cond_48
    return-object p0

    .line 194
    :cond_49
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
