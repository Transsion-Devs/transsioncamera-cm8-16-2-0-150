.class public Lcom/obs/services/model/ListBucketsRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bucketType:Lcom/obs/services/model/BucketTypeEnum;

.field private marker:Ljava/lang/String;

.field private maxKeys:I

.field private queryLocation:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lcom/obs/services/model/ListBucketsRequest;->queryLocation:Z

    return-void
.end method


# virtual methods
.method public getBucketType()Lcom/obs/services/model/BucketTypeEnum;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/obs/services/model/ListBucketsRequest;->bucketType:Lcom/obs/services/model/BucketTypeEnum;

    return-object p0
.end method

.method public getMarker()Ljava/lang/String;
    .registers 1

    .line 66
    iget-object p0, p0, Lcom/obs/services/model/ListBucketsRequest;->marker:Ljava/lang/String;

    return-object p0
.end method

.method public getMaxKeys()I
    .registers 1

    .line 58
    iget p0, p0, Lcom/obs/services/model/ListBucketsRequest;->maxKeys:I

    return p0
.end method

.method public isQueryLocation()Z
    .registers 1

    .line 31
    iget-boolean p0, p0, Lcom/obs/services/model/ListBucketsRequest;->queryLocation:Z

    return p0
.end method

.method public setBucketType(Lcom/obs/services/model/BucketTypeEnum;)V
    .registers 2

    .line 54
    iput-object p1, p0, Lcom/obs/services/model/ListBucketsRequest;->bucketType:Lcom/obs/services/model/BucketTypeEnum;

    return-void
.end method

.method public setMarker(Ljava/lang/String;)V
    .registers 2

    .line 70
    iput-object p1, p0, Lcom/obs/services/model/ListBucketsRequest;->marker:Ljava/lang/String;

    return-void
.end method

.method public setMaxKeys(I)V
    .registers 2

    .line 62
    iput p1, p0, Lcom/obs/services/model/ListBucketsRequest;->maxKeys:I

    return-void
.end method

.method public setQueryLocation(Z)V
    .registers 2

    .line 41
    iput-boolean p1, p0, Lcom/obs/services/model/ListBucketsRequest;->queryLocation:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ListBucketsRequest [queryLocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/obs/services/model/ListBucketsRequest;->queryLocation:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
