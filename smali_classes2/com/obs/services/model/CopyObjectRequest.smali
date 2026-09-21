.class public Lcom/obs/services/model/CopyObjectRequest;
.super Lcom/obs/services/model/PutObjectBasicRequest;
.source "SourceFile"


# instance fields
.field private ifMatchTag:Ljava/lang/String;

.field private ifModifiedSince:Ljava/util/Date;

.field private ifNoneMatchTag:Ljava/lang/String;

.field private ifUnmodifiedSince:Ljava/util/Date;

.field private newObjectMetadata:Lcom/obs/services/model/ObjectMetadata;

.field private replaceMetadata:Z

.field private sourceBucketName:Ljava/lang/String;

.field private sourceObjectKey:Ljava/lang/String;

.field private sseCHeaderSource:Lcom/obs/services/model/SseCHeader;

.field private versionId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Lcom/obs/services/model/PutObjectBasicRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 61
    invoke-direct {p0}, Lcom/obs/services/model/PutObjectBasicRequest;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/obs/services/model/CopyObjectRequest;->sourceBucketName:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Lcom/obs/services/model/CopyObjectRequest;->sourceObjectKey:Ljava/lang/String;

    .line 64
    iput-object p3, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    .line 65
    iput-object p4, p0, Lcom/obs/services/model/BaseObjectRequest;->objectKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDestinationBucketName()Ljava/lang/String;
    .registers 1

    .line 273
    iget-object p0, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    return-object p0
.end method

.method public getDestinationObjectKey()Ljava/lang/String;
    .registers 1

    .line 292
    iget-object p0, p0, Lcom/obs/services/model/BaseObjectRequest;->objectKey:Ljava/lang/String;

    return-object p0
.end method

.method public getIfMatchTag()Ljava/lang/String;
    .registers 1

    .line 166
    iget-object p0, p0, Lcom/obs/services/model/CopyObjectRequest;->ifMatchTag:Ljava/lang/String;

    return-object p0
.end method

.method public getIfModifiedSince()Ljava/util/Date;
    .registers 1

    .line 116
    iget-object p0, p0, Lcom/obs/services/model/CopyObjectRequest;->ifModifiedSince:Ljava/util/Date;

    invoke-static {p0}, Lcom/obs/services/internal/utils/ServiceUtils;->cloneDateIgnoreNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public getIfNoneMatchTag()Ljava/lang/String;
    .registers 1

    .line 191
    iget-object p0, p0, Lcom/obs/services/model/CopyObjectRequest;->ifNoneMatchTag:Ljava/lang/String;

    return-object p0
.end method

.method public getIfUnmodifiedSince()Ljava/util/Date;
    .registers 1

    .line 141
    iget-object p0, p0, Lcom/obs/services/model/CopyObjectRequest;->ifUnmodifiedSince:Ljava/util/Date;

    invoke-static {p0}, Lcom/obs/services/internal/utils/ServiceUtils;->cloneDateIgnoreNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public getNewObjectMetadata()Lcom/obs/services/model/ObjectMetadata;
    .registers 1

    .line 312
    iget-object p0, p0, Lcom/obs/services/model/CopyObjectRequest;->newObjectMetadata:Lcom/obs/services/model/ObjectMetadata;

    return-object p0
.end method

.method public getSourceBucketName()Ljava/lang/String;
    .registers 1

    .line 235
    iget-object p0, p0, Lcom/obs/services/model/CopyObjectRequest;->sourceBucketName:Ljava/lang/String;

    return-object p0
.end method

.method public getSourceObjectKey()Ljava/lang/String;
    .registers 1

    .line 254
    iget-object p0, p0, Lcom/obs/services/model/CopyObjectRequest;->sourceObjectKey:Ljava/lang/String;

    return-object p0
.end method

.method public getSseCHeaderDestination()Lcom/obs/services/model/SseCHeader;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 94
    iget-object p0, p0, Lcom/obs/services/model/PutObjectBasicRequest;->sseCHeader:Lcom/obs/services/model/SseCHeader;

    return-object p0
.end method

.method public getSseCHeaderSource()Lcom/obs/services/model/SseCHeader;
    .registers 1

    .line 74
    iget-object p0, p0, Lcom/obs/services/model/CopyObjectRequest;->sseCHeaderSource:Lcom/obs/services/model/SseCHeader;

    return-object p0
.end method

.method public getVersionId()Ljava/lang/String;
    .registers 1

    .line 215
    iget-object p0, p0, Lcom/obs/services/model/CopyObjectRequest;->versionId:Ljava/lang/String;

    return-object p0
.end method

.method public isReplaceMetadata()Z
    .registers 1

    .line 336
    iget-boolean p0, p0, Lcom/obs/services/model/CopyObjectRequest;->replaceMetadata:Z

    return p0
.end method

.method public setDestinationBucketName(Ljava/lang/String;)V
    .registers 2

    .line 283
    iput-object p1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public setDestinationObjectKey(Ljava/lang/String;)V
    .registers 2

    .line 302
    iput-object p1, p0, Lcom/obs/services/model/BaseObjectRequest;->objectKey:Ljava/lang/String;

    return-void
.end method

.method public setIfMatchTag(Ljava/lang/String;)V
    .registers 2

    .line 179
    iput-object p1, p0, Lcom/obs/services/model/CopyObjectRequest;->ifMatchTag:Ljava/lang/String;

    return-void
.end method

.method public setIfModifiedSince(Ljava/util/Date;)V
    .registers 2

    .line 129
    invoke-static {p1}, Lcom/obs/services/internal/utils/ServiceUtils;->cloneDateIgnoreNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/obs/services/model/CopyObjectRequest;->ifModifiedSince:Ljava/util/Date;

    return-void
.end method

.method public setIfNoneMatchTag(Ljava/lang/String;)V
    .registers 2

    .line 205
    iput-object p1, p0, Lcom/obs/services/model/CopyObjectRequest;->ifNoneMatchTag:Ljava/lang/String;

    return-void
.end method

.method public setIfUnmodifiedSince(Ljava/util/Date;)V
    .registers 2

    .line 154
    invoke-static {p1}, Lcom/obs/services/internal/utils/ServiceUtils;->cloneDateIgnoreNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/obs/services/model/CopyObjectRequest;->ifUnmodifiedSince:Ljava/util/Date;

    return-void
.end method

.method public setNewObjectMetadata(Lcom/obs/services/model/ObjectMetadata;)V
    .registers 2

    .line 323
    iput-object p1, p0, Lcom/obs/services/model/CopyObjectRequest;->newObjectMetadata:Lcom/obs/services/model/ObjectMetadata;

    return-void
.end method

.method public setReplaceMetadata(Z)V
    .registers 2

    .line 351
    iput-boolean p1, p0, Lcom/obs/services/model/CopyObjectRequest;->replaceMetadata:Z

    return-void
.end method

.method public setSourceBucketName(Ljava/lang/String;)V
    .registers 2

    .line 245
    iput-object p1, p0, Lcom/obs/services/model/CopyObjectRequest;->sourceBucketName:Ljava/lang/String;

    return-void
.end method

.method public setSourceObjectKey(Ljava/lang/String;)V
    .registers 2

    .line 264
    iput-object p1, p0, Lcom/obs/services/model/CopyObjectRequest;->sourceObjectKey:Ljava/lang/String;

    return-void
.end method

.method public setSseCHeaderDestination(Lcom/obs/services/model/SseCHeader;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 105
    iput-object p1, p0, Lcom/obs/services/model/PutObjectBasicRequest;->sseCHeader:Lcom/obs/services/model/SseCHeader;

    return-void
.end method

.method public setSseCHeaderSource(Lcom/obs/services/model/SseCHeader;)V
    .registers 2

    .line 84
    iput-object p1, p0, Lcom/obs/services/model/CopyObjectRequest;->sseCHeaderSource:Lcom/obs/services/model/SseCHeader;

    return-void
.end method

.method public setVersionId(Ljava/lang/String;)V
    .registers 2

    .line 226
    iput-object p1, p0, Lcom/obs/services/model/CopyObjectRequest;->versionId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CopyObjectRequest [sourceBucketName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/CopyObjectRequest;->sourceBucketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sourceObjectKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/CopyObjectRequest;->sourceObjectKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", destinationBucketName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", destinationObjectKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/BaseObjectRequest;->objectKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", newObjectMetadata="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/CopyObjectRequest;->newObjectMetadata:Lcom/obs/services/model/ObjectMetadata;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", replaceMetadata="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/obs/services/model/CopyObjectRequest;->replaceMetadata:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isEncodeHeaders="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/obs/services/model/BaseObjectRequest;->encodeHeaders:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", ifModifiedSince="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/CopyObjectRequest;->ifModifiedSince:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ifUnmodifiedSince="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/CopyObjectRequest;->ifUnmodifiedSince:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ifMatchTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/CopyObjectRequest;->ifMatchTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ifNoneMatchTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/CopyObjectRequest;->ifNoneMatchTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", versionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/CopyObjectRequest;->versionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sseKmsHeader="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/PutObjectBasicRequest;->sseKmsHeader:Lcom/obs/services/model/SseKmsHeader;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sseCHeaderSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/CopyObjectRequest;->sseCHeaderSource:Lcom/obs/services/model/SseCHeader;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sseCHeaderDestination="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/PutObjectBasicRequest;->sseCHeader:Lcom/obs/services/model/SseCHeader;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", acl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/PutObjectBasicRequest;->acl:Lcom/obs/services/model/AccessControlList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", successRedirectLocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/obs/services/model/PutObjectBasicRequest;->successRedirectLocation:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
