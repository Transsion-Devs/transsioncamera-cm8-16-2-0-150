.class public Lcom/obs/services/model/ObsBucket;
.super Lcom/obs/services/model/S3Bucket;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Lcom/obs/services/model/S3Bucket;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 41
    invoke-direct {p0}, Lcom/obs/services/model/S3Bucket;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/obs/services/model/S3Bucket;->bucketName:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/obs/services/model/S3Bucket;->location:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAcl()Lcom/obs/services/model/AccessControlList;
    .registers 1

    .line 165
    iget-object p0, p0, Lcom/obs/services/model/S3Bucket;->acl:Lcom/obs/services/model/AccessControlList;

    return-object p0
.end method

.method public getBucketName()Ljava/lang/String;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/obs/services/model/S3Bucket;->bucketName:Ljava/lang/String;

    return-object p0
.end method

.method public getBucketStorageClass()Lcom/obs/services/model/StorageClassEnum;
    .registers 1

    .line 212
    iget-object p0, p0, Lcom/obs/services/model/S3Bucket;->storageClass:Lcom/obs/services/model/StorageClassEnum;

    return-object p0
.end method

.method public getBucketType()Lcom/obs/services/model/BucketTypeEnum;
    .registers 1

    .line 203
    iget-object p0, p0, Lcom/obs/services/model/S3Bucket;->bucketTypeEnum:Lcom/obs/services/model/BucketTypeEnum;

    return-object p0
.end method

.method public getCreationDate()Ljava/util/Date;
    .registers 1

    .line 96
    iget-object p0, p0, Lcom/obs/services/model/S3Bucket;->creationDate:Ljava/util/Date;

    invoke-static {p0}, Lcom/obs/services/internal/utils/ServiceUtils;->cloneDateIgnoreNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public getLocation()Ljava/lang/String;
    .registers 1

    .line 143
    iget-object p0, p0, Lcom/obs/services/model/S3Bucket;->location:Ljava/lang/String;

    return-object p0
.end method

.method public getMetadata()Ljava/util/Map;
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/obs/services/model/S3Bucket;->metadata:Ljava/util/Map;

    if-nez v0, :cond_b

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/obs/services/model/S3Bucket;->metadata:Ljava/util/Map;

    .line 121
    :cond_b
    iget-object p0, p0, Lcom/obs/services/model/S3Bucket;->metadata:Ljava/util/Map;

    return-object p0
.end method

.method public getOwner()Lcom/obs/services/model/Owner;
    .registers 1

    .line 75
    iget-object p0, p0, Lcom/obs/services/model/S3Bucket;->owner:Lcom/obs/services/model/Owner;

    return-object p0
.end method

.method public getStorageClass()Ljava/lang/String;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 187
    iget-object p0, p0, Lcom/obs/services/model/S3Bucket;->storageClass:Lcom/obs/services/model/StorageClassEnum;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/obs/services/model/StorageClassEnum;->getCode()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public setAcl(Lcom/obs/services/model/AccessControlList;)V
    .registers 2

    .line 176
    iput-object p1, p0, Lcom/obs/services/model/S3Bucket;->acl:Lcom/obs/services/model/AccessControlList;

    return-void
.end method

.method public setBucketName(Ljava/lang/String;)V
    .registers 2

    .line 65
    iput-object p1, p0, Lcom/obs/services/model/S3Bucket;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public setBucketStorageClass(Lcom/obs/services/model/StorageClassEnum;)V
    .registers 2

    .line 223
    iput-object p1, p0, Lcom/obs/services/model/S3Bucket;->storageClass:Lcom/obs/services/model/StorageClassEnum;

    return-void
.end method

.method public setBucketType(Lcom/obs/services/model/BucketTypeEnum;)V
    .registers 2

    .line 207
    iput-object p1, p0, Lcom/obs/services/model/S3Bucket;->bucketTypeEnum:Lcom/obs/services/model/BucketTypeEnum;

    return-void
.end method

.method public setCreationDate(Ljava/util/Date;)V
    .registers 2

    .line 107
    invoke-static {p1}, Lcom/obs/services/internal/utils/ServiceUtils;->cloneDateIgnoreNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/obs/services/model/S3Bucket;->creationDate:Ljava/util/Date;

    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .registers 2

    .line 155
    iput-object p1, p0, Lcom/obs/services/model/S3Bucket;->location:Ljava/lang/String;

    return-void
.end method

.method public setMetadata(Ljava/util/Map;)V
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 133
    iput-object p1, p0, Lcom/obs/services/model/S3Bucket;->metadata:Ljava/util/Map;

    return-void
.end method

.method public setOwner(Lcom/obs/services/model/Owner;)V
    .registers 2

    .line 86
    iput-object p1, p0, Lcom/obs/services/model/S3Bucket;->owner:Lcom/obs/services/model/Owner;

    return-void
.end method

.method public setStorageClass(Ljava/lang/String;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 199
    invoke-static {p1}, Lcom/obs/services/model/StorageClassEnum;->getValueFromCode(Ljava/lang/String;)Lcom/obs/services/model/StorageClassEnum;

    move-result-object p1

    iput-object p1, p0, Lcom/obs/services/model/S3Bucket;->storageClass:Lcom/obs/services/model/StorageClassEnum;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ObsBucket [bucketName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/S3Bucket;->bucketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", owner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/S3Bucket;->owner:Lcom/obs/services/model/Owner;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", creationDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/S3Bucket;->creationDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", location="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/S3Bucket;->location:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", storageClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/S3Bucket;->storageClass:Lcom/obs/services/model/StorageClassEnum;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", metadata="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/S3Bucket;->metadata:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", acl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/obs/services/model/S3Bucket;->acl:Lcom/obs/services/model/AccessControlList;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
