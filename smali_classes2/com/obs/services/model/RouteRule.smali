.class public Lcom/obs/services/model/RouteRule;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private condition:Lcom/obs/services/model/RouteRuleCondition;

.field private redirect:Lcom/obs/services/model/Redirect;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCondition()Lcom/obs/services/model/RouteRuleCondition;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/obs/services/model/RouteRule;->condition:Lcom/obs/services/model/RouteRuleCondition;

    return-object p0
.end method

.method public getRedirect()Lcom/obs/services/model/Redirect;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/obs/services/model/RouteRule;->redirect:Lcom/obs/services/model/Redirect;

    return-object p0
.end method

.method public setCondition(Lcom/obs/services/model/RouteRuleCondition;)V
    .registers 2

    .line 41
    iput-object p1, p0, Lcom/obs/services/model/RouteRule;->condition:Lcom/obs/services/model/RouteRuleCondition;

    return-void
.end method

.method public setRedirect(Lcom/obs/services/model/Redirect;)V
    .registers 2

    .line 60
    iput-object p1, p0, Lcom/obs/services/model/RouteRule;->redirect:Lcom/obs/services/model/Redirect;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RouteRule [condition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/RouteRule;->condition:Lcom/obs/services/model/RouteRuleCondition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", redirect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/obs/services/model/RouteRule;->redirect:Lcom/obs/services/model/Redirect;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
