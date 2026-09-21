.class public Lcom/obs/services/internal/handler/XmlResponsesSaxParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketDirectColdAccessHandler;,
        Lcom/obs/services/internal/handler/XmlResponsesSaxParser$GetCrrProgressResultHandler;,
        Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketReplicationConfigurationHandler;,
        Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketStorageInfoHandler;,
        Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketStoragePolicyHandler;,
        Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketEncryptionHandler;,
        Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketQuotaHandler;,
        Lcom/obs/services/internal/handler/XmlResponsesSaxParser$AccessControlListHandler;,
        Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;,
        Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketNotificationConfigurationHandler;,
        Lcom/obs/services/internal/handler/XmlResponsesSaxParser$InventoryConfigurationsHandler;,
        Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ObjectTagInfoHandler;,
        Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketTagInfoHandler;,
        Lcom/obs/services/internal/handler/XmlResponsesSaxParser$DeleteObjectsHandler;,
        Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;,
        Lcom/obs/services/internal/handler/XmlResponsesSaxParser$CompleteMultipartUploadHandler;,
        Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListPartsHandler;,
        Lcom/obs/services/internal/handler/XmlResponsesSaxParser$PartResultHandler;,
        Lcom/obs/services/internal/handler/XmlResponsesSaxParser$CopyPartResultHandler;,
        Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListMultipartUploadsHandler;,
        Lcom/obs/services/internal/handler/XmlResponsesSaxParser$MultipartUploadHandler;,
        Lcom/obs/services/internal/handler/XmlResponsesSaxParser$InitiateMultipartUploadHandler;,
        Lcom/obs/services/internal/handler/XmlResponsesSaxParser$OwnerHandler;,
        Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;,
        Lcom/obs/services/internal/handler/XmlResponsesSaxParser$RequestPaymentHandler;,
        Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketCustomDomainHandler;,
        Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketVersioningHandler;,
        Lcom/obs/services/internal/handler/XmlResponsesSaxParser$RequestPaymentConfigurationHandler;,
        Lcom/obs/services/internal/handler/XmlResponsesSaxParser$CopyObjectResultHandler;,
        Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketCorsHandler;,
        Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketLocationHandler;,
        Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketLoggingHandler;,
        Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListBucketsHandler;,
        Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListBucketAliasHandler;,
        Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ContentSummaryFsHandler;,
        Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListContentSummaryFsHandler;,
        Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListContentSummaryHandler;,
        Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListObjectsHandler;
    }
.end annotation


# static fields
.field private static final log:Lcom/obs/log/ILogger;


# instance fields
.field private xmlReader:Lorg/xml/sax/XMLReader;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 99
    const-string v0, "com.obs.services.internal.RestStorageService"

    invoke-static {v0}, Lcom/obs/log/LoggerBuilder;->getLogger(Ljava/lang/String;)Lcom/obs/log/ILogger;

    move-result-object v0

    sput-object v0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->log:Lcom/obs/log/ILogger;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    invoke-static {}, Lcom/obs/services/internal/utils/ServiceUtils;->loadXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    iput-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->xmlReader:Lorg/xml/sax/XMLReader;

    return-void
.end method

.method static synthetic access$000()Lcom/obs/log/ILogger;
    .registers 1

    .line 97
    sget-object v0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->log:Lcom/obs/log/ILogger;

    return-object v0
.end method

.method public static getDecodedString(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 2

    if-eqz p1, :cond_12

    if-eqz p0, :cond_12

    .line 182
    :try_start_4
    const-string p1, "UTF-8"

    invoke-static {p0, p1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception p0

    .line 184
    new-instance p1, Lcom/obs/services/internal/ServiceException;

    invoke-direct {p1, p0}, Lcom/obs/services/internal/ServiceException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_12
    return-object p0
.end method


# virtual methods
.method public parse(Ljava/io/InputStream;Ljava/lang/Class;Z)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/lang/Class<",
            "TT;>;Z)TT;"
        }
    .end annotation

    .line 161
    :try_start_0
    const-class v0, Lcom/obs/services/internal/handler/SimpleHandler;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 162
    const-class v0, Lorg/xml/sax/XMLReader;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p2

    .line 163
    iget-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->xmlReader:Lorg/xml/sax/XMLReader;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_26

    :cond_1d
    const/4 v0, 0x0

    .line 165
    invoke-virtual {p2, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 167
    :goto_26
    instance-of v0, p2, Lorg/xml/sax/helpers/DefaultHandler;

    if-eqz v0, :cond_36

    if-eqz p3, :cond_30

    .line 169
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->sanitizeXmlDocument(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p1

    .line 171
    :cond_30
    move-object p3, p2

    check-cast p3, Lorg/xml/sax/helpers/DefaultHandler;

    invoke-virtual {p0, p3, p1}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->parseXmlInputStream(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_36} :catch_37

    :cond_36
    return-object p2

    :catch_37
    move-exception p0

    .line 175
    new-instance p1, Lcom/obs/services/internal/ServiceException;

    invoke-direct {p1, p0}, Lcom/obs/services/internal/ServiceException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method protected parseXmlInputStream(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)V
    .registers 6

    if-nez p2, :cond_3

    return-void

    .line 112
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->xmlReader:Lorg/xml/sax/XMLReader;

    invoke-interface {v0, p1}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 113
    iget-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->xmlReader:Lorg/xml/sax/XMLReader;

    invoke-interface {v0, p1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 114
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->xmlReader:Lorg/xml/sax/XMLReader;

    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {p0, v0}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_17} :catch_1d
    .catchall {:try_start_3 .. :try_end_17} :catchall_1b

    .line 118
    invoke-static {p2}, Lcom/obs/services/internal/utils/ServiceUtils;->closeStream(Ljava/io/Closeable;)V

    return-void

    :catchall_1b
    move-exception p0

    goto :goto_39

    :catch_1d
    move-exception p0

    .line 116
    :try_start_1e
    new-instance v0, Lcom/obs/services/internal/ServiceException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse XML document with handler "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lcom/obs/services/internal/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_39
    .catchall {:try_start_1e .. :try_end_39} :catchall_1b

    .line 118
    :goto_39
    invoke-static {p2}, Lcom/obs/services/internal/utils/ServiceUtils;->closeStream(Ljava/io/Closeable;)V

    .line 119
    throw p0
.end method

.method protected sanitizeXmlDocument(Ljava/io/InputStream;)Ljava/io/InputStream;
    .registers 7

    .line 123
    const-string p0, "close failed."

    const/4 v0, 0x0

    if-nez p1, :cond_6

    return-object v0

    .line 128
    :cond_6
    :try_start_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, p1, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_72

    const/16 v0, 0x2000

    .line 131
    :try_start_19
    new-array v0, v0, [C

    .line 133
    :goto_1b
    invoke-virtual {v2, v0}, Ljava/io/Reader;->read([C)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_29

    const/4 v4, 0x0

    .line 134
    invoke-virtual {v1, v0, v4, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_1b

    :catchall_27
    move-exception v0

    goto :goto_75

    .line 137
    :cond_29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\r"

    const-string v3, "&#013;"

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 138
    sget-object v1, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->log:Lcom/obs/log/ILogger;

    invoke-interface {v1}, Lcom/obs/log/ILogger;->isTraceEnabled()Z

    move-result v3

    if-eqz v3, :cond_51

    .line 139
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Response entity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/obs/log/ILogger;->trace(Ljava/lang/CharSequence;)V

    .line 141
    :cond_51
    new-instance v1, Ljava/io/ByteArrayInputStream;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_5c
    .catchall {:try_start_19 .. :try_end_5c} :catchall_27

    .line 147
    :try_start_5c
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_60

    goto :goto_6e

    :catch_60
    move-exception v0

    .line 149
    sget-object v2, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->log:Lcom/obs/log/ILogger;

    invoke-interface {v2}, Lcom/obs/log/ILogger;->isWarnEnabled()Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 150
    sget-object v2, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->log:Lcom/obs/log/ILogger;

    invoke-interface {v2, p0, v0}, Lcom/obs/log/ILogger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 154
    :cond_6e
    :goto_6e
    invoke-static {p1}, Lcom/obs/services/internal/utils/ServiceUtils;->closeStream(Ljava/io/Closeable;)V

    return-object v1

    :catchall_72
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 143
    :goto_75
    :try_start_75
    new-instance v1, Lcom/obs/services/internal/ServiceException;

    const-string v3, "Failed to sanitize XML document destined"

    invoke-direct {v1, v3, v0}, Lcom/obs/services/internal/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_7d
    .catchall {:try_start_75 .. :try_end_7d} :catchall_7d

    :catchall_7d
    move-exception v0

    if-eqz v2, :cond_92

    .line 147
    :try_start_80
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_83} :catch_84

    goto :goto_92

    :catch_84
    move-exception v1

    .line 149
    sget-object v2, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->log:Lcom/obs/log/ILogger;

    invoke-interface {v2}, Lcom/obs/log/ILogger;->isWarnEnabled()Z

    move-result v2

    if-eqz v2, :cond_92

    .line 150
    sget-object v2, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->log:Lcom/obs/log/ILogger;

    invoke-interface {v2, p0, v1}, Lcom/obs/log/ILogger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 154
    :cond_92
    :goto_92
    invoke-static {p1}, Lcom/obs/services/internal/utils/ServiceUtils;->closeStream(Ljava/io/Closeable;)V

    .line 155
    throw v0
.end method
