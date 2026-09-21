.class public Lcom/obs/services/model/MultipartUpload;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bucketName:Ljava/lang/String;

.field private initiatedDate:Ljava/util/Date;

.field private initiator:Lcom/obs/services/model/Owner;

.field private objectKey:Ljava/lang/String;

.field private owner:Lcom/obs/services/model/Owner;

.field private storageClass:Lcom/obs/services/model/StorageClassEnum;

.field private uploadId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Lcom/obs/services/model/StorageClassEnum;Lcom/obs/services/model/Owner;Lcom/obs/services/model/Owner;)V
    .registers 8

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/obs/services/model/MultipartUpload;->uploadId:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lcom/obs/services/model/MultipartUpload;->bucketName:Ljava/lang/String;

    .line 55
    iput-object p3, p0, Lcom/obs/services/model/MultipartUpload;->objectKey:Ljava/lang/String;

    .line 56
    invoke-static {p4}, Lcom/obs/services/internal/utils/ServiceUtils;->cloneDateIgnoreNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/obs/services/model/MultipartUpload;->initiatedDate:Ljava/util/Date;

    .line 57
    iput-object p5, p0, Lcom/obs/services/model/MultipartUpload;->storageClass:Lcom/obs/services/model/StorageClassEnum;

    .line 58
    iput-object p6, p0, Lcom/obs/services/model/MultipartUpload;->owner:Lcom/obs/services/model/Owner;

    .line 59
    iput-object p7, p0, Lcom/obs/services/model/MultipartUpload;->initiator:Lcom/obs/services/model/Owner;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Lcom/obs/services/model/StorageClassEnum;Lcom/obs/services/model/Owner;Lcom/obs/services/model/Owner;)V
    .registers 7

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/obs/services/model/MultipartUpload;->uploadId:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/obs/services/model/MultipartUpload;->objectKey:Ljava/lang/String;

    .line 44
    invoke-static {p3}, Lcom/obs/services/internal/utils/ServiceUtils;->cloneDateIgnoreNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/obs/services/model/MultipartUpload;->initiatedDate:Ljava/util/Date;

    .line 45
    iput-object p4, p0, Lcom/obs/services/model/MultipartUpload;->storageClass:Lcom/obs/services/model/StorageClassEnum;

    .line 46
    iput-object p5, p0, Lcom/obs/services/model/MultipartUpload;->owner:Lcom/obs/services/model/Owner;

    .line 47
    iput-object p6, p0, Lcom/obs/services/model/MultipartUpload;->initiator:Lcom/obs/services/model/Owner;

    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .registers 1

    .line 95
    iget-object p0, p0, Lcom/obs/services/model/MultipartUpload;->bucketName:Ljava/lang/String;

    return-object p0
.end method

.method public getInitiatedDate()Ljava/util/Date;
    .registers 1

    .line 138
    iget-object p0, p0, Lcom/obs/services/model/MultipartUpload;->initiatedDate:Ljava/util/Date;

    invoke-static {p0}, Lcom/obs/services/internal/utils/ServiceUtils;->cloneDateIgnoreNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public getInitiator()Lcom/obs/services/model/Owner;
    .registers 1

    .line 68
    iget-object p0, p0, Lcom/obs/services/model/MultipartUpload;->initiator:Lcom/obs/services/model/Owner;

    return-object p0
.end method

.method public getObjectKey()Ljava/lang/String;
    .registers 1

    .line 108
    iget-object p0, p0, Lcom/obs/services/model/MultipartUpload;->objectKey:Ljava/lang/String;

    return-object p0
.end method

.method public getObjectStorageClass()Lcom/obs/services/model/StorageClassEnum;
    .registers 1

    .line 129
    iget-object p0, p0, Lcom/obs/services/model/MultipartUpload;->storageClass:Lcom/obs/services/model/StorageClassEnum;

    return-object p0
.end method

.method public getOwner()Lcom/obs/services/model/Owner;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/obs/services/model/MultipartUpload;->owner:Lcom/obs/services/model/Owner;

    return-object p0
.end method

.method public getStorageClass()Ljava/lang/String;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 119
    iget-object p0, p0, Lcom/obs/services/model/MultipartUpload;->storageClass:Lcom/obs/services/model/StorageClassEnum;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/obs/services/model/StorageClassEnum;->getCode()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public getUploadId()Ljava/lang/String;
    .registers 1

    .line 86
    iget-object p0, p0, Lcom/obs/services/model/MultipartUpload;->uploadId:Ljava/lang/String;

    return-object p0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .registers 2

    .line 99
    iput-object p1, p0, Lcom/obs/services/model/MultipartUpload;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public setObjectKey(Ljava/lang/String;)V
    .registers 2

    .line 142
    iput-object p1, p0, Lcom/obs/services/model/MultipartUpload;->objectKey:Ljava/lang/String;

    return-void
.end method
