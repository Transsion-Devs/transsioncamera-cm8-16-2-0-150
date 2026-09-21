.class public Lcom/obs/services/model/ListPartsResult;
.super Lcom/obs/services/model/HeaderResponse;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/obs/services/model/ListPartsResult$Builder;
    }
.end annotation


# instance fields
.field private bucket:Ljava/lang/String;

.field private initiator:Lcom/obs/services/model/Owner;

.field private isTruncated:Z

.field private key:Ljava/lang/String;

.field private maxParts:Ljava/lang/Integer;

.field private multipartList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/obs/services/model/Multipart;",
            ">;"
        }
    .end annotation
.end field

.field private nextPartNumberMarker:Ljava/lang/String;

.field private owner:Lcom/obs/services/model/Owner;

.field private partNumberMarker:Ljava/lang/String;

.field private storageClass:Lcom/obs/services/model/StorageClassEnum;

.field private uploadId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/obs/services/model/ListPartsResult$Builder;)V
    .registers 3

    .line 66
    invoke-direct {p0}, Lcom/obs/services/model/HeaderResponse;-><init>()V

    .line 67
    # getter for: Lcom/obs/services/model/ListPartsResult$Builder;->bucket:Ljava/lang/String;
    invoke-static {p1}, Lcom/obs/services/model/ListPartsResult$Builder;->access$000(Lcom/obs/services/model/ListPartsResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/obs/services/model/ListPartsResult;->bucket:Ljava/lang/String;

    .line 68
    # getter for: Lcom/obs/services/model/ListPartsResult$Builder;->key:Ljava/lang/String;
    invoke-static {p1}, Lcom/obs/services/model/ListPartsResult$Builder;->access$100(Lcom/obs/services/model/ListPartsResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/obs/services/model/ListPartsResult;->key:Ljava/lang/String;

    .line 69
    # getter for: Lcom/obs/services/model/ListPartsResult$Builder;->uploadId:Ljava/lang/String;
    invoke-static {p1}, Lcom/obs/services/model/ListPartsResult$Builder;->access$200(Lcom/obs/services/model/ListPartsResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/obs/services/model/ListPartsResult;->uploadId:Ljava/lang/String;

    .line 70
    # getter for: Lcom/obs/services/model/ListPartsResult$Builder;->initiator:Lcom/obs/services/model/Owner;
    invoke-static {p1}, Lcom/obs/services/model/ListPartsResult$Builder;->access$300(Lcom/obs/services/model/ListPartsResult$Builder;)Lcom/obs/services/model/Owner;

    move-result-object v0

    iput-object v0, p0, Lcom/obs/services/model/ListPartsResult;->initiator:Lcom/obs/services/model/Owner;

    .line 71
    # getter for: Lcom/obs/services/model/ListPartsResult$Builder;->owner:Lcom/obs/services/model/Owner;
    invoke-static {p1}, Lcom/obs/services/model/ListPartsResult$Builder;->access$400(Lcom/obs/services/model/ListPartsResult$Builder;)Lcom/obs/services/model/Owner;

    move-result-object v0

    iput-object v0, p0, Lcom/obs/services/model/ListPartsResult;->owner:Lcom/obs/services/model/Owner;

    .line 72
    # getter for: Lcom/obs/services/model/ListPartsResult$Builder;->storageClass:Lcom/obs/services/model/StorageClassEnum;
    invoke-static {p1}, Lcom/obs/services/model/ListPartsResult$Builder;->access$500(Lcom/obs/services/model/ListPartsResult$Builder;)Lcom/obs/services/model/StorageClassEnum;

    move-result-object v0

    iput-object v0, p0, Lcom/obs/services/model/ListPartsResult;->storageClass:Lcom/obs/services/model/StorageClassEnum;

    .line 73
    # getter for: Lcom/obs/services/model/ListPartsResult$Builder;->multipartList:Ljava/util/List;
    invoke-static {p1}, Lcom/obs/services/model/ListPartsResult$Builder;->access$600(Lcom/obs/services/model/ListPartsResult$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/obs/services/model/ListPartsResult;->multipartList:Ljava/util/List;

    .line 74
    # getter for: Lcom/obs/services/model/ListPartsResult$Builder;->maxParts:Ljava/lang/Integer;
    invoke-static {p1}, Lcom/obs/services/model/ListPartsResult$Builder;->access$700(Lcom/obs/services/model/ListPartsResult$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/obs/services/model/ListPartsResult;->maxParts:Ljava/lang/Integer;

    .line 75
    # getter for: Lcom/obs/services/model/ListPartsResult$Builder;->isTruncated:Z
    invoke-static {p1}, Lcom/obs/services/model/ListPartsResult$Builder;->access$800(Lcom/obs/services/model/ListPartsResult$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/obs/services/model/ListPartsResult;->isTruncated:Z

    .line 76
    # getter for: Lcom/obs/services/model/ListPartsResult$Builder;->partNumberMarker:Ljava/lang/String;
    invoke-static {p1}, Lcom/obs/services/model/ListPartsResult$Builder;->access$900(Lcom/obs/services/model/ListPartsResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/obs/services/model/ListPartsResult;->partNumberMarker:Ljava/lang/String;

    .line 77
    # getter for: Lcom/obs/services/model/ListPartsResult$Builder;->nextPartNumberMarker:Ljava/lang/String;
    invoke-static {p1}, Lcom/obs/services/model/ListPartsResult$Builder;->access$1000(Lcom/obs/services/model/ListPartsResult$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/obs/services/model/ListPartsResult;->nextPartNumberMarker:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/obs/services/model/ListPartsResult$Builder;Lcom/obs/services/model/ListPartsResult$1;)V
    .registers 3

    .line 23
    invoke-direct {p0, p1}, Lcom/obs/services/model/ListPartsResult;-><init>(Lcom/obs/services/model/ListPartsResult$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/model/Owner;Lcom/obs/services/model/Owner;Lcom/obs/services/model/StorageClassEnum;Ljava/util/List;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/obs/services/model/Owner;",
            "Lcom/obs/services/model/Owner;",
            "Lcom/obs/services/model/StorageClassEnum;",
            "Ljava/util/List<",
            "Lcom/obs/services/model/Multipart;",
            ">;",
            "Ljava/lang/Integer;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 51
    invoke-direct {p0}, Lcom/obs/services/model/HeaderResponse;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/obs/services/model/ListPartsResult;->bucket:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lcom/obs/services/model/ListPartsResult;->key:Ljava/lang/String;

    .line 54
    iput-object p3, p0, Lcom/obs/services/model/ListPartsResult;->uploadId:Ljava/lang/String;

    .line 55
    iput-object p4, p0, Lcom/obs/services/model/ListPartsResult;->initiator:Lcom/obs/services/model/Owner;

    .line 56
    iput-object p5, p0, Lcom/obs/services/model/ListPartsResult;->owner:Lcom/obs/services/model/Owner;

    .line 57
    iput-object p6, p0, Lcom/obs/services/model/ListPartsResult;->storageClass:Lcom/obs/services/model/StorageClassEnum;

    .line 58
    iput-object p7, p0, Lcom/obs/services/model/ListPartsResult;->multipartList:Ljava/util/List;

    .line 59
    iput-object p8, p0, Lcom/obs/services/model/ListPartsResult;->maxParts:Ljava/lang/Integer;

    .line 60
    iput-boolean p9, p0, Lcom/obs/services/model/ListPartsResult;->isTruncated:Z

    .line 61
    iput-object p10, p0, Lcom/obs/services/model/ListPartsResult;->partNumberMarker:Ljava/lang/String;

    .line 62
    iput-object p11, p0, Lcom/obs/services/model/ListPartsResult;->nextPartNumberMarker:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBucket()Ljava/lang/String;
    .registers 1

    .line 159
    iget-object p0, p0, Lcom/obs/services/model/ListPartsResult;->bucket:Ljava/lang/String;

    return-object p0
.end method

.method public getInitiator()Lcom/obs/services/model/Owner;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/obs/services/model/ListPartsResult;->initiator:Lcom/obs/services/model/Owner;

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 168
    iget-object p0, p0, Lcom/obs/services/model/ListPartsResult;->key:Ljava/lang/String;

    return-object p0
.end method

.method public getMaxParts()Ljava/lang/Integer;
    .registers 1

    .line 223
    iget-object p0, p0, Lcom/obs/services/model/ListPartsResult;->maxParts:Ljava/lang/Integer;

    return-object p0
.end method

.method public getMultipartList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/obs/services/model/Multipart;",
            ">;"
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lcom/obs/services/model/ListPartsResult;->multipartList:Ljava/util/List;

    if-nez v0, :cond_b

    .line 233
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/obs/services/model/ListPartsResult;->multipartList:Ljava/util/List;

    .line 235
    :cond_b
    iget-object p0, p0, Lcom/obs/services/model/ListPartsResult;->multipartList:Ljava/util/List;

    return-object p0
.end method

.method public getNextPartNumberMarker()Ljava/lang/String;
    .registers 1

    .line 264
    iget-object p0, p0, Lcom/obs/services/model/ListPartsResult;->nextPartNumberMarker:Ljava/lang/String;

    return-object p0
.end method

.method public getObjectStorageClass()Lcom/obs/services/model/StorageClassEnum;
    .registers 1

    .line 214
    iget-object p0, p0, Lcom/obs/services/model/ListPartsResult;->storageClass:Lcom/obs/services/model/StorageClassEnum;

    return-object p0
.end method

.method public getOwner()Lcom/obs/services/model/Owner;
    .registers 1

    .line 195
    iget-object p0, p0, Lcom/obs/services/model/ListPartsResult;->owner:Lcom/obs/services/model/Owner;

    return-object p0
.end method

.method public getPartNumberMarker()Ljava/lang/String;
    .registers 1

    .line 255
    iget-object p0, p0, Lcom/obs/services/model/ListPartsResult;->partNumberMarker:Ljava/lang/String;

    return-object p0
.end method

.method public getStorageClass()Ljava/lang/String;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 205
    iget-object p0, p0, Lcom/obs/services/model/ListPartsResult;->storageClass:Lcom/obs/services/model/StorageClassEnum;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    :cond_6
    invoke-virtual {p0}, Lcom/obs/services/model/StorageClassEnum;->getCode()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUploadId()Ljava/lang/String;
    .registers 1

    .line 177
    iget-object p0, p0, Lcom/obs/services/model/ListPartsResult;->uploadId:Ljava/lang/String;

    return-object p0
.end method

.method public isTruncated()Z
    .registers 1

    .line 246
    iget-boolean p0, p0, Lcom/obs/services/model/ListPartsResult;->isTruncated:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ListPartsResult [bucket="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/ListPartsResult;->bucket:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/ListPartsResult;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", uploadId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/ListPartsResult;->uploadId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", initiator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/ListPartsResult;->initiator:Lcom/obs/services/model/Owner;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", owner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/ListPartsResult;->owner:Lcom/obs/services/model/Owner;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", storageClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/ListPartsResult;->storageClass:Lcom/obs/services/model/StorageClassEnum;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", multipartList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/ListPartsResult;->multipartList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", maxParts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/ListPartsResult;->maxParts:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isTruncated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/obs/services/model/ListPartsResult;->isTruncated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", partNumberMarker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/ListPartsResult;->partNumberMarker:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", nextPartNumberMarker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/obs/services/model/ListPartsResult;->nextPartNumberMarker:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
