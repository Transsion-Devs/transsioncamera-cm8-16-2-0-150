.class public Lcom/obs/services/model/S3Bucket;
.super Lcom/obs/services/model/HeaderResponse;
.source "SourceFile"


# static fields
.field public static final GLACIER:Ljava/lang/String; = "GLACIER"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STANDARD:Ljava/lang/String; = "STANDARD"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STANDARD_IA:Ljava/lang/String; = "STANDARD_IA"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field protected acl:Lcom/obs/services/model/AccessControlList;

.field protected bucketName:Ljava/lang/String;

.field protected bucketTypeEnum:Lcom/obs/services/model/BucketTypeEnum;

.field protected clustertype:Ljava/lang/String;

.field protected creationDate:Ljava/util/Date;

.field protected location:Ljava/lang/String;

.field protected metadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected owner:Lcom/obs/services/model/Owner;

.field protected storageClass:Lcom/obs/services/model/StorageClassEnum;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 53
    invoke-direct {p0}, Lcom/obs/services/model/HeaderResponse;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/obs/services/model/S3Bucket;->metadata:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 57
    invoke-direct {p0}, Lcom/obs/services/model/HeaderResponse;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/obs/services/model/S3Bucket;->metadata:Ljava/util/Map;

    .line 58
    iput-object p1, p0, Lcom/obs/services/model/S3Bucket;->bucketName:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lcom/obs/services/model/S3Bucket;->location:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAcl()Lcom/obs/services/model/AccessControlList;
    .registers 1

    .line 103
    iget-object p0, p0, Lcom/obs/services/model/S3Bucket;->acl:Lcom/obs/services/model/AccessControlList;

    return-object p0
.end method

.method public getBucketName()Ljava/lang/String;
    .registers 1

    .line 63
    iget-object p0, p0, Lcom/obs/services/model/S3Bucket;->bucketName:Ljava/lang/String;

    return-object p0
.end method

.method public getBucketStorageClass()Lcom/obs/services/model/StorageClassEnum;
    .registers 1

    .line 121
    iget-object p0, p0, Lcom/obs/services/model/S3Bucket;->storageClass:Lcom/obs/services/model/StorageClassEnum;

    return-object p0
.end method

.method public getClustertype()Ljava/lang/String;
    .registers 1

    .line 129
    iget-object p0, p0, Lcom/obs/services/model/S3Bucket;->clustertype:Ljava/lang/String;

    return-object p0
.end method

.method public getCreationDate()Ljava/util/Date;
    .registers 1

    .line 79
    iget-object p0, p0, Lcom/obs/services/model/S3Bucket;->creationDate:Ljava/util/Date;

    invoke-static {p0}, Lcom/obs/services/internal/utils/ServiceUtils;->cloneDateIgnoreNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public getLocation()Ljava/lang/String;
    .registers 1

    .line 95
    iget-object p0, p0, Lcom/obs/services/model/S3Bucket;->location:Ljava/lang/String;

    return-object p0
.end method

.method public getMetadata()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 87
    iget-object p0, p0, Lcom/obs/services/model/S3Bucket;->metadata:Ljava/util/Map;

    return-object p0
.end method

.method public getOwner()Lcom/obs/services/model/Owner;
    .registers 1

    .line 71
    iget-object p0, p0, Lcom/obs/services/model/S3Bucket;->owner:Lcom/obs/services/model/Owner;

    return-object p0
.end method

.method public getStorageClass()Ljava/lang/String;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 112
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

    .line 107
    iput-object p1, p0, Lcom/obs/services/model/S3Bucket;->acl:Lcom/obs/services/model/AccessControlList;

    return-void
.end method

.method public setBucketName(Ljava/lang/String;)V
    .registers 2

    .line 67
    iput-object p1, p0, Lcom/obs/services/model/S3Bucket;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public setBucketStorageClass(Lcom/obs/services/model/StorageClassEnum;)V
    .registers 2

    .line 125
    iput-object p1, p0, Lcom/obs/services/model/S3Bucket;->storageClass:Lcom/obs/services/model/StorageClassEnum;

    return-void
.end method

.method public setClustertype(Ljava/lang/String;)V
    .registers 2

    .line 133
    iput-object p1, p0, Lcom/obs/services/model/S3Bucket;->clustertype:Ljava/lang/String;

    return-void
.end method

.method public setCreationDate(Ljava/util/Date;)V
    .registers 2

    .line 83
    invoke-static {p1}, Lcom/obs/services/internal/utils/ServiceUtils;->cloneDateIgnoreNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/obs/services/model/S3Bucket;->creationDate:Ljava/util/Date;

    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .registers 2

    .line 99
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

    .line 91
    iget-object p0, p0, Lcom/obs/services/model/S3Bucket;->metadata:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public setOwner(Lcom/obs/services/model/Owner;)V
    .registers 2

    .line 75
    iput-object p1, p0, Lcom/obs/services/model/S3Bucket;->owner:Lcom/obs/services/model/Owner;

    return-void
.end method

.method public setStorageClass(Ljava/lang/String;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 117
    invoke-static {p1}, Lcom/obs/services/model/StorageClassEnum;->getValueFromCode(Ljava/lang/String;)Lcom/obs/services/model/StorageClassEnum;

    move-result-object p1

    iput-object p1, p0, Lcom/obs/services/model/S3Bucket;->storageClass:Lcom/obs/services/model/StorageClassEnum;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 138
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

    iget-object v1, p0, Lcom/obs/services/model/S3Bucket;->acl:Lcom/obs/services/model/AccessControlList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", clustertype= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/obs/services/model/S3Bucket;->clustertype:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
