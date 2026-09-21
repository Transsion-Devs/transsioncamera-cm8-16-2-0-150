.class public abstract Lcom/obs/services/model/AbstractTemporarySignatureRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected bucketName:Ljava/lang/String;

.field protected headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected method:Lcom/obs/services/model/HttpMethodEnum;

.field protected objectKey:Ljava/lang/String;

.field protected queryParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected specialParam:Lcom/obs/services/model/SpecialParamEnum;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/obs/services/model/HttpMethodEnum;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/obs/services/model/AbstractTemporarySignatureRequest;->method:Lcom/obs/services/model/HttpMethodEnum;

    .line 53
    iput-object p2, p0, Lcom/obs/services/model/AbstractTemporarySignatureRequest;->bucketName:Ljava/lang/String;

    .line 54
    iput-object p3, p0, Lcom/obs/services/model/AbstractTemporarySignatureRequest;->objectKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .registers 1

    .line 82
    iget-object p0, p0, Lcom/obs/services/model/AbstractTemporarySignatureRequest;->bucketName:Ljava/lang/String;

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

    .line 120
    iget-object v0, p0, Lcom/obs/services/model/AbstractTemporarySignatureRequest;->headers:Ljava/util/Map;

    if-nez v0, :cond_b

    .line 121
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/obs/services/model/AbstractTemporarySignatureRequest;->headers:Ljava/util/Map;

    .line 123
    :cond_b
    iget-object p0, p0, Lcom/obs/services/model/AbstractTemporarySignatureRequest;->headers:Ljava/util/Map;

    return-object p0
.end method

.method public getMethod()Lcom/obs/services/model/HttpMethodEnum;
    .registers 1

    .line 63
    iget-object p0, p0, Lcom/obs/services/model/AbstractTemporarySignatureRequest;->method:Lcom/obs/services/model/HttpMethodEnum;

    return-object p0
.end method

.method public getObjectKey()Ljava/lang/String;
    .registers 1

    .line 101
    iget-object p0, p0, Lcom/obs/services/model/AbstractTemporarySignatureRequest;->objectKey:Ljava/lang/String;

    return-object p0
.end method

.method public getQueryParams()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/obs/services/model/AbstractTemporarySignatureRequest;->queryParams:Ljava/util/Map;

    if-nez v0, :cond_b

    .line 133
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/obs/services/model/AbstractTemporarySignatureRequest;->queryParams:Ljava/util/Map;

    .line 135
    :cond_b
    iget-object p0, p0, Lcom/obs/services/model/AbstractTemporarySignatureRequest;->queryParams:Ljava/util/Map;

    return-object p0
.end method

.method public getSpecialParam()Lcom/obs/services/model/SpecialParamEnum;
    .registers 1

    .line 144
    iget-object p0, p0, Lcom/obs/services/model/AbstractTemporarySignatureRequest;->specialParam:Lcom/obs/services/model/SpecialParamEnum;

    return-object p0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .registers 2

    .line 92
    iput-object p1, p0, Lcom/obs/services/model/AbstractTemporarySignatureRequest;->bucketName:Ljava/lang/String;

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

    .line 164
    iput-object p1, p0, Lcom/obs/services/model/AbstractTemporarySignatureRequest;->headers:Ljava/util/Map;

    return-void
.end method

.method public setMethod(Lcom/obs/services/model/HttpMethodEnum;)V
    .registers 2

    .line 73
    iput-object p1, p0, Lcom/obs/services/model/AbstractTemporarySignatureRequest;->method:Lcom/obs/services/model/HttpMethodEnum;

    return-void
.end method

.method public setObjectKey(Ljava/lang/String;)V
    .registers 2

    .line 111
    iput-object p1, p0, Lcom/obs/services/model/AbstractTemporarySignatureRequest;->objectKey:Ljava/lang/String;

    return-void
.end method

.method public setQueryParams(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 174
    iput-object p1, p0, Lcom/obs/services/model/AbstractTemporarySignatureRequest;->queryParams:Ljava/util/Map;

    return-void
.end method

.method public setSpecialParam(Lcom/obs/services/model/SpecialParamEnum;)V
    .registers 2

    .line 154
    iput-object p1, p0, Lcom/obs/services/model/AbstractTemporarySignatureRequest;->specialParam:Lcom/obs/services/model/SpecialParamEnum;

    return-void
.end method
