.class public Lcom/obs/services/model/PutObjectResult;
.super Lcom/obs/services/model/HeaderResponse;
.source "SourceFile"


# instance fields
.field private bucketName:Ljava/lang/String;

.field private callbackResponseBody:Ljava/io/InputStream;

.field private etag:Ljava/lang/String;

.field private objectKey:Ljava/lang/String;

.field private objectUrl:Ljava/lang/String;

.field private storageClass:Lcom/obs/services/model/StorageClassEnum;

.field private versionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/model/StorageClassEnum;Ljava/lang/String;)V
    .registers 7

    .line 41
    invoke-direct {p0}, Lcom/obs/services/model/HeaderResponse;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/obs/services/model/PutObjectResult;->bucketName:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/obs/services/model/PutObjectResult;->objectKey:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lcom/obs/services/model/PutObjectResult;->etag:Ljava/lang/String;

    .line 45
    iput-object p4, p0, Lcom/obs/services/model/PutObjectResult;->versionId:Ljava/lang/String;

    .line 46
    iput-object p5, p0, Lcom/obs/services/model/PutObjectResult;->storageClass:Lcom/obs/services/model/StorageClassEnum;

    .line 47
    iput-object p6, p0, Lcom/obs/services/model/PutObjectResult;->objectUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Lcom/obs/services/model/HeaderResponse;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/obs/services/model/PutObjectResult;->bucketName:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lcom/obs/services/model/PutObjectResult;->objectKey:Ljava/lang/String;

    .line 55
    iput-object p3, p0, Lcom/obs/services/model/PutObjectResult;->etag:Ljava/lang/String;

    .line 56
    iput-object p4, p0, Lcom/obs/services/model/PutObjectResult;->versionId:Ljava/lang/String;

    .line 57
    iput-object p5, p0, Lcom/obs/services/model/PutObjectResult;->objectUrl:Ljava/lang/String;

    .line 58
    iput-object p6, p0, Lcom/obs/services/internal/service/InternalHeaderResponse;->responseHeaders:Ljava/util/Map;

    .line 59
    iput p7, p0, Lcom/obs/services/internal/service/InternalHeaderResponse;->statusCode:I

    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/obs/services/model/PutObjectResult;->bucketName:Ljava/lang/String;

    return-object p0
.end method

.method public getCallbackResponseBody()Ljava/io/InputStream;
    .registers 1

    .line 118
    iget-object p0, p0, Lcom/obs/services/model/PutObjectResult;->callbackResponseBody:Ljava/io/InputStream;

    return-object p0
.end method

.method public getEtag()Ljava/lang/String;
    .registers 1

    .line 68
    iget-object p0, p0, Lcom/obs/services/model/PutObjectResult;->etag:Ljava/lang/String;

    return-object p0
.end method

.method public getObjectKey()Ljava/lang/String;
    .registers 1

    .line 86
    iget-object p0, p0, Lcom/obs/services/model/PutObjectResult;->objectKey:Ljava/lang/String;

    return-object p0
.end method

.method public getObjectStorageClass()Lcom/obs/services/model/StorageClassEnum;
    .registers 1

    .line 104
    iget-object p0, p0, Lcom/obs/services/model/PutObjectResult;->storageClass:Lcom/obs/services/model/StorageClassEnum;

    return-object p0
.end method

.method public getObjectUrl()Ljava/lang/String;
    .registers 1

    .line 113
    iget-object p0, p0, Lcom/obs/services/model/PutObjectResult;->objectUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getVersionId()Ljava/lang/String;
    .registers 1

    .line 95
    iget-object p0, p0, Lcom/obs/services/model/PutObjectResult;->versionId:Ljava/lang/String;

    return-object p0
.end method

.method public setCallbackResponseBody(Ljava/io/InputStream;)V
    .registers 2

    .line 122
    iput-object p1, p0, Lcom/obs/services/model/PutObjectResult;->callbackResponseBody:Ljava/io/InputStream;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PutObjectResult [bucketName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/PutObjectResult;->bucketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", objectKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/PutObjectResult;->objectKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", etag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/PutObjectResult;->etag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", versionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/PutObjectResult;->versionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", storageClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/PutObjectResult;->storageClass:Lcom/obs/services/model/StorageClassEnum;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", objectUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/obs/services/model/PutObjectResult;->objectUrl:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
