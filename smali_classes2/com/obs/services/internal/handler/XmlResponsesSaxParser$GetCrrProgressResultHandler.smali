.class public Lcom/obs/services/internal/handler/XmlResponsesSaxParser$GetCrrProgressResultHandler;
.super Lcom/obs/services/internal/handler/DefaultXmlHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/obs/services/internal/handler/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetCrrProgressResultHandler"
.end annotation


# instance fields
.field formatter:Ljava/text/SimpleDateFormat;

.field private getCrrProgressResult:Lcom/obs/services/model/crr/GetCrrProgressResult;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 2614
    invoke-direct {p0}, Lcom/obs/services/internal/handler/DefaultXmlHandler;-><init>()V

    .line 2615
    new-instance v0, Lcom/obs/services/model/crr/GetCrrProgressResult;

    invoke-direct {v0}, Lcom/obs/services/model/crr/GetCrrProgressResult;-><init>()V

    iput-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$GetCrrProgressResultHandler;->getCrrProgressResult:Lcom/obs/services/model/crr/GetCrrProgressResult;

    .line 2616
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$GetCrrProgressResultHandler;->formatter:Ljava/text/SimpleDateFormat;

    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 2629
    :try_start_0
    const-string v0, "Time"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2630
    iget-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$GetCrrProgressResultHandler;->getCrrProgressResult:Lcom/obs/services/model/crr/GetCrrProgressResult;

    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$GetCrrProgressResultHandler;->formatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {p0, p2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/obs/services/model/crr/GetCrrProgressResult;->setTime(Ljava/util/Date;)V

    return-void

    .line 2631
    :cond_14
    const-string v0, "ID"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 2632
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$GetCrrProgressResultHandler;->getCrrProgressResult:Lcom/obs/services/model/crr/GetCrrProgressResult;

    invoke-virtual {p0, p2}, Lcom/obs/services/model/crr/GetCrrProgressResult;->setRuleId(Ljava/lang/String;)V

    return-void

    .line 2633
    :cond_22
    const-string v0, "Prefix"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 2634
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$GetCrrProgressResultHandler;->getCrrProgressResult:Lcom/obs/services/model/crr/GetCrrProgressResult;

    invoke-virtual {p0, p2}, Lcom/obs/services/model/crr/GetCrrProgressResult;->setRulePrefix(Ljava/lang/String;)V

    return-void

    .line 2635
    :cond_30
    const-string v0, "Bucket"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 2636
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$GetCrrProgressResultHandler;->getCrrProgressResult:Lcom/obs/services/model/crr/GetCrrProgressResult;

    invoke-virtual {p0, p2}, Lcom/obs/services/model/crr/GetCrrProgressResult;->setRuleTargetBucket(Ljava/lang/String;)V

    return-void

    .line 2637
    :cond_3e
    const-string v0, "NewPendingCount"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 2638
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$GetCrrProgressResultHandler;->getCrrProgressResult:Lcom/obs/services/model/crr/GetCrrProgressResult;

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/obs/services/model/crr/GetCrrProgressResult;->setRuleNewPendingCount(Ljava/lang/Long;)V

    return-void

    .line 2639
    :cond_54
    const-string v0, "NewPendingSize"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 2640
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$GetCrrProgressResultHandler;->getCrrProgressResult:Lcom/obs/services/model/crr/GetCrrProgressResult;

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/obs/services/model/crr/GetCrrProgressResult;->setRuleNewPendingSize(Ljava/lang/Long;)V

    return-void

    .line 2641
    :cond_6a
    const-string v0, "HistoricalProgress"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 2642
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$GetCrrProgressResultHandler;->getCrrProgressResult:Lcom/obs/services/model/crr/GetCrrProgressResult;

    invoke-virtual {p0, p2}, Lcom/obs/services/model/crr/GetCrrProgressResult;->setRuleHistoricalProgress(Ljava/lang/String;)V

    return-void

    .line 2643
    :cond_78
    const-string v0, "HistoricalPendingCount"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 2644
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$GetCrrProgressResultHandler;->getCrrProgressResult:Lcom/obs/services/model/crr/GetCrrProgressResult;

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/obs/services/model/crr/GetCrrProgressResult;->setRuleHistoricalPendingCount(Ljava/lang/Long;)V

    return-void

    .line 2645
    :cond_8e
    const-string v0, "HistoricalPendingSize"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a3

    .line 2646
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$GetCrrProgressResultHandler;->getCrrProgressResult:Lcom/obs/services/model/crr/GetCrrProgressResult;

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/obs/services/model/crr/GetCrrProgressResult;->setRuleHistoricalPendingSize(Ljava/lang/Long;)V
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a3} :catch_a4

    :cond_a3
    return-void

    :catch_a4
    move-exception p0

    .line 2649
    # getter for: Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->log:Lcom/obs/log/ILogger;
    invoke-static {}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->access$000()Lcom/obs/log/ILogger;

    move-result-object p1

    const-string p2, "Response xml is not well-format, exception message :"

    invoke-interface {p1, p2, p0}, Lcom/obs/log/ILogger;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public getReplicationConfiguration()Lcom/obs/services/model/crr/GetCrrProgressResult;
    .registers 1

    .line 2619
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$GetCrrProgressResultHandler;->getCrrProgressResult:Lcom/obs/services/model/crr/GetCrrProgressResult;

    return-object p0
.end method

.method public startElement(Ljava/lang/String;)V
    .registers 2

    return-void
.end method
