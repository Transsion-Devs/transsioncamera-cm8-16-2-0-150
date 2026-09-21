.class public Lcom/obs/services/model/crr/GetCrrProgressResult;
.super Lcom/obs/services/model/HeaderResponse;
.source "SourceFile"


# instance fields
.field protected ruleHistoricalPendingCount:Ljava/lang/Long;

.field protected ruleHistoricalPendingSize:Ljava/lang/Long;

.field protected ruleHistoricalProgress:Ljava/lang/String;

.field protected ruleId:Ljava/lang/String;

.field protected ruleNewPendingCount:Ljava/lang/Long;

.field protected ruleNewPendingSize:Ljava/lang/Long;

.field protected rulePrefix:Ljava/lang/String;

.field protected ruleTargetBucket:Ljava/lang/String;

.field protected time:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 21
    invoke-direct {p0}, Lcom/obs/services/model/HeaderResponse;-><init>()V

    .line 22
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/obs/services/model/crr/GetCrrProgressResult;->time:Ljava/util/Date;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/obs/services/model/crr/GetCrrProgressResult;->ruleId:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/obs/services/model/crr/GetCrrProgressResult;->rulePrefix:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/obs/services/model/crr/GetCrrProgressResult;->ruleTargetBucket:Ljava/lang/String;

    const-wide/16 v1, -0x1

    .line 26
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/obs/services/model/crr/GetCrrProgressResult;->ruleNewPendingCount:Ljava/lang/Long;

    .line 27
    iput-object v1, p0, Lcom/obs/services/model/crr/GetCrrProgressResult;->ruleNewPendingSize:Ljava/lang/Long;

    .line 28
    iput-object v0, p0, Lcom/obs/services/model/crr/GetCrrProgressResult;->ruleHistoricalProgress:Ljava/lang/String;

    .line 29
    iput-object v1, p0, Lcom/obs/services/model/crr/GetCrrProgressResult;->ruleHistoricalPendingCount:Ljava/lang/Long;

    .line 30
    iput-object v1, p0, Lcom/obs/services/model/crr/GetCrrProgressResult;->ruleHistoricalPendingSize:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public getRuleHistoricalPendingCount()Ljava/lang/Long;
    .registers 1

    .line 90
    iget-object p0, p0, Lcom/obs/services/model/crr/GetCrrProgressResult;->ruleHistoricalPendingCount:Ljava/lang/Long;

    return-object p0
.end method

.method public getRuleHistoricalPendingSize()Ljava/lang/Long;
    .registers 1

    .line 98
    iget-object p0, p0, Lcom/obs/services/model/crr/GetCrrProgressResult;->ruleHistoricalPendingSize:Ljava/lang/Long;

    return-object p0
.end method

.method public getRuleHistoricalProgress()Ljava/lang/String;
    .registers 1

    .line 82
    iget-object p0, p0, Lcom/obs/services/model/crr/GetCrrProgressResult;->ruleHistoricalProgress:Ljava/lang/String;

    return-object p0
.end method

.method public getRuleId()Ljava/lang/String;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/obs/services/model/crr/GetCrrProgressResult;->ruleId:Ljava/lang/String;

    return-object p0
.end method

.method public getRuleNewPendingCount()Ljava/lang/Long;
    .registers 1

    .line 66
    iget-object p0, p0, Lcom/obs/services/model/crr/GetCrrProgressResult;->ruleNewPendingCount:Ljava/lang/Long;

    return-object p0
.end method

.method public getRuleNewPendingSize()Ljava/lang/Long;
    .registers 1

    .line 74
    iget-object p0, p0, Lcom/obs/services/model/crr/GetCrrProgressResult;->ruleNewPendingSize:Ljava/lang/Long;

    return-object p0
.end method

.method public getRulePrefix()Ljava/lang/String;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/obs/services/model/crr/GetCrrProgressResult;->rulePrefix:Ljava/lang/String;

    return-object p0
.end method

.method public getRuleTargetBucket()Ljava/lang/String;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/obs/services/model/crr/GetCrrProgressResult;->ruleTargetBucket:Ljava/lang/String;

    return-object p0
.end method

.method public getTime()Ljava/util/Date;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/obs/services/model/crr/GetCrrProgressResult;->time:Ljava/util/Date;

    return-object p0
.end method

.method public setRuleHistoricalPendingCount(Ljava/lang/Long;)V
    .registers 2

    .line 94
    iput-object p1, p0, Lcom/obs/services/model/crr/GetCrrProgressResult;->ruleHistoricalPendingCount:Ljava/lang/Long;

    return-void
.end method

.method public setRuleHistoricalPendingSize(Ljava/lang/Long;)V
    .registers 2

    .line 102
    iput-object p1, p0, Lcom/obs/services/model/crr/GetCrrProgressResult;->ruleHistoricalPendingSize:Ljava/lang/Long;

    return-void
.end method

.method public setRuleHistoricalProgress(Ljava/lang/String;)V
    .registers 2

    .line 86
    iput-object p1, p0, Lcom/obs/services/model/crr/GetCrrProgressResult;->ruleHistoricalProgress:Ljava/lang/String;

    return-void
.end method

.method public setRuleId(Ljava/lang/String;)V
    .registers 2

    .line 46
    iput-object p1, p0, Lcom/obs/services/model/crr/GetCrrProgressResult;->ruleId:Ljava/lang/String;

    return-void
.end method

.method public setRuleNewPendingCount(Ljava/lang/Long;)V
    .registers 2

    .line 70
    iput-object p1, p0, Lcom/obs/services/model/crr/GetCrrProgressResult;->ruleNewPendingCount:Ljava/lang/Long;

    return-void
.end method

.method public setRuleNewPendingSize(Ljava/lang/Long;)V
    .registers 2

    .line 78
    iput-object p1, p0, Lcom/obs/services/model/crr/GetCrrProgressResult;->ruleNewPendingSize:Ljava/lang/Long;

    return-void
.end method

.method public setRulePrefix(Ljava/lang/String;)V
    .registers 2

    .line 54
    iput-object p1, p0, Lcom/obs/services/model/crr/GetCrrProgressResult;->rulePrefix:Ljava/lang/String;

    return-void
.end method

.method public setRuleTargetBucket(Ljava/lang/String;)V
    .registers 2

    .line 62
    iput-object p1, p0, Lcom/obs/services/model/crr/GetCrrProgressResult;->ruleTargetBucket:Ljava/lang/String;

    return-void
.end method

.method public setTime(Ljava/util/Date;)V
    .registers 2

    .line 38
    iput-object p1, p0, Lcom/obs/services/model/crr/GetCrrProgressResult;->time:Ljava/util/Date;

    return-void
.end method
