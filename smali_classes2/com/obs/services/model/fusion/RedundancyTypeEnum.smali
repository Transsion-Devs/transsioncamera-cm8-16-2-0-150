.class public final enum Lcom/obs/services/model/fusion/RedundancyTypeEnum;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/obs/services/model/fusion/RedundancyTypeEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/obs/services/model/fusion/RedundancyTypeEnum;

.field public static final enum CLASSIC:Lcom/obs/services/model/fusion/RedundancyTypeEnum;

.field public static final enum FUSION:Lcom/obs/services/model/fusion/RedundancyTypeEnum;


# instance fields
.field private code:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 21
    new-instance v0, Lcom/obs/services/model/fusion/RedundancyTypeEnum;

    const/4 v1, 0x0

    const-string v2, "classic"

    const-string v3, "CLASSIC"

    invoke-direct {v0, v3, v1, v2}, Lcom/obs/services/model/fusion/RedundancyTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/obs/services/model/fusion/RedundancyTypeEnum;->CLASSIC:Lcom/obs/services/model/fusion/RedundancyTypeEnum;

    .line 25
    new-instance v1, Lcom/obs/services/model/fusion/RedundancyTypeEnum;

    const/4 v2, 0x1

    const-string v3, "fusion"

    const-string v4, "FUSION"

    invoke-direct {v1, v4, v2, v3}, Lcom/obs/services/model/fusion/RedundancyTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/obs/services/model/fusion/RedundancyTypeEnum;->FUSION:Lcom/obs/services/model/fusion/RedundancyTypeEnum;

    .line 17
    filled-new-array {v0, v1}, [Lcom/obs/services/model/fusion/RedundancyTypeEnum;

    move-result-object v0

    sput-object v0, Lcom/obs/services/model/fusion/RedundancyTypeEnum;->$VALUES:[Lcom/obs/services/model/fusion/RedundancyTypeEnum;

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

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    iput-object p3, p0, Lcom/obs/services/model/fusion/RedundancyTypeEnum;->code:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/obs/services/model/fusion/RedundancyTypeEnum;
    .registers 2

    .line 17
    const-class v0, Lcom/obs/services/model/fusion/RedundancyTypeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/fusion/RedundancyTypeEnum;

    return-object p0
.end method

.method public static values()[Lcom/obs/services/model/fusion/RedundancyTypeEnum;
    .registers 1

    .line 17
    sget-object v0, Lcom/obs/services/model/fusion/RedundancyTypeEnum;->$VALUES:[Lcom/obs/services/model/fusion/RedundancyTypeEnum;

    invoke-virtual {v0}, [Lcom/obs/services/model/fusion/RedundancyTypeEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/obs/services/model/fusion/RedundancyTypeEnum;

    return-object v0
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/obs/services/model/fusion/RedundancyTypeEnum;->code:Ljava/lang/String;

    return-object p0
.end method
