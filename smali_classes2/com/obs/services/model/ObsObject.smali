.class public Lcom/obs/services/model/ObsObject;
.super Lcom/obs/services/model/S3Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Lcom/obs/services/model/S3Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/obs/services/model/S3Object;->bucketName:Ljava/lang/String;

    return-object p0
.end method

.method public getMetadata()Lcom/obs/services/model/ObjectMetadata;
    .registers 2

    .line 75
    iget-object v0, p0, Lcom/obs/services/model/S3Object;->metadata:Lcom/obs/services/model/ObjectMetadata;

    if-nez v0, :cond_b

    .line 76
    new-instance v0, Lcom/obs/services/model/ObjectMetadata;

    invoke-direct {v0}, Lcom/obs/services/model/ObjectMetadata;-><init>()V

    iput-object v0, p0, Lcom/obs/services/model/S3Object;->metadata:Lcom/obs/services/model/ObjectMetadata;

    .line 78
    :cond_b
    iget-object p0, p0, Lcom/obs/services/model/S3Object;->metadata:Lcom/obs/services/model/ObjectMetadata;

    return-object p0
.end method

.method public getObjectContent()Ljava/io/InputStream;
    .registers 1

    .line 100
    iget-object p0, p0, Lcom/obs/services/model/S3Object;->objectContent:Ljava/io/InputStream;

    return-object p0
.end method

.method public getObjectKey()Ljava/lang/String;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/obs/services/model/S3Object;->objectKey:Ljava/lang/String;

    return-object p0
.end method

.method public getOwner()Lcom/obs/services/model/Owner;
    .registers 1

    .line 121
    iget-object p0, p0, Lcom/obs/services/model/S3Object;->owner:Lcom/obs/services/model/Owner;

    return-object p0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .registers 2

    .line 43
    iput-object p1, p0, Lcom/obs/services/model/S3Object;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public setMetadata(Lcom/obs/services/model/ObjectMetadata;)V
    .registers 2

    .line 90
    iput-object p1, p0, Lcom/obs/services/model/S3Object;->metadata:Lcom/obs/services/model/ObjectMetadata;

    return-void
.end method

.method public setObjectContent(Ljava/io/InputStream;)V
    .registers 2

    .line 111
    iput-object p1, p0, Lcom/obs/services/model/S3Object;->objectContent:Ljava/io/InputStream;

    return-void
.end method

.method public setObjectKey(Ljava/lang/String;)V
    .registers 2

    .line 64
    iput-object p1, p0, Lcom/obs/services/model/S3Object;->objectKey:Ljava/lang/String;

    return-void
.end method

.method public setOwner(Lcom/obs/services/model/Owner;)V
    .registers 2

    .line 132
    iput-object p1, p0, Lcom/obs/services/model/S3Object;->owner:Lcom/obs/services/model/Owner;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ObsObject [bucketName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/S3Object;->bucketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", objectKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/S3Object;->objectKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", owner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/S3Object;->owner:Lcom/obs/services/model/Owner;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", metadata="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/S3Object;->metadata:Lcom/obs/services/model/ObjectMetadata;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", objectContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/obs/services/model/S3Object;->objectContent:Ljava/io/InputStream;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
