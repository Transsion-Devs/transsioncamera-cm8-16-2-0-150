.class public Lcom/obs/services/model/ListVersionsRequest;
.super Lcom/obs/services/model/GenericRequest;
.source "SourceFile"


# instance fields
.field private delimiter:Ljava/lang/String;

.field private encodingType:Ljava/lang/String;

.field private keyMarker:Ljava/lang/String;

.field private listTimeout:I

.field private maxKeys:I

.field private prefix:Ljava/lang/String;

.field private versionIdMarker:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Lcom/obs/services/model/GenericRequest;-><init>()V

    .line 23
    sget-object v0, Lcom/obs/services/model/HttpMethodEnum;->GET:Lcom/obs/services/model/HttpMethodEnum;

    iput-object v0, p0, Lcom/obs/services/model/GenericRequest;->httpMethod:Lcom/obs/services/model/HttpMethodEnum;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 49
    invoke-direct {p0}, Lcom/obs/services/model/GenericRequest;-><init>()V

    .line 23
    sget-object v0, Lcom/obs/services/model/HttpMethodEnum;->GET:Lcom/obs/services/model/HttpMethodEnum;

    iput-object v0, p0, Lcom/obs/services/model/GenericRequest;->httpMethod:Lcom/obs/services/model/HttpMethodEnum;

    .line 50
    iput-object p1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4

    .line 61
    invoke-direct {p0}, Lcom/obs/services/model/GenericRequest;-><init>()V

    .line 23
    sget-object v0, Lcom/obs/services/model/HttpMethodEnum;->GET:Lcom/obs/services/model/HttpMethodEnum;

    iput-object v0, p0, Lcom/obs/services/model/GenericRequest;->httpMethod:Lcom/obs/services/model/HttpMethodEnum;

    .line 62
    iput-object p1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    .line 63
    iput p2, p0, Lcom/obs/services/model/ListVersionsRequest;->maxKeys:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    .line 80
    invoke-direct {p0}, Lcom/obs/services/model/GenericRequest;-><init>()V

    .line 23
    sget-object p2, Lcom/obs/services/model/HttpMethodEnum;->GET:Lcom/obs/services/model/HttpMethodEnum;

    iput-object p2, p0, Lcom/obs/services/model/GenericRequest;->httpMethod:Lcom/obs/services/model/HttpMethodEnum;

    .line 81
    iput-object p1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    .line 82
    iput p5, p0, Lcom/obs/services/model/ListVersionsRequest;->maxKeys:I

    .line 83
    iput-object p3, p0, Lcom/obs/services/model/ListVersionsRequest;->keyMarker:Ljava/lang/String;

    .line 84
    iput-object p4, p0, Lcom/obs/services/model/ListVersionsRequest;->delimiter:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 8

    .line 104
    invoke-direct {p0}, Lcom/obs/services/model/GenericRequest;-><init>()V

    .line 23
    sget-object v0, Lcom/obs/services/model/HttpMethodEnum;->GET:Lcom/obs/services/model/HttpMethodEnum;

    iput-object v0, p0, Lcom/obs/services/model/GenericRequest;->httpMethod:Lcom/obs/services/model/HttpMethodEnum;

    .line 105
    iput-object p1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    .line 106
    iput p5, p0, Lcom/obs/services/model/ListVersionsRequest;->maxKeys:I

    .line 107
    iput-object p2, p0, Lcom/obs/services/model/ListVersionsRequest;->prefix:Ljava/lang/String;

    .line 108
    iput-object p3, p0, Lcom/obs/services/model/ListVersionsRequest;->keyMarker:Ljava/lang/String;

    .line 109
    iput-object p4, p0, Lcom/obs/services/model/ListVersionsRequest;->delimiter:Ljava/lang/String;

    .line 110
    iput-object p6, p0, Lcom/obs/services/model/ListVersionsRequest;->encodingType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDelimiter()Ljava/lang/String;
    .registers 1

    .line 175
    iget-object p0, p0, Lcom/obs/services/model/ListVersionsRequest;->delimiter:Ljava/lang/String;

    return-object p0
.end method

.method public getEncodingType()Ljava/lang/String;
    .registers 1

    .line 128
    iget-object p0, p0, Lcom/obs/services/model/ListVersionsRequest;->encodingType:Ljava/lang/String;

    return-object p0
.end method

.method public getKeyMarker()Ljava/lang/String;
    .registers 1

    .line 213
    iget-object p0, p0, Lcom/obs/services/model/ListVersionsRequest;->keyMarker:Ljava/lang/String;

    return-object p0
.end method

.method public getListTimeout()I
    .registers 1

    .line 227
    iget p0, p0, Lcom/obs/services/model/ListVersionsRequest;->listTimeout:I

    return p0
.end method

.method public getMaxKeys()I
    .registers 1

    .line 156
    iget p0, p0, Lcom/obs/services/model/ListVersionsRequest;->maxKeys:I

    return p0
.end method

.method public getPrefix()Ljava/lang/String;
    .registers 1

    .line 137
    iget-object p0, p0, Lcom/obs/services/model/ListVersionsRequest;->prefix:Ljava/lang/String;

    return-object p0
.end method

.method public getVersionIdMarker()Ljava/lang/String;
    .registers 1

    .line 194
    iget-object p0, p0, Lcom/obs/services/model/ListVersionsRequest;->versionIdMarker:Ljava/lang/String;

    return-object p0
.end method

.method public setDelimiter(Ljava/lang/String;)V
    .registers 2

    .line 185
    iput-object p1, p0, Lcom/obs/services/model/ListVersionsRequest;->delimiter:Ljava/lang/String;

    return-void
.end method

.method public setEncodingType(Ljava/lang/String;)V
    .registers 2

    .line 119
    iput-object p1, p0, Lcom/obs/services/model/ListVersionsRequest;->encodingType:Ljava/lang/String;

    return-void
.end method

.method public setKeyMarker(Ljava/lang/String;)V
    .registers 2

    .line 223
    iput-object p1, p0, Lcom/obs/services/model/ListVersionsRequest;->keyMarker:Ljava/lang/String;

    return-void
.end method

.method public setListTimeout(I)V
    .registers 2

    .line 231
    iput p1, p0, Lcom/obs/services/model/ListVersionsRequest;->listTimeout:I

    return-void
.end method

.method public setMaxKeys(I)V
    .registers 2

    .line 166
    iput p1, p0, Lcom/obs/services/model/ListVersionsRequest;->maxKeys:I

    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .registers 2

    .line 147
    iput-object p1, p0, Lcom/obs/services/model/ListVersionsRequest;->prefix:Ljava/lang/String;

    return-void
.end method

.method public setVersionIdMarker(Ljava/lang/String;)V
    .registers 2

    .line 204
    iput-object p1, p0, Lcom/obs/services/model/ListVersionsRequest;->versionIdMarker:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ListVersionsRequest [bucketName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", prefix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/ListVersionsRequest;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", keyMarker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/ListVersionsRequest;->keyMarker:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", versionIdMarker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/ListVersionsRequest;->versionIdMarker:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", maxKeys="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/obs/services/model/ListVersionsRequest;->maxKeys:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", delimiter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/ListVersionsRequest;->delimiter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", listTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/obs/services/model/ListVersionsRequest;->listTimeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", encodingType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/obs/services/model/ListVersionsRequest;->encodingType:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
