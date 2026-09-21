.class public final Lcom/google/common/flogger/backend/FormatOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ALL_FLAGS:I = 0xff

.field private static final DEFAULT:Lcom/google/common/flogger/backend/FormatOptions;

.field private static final ENCODED_FLAG_INDICES:J

.field private static final FLAG_CHARS_ORDERED:Ljava/lang/String; = " #(+,-0"

.field public static final FLAG_LEFT_ALIGN:I = 0x20

.field public static final FLAG_PREFIX_PLUS_FOR_POSITIVE_VALUES:I = 0x8

.field public static final FLAG_PREFIX_SPACE_FOR_POSITIVE_VALUES:I = 0x1

.field public static final FLAG_SHOW_ALT_FORM:I = 0x2

.field public static final FLAG_SHOW_GROUPING:I = 0x10

.field public static final FLAG_SHOW_LEADING_ZEROS:I = 0x40

.field public static final FLAG_UPPER_CASE:I = 0x80

.field public static final FLAG_USE_PARENS_FOR_NEGATIVE_VALUES:I = 0x4

.field private static final MAX_ALLOWED_PRECISION:I = 0xf423f

.field private static final MAX_ALLOWED_WIDTH:I = 0xf423f

.field private static final MAX_FLAG_VALUE:I = 0x30

.field private static final MIN_FLAG_VALUE:I = 0x20

.field public static final UNSET:I = -0x1


# instance fields
.field private final flags:I

.field private final precision:I

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .registers 10

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move v3, v2

    :goto_4
    const/4 v4, 0x7

    if-ge v3, v4, :cond_1e

    .line 45
    const-string v4, " #(+,-0"

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x20

    int-to-long v4, v4

    int-to-long v6, v3

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    const-wide/16 v8, 0x3

    mul-long/2addr v4, v8

    long-to-int v4, v4

    shl-long v4, v6, v4

    or-long/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 48
    :cond_1e
    sput-wide v0, Lcom/google/common/flogger/backend/FormatOptions;->ENCODED_FLAG_INDICES:J

    .line 130
    new-instance v0, Lcom/google/common/flogger/backend/FormatOptions;

    const/4 v1, -0x1

    invoke-direct {v0, v2, v1, v1}, Lcom/google/common/flogger/backend/FormatOptions;-><init>(III)V

    sput-object v0, Lcom/google/common/flogger/backend/FormatOptions;->DEFAULT:Lcom/google/common/flogger/backend/FormatOptions;

    return-void
.end method

.method private constructor <init>(III)V
    .registers 4

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    iput p1, p0, Lcom/google/common/flogger/backend/FormatOptions;->flags:I

    .line 265
    iput p2, p0, Lcom/google/common/flogger/backend/FormatOptions;->width:I

    .line 266
    iput p3, p0, Lcom/google/common/flogger/backend/FormatOptions;->precision:I

    return-void
.end method

.method static checkFlagConsistency(IZ)Z
    .registers 5

    and-int/lit8 v0, p0, 0x9

    const/4 v1, 0x0

    const/16 v2, 0x9

    if-ne v0, v2, :cond_8

    return v1

    :cond_8
    const/16 v0, 0x60

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_e

    return v1

    :cond_e
    if-eqz p0, :cond_13

    if-nez p1, :cond_13

    return v1

    :cond_13
    const/4 p0, 0x1

    return p0
.end method

.method public static getDefault()Lcom/google/common/flogger/backend/FormatOptions;
    .registers 1

    .line 134
    sget-object v0, Lcom/google/common/flogger/backend/FormatOptions;->DEFAULT:Lcom/google/common/flogger/backend/FormatOptions;

    return-object v0
.end method

.method private static indexOfFlagCharacter(C)I
    .registers 5

    .line 56
    sget-wide v0, Lcom/google/common/flogger/backend/FormatOptions;->ENCODED_FLAG_INDICES:J

    add-int/lit8 p0, p0, -0x20

    mul-int/lit8 p0, p0, 0x3

    ushr-long/2addr v0, p0

    const-wide/16 v2, 0x7

    and-long/2addr v0, v2

    long-to-int p0, v0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public static of(III)Lcom/google/common/flogger/backend/FormatOptions;
    .registers 6

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_6

    move v2, v0

    goto :goto_7

    :cond_6
    const/4 v2, 0x0

    .line 139
    :goto_7
    invoke-static {p0, v2}, Lcom/google/common/flogger/backend/FormatOptions;->checkFlagConsistency(IZ)Z

    move-result v2

    if-eqz v2, :cond_50

    const v2, 0xf423f

    if-lt p1, v0, :cond_14

    if-le p1, v2, :cond_16

    :cond_14
    if-ne p1, v1, :cond_39

    :cond_16
    if-ltz p2, :cond_1a

    if-le p2, v2, :cond_1c

    :cond_1a
    if-ne p2, v1, :cond_22

    .line 148
    :cond_1c
    new-instance v0, Lcom/google/common/flogger/backend/FormatOptions;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/flogger/backend/FormatOptions;-><init>(III)V

    return-object v0

    .line 146
    :cond_22
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid precision: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 143
    :cond_39
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid width: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 140
    :cond_50
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid flags: 0x"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static parse(Ljava/lang/String;IIZ)Lcom/google/common/flogger/backend/FormatOptions;
    .registers 11

    if-ne p1, p2, :cond_7

    if-nez p3, :cond_7

    .line 168
    sget-object p0, Lcom/google/common/flogger/backend/FormatOptions;->DEFAULT:Lcom/google/common/flogger/backend/FormatOptions;

    return-object p0

    :cond_7
    if-eqz p3, :cond_c

    const/16 p3, 0x80

    goto :goto_d

    :cond_c
    const/4 p3, 0x0

    :goto_d
    const/4 v0, -0x1

    if-ne p1, p2, :cond_16

    .line 176
    new-instance p0, Lcom/google/common/flogger/backend/FormatOptions;

    invoke-direct {p0, p3, v0, v0}, Lcom/google/common/flogger/backend/FormatOptions;-><init>(III)V

    return-object p0

    :cond_16
    add-int/lit8 v1, p1, 0x1

    .line 178
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    .line 179
    const-string v4, "invalid flag"

    const/16 v5, 0x2e

    const/16 v6, 0x30

    if-lt v2, v3, :cond_50

    if-le v2, v6, :cond_29

    goto :goto_50

    .line 182
    :cond_29
    invoke-static {v2}, Lcom/google/common/flogger/backend/FormatOptions;->indexOfFlagCharacter(C)I

    move-result v3

    if-gez v3, :cond_40

    if-ne v2, v5, :cond_3b

    .line 186
    new-instance p1, Lcom/google/common/flogger/backend/FormatOptions;

    invoke-static {p0, v1, p2}, Lcom/google/common/flogger/backend/FormatOptions;->parsePrecision(Ljava/lang/String;II)I

    move-result p0

    invoke-direct {p1, p3, v0, p0}, Lcom/google/common/flogger/backend/FormatOptions;-><init>(III)V

    return-object p1

    .line 188
    :cond_3b
    invoke-static {v4, p0, p1}, Lcom/google/common/flogger/parser/ParseException;->atPosition(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/common/flogger/parser/ParseException;

    move-result-object p0

    throw p0

    :cond_40
    const/4 v0, 0x1

    shl-int/2addr v0, v3

    and-int v2, p3, v0

    if-nez v2, :cond_49

    or-int/2addr p3, v0

    move p1, v1

    goto :goto_d

    .line 192
    :cond_49
    const-string p2, "repeated flag"

    invoke-static {p2, p0, p1}, Lcom/google/common/flogger/parser/ParseException;->atPosition(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/common/flogger/parser/ParseException;

    move-result-object p0

    throw p0

    :cond_50
    :goto_50
    const/16 v3, 0x39

    if-gt v2, v3, :cond_8e

    sub-int/2addr v2, v6

    :goto_55
    if-ne v1, p2, :cond_5d

    .line 206
    new-instance p0, Lcom/google/common/flogger/backend/FormatOptions;

    invoke-direct {p0, p3, v2, v0}, Lcom/google/common/flogger/backend/FormatOptions;-><init>(III)V

    return-object p0

    :cond_5d
    add-int/lit8 v3, v1, 0x1

    .line 208
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_6f

    .line 210
    new-instance p1, Lcom/google/common/flogger/backend/FormatOptions;

    invoke-static {p0, v3, p2}, Lcom/google/common/flogger/backend/FormatOptions;->parsePrecision(Ljava/lang/String;II)I

    move-result p0

    invoke-direct {p1, p3, v2, p0}, Lcom/google/common/flogger/backend/FormatOptions;-><init>(III)V

    return-object p1

    :cond_6f
    add-int/lit8 v4, v4, -0x30

    int-to-char v4, v4

    const/16 v6, 0xa

    if-ge v4, v6, :cond_87

    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v4

    const v1, 0xf423f

    if-gt v2, v1, :cond_80

    move v1, v3

    goto :goto_55

    .line 218
    :cond_80
    const-string p3, "width too large"

    invoke-static {p3, p0, p1, p2}, Lcom/google/common/flogger/parser/ParseException;->withBounds(Ljava/lang/String;Ljava/lang/String;II)Lcom/google/common/flogger/parser/ParseException;

    move-result-object p0

    throw p0

    .line 214
    :cond_87
    const-string p1, "invalid width character"

    invoke-static {p1, p0, v1}, Lcom/google/common/flogger/parser/ParseException;->atPosition(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/common/flogger/parser/ParseException;

    move-result-object p0

    throw p0

    .line 201
    :cond_8e
    invoke-static {v4, p0, p1}, Lcom/google/common/flogger/parser/ParseException;->atPosition(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/common/flogger/parser/ParseException;

    move-result-object p0

    throw p0
.end method

.method private static parsePrecision(Ljava/lang/String;II)I
    .registers 7

    if-eq p1, p2, :cond_39

    const/4 v0, 0x0

    move v1, p1

    :goto_4
    if-ge v1, p2, :cond_2a

    .line 229
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    int-to-char v2, v2

    const/16 v3, 0xa

    if-ge v2, v3, :cond_23

    mul-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v2

    const v2, 0xf423f

    if-gt v0, v2, :cond_1c

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 235
    :cond_1c
    const-string v0, "precision too large"

    invoke-static {v0, p0, p1, p2}, Lcom/google/common/flogger/parser/ParseException;->withBounds(Ljava/lang/String;Ljava/lang/String;II)Lcom/google/common/flogger/parser/ParseException;

    move-result-object p0

    throw p0

    .line 231
    :cond_23
    const-string p1, "invalid precision character"

    invoke-static {p1, p0, v1}, Lcom/google/common/flogger/parser/ParseException;->atPosition(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/common/flogger/parser/ParseException;

    move-result-object p0

    throw p0

    :cond_2a
    if-nez v0, :cond_38

    add-int/lit8 v1, p1, 0x1

    if-ne p2, v1, :cond_31

    goto :goto_38

    .line 240
    :cond_31
    const-string v0, "invalid precision"

    invoke-static {v0, p0, p1, p2}, Lcom/google/common/flogger/parser/ParseException;->withBounds(Ljava/lang/String;Ljava/lang/String;II)Lcom/google/common/flogger/parser/ParseException;

    move-result-object p0

    throw p0

    :cond_38
    :goto_38
    return v0

    .line 225
    :cond_39
    const-string p2, "missing precision"

    add-int/lit8 p1, p1, -0x1

    invoke-static {p2, p0, p1}, Lcom/google/common/flogger/parser/ParseException;->atPosition(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/common/flogger/parser/ParseException;

    move-result-object p0

    throw p0
.end method

.method static parseValidFlags(Ljava/lang/String;Z)I
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    const/16 p1, 0x80

    goto :goto_7

    :cond_6
    move p1, v0

    .line 248
    :goto_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_35

    .line 249
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/google/common/flogger/backend/FormatOptions;->indexOfFlagCharacter(C)I

    move-result v1

    if-ltz v1, :cond_1e

    const/4 v2, 0x1

    shl-int v1, v2, v1

    or-int/2addr p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 251
    :cond_1e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid flags: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_35
    return p1
.end method


# virtual methods
.method public appendPrintfOptions(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 5

    .line 476
    invoke-virtual {p0}, Lcom/google/common/flogger/backend/FormatOptions;->isDefault()Z

    move-result v0

    if-nez v0, :cond_34

    .line 478
    iget v0, p0, Lcom/google/common/flogger/backend/FormatOptions;->flags:I

    and-int/lit16 v0, v0, -0x81

    const/4 v1, 0x0

    :goto_b
    const/4 v2, 0x1

    shl-int/2addr v2, v1

    if-gt v2, v0, :cond_1e

    and-int/2addr v2, v0

    if-eqz v2, :cond_1b

    .line 481
    const-string v2, " #(+,-0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 484
    :cond_1e
    iget v0, p0, Lcom/google/common/flogger/backend/FormatOptions;->width:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_26

    .line 485
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 487
    :cond_26
    iget v0, p0, Lcom/google/common/flogger/backend/FormatOptions;->precision:I

    if-eq v0, v1, :cond_34

    const/16 v0, 0x2e

    .line 488
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/google/common/flogger/backend/FormatOptions;->precision:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_34
    return-object p1
.end method

.method public areValidFor(Lcom/google/common/flogger/backend/FormatChar;)Z
    .registers 3

    .line 385
    invoke-virtual {p1}, Lcom/google/common/flogger/backend/FormatChar;->getAllowedFlags()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/common/flogger/backend/FormatChar;->getType()Lcom/google/common/flogger/backend/FormatType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/flogger/backend/FormatType;->supportsPrecision()Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/google/common/flogger/backend/FormatOptions;->validate(IZ)Z

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 501
    :cond_4
    instance-of v1, p1, Lcom/google/common/flogger/backend/FormatOptions;

    const/4 v2, 0x0

    if-eqz v1, :cond_1e

    .line 502
    check-cast p1, Lcom/google/common/flogger/backend/FormatOptions;

    .line 503
    iget v1, p1, Lcom/google/common/flogger/backend/FormatOptions;->flags:I

    iget v3, p0, Lcom/google/common/flogger/backend/FormatOptions;->flags:I

    if-ne v1, v3, :cond_1e

    iget v1, p1, Lcom/google/common/flogger/backend/FormatOptions;->width:I

    iget v3, p0, Lcom/google/common/flogger/backend/FormatOptions;->width:I

    if-ne v1, v3, :cond_1e

    iget p1, p1, Lcom/google/common/flogger/backend/FormatOptions;->precision:I

    iget p0, p0, Lcom/google/common/flogger/backend/FormatOptions;->precision:I

    if-ne p1, p0, :cond_1e

    return v0

    :cond_1e
    return v2
.end method

.method public filter(IZZ)Lcom/google/common/flogger/backend/FormatOptions;
    .registers 6

    .line 280
    invoke-virtual {p0}, Lcom/google/common/flogger/backend/FormatOptions;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_2a

    .line 283
    :cond_7
    iget v0, p0, Lcom/google/common/flogger/backend/FormatOptions;->flags:I

    and-int/2addr p1, v0

    const/4 v1, -0x1

    if-eqz p2, :cond_10

    .line 284
    iget p2, p0, Lcom/google/common/flogger/backend/FormatOptions;->width:I

    goto :goto_11

    :cond_10
    move p2, v1

    :goto_11
    if-eqz p3, :cond_16

    .line 285
    iget p3, p0, Lcom/google/common/flogger/backend/FormatOptions;->precision:I

    goto :goto_17

    :cond_16
    move p3, v1

    :goto_17
    if-nez p1, :cond_20

    if-ne p2, v1, :cond_20

    if-ne p3, v1, :cond_20

    .line 288
    sget-object p0, Lcom/google/common/flogger/backend/FormatOptions;->DEFAULT:Lcom/google/common/flogger/backend/FormatOptions;

    return-object p0

    :cond_20
    if-ne p1, v0, :cond_2b

    .line 294
    iget v0, p0, Lcom/google/common/flogger/backend/FormatOptions;->width:I

    if-ne p2, v0, :cond_2b

    iget v0, p0, Lcom/google/common/flogger/backend/FormatOptions;->precision:I

    if-ne p3, v0, :cond_2b

    :goto_2a
    return-object p0

    .line 297
    :cond_2b
    new-instance p0, Lcom/google/common/flogger/backend/FormatOptions;

    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/flogger/backend/FormatOptions;-><init>(III)V

    return-object p0
.end method

.method public getFlags()I
    .registers 1

    .line 394
    iget p0, p0, Lcom/google/common/flogger/backend/FormatOptions;->flags:I

    return p0
.end method

.method public getPrecision()I
    .registers 1

    .line 321
    iget p0, p0, Lcom/google/common/flogger/backend/FormatOptions;->precision:I

    return p0
.end method

.method public getWidth()I
    .registers 1

    .line 312
    iget p0, p0, Lcom/google/common/flogger/backend/FormatOptions;->width:I

    return p0
.end method

.method public hashCode()I
    .registers 3

    .line 510
    iget v0, p0, Lcom/google/common/flogger/backend/FormatOptions;->flags:I

    mul-int/lit8 v0, v0, 0x1f

    .line 511
    iget v1, p0, Lcom/google/common/flogger/backend/FormatOptions;->width:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 512
    iget p0, p0, Lcom/google/common/flogger/backend/FormatOptions;->precision:I

    add-int/2addr v0, p0

    return v0
.end method

.method public isDefault()Z
    .registers 2

    .line 303
    invoke-static {}, Lcom/google/common/flogger/backend/FormatOptions;->getDefault()Lcom/google/common/flogger/backend/FormatOptions;

    move-result-object v0

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public shouldLeftAlign()Z
    .registers 1

    .line 404
    iget p0, p0, Lcom/google/common/flogger/backend/FormatOptions;->flags:I

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public shouldPrefixPlusForPositiveValues()Z
    .registers 1

    .line 434
    iget p0, p0, Lcom/google/common/flogger/backend/FormatOptions;->flags:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public shouldPrefixSpaceForPositiveValues()Z
    .registers 2

    .line 444
    iget p0, p0, Lcom/google/common/flogger/backend/FormatOptions;->flags:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    return v0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public shouldShowAltForm()Z
    .registers 1

    .line 414
    iget p0, p0, Lcom/google/common/flogger/backend/FormatOptions;->flags:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public shouldShowGrouping()Z
    .registers 1

    .line 454
    iget p0, p0, Lcom/google/common/flogger/backend/FormatOptions;->flags:I

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public shouldShowLeadingZeros()Z
    .registers 1

    .line 424
    iget p0, p0, Lcom/google/common/flogger/backend/FormatOptions;->flags:I

    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public shouldUpperCase()Z
    .registers 1

    .line 463
    iget p0, p0, Lcom/google/common/flogger/backend/FormatOptions;->flags:I

    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public validate(IZ)Z
    .registers 6

    .line 339
    invoke-virtual {p0}, Lcom/google/common/flogger/backend/FormatOptions;->isDefault()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 343
    :cond_8
    iget v0, p0, Lcom/google/common/flogger/backend/FormatOptions;->flags:I

    not-int p1, p1

    and-int/2addr p1, v0

    const/4 v2, 0x0

    if-eqz p1, :cond_10

    return v2

    :cond_10
    const/4 p1, -0x1

    if-nez p2, :cond_18

    .line 347
    iget p2, p0, Lcom/google/common/flogger/backend/FormatOptions;->precision:I

    if-eq p2, p1, :cond_18

    return v2

    .line 350
    :cond_18
    invoke-virtual {p0}, Lcom/google/common/flogger/backend/FormatOptions;->getWidth()I

    move-result p0

    if-eq p0, p1, :cond_1f

    goto :goto_20

    :cond_1f
    move v1, v2

    :goto_20
    invoke-static {v0, v1}, Lcom/google/common/flogger/backend/FormatOptions;->checkFlagConsistency(IZ)Z

    move-result p0

    return p0
.end method
