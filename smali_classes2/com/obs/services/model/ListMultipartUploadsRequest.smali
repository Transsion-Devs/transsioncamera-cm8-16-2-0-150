.class public Lcom/obs/services/model/ListMultipartUploadsRequest;
.super Lcom/obs/services/model/GenericRequest;
.source "SourceFile"


# instance fields
.field private delimiter:Ljava/lang/String;

.field private encodingType:Ljava/lang/String;

.field private keyMarker:Ljava/lang/String;

.field private maxUploads:Ljava/lang/Integer;

.field private prefix:Ljava/lang/String;

.field private uploadIdMarker:Ljava/lang/String;


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

    .line 48
    invoke-direct {p0}, Lcom/obs/services/model/GenericRequest;-><init>()V

    .line 23
    sget-object v0, Lcom/obs/services/model/HttpMethodEnum;->GET:Lcom/obs/services/model/HttpMethodEnum;

    iput-object v0, p0, Lcom/obs/services/model/GenericRequest;->httpMethod:Lcom/obs/services/model/HttpMethodEnum;

    .line 49
    iput-object p1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 4

    .line 60
    invoke-direct {p0}, Lcom/obs/services/model/GenericRequest;-><init>()V

    .line 23
    sget-object v0, Lcom/obs/services/model/HttpMethodEnum;->GET:Lcom/obs/services/model/HttpMethodEnum;

    iput-object v0, p0, Lcom/obs/services/model/GenericRequest;->httpMethod:Lcom/obs/services/model/HttpMethodEnum;

    .line 61
    iput-object p1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    .line 62
    iput-object p2, p0, Lcom/obs/services/model/ListMultipartUploadsRequest;->maxUploads:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 87
    invoke-direct {p0}, Lcom/obs/services/model/GenericRequest;-><init>()V

    .line 23
    sget-object v0, Lcom/obs/services/model/HttpMethodEnum;->GET:Lcom/obs/services/model/HttpMethodEnum;

    iput-object v0, p0, Lcom/obs/services/model/GenericRequest;->httpMethod:Lcom/obs/services/model/HttpMethodEnum;

    .line 88
    iput-object p1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    .line 89
    iput-object p4, p0, Lcom/obs/services/model/ListMultipartUploadsRequest;->maxUploads:Ljava/lang/Integer;

    .line 90
    iput-object p2, p0, Lcom/obs/services/model/ListMultipartUploadsRequest;->prefix:Ljava/lang/String;

    .line 91
    iput-object p3, p0, Lcom/obs/services/model/ListMultipartUploadsRequest;->delimiter:Ljava/lang/String;

    .line 92
    iput-object p5, p0, Lcom/obs/services/model/ListMultipartUploadsRequest;->keyMarker:Ljava/lang/String;

    .line 93
    iput-object p6, p0, Lcom/obs/services/model/ListMultipartUploadsRequest;->uploadIdMarker:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 121
    invoke-direct {p0}, Lcom/obs/services/model/GenericRequest;-><init>()V

    .line 23
    sget-object v0, Lcom/obs/services/model/HttpMethodEnum;->GET:Lcom/obs/services/model/HttpMethodEnum;

    iput-object v0, p0, Lcom/obs/services/model/GenericRequest;->httpMethod:Lcom/obs/services/model/HttpMethodEnum;

    .line 122
    iput-object p1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    .line 123
    iput-object p4, p0, Lcom/obs/services/model/ListMultipartUploadsRequest;->maxUploads:Ljava/lang/Integer;

    .line 124
    iput-object p2, p0, Lcom/obs/services/model/ListMultipartUploadsRequest;->prefix:Ljava/lang/String;

    .line 125
    iput-object p3, p0, Lcom/obs/services/model/ListMultipartUploadsRequest;->delimiter:Ljava/lang/String;

    .line 126
    iput-object p5, p0, Lcom/obs/services/model/ListMultipartUploadsRequest;->keyMarker:Ljava/lang/String;

    .line 127
    iput-object p6, p0, Lcom/obs/services/model/ListMultipartUploadsRequest;->uploadIdMarker:Ljava/lang/String;

    .line 128
    iput-object p7, p0, Lcom/obs/services/model/ListMultipartUploadsRequest;->encodingType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDelimiter()Ljava/lang/String;
    .registers 1

    .line 159
    iget-object p0, p0, Lcom/obs/services/model/ListMultipartUploadsRequest;->delimiter:Ljava/lang/String;

    return-object p0
.end method

.method public getEncodingType()Ljava/lang/String;
    .registers 1

    .line 250
    iget-object p0, p0, Lcom/obs/services/model/ListMultipartUploadsRequest;->encodingType:Ljava/lang/String;

    return-object p0
.end method

.method public getKeyMarker()Ljava/lang/String;
    .registers 1

    .line 179
    iget-object p0, p0, Lcom/obs/services/model/ListMultipartUploadsRequest;->keyMarker:Ljava/lang/String;

    return-object p0
.end method

.method public getMaxUploads()Ljava/lang/Integer;
    .registers 1

    .line 221
    iget-object p0, p0, Lcom/obs/services/model/ListMultipartUploadsRequest;->maxUploads:Ljava/lang/Integer;

    return-object p0
.end method

.method public getPrefix()Ljava/lang/String;
    .registers 1

    .line 138
    iget-object p0, p0, Lcom/obs/services/model/ListMultipartUploadsRequest;->prefix:Ljava/lang/String;

    return-object p0
.end method

.method public getUploadIdMarker()Ljava/lang/String;
    .registers 1

    .line 200
    iget-object p0, p0, Lcom/obs/services/model/ListMultipartUploadsRequest;->uploadIdMarker:Ljava/lang/String;

    return-object p0
.end method

.method public setDelimiter(Ljava/lang/String;)V
    .registers 2

    .line 170
    iput-object p1, p0, Lcom/obs/services/model/ListMultipartUploadsRequest;->delimiter:Ljava/lang/String;

    return-void
.end method

.method public setEncodingType(Ljava/lang/String;)V
    .registers 2

    .line 241
    iput-object p1, p0, Lcom/obs/services/model/ListMultipartUploadsRequest;->encodingType:Ljava/lang/String;

    return-void
.end method

.method public setKeyMarker(Ljava/lang/String;)V
    .registers 2

    .line 189
    iput-object p1, p0, Lcom/obs/services/model/ListMultipartUploadsRequest;->keyMarker:Ljava/lang/String;

    return-void
.end method

.method public setMaxUploads(Ljava/lang/Integer;)V
    .registers 2

    .line 231
    iput-object p1, p0, Lcom/obs/services/model/ListMultipartUploadsRequest;->maxUploads:Ljava/lang/Integer;

    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .registers 2

    .line 149
    iput-object p1, p0, Lcom/obs/services/model/ListMultipartUploadsRequest;->prefix:Ljava/lang/String;

    return-void
.end method

.method public setUploadIdMarker(Ljava/lang/String;)V
    .registers 2

    .line 212
    iput-object p1, p0, Lcom/obs/services/model/ListMultipartUploadsRequest;->uploadIdMarker:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ListMultipartUploadsRequest [bucketName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", prefix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/ListMultipartUploadsRequest;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", delimiter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/ListMultipartUploadsRequest;->delimiter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", maxUploads="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/ListMultipartUploadsRequest;->maxUploads:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", keyMarker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/ListMultipartUploadsRequest;->keyMarker:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", uploadIdMarker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/ListMultipartUploadsRequest;->uploadIdMarker:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", encodingType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/obs/services/model/ListMultipartUploadsRequest;->encodingType:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
