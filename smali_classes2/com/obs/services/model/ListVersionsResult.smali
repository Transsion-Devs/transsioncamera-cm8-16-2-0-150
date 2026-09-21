.class public Lcom/obs/services/model/ListVersionsResult;
.super Lcom/obs/services/model/HeaderResponse;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/obs/services/model/ListVersionsResult$Builder;
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

.field private isTruncated:Z

.field private keyMarker:Ljava/lang/String;

.field private location:Ljava/lang/String;

.field private maxKeys:Ljava/lang/String;

.field private nextKeyMarker:Ljava/lang/String;

.field private nextVersionIdMarker:Ljava/lang/String;

.field private prefix:Ljava/lang/String;

.field private versionIdMarker:Ljava/lang/String;

.field private versions:[Lcom/obs/services/model/VersionOrDeleteMarker;


# direct methods
.method private constructor <init>(Lcom/obs/services/model/ListVersionsResult$Builder;)V
    .registers 3

    .line 74
    invoke-direct {p0}, Lcom/obs/services/model/HeaderResponse;-><init>()V

    .line 75
    # getter for: Lcom/obs/services/model/ListVersionsResult$Builder;->bucketName:Ljava/lang/String;
    invoke-static {p1}, Lcom/obs/services/model/ListVersionsResult$Builder;->access$000(Lcom/obs/services/model/ListVersionsResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/obs/services/model/ListVersionsResult;->bucketName:Ljava/lang/String;

    .line 76
    # getter for: Lcom/obs/services/model/ListVersionsResult$Builder;->prefix:Ljava/lang/String;
    invoke-static {p1}, Lcom/obs/services/model/ListVersionsResult$Builder;->access$100(Lcom/obs/services/model/ListVersionsResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/obs/services/model/ListVersionsResult;->prefix:Ljava/lang/String;

    .line 77
    # getter for: Lcom/obs/services/model/ListVersionsResult$Builder;->keyMarker:Ljava/lang/String;
    invoke-static {p1}, Lcom/obs/services/model/ListVersionsResult$Builder;->access$200(Lcom/obs/services/model/ListVersionsResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/obs/services/model/ListVersionsResult;->keyMarker:Ljava/lang/String;

    .line 78
    # getter for: Lcom/obs/services/model/ListVersionsResult$Builder;->nextKeyMarker:Ljava/lang/String;
    invoke-static {p1}, Lcom/obs/services/model/ListVersionsResult$Builder;->access$300(Lcom/obs/services/model/ListVersionsResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/obs/services/model/ListVersionsResult;->nextKeyMarker:Ljava/lang/String;

    .line 79
    # getter for: Lcom/obs/services/model/ListVersionsResult$Builder;->versionIdMarker:Ljava/lang/String;
    invoke-static {p1}, Lcom/obs/services/model/ListVersionsResult$Builder;->access$400(Lcom/obs/services/model/ListVersionsResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/obs/services/model/ListVersionsResult;->versionIdMarker:Ljava/lang/String;

    .line 80
    # getter for: Lcom/obs/services/model/ListVersionsResult$Builder;->nextVersionIdMarker:Ljava/lang/String;
    invoke-static {p1}, Lcom/obs/services/model/ListVersionsResult$Builder;->access$500(Lcom/obs/services/model/ListVersionsResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/obs/services/model/ListVersionsResult;->nextVersionIdMarker:Ljava/lang/String;

    .line 81
    # getter for: Lcom/obs/services/model/ListVersionsResult$Builder;->maxKeys:Ljava/lang/String;
    invoke-static {p1}, Lcom/obs/services/model/ListVersionsResult$Builder;->access$600(Lcom/obs/services/model/ListVersionsResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/obs/services/model/ListVersionsResult;->maxKeys:Ljava/lang/String;

    .line 82
    # getter for: Lcom/obs/services/model/ListVersionsResult$Builder;->isTruncated:Z
    invoke-static {p1}, Lcom/obs/services/model/ListVersionsResult$Builder;->access$700(Lcom/obs/services/model/ListVersionsResult$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/obs/services/model/ListVersionsResult;->isTruncated:Z

    .line 83
    # getter for: Lcom/obs/services/model/ListVersionsResult$Builder;->versions:[Lcom/obs/services/model/VersionOrDeleteMarker;
    invoke-static {p1}, Lcom/obs/services/model/ListVersionsResult$Builder;->access$800(Lcom/obs/services/model/ListVersionsResult$Builder;)[Lcom/obs/services/model/VersionOrDeleteMarker;

    move-result-object v0

    if-eqz v0, :cond_46

    .line 84
    # getter for: Lcom/obs/services/model/ListVersionsResult$Builder;->versions:[Lcom/obs/services/model/VersionOrDeleteMarker;
    invoke-static {p1}, Lcom/obs/services/model/ListVersionsResult$Builder;->access$800(Lcom/obs/services/model/ListVersionsResult$Builder;)[Lcom/obs/services/model/VersionOrDeleteMarker;

    move-result-object v0

    invoke-virtual {v0}, [Lcom/obs/services/model/VersionOrDeleteMarker;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/obs/services/model/VersionOrDeleteMarker;

    iput-object v0, p0, Lcom/obs/services/model/ListVersionsResult;->versions:[Lcom/obs/services/model/VersionOrDeleteMarker;

    goto :goto_49

    :cond_46
    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lcom/obs/services/model/ListVersionsResult;->versions:[Lcom/obs/services/model/VersionOrDeleteMarker;

    .line 88
    :goto_49
    # getter for: Lcom/obs/services/model/ListVersionsResult$Builder;->commonPrefixes:Ljava/util/List;
    invoke-static {p1}, Lcom/obs/services/model/ListVersionsResult$Builder;->access$900(Lcom/obs/services/model/ListVersionsResult$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/obs/services/model/ListVersionsResult;->commonPrefixes:Ljava/util/List;

    .line 89
    # getter for: Lcom/obs/services/model/ListVersionsResult$Builder;->location:Ljava/lang/String;
    invoke-static {p1}, Lcom/obs/services/model/ListVersionsResult$Builder;->access$1000(Lcom/obs/services/model/ListVersionsResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/obs/services/model/ListVersionsResult;->location:Ljava/lang/String;

    .line 90
    # getter for: Lcom/obs/services/model/ListVersionsResult$Builder;->delimiter:Ljava/lang/String;
    invoke-static {p1}, Lcom/obs/services/model/ListVersionsResult$Builder;->access$1100(Lcom/obs/services/model/ListVersionsResult$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/obs/services/model/ListVersionsResult;->delimiter:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/obs/services/model/ListVersionsResult$Builder;Lcom/obs/services/model/ListVersionsResult$1;)V
    .registers 3

    .line 24
    invoke-direct {p0, p1}, Lcom/obs/services/model/ListVersionsResult;-><init>(Lcom/obs/services/model/ListVersionsResult$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[Lcom/obs/services/model/VersionOrDeleteMarker;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z[",
            "Lcom/obs/services/model/VersionOrDeleteMarker;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 54
    invoke-direct {p0}, Lcom/obs/services/model/HeaderResponse;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/obs/services/model/ListVersionsResult;->bucketName:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lcom/obs/services/model/ListVersionsResult;->prefix:Ljava/lang/String;

    .line 57
    iput-object p3, p0, Lcom/obs/services/model/ListVersionsResult;->keyMarker:Ljava/lang/String;

    .line 58
    iput-object p4, p0, Lcom/obs/services/model/ListVersionsResult;->nextKeyMarker:Ljava/lang/String;

    .line 59
    iput-object p5, p0, Lcom/obs/services/model/ListVersionsResult;->versionIdMarker:Ljava/lang/String;

    .line 60
    iput-object p6, p0, Lcom/obs/services/model/ListVersionsResult;->nextVersionIdMarker:Ljava/lang/String;

    .line 61
    iput-object p7, p0, Lcom/obs/services/model/ListVersionsResult;->maxKeys:Ljava/lang/String;

    .line 62
    iput-boolean p8, p0, Lcom/obs/services/model/ListVersionsResult;->isTruncated:Z

    if-eqz p9, :cond_1e

    .line 64
    invoke-virtual {p9}, [Lcom/obs/services/model/VersionOrDeleteMarker;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/obs/services/model/VersionOrDeleteMarker;

    iput-object p1, p0, Lcom/obs/services/model/ListVersionsResult;->versions:[Lcom/obs/services/model/VersionOrDeleteMarker;

    goto :goto_21

    :cond_1e
    const/4 p1, 0x0

    .line 66
    iput-object p1, p0, Lcom/obs/services/model/ListVersionsResult;->versions:[Lcom/obs/services/model/VersionOrDeleteMarker;

    .line 68
    :goto_21
    iput-object p10, p0, Lcom/obs/services/model/ListVersionsResult;->commonPrefixes:Ljava/util/List;

    .line 69
    iput-object p11, p0, Lcom/obs/services/model/ListVersionsResult;->location:Ljava/lang/String;

    .line 70
    iput-object p12, p0, Lcom/obs/services/model/ListVersionsResult;->delimiter:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .registers 1

    .line 182
    iget-object p0, p0, Lcom/obs/services/model/ListVersionsResult;->bucketName:Ljava/lang/String;

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

    .line 271
    iget-object v0, p0, Lcom/obs/services/model/ListVersionsResult;->commonPrefixes:Ljava/util/List;

    if-nez v0, :cond_b

    .line 272
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/obs/services/model/ListVersionsResult;->commonPrefixes:Ljava/util/List;

    .line 274
    :cond_b
    iget-object p0, p0, Lcom/obs/services/model/ListVersionsResult;->commonPrefixes:Ljava/util/List;

    return-object p0
.end method

.method public getDelimiter()Ljava/lang/String;
    .registers 1

    .line 292
    iget-object p0, p0, Lcom/obs/services/model/ListVersionsResult;->delimiter:Ljava/lang/String;

    return-object p0
.end method

.method public getKeyMarker()Ljava/lang/String;
    .registers 1

    .line 201
    iget-object p0, p0, Lcom/obs/services/model/ListVersionsResult;->keyMarker:Ljava/lang/String;

    return-object p0
.end method

.method public getLocation()Ljava/lang/String;
    .registers 1

    .line 283
    iget-object p0, p0, Lcom/obs/services/model/ListVersionsResult;->location:Ljava/lang/String;

    return-object p0
.end method

.method public getMaxKeys()Ljava/lang/String;
    .registers 1

    .line 220
    iget-object p0, p0, Lcom/obs/services/model/ListVersionsResult;->maxKeys:Ljava/lang/String;

    return-object p0
.end method

.method public getNextKeyMarker()Ljava/lang/String;
    .registers 1

    .line 253
    iget-object p0, p0, Lcom/obs/services/model/ListVersionsResult;->nextKeyMarker:Ljava/lang/String;

    return-object p0
.end method

.method public getNextVersionIdMarker()Ljava/lang/String;
    .registers 1

    .line 262
    iget-object p0, p0, Lcom/obs/services/model/ListVersionsResult;->nextVersionIdMarker:Ljava/lang/String;

    return-object p0
.end method

.method public getPrefix()Ljava/lang/String;
    .registers 1

    .line 191
    iget-object p0, p0, Lcom/obs/services/model/ListVersionsResult;->prefix:Ljava/lang/String;

    return-object p0
.end method

.method public getVersionIdMarker()Ljava/lang/String;
    .registers 1

    .line 211
    iget-object p0, p0, Lcom/obs/services/model/ListVersionsResult;->versionIdMarker:Ljava/lang/String;

    return-object p0
.end method

.method public getVersions()[Lcom/obs/services/model/VersionOrDeleteMarker;
    .registers 1

    .line 241
    iget-object p0, p0, Lcom/obs/services/model/ListVersionsResult;->versions:[Lcom/obs/services/model/VersionOrDeleteMarker;

    if-eqz p0, :cond_b

    .line 242
    invoke-virtual {p0}, [Lcom/obs/services/model/VersionOrDeleteMarker;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/obs/services/model/VersionOrDeleteMarker;

    return-object p0

    :cond_b
    const/4 p0, 0x0

    .line 244
    new-array p0, p0, [Lcom/obs/services/model/VersionOrDeleteMarker;

    return-object p0
.end method

.method public isTruncated()Z
    .registers 1

    .line 231
    iget-boolean p0, p0, Lcom/obs/services/model/ListVersionsResult;->isTruncated:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ListVersionsResult [bucketName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/ListVersionsResult;->bucketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", prefix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/ListVersionsResult;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", keyMarker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/ListVersionsResult;->keyMarker:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", nextKeyMarker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/ListVersionsResult;->nextKeyMarker:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", versionIdMarker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/ListVersionsResult;->versionIdMarker:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", nextVersionIdMarker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/ListVersionsResult;->nextVersionIdMarker:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", maxKeys="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/ListVersionsResult;->maxKeys:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isTruncated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/obs/services/model/ListVersionsResult;->isTruncated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", versions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/ListVersionsResult;->versions:[Lcom/obs/services/model/VersionOrDeleteMarker;

    .line 300
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", commonPrefixes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/ListVersionsResult;->commonPrefixes:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", location="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/ListVersionsResult;->location:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", delimiter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/obs/services/model/ListVersionsResult;->delimiter:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
