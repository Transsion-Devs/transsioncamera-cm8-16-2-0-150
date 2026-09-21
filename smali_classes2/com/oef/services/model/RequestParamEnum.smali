.class public final enum Lcom/oef/services/model/RequestParamEnum;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/oef/services/model/RequestParamEnum;

.field public static final enum ASYNC_FETCH_JOBS:Lcom/oef/services/model/RequestParamEnum;

.field public static final enum DIS_POLICIES:Lcom/oef/services/model/RequestParamEnum;

.field public static final enum EXTENSION_POLICY:Lcom/oef/services/model/RequestParamEnum;

.field public static final enum SERVICES_CLUSTERS:Lcom/oef/services/model/RequestParamEnum;


# instance fields
.field private stringCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 25
    new-instance v0, Lcom/oef/services/model/RequestParamEnum;

    const/4 v1, 0x0

    const-string v2, "v1/extension_policy"

    const-string v3, "EXTENSION_POLICY"

    invoke-direct {v0, v3, v1, v2}, Lcom/oef/services/model/RequestParamEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oef/services/model/RequestParamEnum;->EXTENSION_POLICY:Lcom/oef/services/model/RequestParamEnum;

    .line 29
    new-instance v1, Lcom/oef/services/model/RequestParamEnum;

    const/4 v2, 0x1

    const-string v3, "v1/async-fetch/jobs"

    const-string v4, "ASYNC_FETCH_JOBS"

    invoke-direct {v1, v4, v2, v3}, Lcom/oef/services/model/RequestParamEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/oef/services/model/RequestParamEnum;->ASYNC_FETCH_JOBS:Lcom/oef/services/model/RequestParamEnum;

    .line 31
    new-instance v2, Lcom/oef/services/model/RequestParamEnum;

    const/4 v3, 0x2

    const-string v4, "v1/dis_policies"

    const-string v5, "DIS_POLICIES"

    invoke-direct {v2, v5, v3, v4}, Lcom/oef/services/model/RequestParamEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/oef/services/model/RequestParamEnum;->DIS_POLICIES:Lcom/oef/services/model/RequestParamEnum;

    .line 33
    new-instance v3, Lcom/oef/services/model/RequestParamEnum;

    const/4 v4, 0x3

    const-string v5, "v1/services/clusters"

    const-string v6, "SERVICES_CLUSTERS"

    invoke-direct {v3, v6, v4, v5}, Lcom/oef/services/model/RequestParamEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/oef/services/model/RequestParamEnum;->SERVICES_CLUSTERS:Lcom/oef/services/model/RequestParamEnum;

    .line 21
    filled-new-array {v0, v1, v2, v3}, [Lcom/oef/services/model/RequestParamEnum;

    move-result-object v0

    sput-object v0, Lcom/oef/services/model/RequestParamEnum;->$VALUES:[Lcom/oef/services/model/RequestParamEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    if-eqz p3, :cond_8

    .line 41
    iput-object p3, p0, Lcom/oef/services/model/RequestParamEnum;->stringCode:Ljava/lang/String;

    return-void

    .line 39
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "stringCode is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oef/services/model/RequestParamEnum;
    .registers 2

    .line 21
    const-class v0, Lcom/oef/services/model/RequestParamEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oef/services/model/RequestParamEnum;

    return-object p0
.end method

.method public static values()[Lcom/oef/services/model/RequestParamEnum;
    .registers 1

    .line 21
    sget-object v0, Lcom/oef/services/model/RequestParamEnum;->$VALUES:[Lcom/oef/services/model/RequestParamEnum;

    invoke-virtual {v0}, [Lcom/oef/services/model/RequestParamEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oef/services/model/RequestParamEnum;

    return-object v0
.end method


# virtual methods
.method public getOriginalStringCode()Ljava/lang/String;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/oef/services/model/RequestParamEnum;->stringCode:Ljava/lang/String;

    return-object p0
.end method
