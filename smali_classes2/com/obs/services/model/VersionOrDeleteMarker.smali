.class public Lcom/obs/services/model/VersionOrDeleteMarker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/obs/services/model/VersionOrDeleteMarker$Builder;
    }
.end annotation


# instance fields
.field private appendable:Z

.field private bucketName:Ljava/lang/String;

.field private etag:Ljava/lang/String;

.field private isDeleteMarker:Z

.field private isLatest:Z

.field private key:Ljava/lang/String;

.field private lastModified:Ljava/util/Date;

.field private owner:Lcom/obs/services/model/Owner;

.field private size:J

.field private storageClass:Lcom/obs/services/model/StorageClassEnum;

.field private versionId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/obs/services/model/VersionOrDeleteMarker$Builder;)V
    .registers 4

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    # getter for: Lcom/obs/services/model/VersionOrDeleteMarker$Builder;->bucketName:Ljava/lang/String;
    invoke-static {p1}, Lcom/obs/services/model/VersionOrDeleteMarker$Builder;->access$000(Lcom/obs/services/model/VersionOrDeleteMarker$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/obs/services/model/VersionOrDeleteMarker;->bucketName:Ljava/lang/String;

    .line 97
    # getter for: Lcom/obs/services/model/VersionOrDeleteMarker$Builder;->key:Ljava/lang/String;
    invoke-static {p1}, Lcom/obs/services/model/VersionOrDeleteMarker$Builder;->access$100(Lcom/obs/services/model/VersionOrDeleteMarker$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/obs/services/model/VersionOrDeleteMarker;->key:Ljava/lang/String;

    .line 98
    # getter for: Lcom/obs/services/model/VersionOrDeleteMarker$Builder;->versionId:Ljava/lang/String;
    invoke-static {p1}, Lcom/obs/services/model/VersionOrDeleteMarker$Builder;->access$200(Lcom/obs/services/model/VersionOrDeleteMarker$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/obs/services/model/VersionOrDeleteMarker;->versionId:Ljava/lang/String;

    .line 99
    # getter for: Lcom/obs/services/model/VersionOrDeleteMarker$Builder;->isLatest:Z
    invoke-static {p1}, Lcom/obs/services/model/VersionOrDeleteMarker$Builder;->access$300(Lcom/obs/services/model/VersionOrDeleteMarker$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/obs/services/model/VersionOrDeleteMarker;->isLatest:Z

    .line 100
    # getter for: Lcom/obs/services/model/VersionOrDeleteMarker$Builder;->lastModified:Ljava/util/Date;
    invoke-static {p1}, Lcom/obs/services/model/VersionOrDeleteMarker$Builder;->access$400(Lcom/obs/services/model/VersionOrDeleteMarker$Builder;)Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 101
    # getter for: Lcom/obs/services/model/VersionOrDeleteMarker$Builder;->lastModified:Ljava/util/Date;
    invoke-static {p1}, Lcom/obs/services/model/VersionOrDeleteMarker$Builder;->access$400(Lcom/obs/services/model/VersionOrDeleteMarker$Builder;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Lcom/obs/services/model/VersionOrDeleteMarker;->lastModified:Ljava/util/Date;

    goto :goto_31

    :cond_2e
    const/4 v0, 0x0

    .line 103
    iput-object v0, p0, Lcom/obs/services/model/VersionOrDeleteMarker;->lastModified:Ljava/util/Date;

    .line 105
    :goto_31
    # getter for: Lcom/obs/services/model/VersionOrDeleteMarker$Builder;->owner:Lcom/obs/services/model/Owner;
    invoke-static {p1}, Lcom/obs/services/model/VersionOrDeleteMarker$Builder;->access$500(Lcom/obs/services/model/VersionOrDeleteMarker$Builder;)Lcom/obs/services/model/Owner;

    move-result-object v0

    iput-object v0, p0, Lcom/obs/services/model/VersionOrDeleteMarker;->owner:Lcom/obs/services/model/Owner;

    .line 106
    # getter for: Lcom/obs/services/model/VersionOrDeleteMarker$Builder;->etag:Ljava/lang/String;
    invoke-static {p1}, Lcom/obs/services/model/VersionOrDeleteMarker$Builder;->access$600(Lcom/obs/services/model/VersionOrDeleteMarker$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/obs/services/model/VersionOrDeleteMarker;->etag:Ljava/lang/String;

    .line 107
    # getter for: Lcom/obs/services/model/VersionOrDeleteMarker$Builder;->size:J
    invoke-static {p1}, Lcom/obs/services/model/VersionOrDeleteMarker$Builder;->access$700(Lcom/obs/services/model/VersionOrDeleteMarker$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/obs/services/model/VersionOrDeleteMarker;->size:J

    .line 108
    # getter for: Lcom/obs/services/model/VersionOrDeleteMarker$Builder;->storageClass:Lcom/obs/services/model/StorageClassEnum;
    invoke-static {p1}, Lcom/obs/services/model/VersionOrDeleteMarker$Builder;->access$800(Lcom/obs/services/model/VersionOrDeleteMarker$Builder;)Lcom/obs/services/model/StorageClassEnum;

    move-result-object v0

    iput-object v0, p0, Lcom/obs/services/model/VersionOrDeleteMarker;->storageClass:Lcom/obs/services/model/StorageClassEnum;

    .line 109
    # getter for: Lcom/obs/services/model/VersionOrDeleteMarker$Builder;->isDeleteMarker:Z
    invoke-static {p1}, Lcom/obs/services/model/VersionOrDeleteMarker$Builder;->access$900(Lcom/obs/services/model/VersionOrDeleteMarker$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/obs/services/model/VersionOrDeleteMarker;->isDeleteMarker:Z

    .line 110
    # getter for: Lcom/obs/services/model/VersionOrDeleteMarker$Builder;->appendable:Z
    invoke-static {p1}, Lcom/obs/services/model/VersionOrDeleteMarker$Builder;->access$1000(Lcom/obs/services/model/VersionOrDeleteMarker$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/obs/services/model/VersionOrDeleteMarker;->appendable:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/obs/services/model/VersionOrDeleteMarker$Builder;Lcom/obs/services/model/VersionOrDeleteMarker$1;)V
    .registers 3

    .line 22
    invoke-direct {p0, p1}, Lcom/obs/services/model/VersionOrDeleteMarker;-><init>(Lcom/obs/services/model/VersionOrDeleteMarker$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Date;Lcom/obs/services/model/Owner;Ljava/lang/String;JLcom/obs/services/model/StorageClassEnum;ZZ)V
    .registers 13
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/obs/services/model/VersionOrDeleteMarker;->bucketName:Ljava/lang/String;

    .line 79
    iput-object p2, p0, Lcom/obs/services/model/VersionOrDeleteMarker;->key:Ljava/lang/String;

    .line 80
    iput-object p3, p0, Lcom/obs/services/model/VersionOrDeleteMarker;->versionId:Ljava/lang/String;

    .line 81
    iput-boolean p4, p0, Lcom/obs/services/model/VersionOrDeleteMarker;->isLatest:Z

    if-eqz p5, :cond_16

    .line 83
    invoke-virtual {p5}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Date;

    iput-object p1, p0, Lcom/obs/services/model/VersionOrDeleteMarker;->lastModified:Ljava/util/Date;

    goto :goto_19

    :cond_16
    const/4 p1, 0x0

    .line 85
    iput-object p1, p0, Lcom/obs/services/model/VersionOrDeleteMarker;->lastModified:Ljava/util/Date;

    .line 87
    :goto_19
    iput-object p6, p0, Lcom/obs/services/model/VersionOrDeleteMarker;->owner:Lcom/obs/services/model/Owner;

    .line 88
    iput-object p7, p0, Lcom/obs/services/model/VersionOrDeleteMarker;->etag:Ljava/lang/String;

    .line 89
    iput-wide p8, p0, Lcom/obs/services/model/VersionOrDeleteMarker;->size:J

    .line 90
    iput-object p10, p0, Lcom/obs/services/model/VersionOrDeleteMarker;->storageClass:Lcom/obs/services/model/StorageClassEnum;

    .line 91
    iput-boolean p11, p0, Lcom/obs/services/model/VersionOrDeleteMarker;->isDeleteMarker:Z

    .line 92
    iput-boolean p12, p0, Lcom/obs/services/model/VersionOrDeleteMarker;->appendable:Z

    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .registers 1

    .line 310
    iget-object p0, p0, Lcom/obs/services/model/VersionOrDeleteMarker;->bucketName:Ljava/lang/String;

    return-object p0
.end method

.method public getEtag()Ljava/lang/String;
    .registers 1

    .line 273
    iget-object p0, p0, Lcom/obs/services/model/VersionOrDeleteMarker;->etag:Ljava/lang/String;

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 196
    iget-object p0, p0, Lcom/obs/services/model/VersionOrDeleteMarker;->key:Ljava/lang/String;

    return-object p0
.end method

.method public getLastModified()Ljava/util/Date;
    .registers 1

    .line 233
    iget-object p0, p0, Lcom/obs/services/model/VersionOrDeleteMarker;->lastModified:Ljava/util/Date;

    if-eqz p0, :cond_b

    .line 234
    invoke-virtual {p0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Date;

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public getObjectKey()Ljava/lang/String;
    .registers 1

    .line 205
    iget-object p0, p0, Lcom/obs/services/model/VersionOrDeleteMarker;->key:Ljava/lang/String;

    return-object p0
.end method

.method public getObjectStorageClass()Lcom/obs/services/model/StorageClassEnum;
    .registers 1

    .line 264
    iget-object p0, p0, Lcom/obs/services/model/VersionOrDeleteMarker;->storageClass:Lcom/obs/services/model/StorageClassEnum;

    return-object p0
.end method

.method public getOwner()Lcom/obs/services/model/Owner;
    .registers 1

    .line 246
    iget-object p0, p0, Lcom/obs/services/model/VersionOrDeleteMarker;->owner:Lcom/obs/services/model/Owner;

    return-object p0
.end method

.method public getSize()J
    .registers 3

    .line 282
    iget-wide v0, p0, Lcom/obs/services/model/VersionOrDeleteMarker;->size:J

    return-wide v0
.end method

.method public getStorageClass()Ljava/lang/String;
    .registers 1

    .line 255
    iget-object p0, p0, Lcom/obs/services/model/VersionOrDeleteMarker;->storageClass:Lcom/obs/services/model/StorageClassEnum;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/obs/services/model/StorageClassEnum;->getCode()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public getVersionId()Ljava/lang/String;
    .registers 1

    .line 214
    iget-object p0, p0, Lcom/obs/services/model/VersionOrDeleteMarker;->versionId:Ljava/lang/String;

    return-object p0
.end method

.method public isAppendable()Z
    .registers 1

    .line 301
    iget-boolean p0, p0, Lcom/obs/services/model/VersionOrDeleteMarker;->appendable:Z

    return p0
.end method

.method public isDeleteMarker()Z
    .registers 1

    .line 292
    iget-boolean p0, p0, Lcom/obs/services/model/VersionOrDeleteMarker;->isDeleteMarker:Z

    return p0
.end method

.method public isLatest()Z
    .registers 1

    .line 224
    iget-boolean p0, p0, Lcom/obs/services/model/VersionOrDeleteMarker;->isLatest:Z

    return p0
.end method

.method public setKey(Ljava/lang/String;)V
    .registers 2

    .line 314
    iput-object p1, p0, Lcom/obs/services/model/VersionOrDeleteMarker;->key:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VersionOrDeleteMarker [bucketName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/VersionOrDeleteMarker;->bucketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/VersionOrDeleteMarker;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", versionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/VersionOrDeleteMarker;->versionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isLatest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/obs/services/model/VersionOrDeleteMarker;->isLatest:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", lastModified="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/VersionOrDeleteMarker;->lastModified:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", owner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/VersionOrDeleteMarker;->owner:Lcom/obs/services/model/Owner;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", etag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/VersionOrDeleteMarker;->etag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/obs/services/model/VersionOrDeleteMarker;->size:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", storageClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/VersionOrDeleteMarker;->storageClass:Lcom/obs/services/model/StorageClassEnum;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isDeleteMarker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/obs/services/model/VersionOrDeleteMarker;->isDeleteMarker:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", appendable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/obs/services/model/VersionOrDeleteMarker;->appendable:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
