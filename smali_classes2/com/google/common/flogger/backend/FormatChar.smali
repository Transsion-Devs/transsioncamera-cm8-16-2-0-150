.class public final enum Lcom/google/common/flogger/backend/FormatChar;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/flogger/backend/FormatChar;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/flogger/backend/FormatChar;

.field public static final enum BOOLEAN:Lcom/google/common/flogger/backend/FormatChar;

.field public static final enum CHAR:Lcom/google/common/flogger/backend/FormatChar;

.field public static final enum DECIMAL:Lcom/google/common/flogger/backend/FormatChar;

.field public static final enum EXPONENT:Lcom/google/common/flogger/backend/FormatChar;

.field public static final enum EXPONENT_HEX:Lcom/google/common/flogger/backend/FormatChar;

.field public static final enum FLOAT:Lcom/google/common/flogger/backend/FormatChar;

.field public static final enum GENERAL:Lcom/google/common/flogger/backend/FormatChar;

.field public static final enum HEX:Lcom/google/common/flogger/backend/FormatChar;

.field private static final MAP:[Lcom/google/common/flogger/backend/FormatChar;

.field public static final enum OCTAL:Lcom/google/common/flogger/backend/FormatChar;

.field public static final enum STRING:Lcom/google/common/flogger/backend/FormatChar;


# instance fields
.field private final allowedFlags:I

.field private final defaultFormatString:Ljava/lang/String;

.field private final formatChar:C

.field private final type:Lcom/google/common/flogger/backend/FormatType;


# direct methods
.method private static synthetic $values()[Lcom/google/common/flogger/backend/FormatChar;
    .registers 10

    .line 30
    sget-object v0, Lcom/google/common/flogger/backend/FormatChar;->STRING:Lcom/google/common/flogger/backend/FormatChar;

    sget-object v1, Lcom/google/common/flogger/backend/FormatChar;->BOOLEAN:Lcom/google/common/flogger/backend/FormatChar;

    sget-object v2, Lcom/google/common/flogger/backend/FormatChar;->CHAR:Lcom/google/common/flogger/backend/FormatChar;

    sget-object v3, Lcom/google/common/flogger/backend/FormatChar;->DECIMAL:Lcom/google/common/flogger/backend/FormatChar;

    sget-object v4, Lcom/google/common/flogger/backend/FormatChar;->OCTAL:Lcom/google/common/flogger/backend/FormatChar;

    sget-object v5, Lcom/google/common/flogger/backend/FormatChar;->HEX:Lcom/google/common/flogger/backend/FormatChar;

    sget-object v6, Lcom/google/common/flogger/backend/FormatChar;->FLOAT:Lcom/google/common/flogger/backend/FormatChar;

    sget-object v7, Lcom/google/common/flogger/backend/FormatChar;->EXPONENT:Lcom/google/common/flogger/backend/FormatChar;

    sget-object v8, Lcom/google/common/flogger/backend/FormatChar;->GENERAL:Lcom/google/common/flogger/backend/FormatChar;

    sget-object v9, Lcom/google/common/flogger/backend/FormatChar;->EXPONENT_HEX:Lcom/google/common/flogger/backend/FormatChar;

    filled-new-array/range {v0 .. v9}, [Lcom/google/common/flogger/backend/FormatChar;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 13

    .line 38
    new-instance v0, Lcom/google/common/flogger/backend/FormatChar;

    sget-object v4, Lcom/google/common/flogger/backend/FormatType;->GENERAL:Lcom/google/common/flogger/backend/FormatType;

    const-string v5, "-#"

    const/4 v6, 0x1

    const-string v1, "STRING"

    const/4 v2, 0x0

    const/16 v3, 0x73

    invoke-direct/range {v0 .. v6}, Lcom/google/common/flogger/backend/FormatChar;-><init>(Ljava/lang/String;ICLcom/google/common/flogger/backend/FormatType;Ljava/lang/String;Z)V

    sput-object v0, Lcom/google/common/flogger/backend/FormatChar;->STRING:Lcom/google/common/flogger/backend/FormatChar;

    .line 45
    new-instance v1, Lcom/google/common/flogger/backend/FormatChar;

    sget-object v5, Lcom/google/common/flogger/backend/FormatType;->BOOLEAN:Lcom/google/common/flogger/backend/FormatType;

    const-string v6, "-"

    const/4 v7, 0x1

    const-string v2, "BOOLEAN"

    const/4 v3, 0x1

    const/16 v4, 0x62

    invoke-direct/range {v1 .. v7}, Lcom/google/common/flogger/backend/FormatChar;-><init>(Ljava/lang/String;ICLcom/google/common/flogger/backend/FormatType;Ljava/lang/String;Z)V

    sput-object v1, Lcom/google/common/flogger/backend/FormatChar;->BOOLEAN:Lcom/google/common/flogger/backend/FormatChar;

    .line 54
    new-instance v2, Lcom/google/common/flogger/backend/FormatChar;

    sget-object v6, Lcom/google/common/flogger/backend/FormatType;->CHARACTER:Lcom/google/common/flogger/backend/FormatType;

    const-string v7, "-"

    const/4 v8, 0x1

    const-string v3, "CHAR"

    const/4 v4, 0x2

    const/16 v5, 0x63

    invoke-direct/range {v2 .. v8}, Lcom/google/common/flogger/backend/FormatChar;-><init>(Ljava/lang/String;ICLcom/google/common/flogger/backend/FormatType;Ljava/lang/String;Z)V

    sput-object v2, Lcom/google/common/flogger/backend/FormatChar;->CHAR:Lcom/google/common/flogger/backend/FormatChar;

    .line 61
    new-instance v3, Lcom/google/common/flogger/backend/FormatChar;

    sget-object v8, Lcom/google/common/flogger/backend/FormatType;->INTEGRAL:Lcom/google/common/flogger/backend/FormatType;

    move-object v7, v8

    const-string v8, "-0+ ,("

    const/4 v9, 0x0

    const-string v4, "DECIMAL"

    const/4 v5, 0x3

    const/16 v6, 0x64

    invoke-direct/range {v3 .. v9}, Lcom/google/common/flogger/backend/FormatChar;-><init>(Ljava/lang/String;ICLcom/google/common/flogger/backend/FormatType;Ljava/lang/String;Z)V

    sput-object v3, Lcom/google/common/flogger/backend/FormatChar;->DECIMAL:Lcom/google/common/flogger/backend/FormatChar;

    .line 70
    new-instance v4, Lcom/google/common/flogger/backend/FormatChar;

    const-string v9, "-#0("

    const/4 v10, 0x0

    const-string v5, "OCTAL"

    const/4 v6, 0x4

    move-object v8, v7

    const/16 v7, 0x6f

    invoke-direct/range {v4 .. v10}, Lcom/google/common/flogger/backend/FormatChar;-><init>(Ljava/lang/String;ICLcom/google/common/flogger/backend/FormatType;Ljava/lang/String;Z)V

    move-object v7, v8

    sput-object v4, Lcom/google/common/flogger/backend/FormatChar;->OCTAL:Lcom/google/common/flogger/backend/FormatChar;

    .line 79
    new-instance v4, Lcom/google/common/flogger/backend/FormatChar;

    const-string v9, "-#0("

    const/4 v10, 0x1

    const-string v5, "HEX"

    const/4 v6, 0x5

    const/16 v7, 0x78

    invoke-direct/range {v4 .. v10}, Lcom/google/common/flogger/backend/FormatChar;-><init>(Ljava/lang/String;ICLcom/google/common/flogger/backend/FormatType;Ljava/lang/String;Z)V

    sput-object v4, Lcom/google/common/flogger/backend/FormatChar;->HEX:Lcom/google/common/flogger/backend/FormatChar;

    .line 86
    new-instance v5, Lcom/google/common/flogger/backend/FormatChar;

    sget-object v10, Lcom/google/common/flogger/backend/FormatType;->FLOAT:Lcom/google/common/flogger/backend/FormatType;

    move-object v9, v10

    const-string v10, "-#0+ ,("

    const/4 v11, 0x0

    const-string v6, "FLOAT"

    const/4 v7, 0x6

    const/16 v8, 0x66

    invoke-direct/range {v5 .. v11}, Lcom/google/common/flogger/backend/FormatChar;-><init>(Ljava/lang/String;ICLcom/google/common/flogger/backend/FormatType;Ljava/lang/String;Z)V

    move-object v10, v9

    sput-object v5, Lcom/google/common/flogger/backend/FormatChar;->FLOAT:Lcom/google/common/flogger/backend/FormatChar;

    .line 93
    new-instance v6, Lcom/google/common/flogger/backend/FormatChar;

    const-string v11, "-#0+ ("

    const/4 v12, 0x1

    const-string v7, "EXPONENT"

    const/4 v8, 0x7

    const/16 v9, 0x65

    invoke-direct/range {v6 .. v12}, Lcom/google/common/flogger/backend/FormatChar;-><init>(Ljava/lang/String;ICLcom/google/common/flogger/backend/FormatType;Ljava/lang/String;Z)V

    sput-object v6, Lcom/google/common/flogger/backend/FormatChar;->EXPONENT:Lcom/google/common/flogger/backend/FormatChar;

    .line 100
    new-instance v6, Lcom/google/common/flogger/backend/FormatChar;

    const-string v11, "-0+ ,("

    const-string v7, "GENERAL"

    const/16 v8, 0x8

    const/16 v9, 0x67

    invoke-direct/range {v6 .. v12}, Lcom/google/common/flogger/backend/FormatChar;-><init>(Ljava/lang/String;ICLcom/google/common/flogger/backend/FormatType;Ljava/lang/String;Z)V

    sput-object v6, Lcom/google/common/flogger/backend/FormatChar;->GENERAL:Lcom/google/common/flogger/backend/FormatChar;

    .line 110
    new-instance v6, Lcom/google/common/flogger/backend/FormatChar;

    const-string v11, "-#0+ "

    const-string v7, "EXPONENT_HEX"

    const/16 v8, 0x9

    const/16 v9, 0x61

    invoke-direct/range {v6 .. v12}, Lcom/google/common/flogger/backend/FormatChar;-><init>(Ljava/lang/String;ICLcom/google/common/flogger/backend/FormatType;Ljava/lang/String;Z)V

    sput-object v6, Lcom/google/common/flogger/backend/FormatChar;->EXPONENT_HEX:Lcom/google/common/flogger/backend/FormatChar;

    .line 30
    invoke-static {}, Lcom/google/common/flogger/backend/FormatChar;->$values()[Lcom/google/common/flogger/backend/FormatChar;

    move-result-object v0

    sput-object v0, Lcom/google/common/flogger/backend/FormatChar;->$VALUES:[Lcom/google/common/flogger/backend/FormatChar;

    const/16 v0, 0x1a

    .line 126
    new-array v0, v0, [Lcom/google/common/flogger/backend/FormatChar;

    sput-object v0, Lcom/google/common/flogger/backend/FormatChar;->MAP:[Lcom/google/common/flogger/backend/FormatChar;

    .line 128
    invoke-static {}, Lcom/google/common/flogger/backend/FormatChar;->values()[Lcom/google/common/flogger/backend/FormatChar;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_b7
    if-ge v2, v1, :cond_ca

    aget-object v3, v0, v2

    .line 129
    sget-object v4, Lcom/google/common/flogger/backend/FormatChar;->MAP:[Lcom/google/common/flogger/backend/FormatChar;

    invoke-virtual {v3}, Lcom/google/common/flogger/backend/FormatChar;->getChar()C

    move-result v5

    invoke-static {v5}, Lcom/google/common/flogger/backend/FormatChar;->indexOf(C)I

    move-result v5

    aput-object v3, v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_b7

    :cond_ca
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ICLcom/google/common/flogger/backend/FormatType;Ljava/lang/String;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C",
            "Lcom/google/common/flogger/backend/FormatType;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 156
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 157
    iput-char p3, p0, Lcom/google/common/flogger/backend/FormatChar;->formatChar:C

    .line 158
    iput-object p4, p0, Lcom/google/common/flogger/backend/FormatChar;->type:Lcom/google/common/flogger/backend/FormatType;

    .line 159
    invoke-static {p5, p6}, Lcom/google/common/flogger/backend/FormatOptions;->parseValidFlags(Ljava/lang/String;Z)I

    move-result p1

    iput p1, p0, Lcom/google/common/flogger/backend/FormatChar;->allowedFlags:I

    .line 160
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "%"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/flogger/backend/FormatChar;->defaultFormatString:Ljava/lang/String;

    return-void
.end method

.method private hasUpperCaseVariant()Z
    .registers 1

    .line 188
    iget p0, p0, Lcom/google/common/flogger/backend/FormatChar;->allowedFlags:I

    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method private static indexOf(C)I
    .registers 1

    or-int/lit8 p0, p0, 0x20

    add-int/lit8 p0, p0, -0x61

    return p0
.end method

.method private static isLowerCase(C)Z
    .registers 1

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public static of(C)Lcom/google/common/flogger/backend/FormatChar;
    .registers 3

    .line 142
    sget-object v0, Lcom/google/common/flogger/backend/FormatChar;->MAP:[Lcom/google/common/flogger/backend/FormatChar;

    invoke-static {p0}, Lcom/google/common/flogger/backend/FormatChar;->indexOf(C)I

    move-result v1

    aget-object v0, v0, v1

    .line 143
    invoke-static {p0}, Lcom/google/common/flogger/backend/FormatChar;->isLowerCase(C)Z

    move-result p0

    if-eqz p0, :cond_f

    return-object v0

    :cond_f
    if-eqz v0, :cond_18

    .line 148
    invoke-direct {v0}, Lcom/google/common/flogger/backend/FormatChar;->hasUpperCaseVariant()Z

    move-result p0

    if-eqz p0, :cond_18

    return-object v0

    :cond_18
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/flogger/backend/FormatChar;
    .registers 2

    .line 30
    const-class v0, Lcom/google/common/flogger/backend/FormatChar;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/flogger/backend/FormatChar;

    return-object p0
.end method

.method public static values()[Lcom/google/common/flogger/backend/FormatChar;
    .registers 1

    .line 30
    sget-object v0, Lcom/google/common/flogger/backend/FormatChar;->$VALUES:[Lcom/google/common/flogger/backend/FormatChar;

    invoke-virtual {v0}, [Lcom/google/common/flogger/backend/FormatChar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/flogger/backend/FormatChar;

    return-object v0
.end method


# virtual methods
.method getAllowedFlags()I
    .registers 1

    .line 184
    iget p0, p0, Lcom/google/common/flogger/backend/FormatChar;->allowedFlags:I

    return p0
.end method

.method public getChar()C
    .registers 1

    .line 171
    iget-char p0, p0, Lcom/google/common/flogger/backend/FormatChar;->formatChar:C

    return p0
.end method

.method public getDefaultFormatString()Ljava/lang/String;
    .registers 1

    .line 192
    iget-object p0, p0, Lcom/google/common/flogger/backend/FormatChar;->defaultFormatString:Ljava/lang/String;

    return-object p0
.end method

.method public getType()Lcom/google/common/flogger/backend/FormatType;
    .registers 1

    .line 176
    iget-object p0, p0, Lcom/google/common/flogger/backend/FormatChar;->type:Lcom/google/common/flogger/backend/FormatType;

    return-object p0
.end method
