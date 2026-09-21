.class public final enum Lcom/obs/services/model/RestoreTierEnum;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/obs/services/model/RestoreTierEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/obs/services/model/RestoreTierEnum;

.field public static final enum BULK:Lcom/obs/services/model/RestoreTierEnum;

.field public static final enum EXPEDITED:Lcom/obs/services/model/RestoreTierEnum;

.field public static final enum STANDARD:Lcom/obs/services/model/RestoreTierEnum;


# instance fields
.field private code:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 24
    new-instance v0, Lcom/obs/services/model/RestoreTierEnum;

    const/4 v1, 0x0

    const-string v2, "Expedited"

    const-string v3, "EXPEDITED"

    invoke-direct {v0, v3, v1, v2}, Lcom/obs/services/model/RestoreTierEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/obs/services/model/RestoreTierEnum;->EXPEDITED:Lcom/obs/services/model/RestoreTierEnum;

    .line 29
    new-instance v1, Lcom/obs/services/model/RestoreTierEnum;

    const/4 v2, 0x1

    const-string v3, "Standard"

    const-string v4, "STANDARD"

    invoke-direct {v1, v4, v2, v3}, Lcom/obs/services/model/RestoreTierEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/obs/services/model/RestoreTierEnum;->STANDARD:Lcom/obs/services/model/RestoreTierEnum;

    .line 34
    new-instance v2, Lcom/obs/services/model/RestoreTierEnum;

    const/4 v3, 0x2

    const-string v4, "Bulk"

    const-string v5, "BULK"

    invoke-direct {v2, v5, v3, v4}, Lcom/obs/services/model/RestoreTierEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/obs/services/model/RestoreTierEnum;->BULK:Lcom/obs/services/model/RestoreTierEnum;

    .line 20
    filled-new-array {v0, v1, v2}, [Lcom/obs/services/model/RestoreTierEnum;

    move-result-object v0

    sput-object v0, Lcom/obs/services/model/RestoreTierEnum;->$VALUES:[Lcom/obs/services/model/RestoreTierEnum;

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

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    iput-object p3, p0, Lcom/obs/services/model/RestoreTierEnum;->code:Ljava/lang/String;

    return-void
.end method

.method public static getValueFromCode(Ljava/lang/String;)Lcom/obs/services/model/RestoreTierEnum;
    .registers 6

    .line 47
    invoke-static {}, Lcom/obs/services/model/RestoreTierEnum;->values()[Lcom/obs/services/model/RestoreTierEnum;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_16

    aget-object v3, v0, v2

    .line 48
    iget-object v4, v3, Lcom/obs/services/model/RestoreTierEnum;->code:Ljava/lang/String;

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

.method public static valueOf(Ljava/lang/String;)Lcom/obs/services/model/RestoreTierEnum;
    .registers 2

    .line 20
    const-class v0, Lcom/obs/services/model/RestoreTierEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/RestoreTierEnum;

    return-object p0
.end method

.method public static values()[Lcom/obs/services/model/RestoreTierEnum;
    .registers 1

    .line 20
    sget-object v0, Lcom/obs/services/model/RestoreTierEnum;->$VALUES:[Lcom/obs/services/model/RestoreTierEnum;

    invoke-virtual {v0}, [Lcom/obs/services/model/RestoreTierEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/obs/services/model/RestoreTierEnum;

    return-object v0
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/obs/services/model/RestoreTierEnum;->code:Ljava/lang/String;

    return-object p0
.end method
