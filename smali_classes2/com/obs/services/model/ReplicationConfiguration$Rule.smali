.class public Lcom/obs/services/model/ReplicationConfiguration$Rule;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/obs/services/model/ReplicationConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Rule"
.end annotation


# instance fields
.field private destination:Lcom/obs/services/model/ReplicationConfiguration$Destination;

.field private historicalObjectReplication:Lcom/obs/services/model/HistoricalObjectReplicationEnum;

.field private id:Ljava/lang/String;

.field private prefix:Ljava/lang/String;

.field private status:Lcom/obs/services/model/RuleStatusEnum;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDestination()Lcom/obs/services/model/ReplicationConfiguration$Destination;
    .registers 1

    .line 121
    iget-object p0, p0, Lcom/obs/services/model/ReplicationConfiguration$Rule;->destination:Lcom/obs/services/model/ReplicationConfiguration$Destination;

    return-object p0
.end method

.method public getHistoricalObjectReplication()Lcom/obs/services/model/HistoricalObjectReplicationEnum;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/obs/services/model/ReplicationConfiguration$Rule;->historicalObjectReplication:Lcom/obs/services/model/HistoricalObjectReplicationEnum;

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/obs/services/model/ReplicationConfiguration$Rule;->id:Ljava/lang/String;

    return-object p0
.end method

.method public getPrefix()Ljava/lang/String;
    .registers 1

    .line 101
    iget-object p0, p0, Lcom/obs/services/model/ReplicationConfiguration$Rule;->prefix:Ljava/lang/String;

    return-object p0
.end method

.method public getStatus()Lcom/obs/services/model/RuleStatusEnum;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/obs/services/model/ReplicationConfiguration$Rule;->status:Lcom/obs/services/model/RuleStatusEnum;

    return-object p0
.end method

.method public setDestination(Lcom/obs/services/model/ReplicationConfiguration$Destination;)V
    .registers 2

    .line 131
    iput-object p1, p0, Lcom/obs/services/model/ReplicationConfiguration$Rule;->destination:Lcom/obs/services/model/ReplicationConfiguration$Destination;

    return-void
.end method

.method public setHistoricalObjectReplication(Lcom/obs/services/model/HistoricalObjectReplicationEnum;)V
    .registers 2

    .line 91
    iput-object p1, p0, Lcom/obs/services/model/ReplicationConfiguration$Rule;->historicalObjectReplication:Lcom/obs/services/model/HistoricalObjectReplicationEnum;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2

    .line 53
    iput-object p1, p0, Lcom/obs/services/model/ReplicationConfiguration$Rule;->id:Ljava/lang/String;

    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .registers 2

    .line 112
    iput-object p1, p0, Lcom/obs/services/model/ReplicationConfiguration$Rule;->prefix:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Lcom/obs/services/model/RuleStatusEnum;)V
    .registers 2

    .line 72
    iput-object p1, p0, Lcom/obs/services/model/ReplicationConfiguration$Rule;->status:Lcom/obs/services/model/RuleStatusEnum;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Rule [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/ReplicationConfiguration$Rule;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/ReplicationConfiguration$Rule;->status:Lcom/obs/services/model/RuleStatusEnum;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", prefix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/ReplicationConfiguration$Rule;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", destination="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/obs/services/model/ReplicationConfiguration$Rule;->destination:Lcom/obs/services/model/ReplicationConfiguration$Destination;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
