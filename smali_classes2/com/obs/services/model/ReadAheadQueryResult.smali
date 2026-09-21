.class public Lcom/obs/services/model/ReadAheadQueryResult;
.super Lcom/obs/services/model/HeaderResponse;
.source "SourceFile"


# instance fields
.field private bucketName:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "bucket"
    .end annotation
.end field

.field private consumedTime:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "consumedTime"
    .end annotation
.end field

.field private finishedObjectNum:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "finishedObjectNum"
    .end annotation
.end field

.field private finishedSize:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "finishedSize"
    .end annotation
.end field

.field private prefix:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "prefix"
    .end annotation
.end field

.field private status:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "status"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Lcom/obs/services/model/HeaderResponse;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJJLjava/lang/String;)V
    .registers 10

    .line 66
    invoke-direct {p0}, Lcom/obs/services/model/HeaderResponse;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/obs/services/model/ReadAheadQueryResult;->bucketName:Ljava/lang/String;

    .line 68
    iput-object p2, p0, Lcom/obs/services/model/ReadAheadQueryResult;->prefix:Ljava/lang/String;

    .line 69
    iput-wide p3, p0, Lcom/obs/services/model/ReadAheadQueryResult;->consumedTime:J

    .line 70
    iput-wide p5, p0, Lcom/obs/services/model/ReadAheadQueryResult;->finishedObjectNum:J

    .line 71
    iput-wide p7, p0, Lcom/obs/services/model/ReadAheadQueryResult;->finishedSize:J

    .line 72
    iput-object p9, p0, Lcom/obs/services/model/ReadAheadQueryResult;->status:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/obs/services/model/ReadAheadQueryResult;->bucketName:Ljava/lang/String;

    return-object p0
.end method

.method public getConsumedTime()J
    .registers 3

    .line 119
    iget-wide v0, p0, Lcom/obs/services/model/ReadAheadQueryResult;->consumedTime:J

    return-wide v0
.end method

.method public getFinishedObjectNum()J
    .registers 3

    .line 138
    iget-wide v0, p0, Lcom/obs/services/model/ReadAheadQueryResult;->finishedObjectNum:J

    return-wide v0
.end method

.method public getFinishedSize()J
    .registers 3

    .line 157
    iget-wide v0, p0, Lcom/obs/services/model/ReadAheadQueryResult;->finishedSize:J

    return-wide v0
.end method

.method public getPrefix()Ljava/lang/String;
    .registers 1

    .line 100
    iget-object p0, p0, Lcom/obs/services/model/ReadAheadQueryResult;->prefix:Ljava/lang/String;

    return-object p0
.end method

.method public getStatus()Ljava/lang/String;
    .registers 1

    .line 176
    iget-object p0, p0, Lcom/obs/services/model/ReadAheadQueryResult;->status:Ljava/lang/String;

    return-object p0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .registers 2

    .line 91
    iput-object p1, p0, Lcom/obs/services/model/ReadAheadQueryResult;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public setConsumedTime(J)V
    .registers 3

    .line 129
    iput-wide p1, p0, Lcom/obs/services/model/ReadAheadQueryResult;->consumedTime:J

    return-void
.end method

.method public setFinishedObjectNum(J)V
    .registers 3

    .line 148
    iput-wide p1, p0, Lcom/obs/services/model/ReadAheadQueryResult;->finishedObjectNum:J

    return-void
.end method

.method public setFinishedSize(J)V
    .registers 3

    .line 167
    iput-wide p1, p0, Lcom/obs/services/model/ReadAheadQueryResult;->finishedSize:J

    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .registers 2

    .line 110
    iput-object p1, p0, Lcom/obs/services/model/ReadAheadQueryResult;->prefix:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .registers 2

    .line 186
    iput-object p1, p0, Lcom/obs/services/model/ReadAheadQueryResult;->status:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReadAheadQueryResult [bucketName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/ReadAheadQueryResult;->bucketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", prefix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/ReadAheadQueryResult;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", consumedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/obs/services/model/ReadAheadQueryResult;->consumedTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", finishedObjectNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/obs/services/model/ReadAheadQueryResult;->finishedObjectNum:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", finishedSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/obs/services/model/ReadAheadQueryResult;->finishedSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/obs/services/model/ReadAheadQueryResult;->status:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
