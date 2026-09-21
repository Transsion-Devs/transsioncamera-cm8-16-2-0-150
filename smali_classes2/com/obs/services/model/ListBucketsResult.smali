.class public Lcom/obs/services/model/ListBucketsResult;
.super Lcom/obs/services/model/HeaderResponse;
.source "SourceFile"


# instance fields
.field private buckets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/obs/services/model/ObsBucket;",
            ">;"
        }
    .end annotation
.end field

.field private marker:Ljava/lang/String;

.field private maxKeys:I

.field private nextMarker:Ljava/lang/String;

.field private owner:Lcom/obs/services/model/Owner;

.field private truncated:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/obs/services/model/Owner;ZLjava/lang/String;ILjava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/obs/services/model/ObsBucket;",
            ">;",
            "Lcom/obs/services/model/Owner;",
            "Z",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Lcom/obs/services/model/HeaderResponse;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/obs/services/model/ListBucketsResult;->buckets:Ljava/util/List;

    .line 40
    iput-object p2, p0, Lcom/obs/services/model/ListBucketsResult;->owner:Lcom/obs/services/model/Owner;

    .line 41
    iput-boolean p3, p0, Lcom/obs/services/model/ListBucketsResult;->truncated:Z

    .line 42
    iput-object p4, p0, Lcom/obs/services/model/ListBucketsResult;->marker:Ljava/lang/String;

    .line 43
    iput p5, p0, Lcom/obs/services/model/ListBucketsResult;->maxKeys:I

    .line 44
    iput-object p6, p0, Lcom/obs/services/model/ListBucketsResult;->nextMarker:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBuckets()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/obs/services/model/ObsBucket;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/obs/services/model/ListBucketsResult;->buckets:Ljava/util/List;

    if-nez v0, :cond_b

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/obs/services/model/ListBucketsResult;->buckets:Ljava/util/List;

    .line 51
    :cond_b
    iget-object p0, p0, Lcom/obs/services/model/ListBucketsResult;->buckets:Ljava/util/List;

    return-object p0
.end method

.method public getMarker()Ljava/lang/String;
    .registers 1

    .line 63
    iget-object p0, p0, Lcom/obs/services/model/ListBucketsResult;->marker:Ljava/lang/String;

    return-object p0
.end method

.method public getMaxKeys()I
    .registers 1

    .line 67
    iget p0, p0, Lcom/obs/services/model/ListBucketsResult;->maxKeys:I

    return p0
.end method

.method public getNextMarker()Ljava/lang/String;
    .registers 1

    .line 71
    iget-object p0, p0, Lcom/obs/services/model/ListBucketsResult;->nextMarker:Ljava/lang/String;

    return-object p0
.end method

.method public getOwner()Lcom/obs/services/model/Owner;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/obs/services/model/ListBucketsResult;->owner:Lcom/obs/services/model/Owner;

    return-object p0
.end method

.method public isTruncated()Z
    .registers 1

    .line 59
    iget-boolean p0, p0, Lcom/obs/services/model/ListBucketsResult;->truncated:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ListBucketsResult [buckets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/ListBucketsResult;->buckets:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", owner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/obs/services/model/ListBucketsResult;->owner:Lcom/obs/services/model/Owner;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
