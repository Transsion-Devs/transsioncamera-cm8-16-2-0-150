.class public Lcom/obs/services/model/MultipartUploadListing;
.super Lcom/obs/services/model/HeaderResponse;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/obs/services/model/MultipartUploadListing$Builder;
    }
.end annotation


# instance fields
.field private bucketName:Ljava/lang/String;

.field private commonPrefixes:[Ljava/lang/String;

.field private delimiter:Ljava/lang/String;

.field private keyMarker:Ljava/lang/String;

.field private maxUploads:I

.field private multipartTaskList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/obs/services/model/MultipartUpload;",
            ">;"
        }
    .end annotation
.end field

.field private nextKeyMarker:Ljava/lang/String;

.field private nextUploadIdMarker:Ljava/lang/String;

.field private prefix:Ljava/lang/String;

.field private truncated:Z

.field private uploadIdMarker:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/obs/services/model/MultipartUploadListing$Builder;)V
    .registers 3

    .line 71
    invoke-direct {p0}, Lcom/obs/services/model/HeaderResponse;-><init>()V

    .line 72
    # getter for: Lcom/obs/services/model/MultipartUploadListing$Builder;->bucketName:Ljava/lang/String;
    invoke-static {p1}, Lcom/obs/services/model/MultipartUploadListing$Builder;->access$000(Lcom/obs/services/model/MultipartUploadListing$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/obs/services/model/MultipartUploadListing;->bucketName:Ljava/lang/String;

    .line 73
    # getter for: Lcom/obs/services/model/MultipartUploadListing$Builder;->keyMarker:Ljava/lang/String;
    invoke-static {p1}, Lcom/obs/services/model/MultipartUploadListing$Builder;->access$100(Lcom/obs/services/model/MultipartUploadListing$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/obs/services/model/MultipartUploadListing;->keyMarker:Ljava/lang/String;

    .line 74
    # getter for: Lcom/obs/services/model/MultipartUploadListing$Builder;->uploadIdMarker:Ljava/lang/String;
    invoke-static {p1}, Lcom/obs/services/model/MultipartUploadListing$Builder;->access$200(Lcom/obs/services/model/MultipartUploadListing$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/obs/services/model/MultipartUploadListing;->uploadIdMarker:Ljava/lang/String;

    .line 75
    # getter for: Lcom/obs/services/model/MultipartUploadListing$Builder;->nextKeyMarker:Ljava/lang/String;
    invoke-static {p1}, Lcom/obs/services/model/MultipartUploadListing$Builder;->access$300(Lcom/obs/services/model/MultipartUploadListing$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/obs/services/model/MultipartUploadListing;->nextKeyMarker:Ljava/lang/String;

    .line 76
    # getter for: Lcom/obs/services/model/MultipartUploadListing$Builder;->nextUploadIdMarker:Ljava/lang/String;
    invoke-static {p1}, Lcom/obs/services/model/MultipartUploadListing$Builder;->access$400(Lcom/obs/services/model/MultipartUploadListing$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/obs/services/model/MultipartUploadListing;->nextUploadIdMarker:Ljava/lang/String;

    .line 77
    # getter for: Lcom/obs/services/model/MultipartUploadListing$Builder;->prefix:Ljava/lang/String;
    invoke-static {p1}, Lcom/obs/services/model/MultipartUploadListing$Builder;->access$500(Lcom/obs/services/model/MultipartUploadListing$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/obs/services/model/MultipartUploadListing;->prefix:Ljava/lang/String;

    .line 78
    # getter for: Lcom/obs/services/model/MultipartUploadListing$Builder;->maxUploads:I
    invoke-static {p1}, Lcom/obs/services/model/MultipartUploadListing$Builder;->access$600(Lcom/obs/services/model/MultipartUploadListing$Builder;)I

    move-result v0

    iput v0, p0, Lcom/obs/services/model/MultipartUploadListing;->maxUploads:I

    .line 79
    # getter for: Lcom/obs/services/model/MultipartUploadListing$Builder;->truncated:Z
    invoke-static {p1}, Lcom/obs/services/model/MultipartUploadListing$Builder;->access$700(Lcom/obs/services/model/MultipartUploadListing$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/obs/services/model/MultipartUploadListing;->truncated:Z

    .line 80
    # getter for: Lcom/obs/services/model/MultipartUploadListing$Builder;->multipartTaskList:Ljava/util/List;
    invoke-static {p1}, Lcom/obs/services/model/MultipartUploadListing$Builder;->access$800(Lcom/obs/services/model/MultipartUploadListing$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/obs/services/model/MultipartUploadListing;->multipartTaskList:Ljava/util/List;

    .line 81
    # getter for: Lcom/obs/services/model/MultipartUploadListing$Builder;->delimiter:Ljava/lang/String;
    invoke-static {p1}, Lcom/obs/services/model/MultipartUploadListing$Builder;->access$900(Lcom/obs/services/model/MultipartUploadListing$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/obs/services/model/MultipartUploadListing;->delimiter:Ljava/lang/String;

    .line 82
    # getter for: Lcom/obs/services/model/MultipartUploadListing$Builder;->commonPrefixes:[Ljava/lang/String;
    invoke-static {p1}, Lcom/obs/services/model/MultipartUploadListing$Builder;->access$1000(Lcom/obs/services/model/MultipartUploadListing$Builder;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_52

    .line 83
    # getter for: Lcom/obs/services/model/MultipartUploadListing$Builder;->commonPrefixes:[Ljava/lang/String;
    invoke-static {p1}, Lcom/obs/services/model/MultipartUploadListing$Builder;->access$1000(Lcom/obs/services/model/MultipartUploadListing$Builder;)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/obs/services/model/MultipartUploadListing;->commonPrefixes:[Ljava/lang/String;

    return-void

    :cond_52
    const/4 p1, 0x0

    .line 85
    iput-object p1, p0, Lcom/obs/services/model/MultipartUploadListing;->commonPrefixes:[Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/obs/services/model/MultipartUploadListing$Builder;Lcom/obs/services/model/MultipartUploadListing$1;)V
    .registers 3

    .line 24
    invoke-direct {p0, p1}, Lcom/obs/services/model/MultipartUploadListing;-><init>(Lcom/obs/services/model/MultipartUploadListing$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/util/List;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/util/List<",
            "Lcom/obs/services/model/MultipartUpload;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 52
    invoke-direct {p0}, Lcom/obs/services/model/HeaderResponse;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/obs/services/model/MultipartUploadListing;->bucketName:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lcom/obs/services/model/MultipartUploadListing;->keyMarker:Ljava/lang/String;

    .line 55
    iput-object p3, p0, Lcom/obs/services/model/MultipartUploadListing;->uploadIdMarker:Ljava/lang/String;

    .line 56
    iput-object p4, p0, Lcom/obs/services/model/MultipartUploadListing;->nextKeyMarker:Ljava/lang/String;

    .line 57
    iput-object p5, p0, Lcom/obs/services/model/MultipartUploadListing;->nextUploadIdMarker:Ljava/lang/String;

    .line 58
    iput-object p6, p0, Lcom/obs/services/model/MultipartUploadListing;->prefix:Ljava/lang/String;

    .line 59
    iput p7, p0, Lcom/obs/services/model/MultipartUploadListing;->maxUploads:I

    .line 60
    iput-boolean p8, p0, Lcom/obs/services/model/MultipartUploadListing;->truncated:Z

    .line 61
    iput-object p9, p0, Lcom/obs/services/model/MultipartUploadListing;->multipartTaskList:Ljava/util/List;

    .line 62
    iput-object p10, p0, Lcom/obs/services/model/MultipartUploadListing;->delimiter:Ljava/lang/String;

    if-eqz p11, :cond_22

    .line 64
    invoke-virtual {p11}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/obs/services/model/MultipartUploadListing;->commonPrefixes:[Ljava/lang/String;

    return-void

    :cond_22
    const/4 p1, 0x0

    .line 66
    iput-object p1, p0, Lcom/obs/services/model/MultipartUploadListing;->commonPrefixes:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .registers 1

    .line 236
    iget-object p0, p0, Lcom/obs/services/model/MultipartUploadListing;->bucketName:Ljava/lang/String;

    return-object p0
.end method

.method public getCommonPrefixes()[Ljava/lang/String;
    .registers 1

    .line 183
    iget-object p0, p0, Lcom/obs/services/model/MultipartUploadListing;->commonPrefixes:[Ljava/lang/String;

    if-eqz p0, :cond_b

    .line 184
    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :cond_b
    const/4 p0, 0x0

    .line 186
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getDelimiter()Ljava/lang/String;
    .registers 1

    .line 245
    iget-object p0, p0, Lcom/obs/services/model/MultipartUploadListing;->delimiter:Ljava/lang/String;

    return-object p0
.end method

.method public getKeyMarker()Ljava/lang/String;
    .registers 1

    .line 255
    iget-object p0, p0, Lcom/obs/services/model/MultipartUploadListing;->keyMarker:Ljava/lang/String;

    return-object p0
.end method

.method public getMaxUploads()I
    .registers 1

    .line 264
    iget p0, p0, Lcom/obs/services/model/MultipartUploadListing;->maxUploads:I

    return p0
.end method

.method public getMultipartTaskList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/obs/services/model/MultipartUpload;",
            ">;"
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lcom/obs/services/model/MultipartUploadListing;->multipartTaskList:Ljava/util/List;

    if-nez v0, :cond_b

    .line 225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/obs/services/model/MultipartUploadListing;->multipartTaskList:Ljava/util/List;

    .line 227
    :cond_b
    iget-object p0, p0, Lcom/obs/services/model/MultipartUploadListing;->multipartTaskList:Ljava/util/List;

    return-object p0
.end method

.method public getNextKeyMarker()Ljava/lang/String;
    .registers 1

    .line 205
    iget-object p0, p0, Lcom/obs/services/model/MultipartUploadListing;->nextKeyMarker:Ljava/lang/String;

    return-object p0
.end method

.method public getNextUploadIdMarker()Ljava/lang/String;
    .registers 1

    .line 215
    iget-object p0, p0, Lcom/obs/services/model/MultipartUploadListing;->nextUploadIdMarker:Ljava/lang/String;

    return-object p0
.end method

.method public getPrefix()Ljava/lang/String;
    .registers 1

    .line 273
    iget-object p0, p0, Lcom/obs/services/model/MultipartUploadListing;->prefix:Ljava/lang/String;

    return-object p0
.end method

.method public getUploadIdMarker()Ljava/lang/String;
    .registers 1

    .line 196
    iget-object p0, p0, Lcom/obs/services/model/MultipartUploadListing;->uploadIdMarker:Ljava/lang/String;

    return-object p0
.end method

.method public isTruncated()Z
    .registers 1

    .line 174
    iget-boolean p0, p0, Lcom/obs/services/model/MultipartUploadListing;->truncated:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MultipartUploadListing [bucketName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/MultipartUploadListing;->bucketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", keyMarker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/MultipartUploadListing;->keyMarker:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", uploadIdMarker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/MultipartUploadListing;->uploadIdMarker:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", nextKeyMarker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/MultipartUploadListing;->nextKeyMarker:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", nextUploadIdMarker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/MultipartUploadListing;->nextUploadIdMarker:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", prefix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/MultipartUploadListing;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", maxUploads="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/obs/services/model/MultipartUploadListing;->maxUploads:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", truncated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/obs/services/model/MultipartUploadListing;->truncated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", multipartTaskList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/MultipartUploadListing;->multipartTaskList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", delimiter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/MultipartUploadListing;->delimiter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", commonPrefixes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/obs/services/model/MultipartUploadListing;->commonPrefixes:[Ljava/lang/String;

    .line 282
    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
