.class public Lcom/obs/services/internal/RestConnectionService;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final log:Lcom/obs/log/ILogger;


# instance fields
.field protected volatile credentials:Lcom/obs/services/internal/security/ProviderCredentials;

.field protected httpClient:Lokhttp3/OkHttpClient;

.field protected keyManagerFactory:Ljavax/net/ssl/KeyManagerFactory;

.field protected obsProperties:Lcom/obs/services/internal/ObsProperties;

.field protected semaphore:Ljava/util/concurrent/Semaphore;

.field protected shuttingDown:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected trustManagerFactory:Ljavax/net/ssl/TrustManagerFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 42
    const-class v0, Lcom/obs/services/internal/RestConnectionService;

    invoke-static {v0}, Lcom/obs/log/LoggerBuilder;->getLogger(Ljava/lang/Class;)Lcom/obs/log/ILogger;

    move-result-object v0

    sput-object v0, Lcom/obs/services/internal/RestConnectionService;->log:Lcom/obs/log/ILogger;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/obs/services/internal/RestConnectionService;->shuttingDown:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private addProtocol(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 180
    invoke-virtual {p0}, Lcom/obs/services/internal/RestConnectionService;->getHttpsOnly()Z

    move-result v0

    const-string v1, ":"

    const-string v2, ""

    if-eqz v0, :cond_3a

    .line 181
    invoke-virtual {p0}, Lcom/obs/services/internal/RestConnectionService;->getHttpsPort()I

    move-result p0

    const/16 v0, 0x1bb

    if-ne p0, v0, :cond_13

    goto :goto_22

    .line 182
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 183
    :goto_22
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "https://"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_69

    .line 185
    :cond_3a
    invoke-virtual {p0}, Lcom/obs/services/internal/RestConnectionService;->getHttpPort()I

    move-result p0

    const/16 v0, 0x50

    if-ne p0, v0, :cond_43

    goto :goto_52

    .line 186
    :cond_43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 187
    :goto_52
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "http://"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 189
    :goto_69
    sget-object p1, Lcom/obs/services/internal/RestConnectionService;->log:Lcom/obs/log/ILogger;

    invoke-interface {p1}, Lcom/obs/log/ILogger;->isDebugEnabled()Z

    move-result p2

    if-eqz p2, :cond_85

    .line 190
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "OBS URL: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/obs/log/ILogger;->debug(Ljava/lang/CharSequence;)V

    :cond_85
    return-object p0
.end method

.method private createRequestBuilder(Lcom/obs/services/model/HttpMethodEnum;Lokhttp3/RequestBody;Ljava/lang/String;)Lokhttp3/Request$Builder;
    .registers 7

    .line 144
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 145
    invoke-virtual {v0, p3}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    const/4 p3, 0x0

    if-nez p2, :cond_11

    .line 147
    const-string p2, ""

    invoke-static {p2, p3}, Lokhttp3/RequestBody;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object p2

    .line 149
    :cond_11
    sget-object v1, Lcom/obs/services/internal/RestConnectionService$1;->$SwitchMap$com$obs$services$model$HttpMethodEnum:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_5a

    .line 169
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unrecognised HTTP method name: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 166
    :pswitch_33
    const-string p1, "OPTIONS"

    invoke-virtual {v0, p1, p3}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    goto :goto_4c

    .line 163
    :pswitch_39
    invoke-virtual {v0, p2}, Lokhttp3/Request$Builder;->delete(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    goto :goto_4c

    .line 160
    :pswitch_3d
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    goto :goto_4c

    .line 157
    :pswitch_41
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->head()Lokhttp3/Request$Builder;

    goto :goto_4c

    .line 154
    :pswitch_45
    invoke-virtual {v0, p2}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    goto :goto_4c

    .line 151
    :pswitch_49
    invoke-virtual {v0, p2}, Lokhttp3/Request$Builder;->put(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 172
    :goto_4c
    invoke-virtual {p0}, Lcom/obs/services/internal/RestConnectionService;->isKeepAlive()Z

    move-result p0

    if-nez p0, :cond_59

    .line 173
    const-string p0, "Connection"

    const-string p1, "Close"

    invoke-virtual {v0, p0, p1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    :cond_59
    return-object v0

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_49
        :pswitch_45
        :pswitch_41
        :pswitch_3d
        :pswitch_39
        :pswitch_33
    .end packed-switch
.end method

.method private invokeShutdown()V
    .registers 4

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/obs/services/internal/RestConnectionService;->httpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "dispatcher"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 100
    iget-object v1, p0, Lcom/obs/services/internal/RestConnectionService;->httpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "executorService"

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 101
    iget-object p0, p0, Lcom/obs/services/internal/RestConnectionService;->httpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {p0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object p0

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 102
    instance-of v0, p0, Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_41

    .line 103
    check-cast p0, Ljava/util/concurrent/ExecutorService;

    .line 104
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_32} :catch_33

    return-void

    :catch_33
    move-exception p0

    .line 109
    sget-object v0, Lcom/obs/services/internal/RestConnectionService;->log:Lcom/obs/log/ILogger;

    invoke-interface {v0}, Lcom/obs/log/ILogger;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 110
    const-string v1, "shows some exceptions at the time of shutdown httpClient. "

    invoke-interface {v0, v1, p0}, Lcom/obs/log/ILogger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_41
    return-void
.end method


# virtual methods
.method protected addRequestParametersToUrlPath(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_a8

    .line 199
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_f
    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 200
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 201
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p3, :cond_3c

    .line 203
    invoke-virtual {p0}, Lcom/obs/services/internal/RestConnectionService;->isPathStyle()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 204
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_51

    .line 206
    :cond_38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_51

    .line 209
    :cond_3c
    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_45

    goto :goto_47

    :cond_45
    const-string v2, "&"

    :goto_47
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-static {v1}, Lcom/obs/services/internal/utils/RestUtils;->encodeUrlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    :goto_51
    invoke-static {p2}, Lcom/obs/services/internal/utils/ServiceUtils;->isValid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8a

    .line 213
    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/obs/services/internal/utils/RestUtils;->encodeUrlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    sget-object v3, Lcom/obs/services/internal/RestConnectionService;->log:Lcom/obs/log/ILogger;

    invoke-interface {v3}, Lcom/obs/log/ILogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 215
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Added request parameter: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, p2}, Lcom/obs/services/internal/utils/ServiceUtils;->getLoggableInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v3, p2}, Lcom/obs/log/ILogger;->debug(Ljava/lang/CharSequence;)V

    goto :goto_f

    .line 218
    :cond_8a
    sget-object p2, Lcom/obs/services/internal/RestConnectionService;->log:Lcom/obs/log/ILogger;

    invoke-interface {p2}, Lcom/obs/log/ILogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 219
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Added request parameter without value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/obs/log/ILogger;->debug(Ljava/lang/CharSequence;)V

    goto/16 :goto_f

    .line 224
    :cond_a8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getEndpoint()Ljava/lang/String;
    .registers 3

    .line 228
    iget-object p0, p0, Lcom/obs/services/internal/RestConnectionService;->obsProperties:Lcom/obs/services/internal/ObsProperties;

    const-string v0, "obs-endpoint"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/obs/services/internal/ObsProperties;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getHttpPort()I
    .registers 3

    .line 232
    iget-object p0, p0, Lcom/obs/services/internal/RestConnectionService;->obsProperties:Lcom/obs/services/internal/ObsProperties;

    const-string v0, "obs-endpoint-http-port"

    const/16 v1, 0x50

    invoke-virtual {p0, v0, v1}, Lcom/obs/services/internal/ObsProperties;->getIntProperty(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method protected getHttpsOnly()Z
    .registers 3

    .line 252
    iget-object p0, p0, Lcom/obs/services/internal/RestConnectionService;->obsProperties:Lcom/obs/services/internal/ObsProperties;

    const-string v0, "obs.https-only"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/obs/services/internal/ObsProperties;->getBoolProperty(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method protected getHttpsPort()I
    .registers 3

    .line 236
    iget-object p0, p0, Lcom/obs/services/internal/RestConnectionService;->obsProperties:Lcom/obs/services/internal/ObsProperties;

    const-string v0, "obs-endpoint-https-port"

    const/16 v1, 0x1bb

    invoke-virtual {p0, v0, v1}, Lcom/obs/services/internal/ObsProperties;->getIntProperty(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method protected initHttpClient(Lokhttp3/Dispatcher;)V
    .registers 8

    .line 60
    iget-object v0, p0, Lcom/obs/services/internal/RestConnectionService;->obsProperties:Lcom/obs/services/internal/ObsProperties;

    iget-object v1, p0, Lcom/obs/services/internal/RestConnectionService;->keyManagerFactory:Ljavax/net/ssl/KeyManagerFactory;

    iget-object v2, p0, Lcom/obs/services/internal/RestConnectionService;->trustManagerFactory:Ljavax/net/ssl/TrustManagerFactory;

    iget-object v3, p0, Lcom/obs/services/internal/RestConnectionService;->credentials:Lcom/obs/services/internal/security/ProviderCredentials;

    .line 61
    invoke-virtual {v3}, Lcom/obs/services/internal/security/ProviderCredentials;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v3

    .line 60
    invoke-static {v0, v1, v2, p1, v3}, Lcom/obs/services/internal/utils/RestUtils;->initHttpClientBuilder(Lcom/obs/services/internal/ObsProperties;Ljavax/net/ssl/KeyManagerFactory;Ljavax/net/ssl/TrustManagerFactory;Lokhttp3/Dispatcher;Ljava/security/SecureRandom;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 63
    iget-object v0, p0, Lcom/obs/services/internal/RestConnectionService;->obsProperties:Lcom/obs/services/internal/ObsProperties;

    const-string v1, "httpclient.proxy-enable"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/obs/services/internal/ObsProperties;->getBoolProperty(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 64
    iget-object v0, p0, Lcom/obs/services/internal/RestConnectionService;->obsProperties:Lcom/obs/services/internal/ObsProperties;

    const-string v1, "httpclient.proxy-host"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/obs/services/internal/ObsProperties;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/obs/services/internal/RestConnectionService;->obsProperties:Lcom/obs/services/internal/ObsProperties;

    const-string v3, "httpclient.proxy-port"

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Lcom/obs/services/internal/ObsProperties;->getIntProperty(Ljava/lang/String;I)I

    move-result v1

    .line 66
    iget-object v3, p0, Lcom/obs/services/internal/RestConnectionService;->obsProperties:Lcom/obs/services/internal/ObsProperties;

    const-string v4, "httpclient.proxy-user"

    invoke-virtual {v3, v4, v2}, Lcom/obs/services/internal/ObsProperties;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 67
    iget-object v4, p0, Lcom/obs/services/internal/RestConnectionService;->obsProperties:Lcom/obs/services/internal/ObsProperties;

    const-string v5, "httpclient.proxy-password"

    invoke-virtual {v4, v5, v2}, Lcom/obs/services/internal/ObsProperties;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 68
    invoke-static {p1, v0, v1, v3, v2}, Lcom/obs/services/internal/utils/RestUtils;->initHttpProxy(Lokhttp3/OkHttpClient$Builder;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_40
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    iput-object p1, p0, Lcom/obs/services/internal/RestConnectionService;->httpClient:Lokhttp3/OkHttpClient;

    .line 73
    iget-object p1, p0, Lcom/obs/services/internal/RestConnectionService;->obsProperties:Lcom/obs/services/internal/ObsProperties;

    const-string v0, "httpclient.max-connections"

    const/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1}, Lcom/obs/services/internal/ObsProperties;->getIntProperty(Ljava/lang/String;I)I

    move-result p1

    .line 75
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, p1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/obs/services/internal/RestConnectionService;->semaphore:Ljava/util/concurrent/Semaphore;

    return-void
.end method

.method protected isCname()Z
    .registers 3

    .line 248
    iget-object p0, p0, Lcom/obs/services/internal/RestConnectionService;->obsProperties:Lcom/obs/services/internal/ObsProperties;

    const-string v0, "httpclient.is-cname"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/obs/services/internal/ObsProperties;->getBoolProperty(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method protected isKeepAlive()Z
    .registers 3

    .line 240
    iget-object p0, p0, Lcom/obs/services/internal/RestConnectionService;->obsProperties:Lcom/obs/services/internal/ObsProperties;

    const-string v0, "httpclient.keep-alive"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/obs/services/internal/ObsProperties;->getBoolProperty(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method protected isPathStyle()Z
    .registers 3

    .line 244
    iget-object p0, p0, Lcom/obs/services/internal/RestConnectionService;->obsProperties:Lcom/obs/services/internal/ObsProperties;

    const-string v0, "obs.disable-dns-buckets"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/obs/services/internal/ObsProperties;->getBoolProperty(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method protected setupConnection(Lcom/obs/services/internal/trans/NewTransResult;ZZ)Lokhttp3/Request$Builder;
    .registers 9

    .line 118
    invoke-virtual {p0}, Lcom/obs/services/internal/RestConnectionService;->isPathStyle()Z

    move-result v0

    .line 119
    invoke-virtual {p0}, Lcom/obs/services/internal/RestConnectionService;->getEndpoint()Ljava/lang/String;

    move-result-object v1

    .line 120
    invoke-virtual {p0}, Lcom/obs/services/internal/RestConnectionService;->isCname()Z

    move-result v2

    if-nez v2, :cond_1e

    if-eqz p3, :cond_11

    goto :goto_1e

    .line 122
    :cond_11
    invoke-virtual {p1}, Lcom/obs/services/internal/trans/NewTransResult;->getBucketName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/obs/services/internal/utils/RestUtils;->encodeUrlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 121
    invoke-static {p3, v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->generateHostnameForBucket(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_1f

    :cond_1e
    :goto_1e
    move-object p3, v1

    .line 124
    :goto_1f
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "/"

    if-eqz v1, :cond_51

    if-nez v2, :cond_51

    invoke-virtual {p1}, Lcom/obs/services/internal/trans/NewTransResult;->getBucketName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_51

    invoke-virtual {p1}, Lcom/obs/services/internal/trans/NewTransResult;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_51

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/obs/services/internal/trans/NewTransResult;->getBucketName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/obs/services/internal/utils/RestUtils;->encodeUrlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_52

    :cond_51
    move-object v1, v3

    .line 127
    :goto_52
    invoke-virtual {p1}, Lcom/obs/services/internal/trans/NewTransResult;->getObjectKey()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_93

    .line 128
    invoke-virtual {p1}, Lcom/obs/services/internal/trans/NewTransResult;->isEncodeUrl()Z

    move-result v4

    if-eqz v4, :cond_80

    .line 129
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_6b

    if-nez v2, :cond_6b

    goto :goto_6d

    :cond_6b
    const-string v3, ""

    :goto_6d
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/obs/services/internal/trans/NewTransResult;->getObjectKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/obs/services/internal/utils/RestUtils;->encodeUrlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_93

    .line 131
    :cond_80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/obs/services/internal/trans/NewTransResult;->getObjectKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 135
    :cond_93
    :goto_93
    invoke-direct {p0, p3, v1}, Lcom/obs/services/internal/RestConnectionService;->addProtocol(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 136
    invoke-virtual {p1}, Lcom/obs/services/internal/trans/NewTransResult;->getParams()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, p3, v0, p2}, Lcom/obs/services/internal/RestConnectionService;->addRequestParametersToUrlPath(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object p2

    .line 138
    invoke-virtual {p1}, Lcom/obs/services/internal/trans/NewTransResult;->getHttpMethod()Lcom/obs/services/model/HttpMethodEnum;

    move-result-object p3

    invoke-virtual {p1}, Lcom/obs/services/internal/trans/NewTransResult;->getBody()Lokhttp3/RequestBody;

    move-result-object p1

    invoke-direct {p0, p3, p1, p2}, Lcom/obs/services/internal/RestConnectionService;->createRequestBuilder(Lcom/obs/services/model/HttpMethodEnum;Lokhttp3/RequestBody;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p0

    return-object p0
.end method

.method protected shutdown()V
    .registers 1

    .line 79
    invoke-virtual {p0}, Lcom/obs/services/internal/RestConnectionService;->shutdownImpl()V

    return-void
.end method

.method protected shutdownImpl()V
    .registers 4

    .line 83
    iget-object v0, p0, Lcom/obs/services/internal/RestConnectionService;->shuttingDown:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_29

    const/4 v0, 0x0

    .line 84
    iput-object v0, p0, Lcom/obs/services/internal/RestConnectionService;->credentials:Lcom/obs/services/internal/security/ProviderCredentials;

    .line 85
    iput-object v0, p0, Lcom/obs/services/internal/RestConnectionService;->obsProperties:Lcom/obs/services/internal/ObsProperties;

    .line 86
    iget-object v1, p0, Lcom/obs/services/internal/RestConnectionService;->httpClient:Lokhttp3/OkHttpClient;

    if-eqz v1, :cond_29

    .line 87
    invoke-direct {p0}, Lcom/obs/services/internal/RestConnectionService;->invokeShutdown()V

    .line 88
    iget-object v1, p0, Lcom/obs/services/internal/RestConnectionService;->httpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->connectionPool()Lokhttp3/ConnectionPool;

    move-result-object v1

    if-eqz v1, :cond_27

    .line 89
    iget-object v1, p0, Lcom/obs/services/internal/RestConnectionService;->httpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->connectionPool()Lokhttp3/ConnectionPool;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ConnectionPool;->evictAll()V

    .line 91
    :cond_27
    iput-object v0, p0, Lcom/obs/services/internal/RestConnectionService;->httpClient:Lokhttp3/OkHttpClient;

    :cond_29
    return-void
.end method
