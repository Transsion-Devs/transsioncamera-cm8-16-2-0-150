.class public Lcom/obs/services/model/RouteRuleCondition;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private httpErrorCodeReturnedEquals:Ljava/lang/String;

.field private keyPrefixEquals:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHttpErrorCodeReturnedEquals()Ljava/lang/String;
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/obs/services/model/RouteRuleCondition;->httpErrorCodeReturnedEquals:Ljava/lang/String;

    return-object p0
.end method

.method public getKeyPrefixEquals()Ljava/lang/String;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/obs/services/model/RouteRuleCondition;->keyPrefixEquals:Ljava/lang/String;

    return-object p0
.end method

.method public setHttpErrorCodeReturnedEquals(Ljava/lang/String;)V
    .registers 2

    .line 62
    iput-object p1, p0, Lcom/obs/services/model/RouteRuleCondition;->httpErrorCodeReturnedEquals:Ljava/lang/String;

    return-void
.end method

.method public setKeyPrefixEquals(Ljava/lang/String;)V
    .registers 2

    .line 41
    iput-object p1, p0, Lcom/obs/services/model/RouteRuleCondition;->keyPrefixEquals:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RouteRuleCondition [keyPrefixEquals="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/RouteRuleCondition;->keyPrefixEquals:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", httpErrorCodeReturnedEquals="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/obs/services/model/RouteRuleCondition;->httpErrorCodeReturnedEquals:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
