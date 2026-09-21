.class public abstract enum Lcom/google/common/flogger/backend/FormatType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/flogger/backend/FormatType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/flogger/backend/FormatType;

.field public static final enum BOOLEAN:Lcom/google/common/flogger/backend/FormatType;

.field public static final enum CHARACTER:Lcom/google/common/flogger/backend/FormatType;

.field public static final enum FLOAT:Lcom/google/common/flogger/backend/FormatType;

.field public static final enum GENERAL:Lcom/google/common/flogger/backend/FormatType;

.field public static final enum INTEGRAL:Lcom/google/common/flogger/backend/FormatType;


# instance fields
.field private final isNumeric:Z

.field private final supportsPrecision:Z


# direct methods
.method private static synthetic $values()[Lcom/google/common/flogger/backend/FormatType;
    .registers 5

    .line 25
    sget-object v0, Lcom/google/common/flogger/backend/FormatType;->GENERAL:Lcom/google/common/flogger/backend/FormatType;

    sget-object v1, Lcom/google/common/flogger/backend/FormatType;->BOOLEAN:Lcom/google/common/flogger/backend/FormatType;

    sget-object v2, Lcom/google/common/flogger/backend/FormatType;->CHARACTER:Lcom/google/common/flogger/backend/FormatType;

    sget-object v3, Lcom/google/common/flogger/backend/FormatType;->INTEGRAL:Lcom/google/common/flogger/backend/FormatType;

    sget-object v4, Lcom/google/common/flogger/backend/FormatType;->FLOAT:Lcom/google/common/flogger/backend/FormatType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/google/common/flogger/backend/FormatType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 5

    .line 27
    new-instance v0, Lcom/google/common/flogger/backend/FormatType$1;

    const-string v1, "GENERAL"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/google/common/flogger/backend/FormatType$1;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/google/common/flogger/backend/FormatType;->GENERAL:Lcom/google/common/flogger/backend/FormatType;

    .line 35
    new-instance v0, Lcom/google/common/flogger/backend/FormatType$2;

    const-string v1, "BOOLEAN"

    invoke-direct {v0, v1, v3, v2, v2}, Lcom/google/common/flogger/backend/FormatType$2;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/google/common/flogger/backend/FormatType;->BOOLEAN:Lcom/google/common/flogger/backend/FormatType;

    .line 46
    new-instance v0, Lcom/google/common/flogger/backend/FormatType$3;

    const-string v1, "CHARACTER"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v2, v2}, Lcom/google/common/flogger/backend/FormatType$3;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/google/common/flogger/backend/FormatType;->CHARACTER:Lcom/google/common/flogger/backend/FormatType;

    .line 66
    new-instance v0, Lcom/google/common/flogger/backend/FormatType$4;

    const-string v1, "INTEGRAL"

    const/4 v4, 0x3

    invoke-direct {v0, v1, v4, v3, v2}, Lcom/google/common/flogger/backend/FormatType$4;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/google/common/flogger/backend/FormatType;->INTEGRAL:Lcom/google/common/flogger/backend/FormatType;

    .line 84
    new-instance v0, Lcom/google/common/flogger/backend/FormatType$5;

    const-string v1, "FLOAT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/google/common/flogger/backend/FormatType$5;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/google/common/flogger/backend/FormatType;->FLOAT:Lcom/google/common/flogger/backend/FormatType;

    .line 25
    invoke-static {}, Lcom/google/common/flogger/backend/FormatType;->$values()[Lcom/google/common/flogger/backend/FormatType;

    move-result-object v0

    sput-object v0, Lcom/google/common/flogger/backend/FormatType;->$VALUES:[Lcom/google/common/flogger/backend/FormatType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)V"
        }
    .end annotation

    .line 95
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 96
    iput-boolean p3, p0, Lcom/google/common/flogger/backend/FormatType;->isNumeric:Z

    .line 97
    iput-boolean p4, p0, Lcom/google/common/flogger/backend/FormatType;->supportsPrecision:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IZZLcom/google/common/flogger/backend/FormatType$1;)V
    .registers 6

    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/flogger/backend/FormatType;-><init>(Ljava/lang/String;IZZ)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/flogger/backend/FormatType;
    .registers 2

    .line 25
    const-class v0, Lcom/google/common/flogger/backend/FormatType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/flogger/backend/FormatType;

    return-object p0
.end method

.method public static values()[Lcom/google/common/flogger/backend/FormatType;
    .registers 1

    .line 25
    sget-object v0, Lcom/google/common/flogger/backend/FormatType;->$VALUES:[Lcom/google/common/flogger/backend/FormatType;

    invoke-virtual {v0}, [Lcom/google/common/flogger/backend/FormatType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/flogger/backend/FormatType;

    return-object v0
.end method


# virtual methods
.method public abstract canFormat(Ljava/lang/Object;)Z
.end method

.method public isNumeric()Z
    .registers 1

    .line 114
    iget-boolean p0, p0, Lcom/google/common/flogger/backend/FormatType;->isNumeric:Z

    return p0
.end method

.method supportsPrecision()Z
    .registers 1

    .line 106
    iget-boolean p0, p0, Lcom/google/common/flogger/backend/FormatType;->supportsPrecision:Z

    return p0
.end method
