.class public Lcom/alibaba/sdk/android/oss/ClientConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_MAX_RETRIES:I = 0x2


# instance fields
.field private checkCRC64:Z

.field private connectionTimeout:I

.field private customCnameExcludeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private customPathPrefixEnable:Z

.field private executorService:Ljava/util/concurrent/ExecutorService;

.field private followRedirectsEnable:Z

.field private httpDnsEnable:Z

.field private httpProtocol:Lcom/alibaba/sdk/android/oss/common/HttpProtocol;

.field private ipWithHeader:Ljava/lang/String;

.field private mUserAgentMark:Ljava/lang/String;

.field private maxConcurrentRequest:I

.field private maxConcurrentRequestsPerHost:I

.field private maxErrorRetry:I

.field private max_log_size:J

.field private okHttpClient:Lokhttp3/OkHttpClient;

.field private pathStyleAccessEnable:Z

.field private proxyHost:Ljava/lang/String;

.field private proxyPort:I

.field private signVersion:Lcom/alibaba/sdk/android/oss/signer/SignVersion;

.field private socketTimeout:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 26
    iput v0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->maxConcurrentRequest:I

    const/4 v0, -0x1

    .line 28
    iput v0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->maxConcurrentRequestsPerHost:I

    const v0, 0xea60

    .line 29
    iput v0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->socketTimeout:I

    .line 30
    iput v0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->connectionTimeout:I

    const-wide/32 v0, 0x500000

    .line 31
    iput-wide v0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->max_log_size:J

    const/4 v0, 0x2

    .line 32
    iput v0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->maxErrorRetry:I

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->customCnameExcludeList:Ljava/util/List;

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->httpDnsEnable:Z

    .line 38
    iput-boolean v0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->checkCRC64:Z

    .line 40
    iput-boolean v0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->pathStyleAccessEnable:Z

    .line 41
    iput-boolean v0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->customPathPrefixEnable:Z

    .line 42
    iput-boolean v0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->followRedirectsEnable:Z

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->okHttpClient:Lokhttp3/OkHttpClient;

    .line 44
    iput-object v0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 45
    sget-object v0, Lcom/alibaba/sdk/android/oss/signer/SignVersion;->V1:Lcom/alibaba/sdk/android/oss/signer/SignVersion;

    iput-object v0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->signVersion:Lcom/alibaba/sdk/android/oss/signer/SignVersion;

    .line 47
    sget-object v0, Lcom/alibaba/sdk/android/oss/common/HttpProtocol;->HTTPS:Lcom/alibaba/sdk/android/oss/common/HttpProtocol;

    iput-object v0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->httpProtocol:Lcom/alibaba/sdk/android/oss/common/HttpProtocol;

    return-void
.end method

.method public static getDefaultConf()Lcom/alibaba/sdk/android/oss/ClientConfiguration;
    .registers 1

    .line 59
    new-instance v0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getConnectionTimeout()I
    .registers 1

    .line 106
    iget p0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->connectionTimeout:I

    return p0
.end method

.method public getCustomCnameExcludeList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 155
    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->customCnameExcludeList:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getCustomUserMark()Ljava/lang/String;
    .registers 1

    .line 195
    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->mUserAgentMark:Ljava/lang/String;

    return-object p0
.end method

.method public getExecutorService()Ljava/util/concurrent/ExecutorService;
    .registers 1

    .line 331
    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->executorService:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method public getHttpProtocol()Lcom/alibaba/sdk/android/oss/common/HttpProtocol;
    .registers 1

    .line 303
    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->httpProtocol:Lcom/alibaba/sdk/android/oss/common/HttpProtocol;

    return-object p0
.end method

.method public getIpWithHeader()Ljava/lang/String;
    .registers 1

    .line 224
    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->ipWithHeader:Ljava/lang/String;

    return-object p0
.end method

.method public getMaxConcurrentRequest()I
    .registers 1

    .line 68
    iget p0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->maxConcurrentRequest:I

    return p0
.end method

.method public getMaxConcurrentRequestsPerHost()I
    .registers 1

    .line 317
    iget p0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->maxConcurrentRequestsPerHost:I

    return p0
.end method

.method public getMaxErrorRetry()I
    .registers 1

    .line 137
    iget p0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->maxErrorRetry:I

    return p0
.end method

.method public getMaxLogSize()J
    .registers 3

    .line 119
    iget-wide v0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->max_log_size:J

    return-wide v0
.end method

.method public getOkHttpClient()Lokhttp3/OkHttpClient;
    .registers 1

    .line 295
    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->okHttpClient:Lokhttp3/OkHttpClient;

    return-object p0
.end method

.method public getProxyHost()Ljava/lang/String;
    .registers 1

    .line 179
    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->proxyHost:Ljava/lang/String;

    return-object p0
.end method

.method public getProxyPort()I
    .registers 1

    .line 187
    iget p0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->proxyPort:I

    return p0
.end method

.method public getSignVersion()Lcom/alibaba/sdk/android/oss/signer/SignVersion;
    .registers 1

    .line 347
    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->signVersion:Lcom/alibaba/sdk/android/oss/signer/SignVersion;

    return-object p0
.end method

.method public getSocketTimeout()I
    .registers 1

    .line 87
    iget p0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->socketTimeout:I

    return p0
.end method

.method public isCheckCRC64()Z
    .registers 1

    .line 211
    iget-boolean p0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->checkCRC64:Z

    return p0
.end method

.method public isCustomPathPrefixEnable()Z
    .registers 1

    .line 261
    iget-boolean p0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->customPathPrefixEnable:Z

    return p0
.end method

.method public isFollowRedirectsEnable()Z
    .registers 1

    .line 281
    iget-boolean p0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->followRedirectsEnable:Z

    return p0
.end method

.method public isHttpDnsEnable()Z
    .registers 1

    .line 203
    iget-boolean p0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->httpDnsEnable:Z

    return p0
.end method

.method public isPathStyleAccessEnable()Z
    .registers 1

    .line 239
    iget-boolean p0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->pathStyleAccessEnable:Z

    return p0
.end method

.method public setCheckCRC64(Z)V
    .registers 2

    .line 220
    iput-boolean p1, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->checkCRC64:Z

    return-void
.end method

.method public setConnectionTimeout(I)V
    .registers 2

    .line 115
    iput p1, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->connectionTimeout:I

    return-void
.end method

.method public setCustomCnameExcludeList(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3c

    .line 164
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_3c

    .line 168
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->customCnameExcludeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 169
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 170
    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 171
    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->customCnameExcludeList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 173
    :cond_35
    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->customCnameExcludeList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_3b
    return-void

    .line 165
    :cond_3c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "cname exclude list should not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setCustomPathPrefixEnable(Z)V
    .registers 2

    .line 272
    iput-boolean p1, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->customPathPrefixEnable:Z

    return-void
.end method

.method public setExecutorService(Ljava/util/concurrent/ExecutorService;)V
    .registers 2

    .line 338
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->executorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public setFollowRedirectsEnable(Z)V
    .registers 2

    .line 291
    iput-boolean p1, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->followRedirectsEnable:Z

    return-void
.end method

.method public setHttpDnsEnable(Z)V
    .registers 2

    .line 207
    iput-boolean p1, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->httpDnsEnable:Z

    return-void
.end method

.method public setHttpProtocol(Lcom/alibaba/sdk/android/oss/common/HttpProtocol;)V
    .registers 2

    .line 310
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->httpProtocol:Lcom/alibaba/sdk/android/oss/common/HttpProtocol;

    return-void
.end method

.method public setIpWithHeader(Ljava/lang/String;)V
    .registers 2

    .line 228
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->ipWithHeader:Ljava/lang/String;

    return-void
.end method

.method public setMaxConcurrentRequest(I)V
    .registers 2

    .line 77
    iput p1, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->maxConcurrentRequest:I

    return-void
.end method

.method public setMaxConcurrentRequestsPerHost(I)V
    .registers 2

    .line 324
    iput p1, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->maxConcurrentRequestsPerHost:I

    return-void
.end method

.method public setMaxErrorRetry(I)V
    .registers 2

    .line 146
    iput p1, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->maxErrorRetry:I

    return-void
.end method

.method public setMaxLogSize(J)V
    .registers 3

    .line 128
    iput-wide p1, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->max_log_size:J

    return-void
.end method

.method public setOkHttpClient(Lokhttp3/OkHttpClient;)V
    .registers 2

    .line 299
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->okHttpClient:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public setPathStyleAccessEnable(Z)V
    .registers 2

    .line 250
    iput-boolean p1, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->pathStyleAccessEnable:Z

    return-void
.end method

.method public setProxyHost(Ljava/lang/String;)V
    .registers 2

    .line 183
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->proxyHost:Ljava/lang/String;

    return-void
.end method

.method public setProxyPort(I)V
    .registers 2

    .line 191
    iput p1, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->proxyPort:I

    return-void
.end method

.method public setSignVersion(Lcom/alibaba/sdk/android/oss/signer/SignVersion;)V
    .registers 2

    .line 356
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->signVersion:Lcom/alibaba/sdk/android/oss/signer/SignVersion;

    return-void
.end method

.method public setSocketTimeout(I)V
    .registers 2

    .line 97
    iput p1, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->socketTimeout:I

    return-void
.end method

.method public setUserAgentMark(Ljava/lang/String;)V
    .registers 2

    .line 199
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->mUserAgentMark:Ljava/lang/String;

    return-void
.end method
