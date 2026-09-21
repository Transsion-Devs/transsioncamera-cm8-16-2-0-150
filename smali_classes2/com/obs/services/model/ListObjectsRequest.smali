.class public Lcom/obs/services/model/ListObjectsRequest;
.super Lcom/obs/services/model/GenericRequest;
.source "SourceFile"


# instance fields
.field private delimiter:Ljava/lang/String;

.field private encodingType:Ljava/lang/String;

.field private listTimeout:I

.field private marker:Ljava/lang/String;

.field private maxKeys:I

.field private prefix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 38
    invoke-direct {p0}, Lcom/obs/services/model/GenericRequest;-><init>()V

    .line 23
    sget-object v0, Lcom/obs/services/model/HttpMethodEnum;->GET:Lcom/obs/services/model/HttpMethodEnum;

    iput-object v0, p0, Lcom/obs/services/model/GenericRequest;->httpMethod:Lcom/obs/services/model/HttpMethodEnum;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 47
    invoke-direct {p0}, Lcom/obs/services/model/GenericRequest;-><init>()V

    .line 23
    sget-object v0, Lcom/obs/services/model/HttpMethodEnum;->GET:Lcom/obs/services/model/HttpMethodEnum;

    iput-object v0, p0, Lcom/obs/services/model/GenericRequest;->httpMethod:Lcom/obs/services/model/HttpMethodEnum;

    .line 48
    iput-object p1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4

    .line 59
    invoke-direct {p0}, Lcom/obs/services/model/GenericRequest;-><init>()V

    .line 23
    sget-object v0, Lcom/obs/services/model/HttpMethodEnum;->GET:Lcom/obs/services/model/HttpMethodEnum;

    iput-object v0, p0, Lcom/obs/services/model/GenericRequest;->httpMethod:Lcom/obs/services/model/HttpMethodEnum;

    .line 60
    iput-object p1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    .line 61
    iput p2, p0, Lcom/obs/services/model/ListObjectsRequest;->maxKeys:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7

    .line 78
    invoke-direct {p0}, Lcom/obs/services/model/GenericRequest;-><init>()V

    .line 23
    sget-object v0, Lcom/obs/services/model/HttpMethodEnum;->GET:Lcom/obs/services/model/HttpMethodEnum;

    iput-object v0, p0, Lcom/obs/services/model/GenericRequest;->httpMethod:Lcom/obs/services/model/HttpMethodEnum;

    .line 79
    iput-object p1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    .line 80
    iput p5, p0, Lcom/obs/services/model/ListObjectsRequest;->maxKeys:I

    .line 81
    iput-object p3, p0, Lcom/obs/services/model/ListObjectsRequest;->marker:Ljava/lang/String;

    .line 82
    iput-object p2, p0, Lcom/obs/services/model/ListObjectsRequest;->prefix:Ljava/lang/String;

    .line 83
    iput-object p4, p0, Lcom/obs/services/model/ListObjectsRequest;->delimiter:Ljava/lang/String;

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
    iput p5, p0, Lcom/obs/services/model/ListObjectsRequest;->maxKeys:I

    .line 107
    iput-object p3, p0, Lcom/obs/services/model/ListObjectsRequest;->marker:Ljava/lang/String;

    .line 108
    iput-object p4, p0, Lcom/obs/services/model/ListObjectsRequest;->delimiter:Ljava/lang/String;

    .line 109
    iput-object p2, p0, Lcom/obs/services/model/ListObjectsRequest;->prefix:Ljava/lang/String;

    .line 110
    iput-object p6, p0, Lcom/obs/services/model/ListObjectsRequest;->encodingType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDelimiter()Ljava/lang/String;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/obs/services/model/ListObjectsRequest;->delimiter:Ljava/lang/String;

    return-object p0
.end method

.method public getEncodingType()Ljava/lang/String;
    .registers 1

    .line 195
    iget-object p0, p0, Lcom/obs/services/model/ListObjectsRequest;->encodingType:Ljava/lang/String;

    return-object p0
.end method

.method public getListTimeout()I
    .registers 1

    .line 210
    iget p0, p0, Lcom/obs/services/model/ListObjectsRequest;->listTimeout:I

    return p0
.end method

.method public getMarker()Ljava/lang/String;
    .registers 1

    .line 139
    iget-object p0, p0, Lcom/obs/services/model/ListObjectsRequest;->marker:Ljava/lang/String;

    return-object p0
.end method

.method public getMaxKeys()I
    .registers 1

    .line 158
    iget p0, p0, Lcom/obs/services/model/ListObjectsRequest;->maxKeys:I

    return p0
.end method

.method public getPrefix()Ljava/lang/String;
    .registers 1

    .line 120
    iget-object p0, p0, Lcom/obs/services/model/ListObjectsRequest;->prefix:Ljava/lang/String;

    return-object p0
.end method

.method public setDelimiter(Ljava/lang/String;)V
    .registers 2

    .line 206
    iput-object p1, p0, Lcom/obs/services/model/ListObjectsRequest;->delimiter:Ljava/lang/String;

    return-void
.end method

.method public setEncodingType(Ljava/lang/String;)V
    .registers 2

    .line 177
    iput-object p1, p0, Lcom/obs/services/model/ListObjectsRequest;->encodingType:Ljava/lang/String;

    return-void
.end method

.method public setListTimeout(I)V
    .registers 2

    .line 214
    iput p1, p0, Lcom/obs/services/model/ListObjectsRequest;->listTimeout:I

    return-void
.end method

.method public setMarker(Ljava/lang/String;)V
    .registers 2

    .line 149
    iput-object p1, p0, Lcom/obs/services/model/ListObjectsRequest;->marker:Ljava/lang/String;

    return-void
.end method

.method public setMaxKeys(I)V
    .registers 2

    .line 168
    iput p1, p0, Lcom/obs/services/model/ListObjectsRequest;->maxKeys:I

    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .registers 2

    .line 130
    iput-object p1, p0, Lcom/obs/services/model/ListObjectsRequest;->prefix:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ListObjectsRequest [bucketName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", prefix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/ListObjectsRequest;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", marker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/ListObjectsRequest;->marker:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", maxKeys="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/obs/services/model/ListObjectsRequest;->maxKeys:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", delimiter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/ListObjectsRequest;->delimiter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", listTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/obs/services/model/ListObjectsRequest;->listTimeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", encodingType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/obs/services/model/ListObjectsRequest;->encodingType:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
