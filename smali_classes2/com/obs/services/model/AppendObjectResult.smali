.class public Lcom/obs/services/model/AppendObjectResult;
.super Lcom/obs/services/model/HeaderResponse;
.source "SourceFile"


# instance fields
.field private bucketName:Ljava/lang/String;

.field private etag:Ljava/lang/String;

.field private nextPosition:J

.field private objectKey:Ljava/lang/String;

.field private objectUrl:Ljava/lang/String;

.field private storageClass:Lcom/obs/services/model/StorageClassEnum;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/obs/services/model/StorageClassEnum;Ljava/lang/String;)V
    .registers 8

    .line 36
    invoke-direct {p0}, Lcom/obs/services/model/HeaderResponse;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/obs/services/model/AppendObjectResult;->bucketName:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/obs/services/model/AppendObjectResult;->objectKey:Ljava/lang/String;

    .line 39
    iput-wide p4, p0, Lcom/obs/services/model/AppendObjectResult;->nextPosition:J

    .line 40
    iput-object p3, p0, Lcom/obs/services/model/AppendObjectResult;->etag:Ljava/lang/String;

    .line 41
    iput-object p6, p0, Lcom/obs/services/model/AppendObjectResult;->storageClass:Lcom/obs/services/model/StorageClassEnum;

    .line 42
    iput-object p7, p0, Lcom/obs/services/model/AppendObjectResult;->objectUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/obs/services/model/AppendObjectResult;->bucketName:Ljava/lang/String;

    return-object p0
.end method

.method public getEtag()Ljava/lang/String;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/obs/services/model/AppendObjectResult;->etag:Ljava/lang/String;

    return-object p0
.end method

.method public getNextPosition()J
    .registers 3

    .line 51
    iget-wide v0, p0, Lcom/obs/services/model/AppendObjectResult;->nextPosition:J

    return-wide v0
.end method

.method public getObjectKey()Ljava/lang/String;
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/obs/services/model/AppendObjectResult;->objectKey:Ljava/lang/String;

    return-object p0
.end method

.method public getObjectStorageClass()Lcom/obs/services/model/StorageClassEnum;
    .registers 1

    .line 87
    iget-object p0, p0, Lcom/obs/services/model/AppendObjectResult;->storageClass:Lcom/obs/services/model/StorageClassEnum;

    return-object p0
.end method

.method public getObjectUrl()Ljava/lang/String;
    .registers 1

    .line 96
    iget-object p0, p0, Lcom/obs/services/model/AppendObjectResult;->objectUrl:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppendObjectResult [bucketName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/AppendObjectResult;->bucketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", objectKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/AppendObjectResult;->objectKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", etag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/AppendObjectResult;->etag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", nextPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/obs/services/model/AppendObjectResult;->nextPosition:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", storageClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/AppendObjectResult;->storageClass:Lcom/obs/services/model/StorageClassEnum;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", objectUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/obs/services/model/AppendObjectResult;->objectUrl:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
