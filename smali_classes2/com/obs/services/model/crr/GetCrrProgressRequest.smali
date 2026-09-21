.class public Lcom/obs/services/model/crr/GetCrrProgressRequest;
.super Lcom/obs/services/model/BaseBucketRequest;
.source "SourceFile"


# instance fields
.field protected ruleId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Lcom/obs/services/model/BaseBucketRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public getRuleId()Ljava/lang/String;
    .registers 2

    .line 23
    iget-object v0, p0, Lcom/obs/services/model/crr/GetCrrProgressRequest;->ruleId:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/obs/services/model/crr/GetCrrProgressRequest;->ruleId:Ljava/lang/String;

    .line 26
    :cond_8
    iget-object p0, p0, Lcom/obs/services/model/crr/GetCrrProgressRequest;->ruleId:Ljava/lang/String;

    return-object p0
.end method

.method public setRuleId(Ljava/lang/String;)V
    .registers 2

    .line 30
    iput-object p1, p0, Lcom/obs/services/model/crr/GetCrrProgressRequest;->ruleId:Ljava/lang/String;

    return-void
.end method
