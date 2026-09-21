.class public Lcom/obs/services/model/BucketQuota;
.super Lcom/obs/services/model/HeaderResponse;
.source "SourceFile"


# instance fields
.field private bucketQuota:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Lcom/obs/services/model/HeaderResponse;-><init>()V

    return-void
.end method

.method public constructor <init>(J)V
    .registers 3

    .line 34
    invoke-direct {p0}, Lcom/obs/services/model/HeaderResponse;-><init>()V

    .line 35
    iput-wide p1, p0, Lcom/obs/services/model/BucketQuota;->bucketQuota:J

    return-void
.end method


# virtual methods
.method public getBucketQuota()J
    .registers 3

    .line 44
    iget-wide v0, p0, Lcom/obs/services/model/BucketQuota;->bucketQuota:J

    return-wide v0
.end method

.method public setBucketQuota(J)V
    .registers 3

    .line 54
    iput-wide p1, p0, Lcom/obs/services/model/BucketQuota;->bucketQuota:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BucketQuota [bucketQuota="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/obs/services/model/BucketQuota;->bucketQuota:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
