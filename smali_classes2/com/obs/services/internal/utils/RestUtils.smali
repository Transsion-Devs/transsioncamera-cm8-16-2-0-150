.class public Lcom/obs/services/internal/utils/RestUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/obs/services/internal/utils/RestUtils$WrapperedSSLSocketFactory;,
        Lcom/obs/services/internal/utils/RestUtils$WrapperedSocketFactory;
    }
.end annotation


# static fields
.field private static final SPECIAL_CHAR:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final TRUST_ALL_MANAGER:Ljavax/net/ssl/X509TrustManager;

.field private static chinesePattern:Ljava/util/regex/Pattern;

.field private static final log:Lcom/obs/log/ILogger;


# direct methods
.method public static synthetic $r8$lambda$LGzgCgp1VMqZkZQG3QYJ7Dsv5nI(Ljava/lang/String;)Ljava/util/List;
    .registers 4

    .line 368
    sget-object v0, Lokhttp3/Dns;->SYSTEM:Lokhttp3/Dns;

    invoke-interface {v0, p0}, Lokhttp3/Dns;->lookup(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 369
    sget-object v0, Lcom/obs/services/internal/utils/RestUtils;->log:Lcom/obs/log/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "internet host address:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/obs/log/ILogger;->info(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public static synthetic $r8$lambda$uuAIyVtdk7ey5JCVbVsAicxBrTo(Lcom/obs/services/internal/ObsProperties;Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .registers 6

    .line 365
    const-string p1, "httpclient.strict-hostname-verification"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/obs/services/internal/ObsProperties;->getBoolProperty(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 366
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object p1

    const-string v1, "obs-endpoint"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lcom/obs/services/internal/ObsProperties;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0, p2}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result p0

    if-eqz p0, :cond_1c

    goto :goto_1d

    :cond_1c
    return v0

    :cond_1d
    :goto_1d
    const/4 p0, 0x1

    return p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 73
    const-class v0, Lcom/obs/services/internal/utils/RestUtils;

    invoke-static {v0}, Lcom/obs/log/LoggerBuilder;->getLogger(Ljava/lang/Class;)Lcom/obs/log/ILogger;

    move-result-object v0

    sput-object v0, Lcom/obs/services/internal/utils/RestUtils;->log:Lcom/obs/log/ILogger;

    .line 74
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/obs/services/internal/utils/RestUtils;->SPECIAL_CHAR:Ljava/util/Set;

    const/16 v1, 0x5f

    .line 77
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x2d

    .line 78
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x7e

    .line 79
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x2e

    .line 80
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 84
    const-string v0, "[\u4e00-\u9fa5]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/obs/services/internal/utils/RestUtils;->chinesePattern:Ljava/util/regex/Pattern;

    .line 86
    new-instance v0, Lcom/obs/services/internal/utils/RestUtils$1;

    invoke-direct {v0}, Lcom/obs/services/internal/utils/RestUtils$1;-><init>()V

    sput-object v0, Lcom/obs/services/internal/utils/RestUtils;->TRUST_ALL_MANAGER:Ljavax/net/ssl/X509TrustManager;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createSSLContext([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/lang/String;Ljava/security/SecureRandom;)Ljavax/net/ssl/SSLContext;
    .registers 5

    .line 180
    :try_start_0
    const-string v0, "TLSv1.2"

    invoke-static {v0, p2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object p2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_1b

    .line 183
    :catch_7
    :try_start_7
    const-string v0, "TLSv1.1"

    invoke-static {v0, p2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object p2
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_d} :catch_e

    goto :goto_1b

    .line 186
    :catch_e
    :try_start_e
    const-string v0, "TLSv1.0"

    invoke-static {v0, p2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object p2
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_14} :catch_15

    goto :goto_1b

    .line 188
    :catch_15
    const-string v0, "TLS"

    invoke-static {v0, p2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object p2

    .line 192
    :goto_1b
    invoke-virtual {p2, p0, p1, p3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    return-object p2
.end method

.method private static createSSLContext([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)Ljavax/net/ssl/SSLContext;
    .registers 4

    .line 200
    :try_start_0
    const-string v0, "TLSv1.2"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_1b

    .line 203
    :catch_7
    :try_start_7
    const-string v0, "TLSv1.1"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_d} :catch_e

    goto :goto_1b

    .line 206
    :catch_e
    :try_start_e
    const-string v0, "TLSv1.0"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_14} :catch_15

    goto :goto_1b

    .line 208
    :catch_15
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 212
    :goto_1b
    invoke-virtual {v0, p0, p1, p2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    return-object v0
.end method

.method public static encodeUrlPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    .line 167
    :goto_a
    array-length v2, p0

    if-ge v1, v2, :cond_21

    .line 168
    aget-object v2, p0, v1

    invoke-static {v2}, Lcom/obs/services/internal/utils/RestUtils;->encodeUrlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1e

    .line 170
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 173
    :cond_21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeUrlString(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 144
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\+"

    const-string v2, "%20"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%7E"

    const-string v2, "~"

    .line 158
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\*"

    const-string v2, "%2A"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_1e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_1e} :catch_1f

    return-object p0

    :catch_1f
    move-exception v0

    .line 160
    new-instance v1, Lcom/obs/services/internal/ServiceException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to encode path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lcom/obs/services/internal/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static initHttpClientBuilder(Lcom/obs/services/internal/ObsProperties;Ljavax/net/ssl/KeyManagerFactory;Ljavax/net/ssl/TrustManagerFactory;Lokhttp3/Dispatcher;Ljava/security/SecureRandom;)Lokhttp3/OkHttpClient$Builder;
    .registers 14

    .line 335
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 336
    sget-object v1, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    sget-object v1, Lcom/obs/services/model/HttpProtocolTypeEnum;->HTTP1_1:Lcom/obs/services/model/HttpProtocolTypeEnum;

    .line 339
    invoke-virtual {v1}, Lcom/obs/services/model/HttpProtocolTypeEnum;->getCode()Ljava/lang/String;

    move-result-object v1

    .line 338
    const-string v2, "httpclient.protocol"

    invoke-virtual {p0, v2, v1}, Lcom/obs/services/internal/ObsProperties;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/obs/services/model/HttpProtocolTypeEnum;->getValueFromCode(Ljava/lang/String;)Lcom/obs/services/model/HttpProtocolTypeEnum;

    move-result-object v1

    sget-object v2, Lcom/obs/services/model/HttpProtocolTypeEnum;->HTTP2_0:Lcom/obs/services/model/HttpProtocolTypeEnum;

    if-ne v1, v2, :cond_24

    .line 340
    sget-object v1, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    :cond_24
    new-instance v1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 345
    invoke-static {p0, p3, v1}, Lcom/obs/services/internal/utils/RestUtils;->initHttpDispatcher(Lcom/obs/services/internal/ObsProperties;Lokhttp3/Dispatcher;Lokhttp3/OkHttpClient$Builder;)V

    .line 347
    new-instance p3, Lokhttp3/ConnectionPool;

    const-string v2, "httpclient.max-idle-connections"

    const/16 v3, 0x3e8

    .line 348
    invoke-virtual {p0, v2, v3}, Lcom/obs/services/internal/ObsProperties;->getIntProperty(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "httpclient.idle-connection-time"

    const/16 v4, 0x7530

    .line 350
    invoke-virtual {p0, v3, v4}, Lcom/obs/services/internal/ObsProperties;->getIntProperty(Ljava/lang/String;I)I

    move-result v3

    int-to-long v3, v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p3, v2, v3, v4, v5}, Lokhttp3/ConnectionPool;-><init>(IJLjava/util/concurrent/TimeUnit;)V

    .line 354
    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient$Builder;->protocols(Ljava/util/List;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lokhttp3/OkHttpClient$Builder;->followRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lokhttp3/OkHttpClient$Builder;->followSslRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    const-string v3, "httpclient.is-retry-on-connection-failure-in-okhttp"

    .line 356
    invoke-virtual {p0, v3, v2}, Lcom/obs/services/internal/ObsProperties;->getBoolProperty(Ljava/lang/String;Z)Z

    move-result v3

    .line 355
    invoke-virtual {v0, v3}, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    const/4 v3, 0x0

    .line 357
    invoke-virtual {v0, v3}, Lokhttp3/OkHttpClient$Builder;->cache(Lokhttp3/Cache;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    const-string v4, "httpclient.connection-timeout-ms"

    const/16 v6, 0x4e20

    .line 358
    invoke-virtual {p0, v4, v6}, Lcom/obs/services/internal/ObsProperties;->getIntProperty(Ljava/lang/String;I)I

    move-result v4

    int-to-long v6, v4

    invoke-virtual {v0, v6, v7, v5}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 360
    const-string v4, "httpclient.socket-timeout-ms"

    const v6, 0xea60

    invoke-virtual {p0, v4, v6}, Lcom/obs/services/internal/ObsProperties;->getIntProperty(Ljava/lang/String;I)I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v0, v7, v8, v5}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 362
    invoke-virtual {p0, v4, v6}, Lcom/obs/services/internal/ObsProperties;->getIntProperty(Ljava/lang/String;I)I

    move-result v4

    int-to-long v6, v4

    invoke-virtual {v0, v6, v7, v5}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 364
    invoke-virtual {v0, p3}, Lokhttp3/OkHttpClient$Builder;->connectionPool(Lokhttp3/ConnectionPool;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p3

    new-instance v0, Lcom/obs/services/internal/utils/RestUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/obs/services/internal/utils/RestUtils$$ExternalSyntheticLambda0;-><init>(Lcom/obs/services/internal/ObsProperties;)V

    .line 365
    invoke-virtual {p3, v0}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p3

    new-instance v0, Lcom/obs/services/internal/utils/RestUtils$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/obs/services/internal/utils/RestUtils$$ExternalSyntheticLambda1;-><init>()V

    .line 367
    invoke-virtual {p3, v0}, Lokhttp3/OkHttpClient$Builder;->dns(Lokhttp3/Dns;)Lokhttp3/OkHttpClient$Builder;

    .line 373
    const-string p3, "socket.read-buffer-size"

    const/4 v0, -0x1

    invoke-virtual {p0, p3, v0}, Lcom/obs/services/internal/ObsProperties;->getIntProperty(Ljava/lang/String;I)I

    move-result p3

    .line 374
    const-string v4, "socket.write-buffer-size"

    invoke-virtual {p0, v4, v0}, Lcom/obs/services/internal/ObsProperties;->getIntProperty(Ljava/lang/String;I)I

    move-result v0

    .line 376
    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 378
    new-instance v0, Lcom/obs/services/internal/utils/RestUtils$WrapperedSocketFactory;

    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v4

    invoke-direct {v0, v4, p3}, Lcom/obs/services/internal/utils/RestUtils$WrapperedSocketFactory;-><init>(Ljavax/net/SocketFactory;I)V

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient$Builder;->socketFactory(Ljavax/net/SocketFactory;)Lokhttp3/OkHttpClient$Builder;

    .line 385
    :try_start_b6
    const-string v0, "httpclient.validate-certificate"

    invoke-virtual {p0, v0, v2}, Lcom/obs/services/internal/ObsProperties;->getBoolProperty(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_e7

    if-nez p1, :cond_c3

    move-object p1, v3

    goto :goto_c7

    .line 386
    :cond_c3
    invoke-virtual {p1}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object p1

    :goto_c7
    if-eqz p2, :cond_d3

    .line 387
    invoke-virtual {p2}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    array-length v0, v0

    if-ge v0, v4, :cond_de

    goto :goto_d3

    :catch_d1
    move-exception p0

    goto :goto_133

    .line 388
    :cond_d3
    :goto_d3
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object p2

    .line 389
    invoke-virtual {p2, v3}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 391
    :cond_de
    invoke-virtual {p2}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object p2

    .line 392
    aget-object v0, p2, v2

    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    goto :goto_ee

    .line 394
    :cond_e7
    sget-object v0, Lcom/obs/services/internal/utils/RestUtils;->TRUST_ALL_MANAGER:Ljavax/net/ssl/X509TrustManager;

    .line 395
    new-array p2, v4, [Ljavax/net/ssl/TrustManager;

    aput-object v0, p2, v2

    move-object p1, v3

    .line 397
    :goto_ee
    const-string v2, "httpclient.ssl-provider"

    const-string v4, ""

    invoke-virtual {p0, v2, v4}, Lcom/obs/services/internal/ObsProperties;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 399
    invoke-static {p0}, Lcom/obs/services/internal/utils/ServiceUtils;->isValid(Ljava/lang/String;)Z

    move-result v2
    :try_end_fa
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_fa} :catch_d1

    if-eqz v2, :cond_120

    .line 401
    :try_start_fc
    invoke-static {p1, p2, p0, p4}, Lcom/obs/services/internal/utils/RestUtils;->createSSLContext([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/lang/String;Ljava/security/SecureRandom;)Ljavax/net/ssl/SSLContext;

    move-result-object v3
    :try_end_100
    .catch Ljava/lang/Exception; {:try_start_fc .. :try_end_100} :catch_101

    goto :goto_120

    :catch_101
    move-exception v2

    .line 403
    :try_start_102
    sget-object v4, Lcom/obs/services/internal/utils/RestUtils;->log:Lcom/obs/log/ILogger;

    invoke-interface {v4}, Lcom/obs/log/ILogger;->isErrorEnabled()Z

    move-result v4

    if-eqz v4, :cond_120

    .line 404
    sget-object v4, Lcom/obs/services/internal/utils/RestUtils;->log:Lcom/obs/log/ILogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception happened in create ssl context with provider"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v4, p0, v2}, Lcom/obs/log/ILogger;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_120
    :goto_120
    if-nez v3, :cond_126

    .line 409
    invoke-static {p1, p2, p4}, Lcom/obs/services/internal/utils/RestUtils;->createSSLContext([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)Ljavax/net/ssl/SSLContext;

    move-result-object v3

    .line 411
    :cond_126
    invoke-virtual {v3}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p0

    .line 412
    new-instance p1, Lcom/obs/services/internal/utils/RestUtils$WrapperedSSLSocketFactory;

    invoke-direct {p1, p0, p3}, Lcom/obs/services/internal/utils/RestUtils$WrapperedSSLSocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;I)V

    invoke-virtual {v1, p1, v0}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;
    :try_end_132
    .catch Ljava/lang/Exception; {:try_start_102 .. :try_end_132} :catch_d1

    goto :goto_14f

    .line 415
    :goto_133
    sget-object p1, Lcom/obs/services/internal/utils/RestUtils;->log:Lcom/obs/log/ILogger;

    invoke-interface {p1}, Lcom/obs/log/ILogger;->isErrorEnabled()Z

    move-result p2

    if-eqz p2, :cond_14f

    .line 416
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Exception happened in HttpClient.configSSL,and e = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/obs/log/ILogger;->error(Ljava/lang/CharSequence;)V

    :cond_14f
    :goto_14f
    return-object v1
.end method

.method private static initHttpDispatcher(Lcom/obs/services/internal/ObsProperties;Lokhttp3/Dispatcher;Lokhttp3/OkHttpClient$Builder;)V
    .registers 8

    .line 425
    const-class v0, Lokhttp3/Dispatcher;

    const-string v1, "dispatcher"

    if-nez p1, :cond_1d

    .line 426
    const-string p1, "httpclient.max-connections"

    const/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0}, Lcom/obs/services/internal/ObsProperties;->getIntProperty(Ljava/lang/String;I)I

    move-result p0

    .line 428
    new-instance p1, Lokhttp3/Dispatcher;

    invoke-direct {p1}, Lokhttp3/Dispatcher;-><init>()V

    .line 429
    invoke-virtual {p1, p0}, Lokhttp3/Dispatcher;->setMaxRequests(I)V

    .line 430
    invoke-virtual {p1, p0}, Lokhttp3/Dispatcher;->setMaxRequestsPerHost(I)V

    .line 431
    invoke-virtual {p2, p1}, Lokhttp3/OkHttpClient$Builder;->dispatcher(Lokhttp3/Dispatcher;)Lokhttp3/OkHttpClient$Builder;

    return-void

    .line 434
    :cond_1d
    :try_start_1d
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 435
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, p2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_30} :catch_31

    return-void

    :catch_31
    move-exception p0

    .line 437
    sget-object v2, Lcom/obs/services/internal/utils/RestUtils;->log:Lcom/obs/log/ILogger;

    invoke-interface {v2}, Lcom/obs/log/ILogger;->isWarnEnabled()Z

    move-result v3

    if-eqz v3, :cond_53

    .line 438
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoke "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ".dispatcher() failed."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, p0}, Lcom/obs/log/ILogger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 441
    :cond_53
    :try_start_53
    const-string p0, "okhttp3.AbsDispatcher"

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 442
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    filled-new-array {p0}, [Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 443
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_6c} :catch_6d

    return-void

    :catch_6d
    move-exception p0

    .line 445
    new-instance p1, Lcom/obs/services/exception/ObsException;

    const-string p2, "invoke okhttp3.AbsDispatcher.dispatcher failed"

    invoke-direct {p1, p2, p0}, Lcom/obs/services/exception/ObsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static initHttpProxy(Lokhttp3/OkHttpClient$Builder;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 8

    if-eqz p1, :cond_4e

    const/4 v0, -0x1

    if-eq p2, v0, :cond_4e

    .line 454
    sget-object v0, Lcom/obs/services/internal/utils/RestUtils;->log:Lcom/obs/log/ILogger;

    invoke-interface {v0}, Lcom/obs/log/ILogger;->isInfoEnabled()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 455
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Using Proxy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/obs/log/ILogger;->info(Ljava/lang/CharSequence;)V

    .line 457
    :cond_29
    new-instance v0, Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    invoke-virtual {p0, v0}, Lokhttp3/OkHttpClient$Builder;->proxy(Ljava/net/Proxy;)Lokhttp3/OkHttpClient$Builder;

    if-eqz p3, :cond_4e

    .line 459
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4e

    .line 460
    new-instance p1, Lcom/obs/services/internal/utils/RestUtils$2;

    invoke-direct {p1, p3, p4}, Lcom/obs/services/internal/utils/RestUtils$2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    invoke-virtual {p0, p1}, Lokhttp3/OkHttpClient$Builder;->proxyAuthenticator(Lokhttp3/Authenticator;)Lokhttp3/OkHttpClient$Builder;

    :cond_4e
    return-void
.end method

.method public static readBodyFromResponse(Lokhttp3/Response;)Ljava/lang/String;
    .registers 2

    .line 476
    :try_start_0
    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p0

    .line 478
    new-instance v0, Lcom/obs/services/internal/ServiceException;

    invoke-direct {v0, p0}, Lcom/obs/services/internal/ServiceException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static tryEncode(Ljava/lang/CharSequence;ZLjava/lang/StringBuilder;)V
    .registers 9

    .line 115
    const-string v0, "UTF-8"

    const/4 v1, 0x0

    if-eqz p1, :cond_2f

    .line 116
    :goto_5
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-ge v1, p1, :cond_85

    .line 117
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    .line 118
    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    .line 119
    sget-object v3, Lcom/obs/services/internal/utils/RestUtils;->chinesePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    if-eqz v3, :cond_29

    .line 120
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 121
    invoke-static {v2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2c

    .line 123
    :cond_29
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_2f
    move p1, v1

    .line 127
    :goto_30
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge p1, v2, :cond_85

    .line 128
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x41

    const/4 v4, 0x1

    if-lt v2, v3, :cond_43

    const/16 v3, 0x5a

    if-le v2, v3, :cond_4b

    :cond_43
    const/16 v3, 0x61

    if-lt v2, v3, :cond_4d

    const/16 v3, 0x7a

    if-gt v2, v3, :cond_4d

    :cond_4b
    move v3, v4

    goto :goto_4e

    :cond_4d
    move v3, v1

    :goto_4e
    const/16 v5, 0x30

    if-lt v2, v5, :cond_57

    const/16 v5, 0x39

    if-gt v2, v5, :cond_57

    goto :goto_58

    :cond_57
    move v4, v1

    :goto_58
    if-nez v3, :cond_7f

    if-nez v4, :cond_7f

    .line 131
    sget-object v3, Lcom/obs/services/internal/utils/RestUtils;->SPECIAL_CHAR:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_69

    goto :goto_7f

    :cond_69
    const/16 v3, 0x2f

    if-ne v2, v3, :cond_73

    .line 134
    const-string v2, "%2F"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_82

    .line 136
    :cond_73
    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_82

    .line 132
    :cond_7f
    :goto_7f
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_82
    add-int/lit8 p1, p1, 0x1

    goto :goto_30

    :cond_85
    return-void
.end method

.method public static uriEncode(Ljava/lang/CharSequence;Z)Ljava/lang/String;
    .registers 4

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    :try_start_5
    invoke-static {p0, p1, v0}, Lcom/obs/services/internal/utils/RestUtils;->tryEncode(Ljava/lang/CharSequence;ZLjava/lang/StringBuilder;)V
    :try_end_8
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_8} :catch_d

    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 108
    :catch_d
    new-instance p1, Lcom/obs/services/internal/ServiceException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to encode input: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/obs/services/internal/ServiceException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
