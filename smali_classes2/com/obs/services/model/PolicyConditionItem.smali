.class public Lcom/obs/services/model/PolicyConditionItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/obs/services/model/PolicyConditionItem$ConditionOperator;
    }
.end annotation


# instance fields
.field private key:Ljava/lang/String;

.field private operator:Lcom/obs/services/model/PolicyConditionItem$ConditionOperator;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/obs/services/model/PolicyConditionItem$ConditionOperator;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/obs/services/model/PolicyConditionItem;->operator:Lcom/obs/services/model/PolicyConditionItem$ConditionOperator;

    .line 27
    iput-object p2, p0, Lcom/obs/services/model/PolicyConditionItem;->key:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcom/obs/services/model/PolicyConditionItem;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 32
    iget-object v0, p0, Lcom/obs/services/model/PolicyConditionItem;->value:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/obs/services/model/PolicyConditionItem;->value:Ljava/lang/String;

    .line 35
    :cond_8
    iget-object v0, p0, Lcom/obs/services/model/PolicyConditionItem;->operator:Lcom/obs/services/model/PolicyConditionItem$ConditionOperator;

    invoke-virtual {v0}, Lcom/obs/services/model/PolicyConditionItem$ConditionOperator;->getOperationCode()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/obs/services/model/PolicyConditionItem;->key:Ljava/lang/String;

    iget-object p0, p0, Lcom/obs/services/model/PolicyConditionItem;->value:Ljava/lang/String;

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "[\"%s\",\"$%s\",\"%s\"]"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
