.class public Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketReplicationConfigurationHandler;
.super Lcom/obs/services/internal/handler/DefaultXmlHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/obs/services/internal/handler/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BucketReplicationConfigurationHandler"
.end annotation


# instance fields
.field private currentRule:Lcom/obs/services/model/ReplicationConfiguration$Rule;

.field private replicationConfiguration:Lcom/obs/services/model/ReplicationConfiguration;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 2562
    invoke-direct {p0}, Lcom/obs/services/internal/handler/DefaultXmlHandler;-><init>()V

    .line 2563
    new-instance v0, Lcom/obs/services/model/ReplicationConfiguration;

    invoke-direct {v0}, Lcom/obs/services/model/ReplicationConfiguration;-><init>()V

    iput-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketReplicationConfigurationHandler;->replicationConfiguration:Lcom/obs/services/model/ReplicationConfiguration;

    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 2582
    iget-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketReplicationConfigurationHandler;->replicationConfiguration:Lcom/obs/services/model/ReplicationConfiguration;

    if-eqz v0, :cond_25

    .line 2583
    const-string v0, "Agency"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2584
    iget-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketReplicationConfigurationHandler;->replicationConfiguration:Lcom/obs/services/model/ReplicationConfiguration;

    invoke-virtual {v0, p2}, Lcom/obs/services/model/ReplicationConfiguration;->setAgency(Ljava/lang/String;)V

    goto :goto_25

    .line 2585
    :cond_12
    const-string v0, "Rule"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 2586
    iget-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketReplicationConfigurationHandler;->replicationConfiguration:Lcom/obs/services/model/ReplicationConfiguration;

    invoke-virtual {v0}, Lcom/obs/services/model/ReplicationConfiguration;->getRules()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketReplicationConfigurationHandler;->currentRule:Lcom/obs/services/model/ReplicationConfiguration$Rule;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2590
    :cond_25
    :goto_25
    iget-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketReplicationConfigurationHandler;->currentRule:Lcom/obs/services/model/ReplicationConfiguration$Rule;

    if-nez v0, :cond_3d

    .line 2591
    # getter for: Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->log:Lcom/obs/log/ILogger;
    invoke-static {}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->access$000()Lcom/obs/log/ILogger;

    move-result-object p0

    invoke-interface {p0}, Lcom/obs/log/ILogger;->isErrorEnabled()Z

    move-result p0

    if-eqz p0, :cond_a4

    .line 2592
    # getter for: Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->log:Lcom/obs/log/ILogger;
    invoke-static {}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->access$000()Lcom/obs/log/ILogger;

    move-result-object p0

    const-string p1, "Response xml is not well-formt"

    invoke-interface {p0, p1}, Lcom/obs/log/ILogger;->error(Ljava/lang/CharSequence;)V

    return-void

    .line 2597
    :cond_3d
    const-string v0, "ID"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 2598
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketReplicationConfigurationHandler;->currentRule:Lcom/obs/services/model/ReplicationConfiguration$Rule;

    invoke-virtual {p0, p2}, Lcom/obs/services/model/ReplicationConfiguration$Rule;->setId(Ljava/lang/String;)V

    return-void

    .line 2599
    :cond_4b
    const-string v0, "Status"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 2600
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketReplicationConfigurationHandler;->currentRule:Lcom/obs/services/model/ReplicationConfiguration$Rule;

    invoke-static {p2}, Lcom/obs/services/model/RuleStatusEnum;->getValueFromCode(Ljava/lang/String;)Lcom/obs/services/model/RuleStatusEnum;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/obs/services/model/ReplicationConfiguration$Rule;->setStatus(Lcom/obs/services/model/RuleStatusEnum;)V

    return-void

    .line 2601
    :cond_5d
    const-string v0, "Prefix"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 2602
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketReplicationConfigurationHandler;->currentRule:Lcom/obs/services/model/ReplicationConfiguration$Rule;

    invoke-virtual {p0, p2}, Lcom/obs/services/model/ReplicationConfiguration$Rule;->setPrefix(Ljava/lang/String;)V

    return-void

    .line 2603
    :cond_6b
    const-string v0, "Bucket"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 2604
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketReplicationConfigurationHandler;->currentRule:Lcom/obs/services/model/ReplicationConfiguration$Rule;

    invoke-virtual {p0}, Lcom/obs/services/model/ReplicationConfiguration$Rule;->getDestination()Lcom/obs/services/model/ReplicationConfiguration$Destination;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/obs/services/model/ReplicationConfiguration$Destination;->setBucket(Ljava/lang/String;)V

    return-void

    .line 2605
    :cond_7d
    const-string v0, "StorageClass"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_93

    .line 2606
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketReplicationConfigurationHandler;->currentRule:Lcom/obs/services/model/ReplicationConfiguration$Rule;

    invoke-virtual {p0}, Lcom/obs/services/model/ReplicationConfiguration$Rule;->getDestination()Lcom/obs/services/model/ReplicationConfiguration$Destination;

    move-result-object p0

    invoke-static {p2}, Lcom/obs/services/model/StorageClassEnum;->getValueFromCode(Ljava/lang/String;)Lcom/obs/services/model/StorageClassEnum;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/obs/services/model/ReplicationConfiguration$Destination;->setObjectStorageClass(Lcom/obs/services/model/StorageClassEnum;)V

    return-void

    .line 2607
    :cond_93
    const-string v0, "HistoricalObjectReplication"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a4

    .line 2608
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketReplicationConfigurationHandler;->currentRule:Lcom/obs/services/model/ReplicationConfiguration$Rule;

    .line 2609
    invoke-static {p2}, Lcom/obs/services/model/HistoricalObjectReplicationEnum;->getValueFromCode(Ljava/lang/String;)Lcom/obs/services/model/HistoricalObjectReplicationEnum;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/obs/services/model/ReplicationConfiguration$Rule;->setHistoricalObjectReplication(Lcom/obs/services/model/HistoricalObjectReplicationEnum;)V

    :cond_a4
    return-void
.end method

.method public getReplicationConfiguration()Lcom/obs/services/model/ReplicationConfiguration;
    .registers 1

    .line 2568
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketReplicationConfigurationHandler;->replicationConfiguration:Lcom/obs/services/model/ReplicationConfiguration;

    return-object p0
.end method

.method public startElement(Ljava/lang/String;)V
    .registers 3

    .line 2573
    const-string v0, "Rule"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2574
    new-instance p1, Lcom/obs/services/model/ReplicationConfiguration$Rule;

    invoke-direct {p1}, Lcom/obs/services/model/ReplicationConfiguration$Rule;-><init>()V

    iput-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketReplicationConfigurationHandler;->currentRule:Lcom/obs/services/model/ReplicationConfiguration$Rule;

    return-void

    .line 2575
    :cond_10
    const-string v0, "Destination"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_22

    .line 2576
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketReplicationConfigurationHandler;->currentRule:Lcom/obs/services/model/ReplicationConfiguration$Rule;

    new-instance p1, Lcom/obs/services/model/ReplicationConfiguration$Destination;

    invoke-direct {p1}, Lcom/obs/services/model/ReplicationConfiguration$Destination;-><init>()V

    invoke-virtual {p0, p1}, Lcom/obs/services/model/ReplicationConfiguration$Rule;->setDestination(Lcom/obs/services/model/ReplicationConfiguration$Destination;)V

    :cond_22
    return-void
.end method
