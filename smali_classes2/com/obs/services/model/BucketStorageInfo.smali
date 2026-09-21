.class public Lcom/obs/services/model/BucketStorageInfo;
.super Lcom/obs/services/model/HeaderResponse;
.source "SourceFile"


# instance fields
.field private coldObjectNumber:J

.field private coldSize:J

.field private deepArchiveObjectNumber:J

.field private deepArchiveSize:J

.field private glacierObjectNumber:J

.field private glacierSize:J

.field private highPerformanceObjectNumber:J

.field private highPerformanceSize:J

.field private objectNum:J

.field private size:J

.field private standardObjectNumber:J

.field private standardSize:J

.field private standard_IAObjectNumber:J

.field private standard_IASize:J

.field private warmObjectNumber:J

.field private warmSize:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Lcom/obs/services/model/HeaderResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getColdObjectNumber()J
    .registers 3

    .line 132
    iget-wide v0, p0, Lcom/obs/services/model/BucketStorageInfo;->coldObjectNumber:J

    return-wide v0
.end method

.method public getColdSize()J
    .registers 3

    .line 124
    iget-wide v0, p0, Lcom/obs/services/model/BucketStorageInfo;->coldSize:J

    return-wide v0
.end method

.method public getDeepArchiveObjectNumber()J
    .registers 3

    .line 148
    iget-wide v0, p0, Lcom/obs/services/model/BucketStorageInfo;->deepArchiveObjectNumber:J

    return-wide v0
.end method

.method public getDeepArchiveSize()J
    .registers 3

    .line 140
    iget-wide v0, p0, Lcom/obs/services/model/BucketStorageInfo;->deepArchiveSize:J

    return-wide v0
.end method

.method public getGlacierObjectNumber()J
    .registers 3

    .line 196
    iget-wide v0, p0, Lcom/obs/services/model/BucketStorageInfo;->glacierObjectNumber:J

    return-wide v0
.end method

.method public getGlacierSize()J
    .registers 3

    .line 188
    iget-wide v0, p0, Lcom/obs/services/model/BucketStorageInfo;->glacierSize:J

    return-wide v0
.end method

.method public getHighPerformanceObjectNumber()J
    .registers 3

    .line 164
    iget-wide v0, p0, Lcom/obs/services/model/BucketStorageInfo;->highPerformanceObjectNumber:J

    return-wide v0
.end method

.method public getHighPerformanceSize()J
    .registers 3

    .line 156
    iget-wide v0, p0, Lcom/obs/services/model/BucketStorageInfo;->highPerformanceSize:J

    return-wide v0
.end method

.method public getObjectNumber()J
    .registers 3

    .line 78
    iget-wide v0, p0, Lcom/obs/services/model/BucketStorageInfo;->objectNum:J

    return-wide v0
.end method

.method public getSize()J
    .registers 3

    .line 59
    iget-wide v0, p0, Lcom/obs/services/model/BucketStorageInfo;->size:J

    return-wide v0
.end method

.method public getStandardObjectNumber()J
    .registers 3

    .line 100
    iget-wide v0, p0, Lcom/obs/services/model/BucketStorageInfo;->standardObjectNumber:J

    return-wide v0
.end method

.method public getStandardSize()J
    .registers 3

    .line 92
    iget-wide v0, p0, Lcom/obs/services/model/BucketStorageInfo;->standardSize:J

    return-wide v0
.end method

.method public getStandard_IAObjectNumber()J
    .registers 3

    .line 180
    iget-wide v0, p0, Lcom/obs/services/model/BucketStorageInfo;->standard_IAObjectNumber:J

    return-wide v0
.end method

.method public getStandard_IASize()J
    .registers 3

    .line 172
    iget-wide v0, p0, Lcom/obs/services/model/BucketStorageInfo;->standard_IASize:J

    return-wide v0
.end method

.method public getWarmObjectNumber()J
    .registers 3

    .line 116
    iget-wide v0, p0, Lcom/obs/services/model/BucketStorageInfo;->warmObjectNumber:J

    return-wide v0
.end method

.method public getWarmSize()J
    .registers 3

    .line 108
    iget-wide v0, p0, Lcom/obs/services/model/BucketStorageInfo;->warmSize:J

    return-wide v0
.end method

.method public setColdObjectNumber(J)V
    .registers 3

    .line 136
    iput-wide p1, p0, Lcom/obs/services/model/BucketStorageInfo;->coldObjectNumber:J

    return-void
.end method

.method public setColdSize(J)V
    .registers 3

    .line 128
    iput-wide p1, p0, Lcom/obs/services/model/BucketStorageInfo;->coldSize:J

    return-void
.end method

.method public setDeepArchiveObjectNumber(J)V
    .registers 3

    .line 152
    iput-wide p1, p0, Lcom/obs/services/model/BucketStorageInfo;->deepArchiveObjectNumber:J

    return-void
.end method

.method public setDeepArchiveSize(J)V
    .registers 3

    .line 144
    iput-wide p1, p0, Lcom/obs/services/model/BucketStorageInfo;->deepArchiveSize:J

    return-void
.end method

.method public setGlacierObjectNumber(J)V
    .registers 3

    .line 200
    iput-wide p1, p0, Lcom/obs/services/model/BucketStorageInfo;->glacierObjectNumber:J

    return-void
.end method

.method public setGlacierSize(J)V
    .registers 3

    .line 192
    iput-wide p1, p0, Lcom/obs/services/model/BucketStorageInfo;->glacierSize:J

    return-void
.end method

.method public setHighPerformanceObjectNumber(J)V
    .registers 3

    .line 168
    iput-wide p1, p0, Lcom/obs/services/model/BucketStorageInfo;->highPerformanceObjectNumber:J

    return-void
.end method

.method public setHighPerformanceSize(J)V
    .registers 3

    .line 160
    iput-wide p1, p0, Lcom/obs/services/model/BucketStorageInfo;->highPerformanceSize:J

    return-void
.end method

.method public setObjectNumber(J)V
    .registers 3

    .line 88
    iput-wide p1, p0, Lcom/obs/services/model/BucketStorageInfo;->objectNum:J

    return-void
.end method

.method public setSize(J)V
    .registers 3

    .line 69
    iput-wide p1, p0, Lcom/obs/services/model/BucketStorageInfo;->size:J

    return-void
.end method

.method public setStandardObjectNumber(J)V
    .registers 3

    .line 104
    iput-wide p1, p0, Lcom/obs/services/model/BucketStorageInfo;->standardObjectNumber:J

    return-void
.end method

.method public setStandardSize(J)V
    .registers 3

    .line 96
    iput-wide p1, p0, Lcom/obs/services/model/BucketStorageInfo;->standardSize:J

    return-void
.end method

.method public setStandard_IAObjectNumber(J)V
    .registers 3

    .line 184
    iput-wide p1, p0, Lcom/obs/services/model/BucketStorageInfo;->standard_IAObjectNumber:J

    return-void
.end method

.method public setStandard_IASize(J)V
    .registers 3

    .line 176
    iput-wide p1, p0, Lcom/obs/services/model/BucketStorageInfo;->standard_IASize:J

    return-void
.end method

.method public setWarmObjectNumber(J)V
    .registers 3

    .line 120
    iput-wide p1, p0, Lcom/obs/services/model/BucketStorageInfo;->warmObjectNumber:J

    return-void
.end method

.method public setWarmSize(J)V
    .registers 3

    .line 112
    iput-wide p1, p0, Lcom/obs/services/model/BucketStorageInfo;->warmSize:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BucketStorageInfo{size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/obs/services/model/BucketStorageInfo;->size:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", objectNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/obs/services/model/BucketStorageInfo;->objectNum:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", standardSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/obs/services/model/BucketStorageInfo;->standardSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", standardObjectNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/obs/services/model/BucketStorageInfo;->standardObjectNumber:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", warmSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/obs/services/model/BucketStorageInfo;->warmSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", warmObjectNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/obs/services/model/BucketStorageInfo;->warmObjectNumber:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", coldSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/obs/services/model/BucketStorageInfo;->coldSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", coldObjectNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/obs/services/model/BucketStorageInfo;->coldObjectNumber:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", deepArchiveSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/obs/services/model/BucketStorageInfo;->deepArchiveSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", deepArchiveObjectNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/obs/services/model/BucketStorageInfo;->deepArchiveObjectNumber:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", highPerformanceSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/obs/services/model/BucketStorageInfo;->highPerformanceSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", highPerformanceObjectNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/obs/services/model/BucketStorageInfo;->highPerformanceObjectNumber:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", standard_IASize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/obs/services/model/BucketStorageInfo;->standard_IASize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", standard_IAObjectNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/obs/services/model/BucketStorageInfo;->standard_IAObjectNumber:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", glacierSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/obs/services/model/BucketStorageInfo;->glacierSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", glacierObjectNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/obs/services/model/BucketStorageInfo;->glacierObjectNumber:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
