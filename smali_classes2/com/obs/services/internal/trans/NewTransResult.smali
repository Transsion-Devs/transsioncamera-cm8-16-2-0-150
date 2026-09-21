.class public Lcom/obs/services/internal/trans/NewTransResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private body:Lokhttp3/RequestBody;

.field private bucketName:Ljava/lang/String;

.field private encodeHeaders:Z

.field private encodeUrl:Z

.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private httpMethod:Lcom/obs/services/model/HttpMethodEnum;

.field private objectKey:Ljava/lang/String;

.field private params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private userHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/obs/services/internal/trans/NewTransResult;->encodeHeaders:Z

    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lcom/obs/services/internal/trans/NewTransResult;->encodeUrl:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/obs/services/internal/trans/NewTransResult;->encodeHeaders:Z

    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lcom/obs/services/internal/trans/NewTransResult;->encodeUrl:Z

    .line 24
    iput-object p1, p0, Lcom/obs/services/internal/trans/NewTransResult;->headers:Ljava/util/Map;

    .line 25
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/obs/services/internal/trans/NewTransResult;->params:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getBody()Lokhttp3/RequestBody;
    .registers 1

    .line 90
    iget-object p0, p0, Lcom/obs/services/internal/trans/NewTransResult;->body:Lokhttp3/RequestBody;

    return-object p0
.end method

.method public getBucketName()Ljava/lang/String;
    .registers 1

    .line 70
    iget-object p0, p0, Lcom/obs/services/internal/trans/NewTransResult;->bucketName:Ljava/lang/String;

    return-object p0
.end method

.method public getHeaders()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/obs/services/internal/trans/NewTransResult;->headers:Ljava/util/Map;

    if-nez v0, :cond_b

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/obs/services/internal/trans/NewTransResult;->headers:Ljava/util/Map;

    .line 32
    :cond_b
    iget-object p0, p0, Lcom/obs/services/internal/trans/NewTransResult;->headers:Ljava/util/Map;

    return-object p0
.end method

.method public getHttpMethod()Lcom/obs/services/model/HttpMethodEnum;
    .registers 1

    .line 86
    iget-object p0, p0, Lcom/obs/services/internal/trans/NewTransResult;->httpMethod:Lcom/obs/services/model/HttpMethodEnum;

    return-object p0
.end method

.method public getObjectKey()Ljava/lang/String;
    .registers 1

    .line 74
    iget-object p0, p0, Lcom/obs/services/internal/trans/NewTransResult;->objectKey:Ljava/lang/String;

    return-object p0
.end method

.method public getParams()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/obs/services/internal/trans/NewTransResult;->params:Ljava/util/Map;

    if-nez v0, :cond_b

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/obs/services/internal/trans/NewTransResult;->params:Ljava/util/Map;

    .line 39
    :cond_b
    iget-object p0, p0, Lcom/obs/services/internal/trans/NewTransResult;->params:Ljava/util/Map;

    return-object p0
.end method

.method public getUserHeaders()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/obs/services/internal/trans/NewTransResult;->userHeaders:Ljava/util/Map;

    if-nez v0, :cond_b

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/obs/services/internal/trans/NewTransResult;->userHeaders:Ljava/util/Map;

    .line 46
    :cond_b
    iget-object p0, p0, Lcom/obs/services/internal/trans/NewTransResult;->userHeaders:Ljava/util/Map;

    return-object p0
.end method

.method public isEncodeHeaders()Z
    .registers 1

    .line 98
    iget-boolean p0, p0, Lcom/obs/services/internal/trans/NewTransResult;->encodeHeaders:Z

    return p0
.end method

.method public isEncodeUrl()Z
    .registers 1

    .line 102
    iget-boolean p0, p0, Lcom/obs/services/internal/trans/NewTransResult;->encodeUrl:Z

    return p0
.end method

.method public setBody(Lokhttp3/RequestBody;)V
    .registers 2

    .line 78
    iput-object p1, p0, Lcom/obs/services/internal/trans/NewTransResult;->body:Lokhttp3/RequestBody;

    return-void
.end method

.method public setBucketName(Ljava/lang/String;)V
    .registers 2

    .line 62
    iput-object p1, p0, Lcom/obs/services/internal/trans/NewTransResult;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public setEncodeUrl(Z)V
    .registers 2

    .line 106
    iput-boolean p1, p0, Lcom/obs/services/internal/trans/NewTransResult;->encodeUrl:Z

    return-void
.end method

.method public setHeaders(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 58
    iput-object p1, p0, Lcom/obs/services/internal/trans/NewTransResult;->headers:Ljava/util/Map;

    return-void
.end method

.method public setHttpMethod(Lcom/obs/services/model/HttpMethodEnum;)V
    .registers 2

    .line 82
    iput-object p1, p0, Lcom/obs/services/internal/trans/NewTransResult;->httpMethod:Lcom/obs/services/model/HttpMethodEnum;

    return-void
.end method

.method public setIsEncodeHeaders(Z)V
    .registers 2

    .line 94
    iput-boolean p1, p0, Lcom/obs/services/internal/trans/NewTransResult;->encodeHeaders:Z

    return-void
.end method

.method public setObjectKey(Ljava/lang/String;)V
    .registers 2

    .line 66
    iput-object p1, p0, Lcom/obs/services/internal/trans/NewTransResult;->objectKey:Ljava/lang/String;

    return-void
.end method

.method public setParams(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 54
    iput-object p1, p0, Lcom/obs/services/internal/trans/NewTransResult;->params:Ljava/util/Map;

    return-void
.end method

.method public setUserHeaders(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcom/obs/services/internal/trans/NewTransResult;->userHeaders:Ljava/util/Map;

    return-void
.end method
