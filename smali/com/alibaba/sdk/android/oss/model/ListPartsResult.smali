.class public Lcom/alibaba/sdk/android/oss/model/ListPartsResult;
.super Lcom/alibaba/sdk/android/oss/model/OSSResult;
.source "SourceFile"


# instance fields
.field private bucketName:Ljava/lang/String;

.field private isTruncated:Z

.field private key:Ljava/lang/String;

.field private maxParts:I

.field private nextPartNumberMarker:I

.field private partNumberMarker:I

.field private parts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/sdk/android/oss/model/PartSummary;",
            ">;"
        }
    .end annotation
.end field

.field private storageClass:Ljava/lang/String;

.field private uploadId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 9
    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/model/OSSResult;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->maxParts:I

    .line 19
    iput v0, p0, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->partNumberMarker:I

    .line 23
    iput-boolean v0, p0, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->isTruncated:Z

    .line 25
    iput v0, p0, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->nextPartNumberMarker:I

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->parts:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->bucketName:Ljava/lang/String;

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->key:Ljava/lang/String;

    return-object p0
.end method

.method public getMaxParts()I
    .registers 1

    .line 133
    iget p0, p0, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->maxParts:I

    return p0
.end method

.method public getNextPartNumberMarker()I
    .registers 1

    .line 115
    iget p0, p0, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->nextPartNumberMarker:I

    return p0
.end method

.method public getPartNumberMarker()I
    .registers 1

    .line 97
    iget p0, p0, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->partNumberMarker:I

    return p0
.end method

.method public getParts()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/sdk/android/oss/model/PartSummary;",
            ">;"
        }
    .end annotation

    .line 169
    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->parts:Ljava/util/List;

    return-object p0
.end method

.method public getStorageClass()Ljava/lang/String;
    .registers 1

    .line 84
    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->storageClass:Ljava/lang/String;

    return-object p0
.end method

.method public getUploadId()Ljava/lang/String;
    .registers 1

    .line 71
    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->uploadId:Ljava/lang/String;

    return-object p0
.end method

.method public isTruncated()Z
    .registers 1

    .line 151
    iget-boolean p0, p0, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->isTruncated:Z

    return p0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .registers 2

    .line 44
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .registers 2

    .line 62
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->key:Ljava/lang/String;

    return-void
.end method

.method public setMaxParts(I)V
    .registers 2

    .line 142
    iput p1, p0, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->maxParts:I

    return-void
.end method

.method public setNextPartNumberMarker(I)V
    .registers 2

    .line 124
    iput p1, p0, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->nextPartNumberMarker:I

    return-void
.end method

.method public setPartNumberMarker(I)V
    .registers 2

    .line 106
    iput p1, p0, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->partNumberMarker:I

    return-void
.end method

.method public setParts(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/sdk/android/oss/model/PartSummary;",
            ">;)V"
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_12

    .line 179
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 180
    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->parts:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_12
    return-void
.end method

.method public setStorageClass(Ljava/lang/String;)V
    .registers 2

    .line 88
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->storageClass:Ljava/lang/String;

    return-void
.end method

.method public setTruncated(Z)V
    .registers 2

    .line 160
    iput-boolean p1, p0, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->isTruncated:Z

    return-void
.end method

.method public setUploadId(Ljava/lang/String;)V
    .registers 2

    .line 80
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->uploadId:Ljava/lang/String;

    return-void
.end method
