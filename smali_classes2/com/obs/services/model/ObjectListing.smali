.class public Lcom/obs/services/model/ObjectListing;
.super Lcom/obs/services/model/HeaderResponse;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/obs/services/model/ObjectListing$Builder;
    }
.end annotation


# instance fields
.field private bucketName:Ljava/lang/String;

.field private commonPrefixes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private delimiter:Ljava/lang/String;

.field private extendCommonPrefixes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/obs/services/model/ObsObject;",
            ">;"
        }
    .end annotation
.end field

.field private location:Ljava/lang/String;

.field private marker:Ljava/lang/String;

.field private maxKeys:I

.field private nextMarker:Ljava/lang/String;

.field private objectSummaries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/obs/services/model/ObsObject;",
            ">;"
        }
    .end annotation
.end field

.field private prefix:Ljava/lang/String;

.field private truncated:Z


# direct methods
.method private constructor <init>(Lcom/obs/services/model/ObjectListing$Builder;)V
    .registers 3

    .line 75
    invoke-direct {p0}, Lcom/obs/services/model/HeaderResponse;-><init>()V

    .line 76
    # getter for: Lcom/obs/services/model/ObjectListing$Builder;->objectSummaries:Ljava/util/List;
    invoke-static {p1}, Lcom/obs/services/model/ObjectListing$Builder;->access$000(Lcom/obs/services/model/ObjectListing$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/obs/services/model/ObjectListing;->objectSummaries:Ljava/util/List;

    .line 77
    # getter for: Lcom/obs/services/model/ObjectListing$Builder;->commonPrefixes:Ljava/util/List;
    invoke-static {p1}, Lcom/obs/services/model/ObjectListing$Builder;->access$100(Lcom/obs/services/model/ObjectListing$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/obs/services/model/ObjectListing;->commonPrefixes:Ljava/util/List;

    .line 78
    # getter for: Lcom/obs/services/model/ObjectListing$Builder;->bucketName:Ljava/lang/String;
    invoke-static {p1}, Lcom/obs/services/model/ObjectListing$Builder;->access$200(Lcom/obs/services/model/ObjectListing$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/obs/services/model/ObjectListing;->bucketName:Ljava/lang/String;

    .line 79
    # getter for: Lcom/obs/services/model/ObjectListing$Builder;->truncated:Z
    invoke-static {p1}, Lcom/obs/services/model/ObjectListing$Builder;->access$300(Lcom/obs/services/model/ObjectListing$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/obs/services/model/ObjectListing;->truncated:Z

    .line 80
    # getter for: Lcom/obs/services/model/ObjectListing$Builder;->prefix:Ljava/lang/String;
    invoke-static {p1}, Lcom/obs/services/model/ObjectListing$Builder;->access$400(Lcom/obs/services/model/ObjectListing$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/obs/services/model/ObjectListing;->prefix:Ljava/lang/String;

    .line 81
    # getter for: Lcom/obs/services/model/ObjectListing$Builder;->marker:Ljava/lang/String;
    invoke-static {p1}, Lcom/obs/services/model/ObjectListing$Builder;->access$500(Lcom/obs/services/model/ObjectListing$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/obs/services/model/ObjectListing;->marker:Ljava/lang/String;

    .line 82
    # getter for: Lcom/obs/services/model/ObjectListing$Builder;->maxKeys:I
    invoke-static {p1}, Lcom/obs/services/model/ObjectListing$Builder;->access$600(Lcom/obs/services/model/ObjectListing$Builder;)I

    move-result v0

    iput v0, p0, Lcom/obs/services/model/ObjectListing;->maxKeys:I

    .line 83
    # getter for: Lcom/obs/services/model/ObjectListing$Builder;->delimiter:Ljava/lang/String;
    invoke-static {p1}, Lcom/obs/services/model/ObjectListing$Builder;->access$700(Lcom/obs/services/model/ObjectListing$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/obs/services/model/ObjectListing;->delimiter:Ljava/lang/String;

    .line 84
    # getter for: Lcom/obs/services/model/ObjectListing$Builder;->nextMarker:Ljava/lang/String;
    invoke-static {p1}, Lcom/obs/services/model/ObjectListing$Builder;->access$800(Lcom/obs/services/model/ObjectListing$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/obs/services/model/ObjectListing;->nextMarker:Ljava/lang/String;

    .line 85
    # getter for: Lcom/obs/services/model/ObjectListing$Builder;->location:Ljava/lang/String;
    invoke-static {p1}, Lcom/obs/services/model/ObjectListing$Builder;->access$900(Lcom/obs/services/model/ObjectListing$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/obs/services/model/ObjectListing;->location:Ljava/lang/String;

    .line 86
    # getter for: Lcom/obs/services/model/ObjectListing$Builder;->extendCommonPrefixes:Ljava/util/List;
    invoke-static {p1}, Lcom/obs/services/model/ObjectListing$Builder;->access$1000(Lcom/obs/services/model/ObjectListing$Builder;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/obs/services/model/ObjectListing;->extendCommonPrefixes:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/obs/services/model/ObjectListing$Builder;Lcom/obs/services/model/ObjectListing$1;)V
    .registers 3

    .line 23
    invoke-direct {p0, p1}, Lcom/obs/services/model/ObjectListing;-><init>(Lcom/obs/services/model/ObjectListing$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/obs/services/model/ObsObject;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
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
    iput-object p1, p0, Lcom/obs/services/model/ObjectListing;->objectSummaries:Ljava/util/List;

    .line 53
    iput-object p2, p0, Lcom/obs/services/model/ObjectListing;->commonPrefixes:Ljava/util/List;

    .line 54
    iput-object p3, p0, Lcom/obs/services/model/ObjectListing;->bucketName:Ljava/lang/String;

    .line 55
    iput-boolean p4, p0, Lcom/obs/services/model/ObjectListing;->truncated:Z

    .line 56
    iput-object p5, p0, Lcom/obs/services/model/ObjectListing;->prefix:Ljava/lang/String;

    .line 57
    iput-object p6, p0, Lcom/obs/services/model/ObjectListing;->marker:Ljava/lang/String;

    .line 58
    iput p7, p0, Lcom/obs/services/model/ObjectListing;->maxKeys:I

    .line 59
    iput-object p8, p0, Lcom/obs/services/model/ObjectListing;->delimiter:Ljava/lang/String;

    .line 60
    iput-object p9, p0, Lcom/obs/services/model/ObjectListing;->nextMarker:Ljava/lang/String;

    .line 61
    iput-object p10, p0, Lcom/obs/services/model/ObjectListing;->location:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/obs/services/model/ObsObject;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/obs/services/model/ObsObject;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 69
    invoke-direct/range {p0 .. p10}, Lcom/obs/services/model/ObjectListing;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iput-object p11, p0, Lcom/obs/services/model/ObjectListing;->extendCommonPrefixes:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .registers 1

    .line 235
    iget-object p0, p0, Lcom/obs/services/model/ObjectListing;->bucketName:Ljava/lang/String;

    return-object p0
.end method

.method public getCommonPrefixes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lcom/obs/services/model/ObjectListing;->commonPrefixes:Ljava/util/List;

    if-nez v0, :cond_b

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/obs/services/model/ObjectListing;->commonPrefixes:Ljava/util/List;

    .line 206
    :cond_b
    iget-object p0, p0, Lcom/obs/services/model/ObjectListing;->commonPrefixes:Ljava/util/List;

    return-object p0
.end method

.method public getDelimiter()Ljava/lang/String;
    .registers 1

    .line 282
    iget-object p0, p0, Lcom/obs/services/model/ObjectListing;->delimiter:Ljava/lang/String;

    return-object p0
.end method

.method public getExtendCommonPrefixes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/obs/services/model/ObsObject;",
            ">;"
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lcom/obs/services/model/ObjectListing;->extendCommonPrefixes:Ljava/util/List;

    if-nez v0, :cond_b

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/obs/services/model/ObjectListing;->extendCommonPrefixes:Ljava/util/List;

    .line 219
    :cond_b
    iget-object p0, p0, Lcom/obs/services/model/ObjectListing;->extendCommonPrefixes:Ljava/util/List;

    return-object p0
.end method

.method public getExtenedCommonPrefixes()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/obs/services/model/ObsObject;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 224
    invoke-virtual {p0}, Lcom/obs/services/model/ObjectListing;->getExtendCommonPrefixes()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getLocation()Ljava/lang/String;
    .registers 1

    .line 291
    iget-object p0, p0, Lcom/obs/services/model/ObjectListing;->location:Ljava/lang/String;

    return-object p0
.end method

.method public getMarker()Ljava/lang/String;
    .registers 1

    .line 264
    iget-object p0, p0, Lcom/obs/services/model/ObjectListing;->marker:Ljava/lang/String;

    return-object p0
.end method

.method public getMaxKeys()I
    .registers 1

    .line 273
    iget p0, p0, Lcom/obs/services/model/ObjectListing;->maxKeys:I

    return p0
.end method

.method public getNextMarker()Ljava/lang/String;
    .registers 1

    .line 175
    iget-object p0, p0, Lcom/obs/services/model/ObjectListing;->nextMarker:Ljava/lang/String;

    return-object p0
.end method

.method public getObjectSummaries()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/obs/services/model/S3Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/obs/services/model/ObjectListing;->objectSummaries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 193
    iget-object p0, p0, Lcom/obs/services/model/ObjectListing;->objectSummaries:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getObjects()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/obs/services/model/ObsObject;",
            ">;"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/obs/services/model/ObjectListing;->objectSummaries:Ljava/util/List;

    if-nez v0, :cond_b

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/obs/services/model/ObjectListing;->objectSummaries:Ljava/util/List;

    .line 187
    :cond_b
    iget-object p0, p0, Lcom/obs/services/model/ObjectListing;->objectSummaries:Ljava/util/List;

    return-object p0
.end method

.method public getPrefix()Ljava/lang/String;
    .registers 1

    .line 255
    iget-object p0, p0, Lcom/obs/services/model/ObjectListing;->prefix:Ljava/lang/String;

    return-object p0
.end method

.method public isTruncated()Z
    .registers 1

    .line 246
    iget-boolean p0, p0, Lcom/obs/services/model/ObjectListing;->truncated:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ObjectListing [objectSummaries="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/ObjectListing;->objectSummaries:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", commonPrefixes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/ObjectListing;->commonPrefixes:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bucketName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/ObjectListing;->bucketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", truncated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/obs/services/model/ObjectListing;->truncated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", prefix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/ObjectListing;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", marker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/ObjectListing;->marker:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", maxKeys="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/obs/services/model/ObjectListing;->maxKeys:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", delimiter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/ObjectListing;->delimiter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", nextMarker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/ObjectListing;->nextMarker:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", location="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/obs/services/model/ObjectListing;->location:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
