.class public final enum Lcom/obs/services/model/AvailableZoneEnum;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/obs/services/model/AvailableZoneEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/obs/services/model/AvailableZoneEnum;

.field public static final enum MULTI_AZ:Lcom/obs/services/model/AvailableZoneEnum;


# instance fields
.field private code:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 23
    new-instance v0, Lcom/obs/services/model/AvailableZoneEnum;

    const/4 v1, 0x0

    const-string v2, "3az"

    const-string v3, "MULTI_AZ"

    invoke-direct {v0, v3, v1, v2}, Lcom/obs/services/model/AvailableZoneEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/obs/services/model/AvailableZoneEnum;->MULTI_AZ:Lcom/obs/services/model/AvailableZoneEnum;

    .line 21
    filled-new-array {v0}, [Lcom/obs/services/model/AvailableZoneEnum;

    move-result-object v0

    sput-object v0, Lcom/obs/services/model/AvailableZoneEnum;->$VALUES:[Lcom/obs/services/model/AvailableZoneEnum;

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

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 28
    iput-object p3, p0, Lcom/obs/services/model/AvailableZoneEnum;->code:Ljava/lang/String;

    return-void
.end method

.method public static getValueFromCode(Ljava/lang/String;)Lcom/obs/services/model/AvailableZoneEnum;
    .registers 6

    .line 36
    invoke-static {}, Lcom/obs/services/model/AvailableZoneEnum;->values()[Lcom/obs/services/model/AvailableZoneEnum;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_16

    aget-object v3, v0, v2

    .line 37
    iget-object v4, v3, Lcom/obs/services/model/AvailableZoneEnum;->code:Ljava/lang/String;

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

.method public static valueOf(Ljava/lang/String;)Lcom/obs/services/model/AvailableZoneEnum;
    .registers 2

    .line 21
    const-class v0, Lcom/obs/services/model/AvailableZoneEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/AvailableZoneEnum;

    return-object p0
.end method

.method public static values()[Lcom/obs/services/model/AvailableZoneEnum;
    .registers 1

    .line 21
    sget-object v0, Lcom/obs/services/model/AvailableZoneEnum;->$VALUES:[Lcom/obs/services/model/AvailableZoneEnum;

    invoke-virtual {v0}, [Lcom/obs/services/model/AvailableZoneEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/obs/services/model/AvailableZoneEnum;

    return-object v0
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/obs/services/model/AvailableZoneEnum;->code:Ljava/lang/String;

    return-object p0
.end method
