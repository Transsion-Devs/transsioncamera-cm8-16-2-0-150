.class public final enum Lcom/obs/services/model/SSEAlgorithmEnum;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/obs/services/model/SSEAlgorithmEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/obs/services/model/SSEAlgorithmEnum;

.field public static final enum AES256:Lcom/obs/services/model/SSEAlgorithmEnum;

.field public static final enum KMS:Lcom/obs/services/model/SSEAlgorithmEnum;


# instance fields
.field private code:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 25
    new-instance v0, Lcom/obs/services/model/SSEAlgorithmEnum;

    const/4 v1, 0x0

    const-string v2, "kms"

    const-string v3, "KMS"

    invoke-direct {v0, v3, v1, v2}, Lcom/obs/services/model/SSEAlgorithmEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/obs/services/model/SSEAlgorithmEnum;->KMS:Lcom/obs/services/model/SSEAlgorithmEnum;

    .line 30
    new-instance v1, Lcom/obs/services/model/SSEAlgorithmEnum;

    const-string v2, "AES256"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v2}, Lcom/obs/services/model/SSEAlgorithmEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/obs/services/model/SSEAlgorithmEnum;->AES256:Lcom/obs/services/model/SSEAlgorithmEnum;

    .line 21
    filled-new-array {v0, v1}, [Lcom/obs/services/model/SSEAlgorithmEnum;

    move-result-object v0

    sput-object v0, Lcom/obs/services/model/SSEAlgorithmEnum;->$VALUES:[Lcom/obs/services/model/SSEAlgorithmEnum;

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

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    iput-object p3, p0, Lcom/obs/services/model/SSEAlgorithmEnum;->code:Ljava/lang/String;

    return-void
.end method

.method public static getValueFromCode(Ljava/lang/String;)Lcom/obs/services/model/SSEAlgorithmEnum;
    .registers 6

    .line 43
    invoke-static {}, Lcom/obs/services/model/SSEAlgorithmEnum;->values()[Lcom/obs/services/model/SSEAlgorithmEnum;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_16

    aget-object v3, v0, v2

    .line 44
    iget-object v4, v3, Lcom/obs/services/model/SSEAlgorithmEnum;->code:Ljava/lang/String;

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

.method public static valueOf(Ljava/lang/String;)Lcom/obs/services/model/SSEAlgorithmEnum;
    .registers 2

    .line 21
    const-class v0, Lcom/obs/services/model/SSEAlgorithmEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/SSEAlgorithmEnum;

    return-object p0
.end method

.method public static values()[Lcom/obs/services/model/SSEAlgorithmEnum;
    .registers 1

    .line 21
    sget-object v0, Lcom/obs/services/model/SSEAlgorithmEnum;->$VALUES:[Lcom/obs/services/model/SSEAlgorithmEnum;

    invoke-virtual {v0}, [Lcom/obs/services/model/SSEAlgorithmEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/obs/services/model/SSEAlgorithmEnum;

    return-object v0
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/obs/services/model/SSEAlgorithmEnum;->code:Ljava/lang/String;

    return-object p0
.end method
