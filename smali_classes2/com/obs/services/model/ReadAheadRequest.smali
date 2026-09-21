.class public Lcom/obs/services/model/ReadAheadRequest;
.super Lcom/obs/services/model/GenericRequest;
.source "SourceFile"


# instance fields
.field private cacheOption:Lcom/obs/services/model/CacheOptionEnum;

.field private prefix:Ljava/lang/String;

.field private ttl:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 40
    invoke-direct {p0}, Lcom/obs/services/model/GenericRequest;-><init>()V

    .line 23
    sget-object v0, Lcom/obs/services/model/HttpMethodEnum;->POST:Lcom/obs/services/model/HttpMethodEnum;

    iput-object v0, p0, Lcom/obs/services/model/GenericRequest;->httpMethod:Lcom/obs/services/model/HttpMethodEnum;

    const-wide/32 v0, 0x15180

    .line 30
    iput-wide v0, p0, Lcom/obs/services/model/ReadAheadRequest;->ttl:J

    .line 41
    iput-object p1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/obs/services/model/ReadAheadRequest;->prefix:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/model/CacheOptionEnum;J)V
    .registers 7

    .line 58
    invoke-direct {p0}, Lcom/obs/services/model/GenericRequest;-><init>()V

    .line 23
    sget-object v0, Lcom/obs/services/model/HttpMethodEnum;->POST:Lcom/obs/services/model/HttpMethodEnum;

    iput-object v0, p0, Lcom/obs/services/model/GenericRequest;->httpMethod:Lcom/obs/services/model/HttpMethodEnum;

    .line 59
    iput-object p1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Lcom/obs/services/model/ReadAheadRequest;->prefix:Ljava/lang/String;

    .line 61
    iput-object p3, p0, Lcom/obs/services/model/ReadAheadRequest;->cacheOption:Lcom/obs/services/model/CacheOptionEnum;

    .line 62
    iput-wide p4, p0, Lcom/obs/services/model/ReadAheadRequest;->ttl:J

    return-void
.end method


# virtual methods
.method public getCacheOption()Lcom/obs/services/model/CacheOptionEnum;
    .registers 1

    .line 90
    iget-object p0, p0, Lcom/obs/services/model/ReadAheadRequest;->cacheOption:Lcom/obs/services/model/CacheOptionEnum;

    return-object p0
.end method

.method public getPrefix()Ljava/lang/String;
    .registers 1

    .line 71
    iget-object p0, p0, Lcom/obs/services/model/ReadAheadRequest;->prefix:Ljava/lang/String;

    return-object p0
.end method

.method public getTtl()J
    .registers 3

    .line 109
    iget-wide v0, p0, Lcom/obs/services/model/ReadAheadRequest;->ttl:J

    return-wide v0
.end method

.method public setCacheOption(Lcom/obs/services/model/CacheOptionEnum;)V
    .registers 2

    .line 100
    iput-object p1, p0, Lcom/obs/services/model/ReadAheadRequest;->cacheOption:Lcom/obs/services/model/CacheOptionEnum;

    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .registers 2

    .line 81
    iput-object p1, p0, Lcom/obs/services/model/ReadAheadRequest;->prefix:Ljava/lang/String;

    return-void
.end method

.method public setTtl(J)V
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_10

    const-wide/32 v0, 0x3f480

    cmp-long v0, p1, v0

    if-lez v0, :cond_e

    goto :goto_10

    .line 123
    :cond_e
    iput-wide p1, p0, Lcom/obs/services/model/ReadAheadRequest;->ttl:J

    :cond_10
    :goto_10
    return-void
.end method
