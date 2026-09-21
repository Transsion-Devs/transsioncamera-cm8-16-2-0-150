.class public Lcom/obs/services/ObsConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private authType:Lcom/obs/services/model/AuthTypeEnum;

.field private authTypeNegotiation:Z

.field private bufferSize:I

.field private cname:Z

.field private connectionRequestTimeout:I

.field private connectionTimeout:I

.field private defaultBucketLocation:Ljava/lang/String;

.field private delimiter:Ljava/lang/String;

.field private endPoint:Ljava/lang/String;

.field private endpointHttpPort:I

.field private endpointHttpsPort:I

.field private httpDispatcher:Lokhttp3/Dispatcher;

.field private httpProtocolType:Lcom/obs/services/model/HttpProtocolTypeEnum;

.field private httpProxy:Lcom/obs/services/HttpProxyConfiguration;

.field private httpsOnly:Z

.field private idleConnectionTime:I

.field private isNio:Z

.field private isStrictHostnameVerification:Z

.field private keepAlive:Z

.field private keyManagerFactory:Ljavax/net/ssl/KeyManagerFactory;

.field private localAuthTypeCacheCapacity:I

.field private maxConnections:I

.field private maxErrorRetry:I

.field private maxIdleConnections:I

.field private pathStyle:Z

.field private readBufferSize:I

.field private secureRandom:Ljava/security/SecureRandom;

.field private signatString:Ljava/lang/String;

.field private socketReadBufferSize:I

.field private socketTimeout:I

.field private socketWriteBufferSize:I

.field private sslProvider:Ljava/lang/String;

.field private trustManagerFactory:Ljavax/net/ssl/TrustManagerFactory;

.field private uploadStreamRetryBufferSize:I

.field private useReaper:Z

.field private validateCertificate:Z

.field private verifyResponseContentType:Z

.field private writeBufferSize:I

.field private xmlDocumentBuilderFactoryClass:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 6

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x4e20

    .line 106
    iput v0, p0, Lcom/obs/services/ObsConfiguration;->connectionTimeout:I

    const/16 v0, 0x3e8

    .line 107
    iput v0, p0, Lcom/obs/services/ObsConfiguration;->maxConnections:I

    const/4 v1, 0x3

    .line 108
    iput v1, p0, Lcom/obs/services/ObsConfiguration;->maxErrorRetry:I

    const v1, 0xea60

    .line 109
    iput v1, p0, Lcom/obs/services/ObsConfiguration;->socketTimeout:I

    const/16 v1, 0x50

    .line 110
    iput v1, p0, Lcom/obs/services/ObsConfiguration;->endpointHttpPort:I

    const/16 v1, 0x1bb

    .line 111
    iput v1, p0, Lcom/obs/services/ObsConfiguration;->endpointHttpsPort:I

    const/4 v1, 0x1

    .line 112
    iput-boolean v1, p0, Lcom/obs/services/ObsConfiguration;->httpsOnly:Z

    .line 113
    const-string v2, ""

    iput-object v2, p0, Lcom/obs/services/ObsConfiguration;->endPoint:Ljava/lang/String;

    const/4 v3, 0x0

    .line 114
    iput-boolean v3, p0, Lcom/obs/services/ObsConfiguration;->pathStyle:Z

    .line 115
    iput-boolean v3, p0, Lcom/obs/services/ObsConfiguration;->validateCertificate:Z

    .line 116
    iput-boolean v1, p0, Lcom/obs/services/ObsConfiguration;->verifyResponseContentType:Z

    .line 117
    iput-boolean v3, p0, Lcom/obs/services/ObsConfiguration;->isStrictHostnameVerification:Z

    const/4 v4, -0x1

    .line 118
    iput v4, p0, Lcom/obs/services/ObsConfiguration;->uploadStreamRetryBufferSize:I

    .line 119
    iput v4, p0, Lcom/obs/services/ObsConfiguration;->socketWriteBufferSize:I

    .line 120
    iput v4, p0, Lcom/obs/services/ObsConfiguration;->socketReadBufferSize:I

    .line 121
    iput v4, p0, Lcom/obs/services/ObsConfiguration;->readBufferSize:I

    .line 122
    iput v4, p0, Lcom/obs/services/ObsConfiguration;->writeBufferSize:I

    const/16 v4, 0x7530

    .line 123
    iput v4, p0, Lcom/obs/services/ObsConfiguration;->idleConnectionTime:I

    .line 124
    iput v0, p0, Lcom/obs/services/ObsConfiguration;->maxIdleConnections:I

    .line 125
    sget-object v0, Lcom/obs/services/model/AuthTypeEnum;->OBS:Lcom/obs/services/model/AuthTypeEnum;

    iput-object v0, p0, Lcom/obs/services/ObsConfiguration;->authType:Lcom/obs/services/model/AuthTypeEnum;

    .line 126
    iput-boolean v1, p0, Lcom/obs/services/ObsConfiguration;->keepAlive:Z

    .line 127
    iput-object v2, p0, Lcom/obs/services/ObsConfiguration;->signatString:Ljava/lang/String;

    .line 128
    iput-object v2, p0, Lcom/obs/services/ObsConfiguration;->defaultBucketLocation:Ljava/lang/String;

    .line 129
    iput-boolean v1, p0, Lcom/obs/services/ObsConfiguration;->authTypeNegotiation:Z

    .line 130
    iput-boolean v3, p0, Lcom/obs/services/ObsConfiguration;->cname:Z

    .line 131
    const-string v0, "/"

    iput-object v0, p0, Lcom/obs/services/ObsConfiguration;->delimiter:Ljava/lang/String;

    .line 132
    sget-object v0, Lcom/obs/services/model/HttpProtocolTypeEnum;->HTTP1_1:Lcom/obs/services/model/HttpProtocolTypeEnum;

    iput-object v0, p0, Lcom/obs/services/ObsConfiguration;->httpProtocolType:Lcom/obs/services/model/HttpProtocolTypeEnum;

    .line 133
    const-string v0, "com.sun.org.apache.xerces.internal.jaxp.DocumentBuilderFactoryImpl"

    iput-object v0, p0, Lcom/obs/services/ObsConfiguration;->xmlDocumentBuilderFactoryClass:Ljava/lang/String;

    const/16 v0, 0x32

    .line 134
    iput v0, p0, Lcom/obs/services/ObsConfiguration;->localAuthTypeCacheCapacity:I

    .line 135
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/obs/services/ObsConfiguration;->secureRandom:Ljava/security/SecureRandom;

    return-void
.end method


# virtual methods
.method public clone()Lcom/obs/services/ObsConfiguration;
    .registers 1

    .line 536
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/ObsConfiguration;

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 1

    .line 31
    invoke-virtual {p0}, Lcom/obs/services/ObsConfiguration;->clone()Lcom/obs/services/ObsConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public disableNio()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 265
    iput-boolean v0, p0, Lcom/obs/services/ObsConfiguration;->isNio:Z

    return-void
.end method

.method public enableNio()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    .line 270
    iput-boolean v0, p0, Lcom/obs/services/ObsConfiguration;->isNio:Z

    return-void
.end method

.method public getAuthType()Lcom/obs/services/model/AuthTypeEnum;
    .registers 1

    .line 753
    iget-object p0, p0, Lcom/obs/services/ObsConfiguration;->authType:Lcom/obs/services/model/AuthTypeEnum;

    return-object p0
.end method

.method public getBufferSize()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 174
    iget p0, p0, Lcom/obs/services/ObsConfiguration;->bufferSize:I

    return p0
.end method

.method public getConnectionRequestTimeout()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 255
    iget p0, p0, Lcom/obs/services/ObsConfiguration;->connectionRequestTimeout:I

    return p0
.end method

.method public getConnectionTimeout()I
    .registers 1

    .line 378
    iget p0, p0, Lcom/obs/services/ObsConfiguration;->connectionTimeout:I

    return p0
.end method

.method public getDefaultBucketLocation()Ljava/lang/String;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 164
    iget-object p0, p0, Lcom/obs/services/ObsConfiguration;->defaultBucketLocation:Ljava/lang/String;

    return-object p0
.end method

.method public getDelimiter()Ljava/lang/String;
    .registers 1

    .line 139
    iget-object p0, p0, Lcom/obs/services/ObsConfiguration;->delimiter:Ljava/lang/String;

    return-object p0
.end method

.method public getEndPoint()Ljava/lang/String;
    .registers 3

    .line 461
    iget-object v0, p0, Lcom/obs/services/ObsConfiguration;->endPoint:Ljava/lang/String;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 464
    iget-object p0, p0, Lcom/obs/services/ObsConfiguration;->endPoint:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 462
    :cond_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EndPoint is not set"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getEndpointHttpPort()I
    .registers 1

    .line 483
    iget p0, p0, Lcom/obs/services/ObsConfiguration;->endpointHttpPort:I

    return p0
.end method

.method public getEndpointHttpsPort()I
    .registers 1

    .line 502
    iget p0, p0, Lcom/obs/services/ObsConfiguration;->endpointHttpsPort:I

    return p0
.end method

.method public getHttpDispatcher()Lokhttp3/Dispatcher;
    .registers 1

    .line 868
    iget-object p0, p0, Lcom/obs/services/ObsConfiguration;->httpDispatcher:Lokhttp3/Dispatcher;

    return-object p0
.end method

.method public getHttpProtocolType()Lcom/obs/services/model/HttpProtocolTypeEnum;
    .registers 1

    .line 849
    iget-object p0, p0, Lcom/obs/services/ObsConfiguration;->httpProtocolType:Lcom/obs/services/model/HttpProtocolTypeEnum;

    return-object p0
.end method

.method public getHttpProxy()Lcom/obs/services/HttpProxyConfiguration;
    .registers 1

    .line 545
    iget-object p0, p0, Lcom/obs/services/ObsConfiguration;->httpProxy:Lcom/obs/services/HttpProxyConfiguration;

    return-object p0
.end method

.method public getIdleConnectionTime()I
    .registers 1

    .line 711
    iget p0, p0, Lcom/obs/services/ObsConfiguration;->idleConnectionTime:I

    return p0
.end method

.method public getKeyManagerFactory()Ljavax/net/ssl/KeyManagerFactory;
    .registers 1

    .line 294
    iget-object p0, p0, Lcom/obs/services/ObsConfiguration;->keyManagerFactory:Ljavax/net/ssl/KeyManagerFactory;

    return-object p0
.end method

.method public getLocalAuthTypeCacheCapacity()I
    .registers 1

    .line 891
    iget p0, p0, Lcom/obs/services/ObsConfiguration;->localAuthTypeCacheCapacity:I

    return p0
.end method

.method public getMaxConnections()I
    .registers 1

    .line 399
    iget p0, p0, Lcom/obs/services/ObsConfiguration;->maxConnections:I

    return p0
.end method

.method public getMaxErrorRetry()I
    .registers 1

    .line 420
    iget p0, p0, Lcom/obs/services/ObsConfiguration;->maxErrorRetry:I

    return p0
.end method

.method public getMaxIdleConnections()I
    .registers 1

    .line 733
    iget p0, p0, Lcom/obs/services/ObsConfiguration;->maxIdleConnections:I

    return p0
.end method

.method public getReadBufferSize()I
    .registers 1

    .line 668
    iget p0, p0, Lcom/obs/services/ObsConfiguration;->readBufferSize:I

    return p0
.end method

.method public getSecureRandom()Ljava/security/SecureRandom;
    .registers 1

    .line 899
    iget-object p0, p0, Lcom/obs/services/ObsConfiguration;->secureRandom:Ljava/security/SecureRandom;

    return-object p0
.end method

.method public getSignatString()Ljava/lang/String;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 154
    iget-object p0, p0, Lcom/obs/services/ObsConfiguration;->signatString:Ljava/lang/String;

    return-object p0
.end method

.method public getSocketReadBufferSize()I
    .registers 1

    .line 215
    iget p0, p0, Lcom/obs/services/ObsConfiguration;->socketReadBufferSize:I

    return p0
.end method

.method public getSocketTimeout()I
    .registers 1

    .line 441
    iget p0, p0, Lcom/obs/services/ObsConfiguration;->socketTimeout:I

    return p0
.end method

.method public getSocketWriteBufferSize()I
    .registers 1

    .line 238
    iget p0, p0, Lcom/obs/services/ObsConfiguration;->socketWriteBufferSize:I

    return p0
.end method

.method public getSslProvider()Ljava/lang/String;
    .registers 1

    .line 830
    iget-object p0, p0, Lcom/obs/services/ObsConfiguration;->sslProvider:Ljava/lang/String;

    return-object p0
.end method

.method public getTrustManagerFactory()Ljavax/net/ssl/TrustManagerFactory;
    .registers 1

    .line 313
    iget-object p0, p0, Lcom/obs/services/ObsConfiguration;->trustManagerFactory:Ljavax/net/ssl/TrustManagerFactory;

    return-object p0
.end method

.method public getUploadStreamRetryBufferSize()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 613
    iget p0, p0, Lcom/obs/services/ObsConfiguration;->uploadStreamRetryBufferSize:I

    return p0
.end method

.method public getWriteBufferSize()I
    .registers 1

    .line 689
    iget p0, p0, Lcom/obs/services/ObsConfiguration;->writeBufferSize:I

    return p0
.end method

.method public getXmlDocumentBuilderFactoryClass()Ljava/lang/String;
    .registers 1

    .line 882
    iget-object p0, p0, Lcom/obs/services/ObsConfiguration;->xmlDocumentBuilderFactoryClass:Ljava/lang/String;

    return-object p0
.end method

.method public isAuthTypeNegotiation()Z
    .registers 1

    .line 792
    iget-boolean p0, p0, Lcom/obs/services/ObsConfiguration;->authTypeNegotiation:Z

    return p0
.end method

.method public isCname()Z
    .registers 1

    .line 811
    iget-boolean p0, p0, Lcom/obs/services/ObsConfiguration;->cname:Z

    return p0
.end method

.method public isDisableDnsBucket()Z
    .registers 1

    .line 191
    invoke-virtual {p0}, Lcom/obs/services/ObsConfiguration;->isPathStyle()Z

    move-result p0

    return p0
.end method

.method public isHttpsOnly()Z
    .registers 1

    .line 531
    iget-boolean p0, p0, Lcom/obs/services/ObsConfiguration;->httpsOnly:Z

    return p0
.end method

.method public isKeepAlive()Z
    .registers 1

    .line 772
    iget-boolean p0, p0, Lcom/obs/services/ObsConfiguration;->keepAlive:Z

    return p0
.end method

.method public isNio()Z
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 275
    iget-boolean p0, p0, Lcom/obs/services/ObsConfiguration;->isNio:Z

    return p0
.end method

.method public isPathStyle()Z
    .registers 1

    .line 355
    iget-boolean p0, p0, Lcom/obs/services/ObsConfiguration;->pathStyle:Z

    return p0
.end method

.method public isStrictHostnameVerification()Z
    .registers 1

    .line 333
    iget-boolean p0, p0, Lcom/obs/services/ObsConfiguration;->isStrictHostnameVerification:Z

    return p0
.end method

.method public isUseReaper()Z
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 280
    iget-boolean p0, p0, Lcom/obs/services/ObsConfiguration;->useReaper:Z

    return p0
.end method

.method public isValidateCertificate()Z
    .registers 1

    .line 623
    iget-boolean p0, p0, Lcom/obs/services/ObsConfiguration;->validateCertificate:Z

    return p0
.end method

.method public isVerifyResponseContentType()Z
    .registers 1

    .line 646
    iget-boolean p0, p0, Lcom/obs/services/ObsConfiguration;->verifyResponseContentType:Z

    return p0
.end method

.method public setAuthType(Lcom/obs/services/model/AuthTypeEnum;)V
    .registers 2

    .line 763
    iput-object p1, p0, Lcom/obs/services/ObsConfiguration;->authType:Lcom/obs/services/model/AuthTypeEnum;

    return-void
.end method

.method public setAuthTypeNegotiation(Z)V
    .registers 2

    .line 802
    iput-boolean p1, p0, Lcom/obs/services/ObsConfiguration;->authTypeNegotiation:Z

    return-void
.end method

.method public setBufferSize(I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 179
    iput p1, p0, Lcom/obs/services/ObsConfiguration;->bufferSize:I

    return-void
.end method

.method public setCname(Z)V
    .registers 2

    .line 821
    iput-boolean p1, p0, Lcom/obs/services/ObsConfiguration;->cname:Z

    return-void
.end method

.method public setConnectionRequestTimeout(I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 260
    iput p1, p0, Lcom/obs/services/ObsConfiguration;->connectionRequestTimeout:I

    return-void
.end method

.method public setConnectionTimeout(I)V
    .registers 2

    .line 389
    iput p1, p0, Lcom/obs/services/ObsConfiguration;->connectionTimeout:I

    return-void
.end method

.method public setDefaultBucketLocation(Ljava/lang/String;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 169
    iput-object p1, p0, Lcom/obs/services/ObsConfiguration;->defaultBucketLocation:Ljava/lang/String;

    return-void
.end method

.method public setDelimiter(Ljava/lang/String;)V
    .registers 2

    .line 149
    iput-object p1, p0, Lcom/obs/services/ObsConfiguration;->delimiter:Ljava/lang/String;

    return-void
.end method

.method public setDisableDnsBucket(Z)V
    .registers 2

    .line 204
    invoke-virtual {p0, p1}, Lcom/obs/services/ObsConfiguration;->setPathStyle(Z)V

    return-void
.end method

.method public setEndPoint(Ljava/lang/String;)V
    .registers 2

    .line 474
    iput-object p1, p0, Lcom/obs/services/ObsConfiguration;->endPoint:Ljava/lang/String;

    return-void
.end method

.method public setEndpointHttpPort(I)V
    .registers 2

    .line 493
    iput p1, p0, Lcom/obs/services/ObsConfiguration;->endpointHttpPort:I

    return-void
.end method

.method public setEndpointHttpsPort(I)V
    .registers 2

    .line 512
    iput p1, p0, Lcom/obs/services/ObsConfiguration;->endpointHttpsPort:I

    return-void
.end method

.method public setHttpDispatcher(Lokhttp3/Dispatcher;)V
    .registers 2

    .line 878
    iput-object p1, p0, Lcom/obs/services/ObsConfiguration;->httpDispatcher:Lokhttp3/Dispatcher;

    return-void
.end method

.method public setHttpProtocolType(Lcom/obs/services/model/HttpProtocolTypeEnum;)V
    .registers 2

    .line 859
    iput-object p1, p0, Lcom/obs/services/ObsConfiguration;->httpProtocolType:Lcom/obs/services/model/HttpProtocolTypeEnum;

    return-void
.end method

.method public setHttpProxy(Lcom/obs/services/HttpProxyConfiguration;)V
    .registers 2

    .line 555
    iput-object p1, p0, Lcom/obs/services/ObsConfiguration;->httpProxy:Lcom/obs/services/HttpProxyConfiguration;

    return-void
.end method

.method public setHttpProxy(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 11

    .line 590
    new-instance v0, Lcom/obs/services/HttpProxyConfiguration;

    const/4 v5, 0x0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/obs/services/HttpProxyConfiguration;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/obs/services/ObsConfiguration;->httpProxy:Lcom/obs/services/HttpProxyConfiguration;

    return-void
.end method

.method public setHttpProxy(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 574
    new-instance v0, Lcom/obs/services/HttpProxyConfiguration;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/obs/services/HttpProxyConfiguration;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/obs/services/ObsConfiguration;->httpProxy:Lcom/obs/services/HttpProxyConfiguration;

    return-void
.end method

.method public setHttpsOnly(Z)V
    .registers 2

    .line 522
    iput-boolean p1, p0, Lcom/obs/services/ObsConfiguration;->httpsOnly:Z

    return-void
.end method

.method public setIdleConnectionTime(I)V
    .registers 2

    .line 723
    iput p1, p0, Lcom/obs/services/ObsConfiguration;->idleConnectionTime:I

    return-void
.end method

.method public setIsStrictHostnameVerification(Z)V
    .registers 2

    .line 343
    iput-boolean p1, p0, Lcom/obs/services/ObsConfiguration;->isStrictHostnameVerification:Z

    return-void
.end method

.method public setKeepAlive(Z)V
    .registers 2

    .line 783
    iput-boolean p1, p0, Lcom/obs/services/ObsConfiguration;->keepAlive:Z

    return-void
.end method

.method public setKeyManagerFactory(Ljavax/net/ssl/KeyManagerFactory;)V
    .registers 2

    .line 304
    iput-object p1, p0, Lcom/obs/services/ObsConfiguration;->keyManagerFactory:Ljavax/net/ssl/KeyManagerFactory;

    return-void
.end method

.method public setLocalAuthTypeCacheCapacity(I)V
    .registers 2

    .line 895
    iput p1, p0, Lcom/obs/services/ObsConfiguration;->localAuthTypeCacheCapacity:I

    return-void
.end method

.method public setMaxConnections(I)V
    .registers 2

    .line 410
    iput p1, p0, Lcom/obs/services/ObsConfiguration;->maxConnections:I

    return-void
.end method

.method public setMaxErrorRetry(I)V
    .registers 2

    .line 431
    iput p1, p0, Lcom/obs/services/ObsConfiguration;->maxErrorRetry:I

    return-void
.end method

.method public setMaxIdleConnections(I)V
    .registers 2

    .line 744
    iput p1, p0, Lcom/obs/services/ObsConfiguration;->maxIdleConnections:I

    return-void
.end method

.method public setPathStyle(Z)V
    .registers 2

    .line 368
    iput-boolean p1, p0, Lcom/obs/services/ObsConfiguration;->pathStyle:Z

    return-void
.end method

.method public setReadBufferSize(I)V
    .registers 2

    .line 679
    iput p1, p0, Lcom/obs/services/ObsConfiguration;->readBufferSize:I

    return-void
.end method

.method public setSecureRandom(Ljava/security/SecureRandom;)V
    .registers 2

    .line 903
    iput-object p1, p0, Lcom/obs/services/ObsConfiguration;->secureRandom:Ljava/security/SecureRandom;

    return-void
.end method

.method public setSignatString(Ljava/lang/String;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 159
    iput-object p1, p0, Lcom/obs/services/ObsConfiguration;->signatString:Ljava/lang/String;

    return-void
.end method

.method public setSocketReadBufferSize(I)V
    .registers 2

    .line 227
    iput p1, p0, Lcom/obs/services/ObsConfiguration;->socketReadBufferSize:I

    return-void
.end method

.method public setSocketTimeout(I)V
    .registers 2

    .line 452
    iput p1, p0, Lcom/obs/services/ObsConfiguration;->socketTimeout:I

    return-void
.end method

.method public setSocketWriteBufferSize(I)V
    .registers 2

    .line 250
    iput p1, p0, Lcom/obs/services/ObsConfiguration;->socketWriteBufferSize:I

    return-void
.end method

.method public setSslProvider(Ljava/lang/String;)V
    .registers 2

    .line 840
    iput-object p1, p0, Lcom/obs/services/ObsConfiguration;->sslProvider:Ljava/lang/String;

    return-void
.end method

.method public setTrustManagerFactory(Ljavax/net/ssl/TrustManagerFactory;)V
    .registers 2

    .line 323
    iput-object p1, p0, Lcom/obs/services/ObsConfiguration;->trustManagerFactory:Ljavax/net/ssl/TrustManagerFactory;

    return-void
.end method

.method public setUploadStreamRetryBufferSize(I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 602
    iput p1, p0, Lcom/obs/services/ObsConfiguration;->uploadStreamRetryBufferSize:I

    return-void
.end method

.method public setUseReaper(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 285
    iput-boolean p1, p0, Lcom/obs/services/ObsConfiguration;->useReaper:Z

    return-void
.end method

.method public setValidateCertificate(Z)V
    .registers 2

    .line 635
    iput-boolean p1, p0, Lcom/obs/services/ObsConfiguration;->validateCertificate:Z

    return-void
.end method

.method public setVerifyResponseContentType(Z)V
    .registers 2

    .line 658
    iput-boolean p1, p0, Lcom/obs/services/ObsConfiguration;->verifyResponseContentType:Z

    return-void
.end method

.method public setWriteBufferSize(I)V
    .registers 2

    .line 700
    iput p1, p0, Lcom/obs/services/ObsConfiguration;->writeBufferSize:I

    return-void
.end method

.method public setXmlDocumentBuilderFactoryClass(Ljava/lang/String;)V
    .registers 2

    .line 886
    iput-object p1, p0, Lcom/obs/services/ObsConfiguration;->xmlDocumentBuilderFactoryClass:Ljava/lang/String;

    return-void
.end method
