.class public final enum Lcom/obs/services/model/PolicyConditionItem$ConditionOperator;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/obs/services/model/PolicyConditionItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConditionOperator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/obs/services/model/PolicyConditionItem$ConditionOperator;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/obs/services/model/PolicyConditionItem$ConditionOperator;

.field public static final enum EQUAL:Lcom/obs/services/model/PolicyConditionItem$ConditionOperator;

.field public static final enum STARTS_WITH:Lcom/obs/services/model/PolicyConditionItem$ConditionOperator;


# instance fields
.field private operationCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 40
    new-instance v0, Lcom/obs/services/model/PolicyConditionItem$ConditionOperator;

    const/4 v1, 0x0

    const-string v2, "eq"

    const-string v3, "EQUAL"

    invoke-direct {v0, v3, v1, v2}, Lcom/obs/services/model/PolicyConditionItem$ConditionOperator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/obs/services/model/PolicyConditionItem$ConditionOperator;->EQUAL:Lcom/obs/services/model/PolicyConditionItem$ConditionOperator;

    .line 42
    new-instance v1, Lcom/obs/services/model/PolicyConditionItem$ConditionOperator;

    const/4 v2, 0x1

    const-string v3, "starts-with"

    const-string v4, "STARTS_WITH"

    invoke-direct {v1, v4, v2, v3}, Lcom/obs/services/model/PolicyConditionItem$ConditionOperator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/obs/services/model/PolicyConditionItem$ConditionOperator;->STARTS_WITH:Lcom/obs/services/model/PolicyConditionItem$ConditionOperator;

    .line 38
    filled-new-array {v0, v1}, [Lcom/obs/services/model/PolicyConditionItem$ConditionOperator;

    move-result-object v0

    sput-object v0, Lcom/obs/services/model/PolicyConditionItem$ConditionOperator;->$VALUES:[Lcom/obs/services/model/PolicyConditionItem$ConditionOperator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    iput-object p3, p0, Lcom/obs/services/model/PolicyConditionItem$ConditionOperator;->operationCode:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/obs/services/model/PolicyConditionItem$ConditionOperator;
    .registers 2

    .line 38
    const-class v0, Lcom/obs/services/model/PolicyConditionItem$ConditionOperator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/PolicyConditionItem$ConditionOperator;

    return-object p0
.end method

.method public static values()[Lcom/obs/services/model/PolicyConditionItem$ConditionOperator;
    .registers 1

    .line 38
    sget-object v0, Lcom/obs/services/model/PolicyConditionItem$ConditionOperator;->$VALUES:[Lcom/obs/services/model/PolicyConditionItem$ConditionOperator;

    invoke-virtual {v0}, [Lcom/obs/services/model/PolicyConditionItem$ConditionOperator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/obs/services/model/PolicyConditionItem$ConditionOperator;

    return-object v0
.end method


# virtual methods
.method public getOperationCode()Ljava/lang/String;
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/obs/services/model/PolicyConditionItem$ConditionOperator;->operationCode:Ljava/lang/String;

    return-object p0
.end method
