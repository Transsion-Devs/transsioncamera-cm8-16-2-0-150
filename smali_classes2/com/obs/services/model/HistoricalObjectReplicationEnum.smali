.class public final enum Lcom/obs/services/model/HistoricalObjectReplicationEnum;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/obs/services/model/HistoricalObjectReplicationEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/obs/services/model/HistoricalObjectReplicationEnum;

.field public static final enum DISABLED:Lcom/obs/services/model/HistoricalObjectReplicationEnum;

.field public static final enum ENABLED:Lcom/obs/services/model/HistoricalObjectReplicationEnum;


# instance fields
.field private code:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 27
    new-instance v0, Lcom/obs/services/model/HistoricalObjectReplicationEnum;

    const/4 v1, 0x0

    const-string v2, "Enabled"

    const-string v3, "ENABLED"

    invoke-direct {v0, v3, v1, v2}, Lcom/obs/services/model/HistoricalObjectReplicationEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/obs/services/model/HistoricalObjectReplicationEnum;->ENABLED:Lcom/obs/services/model/HistoricalObjectReplicationEnum;

    .line 32
    new-instance v1, Lcom/obs/services/model/HistoricalObjectReplicationEnum;

    const/4 v2, 0x1

    const-string v3, "Disabled"

    const-string v4, "DISABLED"

    invoke-direct {v1, v4, v2, v3}, Lcom/obs/services/model/HistoricalObjectReplicationEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/obs/services/model/HistoricalObjectReplicationEnum;->DISABLED:Lcom/obs/services/model/HistoricalObjectReplicationEnum;

    .line 23
    filled-new-array {v0, v1}, [Lcom/obs/services/model/HistoricalObjectReplicationEnum;

    move-result-object v0

    sput-object v0, Lcom/obs/services/model/HistoricalObjectReplicationEnum;->$VALUES:[Lcom/obs/services/model/HistoricalObjectReplicationEnum;

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

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    iput-object p3, p0, Lcom/obs/services/model/HistoricalObjectReplicationEnum;->code:Ljava/lang/String;

    return-void
.end method

.method public static getValueFromCode(Ljava/lang/String;)Lcom/obs/services/model/HistoricalObjectReplicationEnum;
    .registers 6

    .line 45
    invoke-static {}, Lcom/obs/services/model/HistoricalObjectReplicationEnum;->values()[Lcom/obs/services/model/HistoricalObjectReplicationEnum;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_16

    aget-object v3, v0, v2

    .line 46
    iget-object v4, v3, Lcom/obs/services/model/HistoricalObjectReplicationEnum;->code:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    return-object v3

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_16
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/obs/services/model/HistoricalObjectReplicationEnum;
    .registers 2

    .line 23
    const-class v0, Lcom/obs/services/model/HistoricalObjectReplicationEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/HistoricalObjectReplicationEnum;

    return-object p0
.end method

.method public static values()[Lcom/obs/services/model/HistoricalObjectReplicationEnum;
    .registers 1

    .line 23
    sget-object v0, Lcom/obs/services/model/HistoricalObjectReplicationEnum;->$VALUES:[Lcom/obs/services/model/HistoricalObjectReplicationEnum;

    invoke-virtual {v0}, [Lcom/obs/services/model/HistoricalObjectReplicationEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/obs/services/model/HistoricalObjectReplicationEnum;

    return-object v0
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/obs/services/model/HistoricalObjectReplicationEnum;->code:Ljava/lang/String;

    return-object p0
.end method
