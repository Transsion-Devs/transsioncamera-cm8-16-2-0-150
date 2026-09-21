.class public Lcom/obs/services/model/CompleteMultipartUploadResult;
.super Lcom/obs/services/model/HeaderResponse;
.source "SourceFile"


# instance fields
.field private bucketName:Ljava/lang/String;

.field private callbackResponseBody:Ljava/io/InputStream;

.field private encodingType:Ljava/lang/String;

.field private etag:Ljava/lang/String;

.field private location:Ljava/lang/String;

.field private objectKey:Ljava/lang/String;

.field private objectUrl:Ljava/lang/String;

.field private versionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 40
    invoke-direct {p0}, Lcom/obs/services/model/HeaderResponse;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/obs/services/model/CompleteMultipartUploadResult;->bucketName:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/obs/services/model/CompleteMultipartUploadResult;->objectKey:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/obs/services/model/CompleteMultipartUploadResult;->etag:Ljava/lang/String;

    .line 44
    iput-object p4, p0, Lcom/obs/services/model/CompleteMultipartUploadResult;->location:Ljava/lang/String;

    .line 45
    iput-object p5, p0, Lcom/obs/services/model/CompleteMultipartUploadResult;->versionId:Ljava/lang/String;

    .line 46
    iput-object p6, p0, Lcom/obs/services/model/CompleteMultipartUploadResult;->objectUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/obs/services/model/CompleteMultipartUploadResult;->bucketName:Ljava/lang/String;

    return-object p0
.end method

.method public getCallbackResponseBody()Ljava/io/InputStream;
    .registers 1

    .line 124
    iget-object p0, p0, Lcom/obs/services/model/CompleteMultipartUploadResult;->callbackResponseBody:Ljava/io/InputStream;

    return-object p0
.end method

.method public getEncodingType()Ljava/lang/String;
    .registers 1

    .line 120
    iget-object p0, p0, Lcom/obs/services/model/CompleteMultipartUploadResult;->encodingType:Ljava/lang/String;

    return-object p0
.end method

.method public getEtag()Ljava/lang/String;
    .registers 1

    .line 73
    iget-object p0, p0, Lcom/obs/services/model/CompleteMultipartUploadResult;->etag:Ljava/lang/String;

    return-object p0
.end method

.method public getLocation()Ljava/lang/String;
    .registers 1

    .line 82
    iget-object p0, p0, Lcom/obs/services/model/CompleteMultipartUploadResult;->location:Ljava/lang/String;

    return-object p0
.end method

.method public getObjectKey()Ljava/lang/String;
    .registers 1

    .line 64
    iget-object p0, p0, Lcom/obs/services/model/CompleteMultipartUploadResult;->objectKey:Ljava/lang/String;

    return-object p0
.end method

.method public getObjectUrl()Ljava/lang/String;
    .registers 1

    .line 100
    iget-object p0, p0, Lcom/obs/services/model/CompleteMultipartUploadResult;->objectUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getVersionId()Ljava/lang/String;
    .registers 1

    .line 91
    iget-object p0, p0, Lcom/obs/services/model/CompleteMultipartUploadResult;->versionId:Ljava/lang/String;

    return-object p0
.end method

.method public setCallbackResponseBody(Ljava/io/InputStream;)V
    .registers 2

    .line 128
    iput-object p1, p0, Lcom/obs/services/model/CompleteMultipartUploadResult;->callbackResponseBody:Ljava/io/InputStream;

    return-void
.end method

.method public setEncodingType(Ljava/lang/String;)V
    .registers 2

    .line 112
    iput-object p1, p0, Lcom/obs/services/model/CompleteMultipartUploadResult;->encodingType:Ljava/lang/String;

    return-void
.end method

.method public setObjectKey(Ljava/lang/String;)V
    .registers 2

    .line 104
    iput-object p1, p0, Lcom/obs/services/model/CompleteMultipartUploadResult;->objectKey:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CompleteMultipartUploadResult [bucketName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/CompleteMultipartUploadResult;->bucketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", objectKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/CompleteMultipartUploadResult;->objectKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", etag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/CompleteMultipartUploadResult;->etag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", location="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/CompleteMultipartUploadResult;->location:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", versionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/CompleteMultipartUploadResult;->versionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", objectUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/obs/services/model/CompleteMultipartUploadResult;->objectUrl:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
