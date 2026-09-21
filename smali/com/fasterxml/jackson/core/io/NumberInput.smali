.class public abstract Lcom/fasterxml/jackson/core/io/NumberInput;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final MAX_LONG_STR:Ljava/lang/String;

.field static final MIN_LONG_STR_NO_SIGN:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/high16 v0, -0x8000000000000000L

    .line 18
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/core/io/NumberInput;->MIN_LONG_STR_NO_SIGN:Ljava/lang/String;

    const-wide v0, 0x7fffffffffffffffL

    .line 19
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/core/io/NumberInput;->MAX_LONG_STR:Ljava/lang/String;

    return-void
.end method

.method public static inLongRange(Ljava/lang/String;Z)Z
    .registers 8

    if-eqz p1, :cond_5

    .line 198
    sget-object p1, Lcom/fasterxml/jackson/core/io/NumberInput;->MIN_LONG_STR_NO_SIGN:Ljava/lang/String;

    goto :goto_7

    :cond_5
    sget-object p1, Lcom/fasterxml/jackson/core/io/NumberInput;->MAX_LONG_STR:Ljava/lang/String;

    .line 199
    :goto_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 200
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v0, :cond_13

    return v2

    :cond_13
    const/4 v3, 0x0

    if-le v1, v0, :cond_17

    return v3

    :cond_17
    move v1, v3

    :goto_18
    if-ge v1, v0, :cond_2c

    .line 206
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    sub-int/2addr v4, v5

    if-eqz v4, :cond_29

    if-gez v4, :cond_28

    return v2

    :cond_28
    return v3

    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_2c
    return v2
.end method

.method public static inLongRange([CIIZ)Z
    .registers 9

    if-eqz p3, :cond_5

    .line 171
    sget-object p3, Lcom/fasterxml/jackson/core/io/NumberInput;->MIN_LONG_STR_NO_SIGN:Ljava/lang/String;

    goto :goto_7

    :cond_5
    sget-object p3, Lcom/fasterxml/jackson/core/io/NumberInput;->MAX_LONG_STR:Ljava/lang/String;

    .line 172
    :goto_7
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge p2, v0, :cond_f

    return v1

    :cond_f
    const/4 v2, 0x0

    if-le p2, v0, :cond_13

    return v2

    :cond_13
    move p2, v2

    :goto_14
    if-ge p2, v0, :cond_28

    add-int v3, p1, p2

    .line 177
    aget-char v3, p0, v3

    invoke-virtual {p3, p2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sub-int/2addr v3, v4

    if-eqz v3, :cond_25

    if-gez v3, :cond_24

    return v1

    :cond_24
    return v2

    :cond_25
    add-int/lit8 p2, p2, 0x1

    goto :goto_14

    :cond_28
    return v1
.end method

.method public static parseAsInt(Ljava/lang/String;I)I
    .registers 7

    if-nez p0, :cond_3

    goto :goto_d

    .line 219
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 220
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_e

    :goto_d
    return p1

    :cond_e
    const/4 v1, 0x0

    .line 227
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2b

    const/4 v4, 0x1

    if-ne v2, v3, :cond_21

    .line 229
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 230
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_26

    :cond_21
    const/16 v3, 0x2d

    if-ne v2, v3, :cond_26

    move v1, v4

    :cond_26
    :goto_26
    if-ge v1, v0, :cond_3f

    .line 235
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x39

    if-gt v2, v3, :cond_38

    const/16 v3, 0x30

    if-ge v2, v3, :cond_35

    goto :goto_38

    :cond_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 239
    :cond_38
    :goto_38
    :try_start_38
    invoke-static {p0}, Lcom/fasterxml/jackson/core/io/NumberInput;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0
    :try_end_3c
    .catch Ljava/lang/NumberFormatException; {:try_start_38 .. :try_end_3c} :catch_3e

    double-to-int p0, p0

    return p0

    :catch_3e
    return p1

    .line 246
    :cond_3f
    :try_start_3f
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_43
    .catch Ljava/lang/NumberFormatException; {:try_start_3f .. :try_end_43} :catch_44

    return p0

    :catch_44
    return p1
.end method

.method public static parseAsLong(Ljava/lang/String;J)J
    .registers 8

    if-nez p0, :cond_3

    goto :goto_d

    .line 256
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 257
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_e

    :goto_d
    return-wide p1

    :cond_e
    const/4 v1, 0x0

    .line 264
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2b

    const/4 v4, 0x1

    if-ne v2, v3, :cond_21

    .line 266
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 267
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_26

    :cond_21
    const/16 v3, 0x2d

    if-ne v2, v3, :cond_26

    move v1, v4

    :cond_26
    :goto_26
    if-ge v1, v0, :cond_3f

    .line 272
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x39

    if-gt v2, v3, :cond_38

    const/16 v3, 0x30

    if-ge v2, v3, :cond_35

    goto :goto_38

    :cond_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 276
    :cond_38
    :goto_38
    :try_start_38
    invoke-static {p0}, Lcom/fasterxml/jackson/core/io/NumberInput;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0
    :try_end_3c
    .catch Ljava/lang/NumberFormatException; {:try_start_38 .. :try_end_3c} :catch_3e

    double-to-long p0, p0

    return-wide p0

    :catch_3e
    return-wide p1

    .line 283
    :cond_3f
    :try_start_3f
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_43
    .catch Ljava/lang/NumberFormatException; {:try_start_3f .. :try_end_43} :catch_44

    return-wide p0

    :catch_44
    return-wide p1
.end method

.method public static parseBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;
    .registers 1

    .line 314
    invoke-static {p0}, Lcom/fasterxml/jackson/core/io/BigDecimalParser;->parse(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public static parseBigDecimal([C)Ljava/math/BigDecimal;
    .registers 1

    .line 322
    invoke-static {p0}, Lcom/fasterxml/jackson/core/io/BigDecimalParser;->parse([C)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public static parseBigDecimal([CII)Ljava/math/BigDecimal;
    .registers 3

    .line 318
    invoke-static {p0, p1, p2}, Lcom/fasterxml/jackson/core/io/BigDecimalParser;->parse([CII)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public static parseDouble(Ljava/lang/String;)D
    .registers 3

    .line 307
    const-string v0, "2.2250738585072012e-308"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-wide/16 v0, 0x1

    return-wide v0

    .line 310
    :cond_b
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static parseInt(Ljava/lang/String;)I
    .registers 11

    const/4 v0, 0x0

    .line 79
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 80
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x2d

    const/4 v4, 0x1

    if-ne v1, v3, :cond_f

    move v0, v4

    :cond_f
    const/4 v3, 0x2

    const/16 v5, 0xa

    if-eqz v0, :cond_24

    if-eq v2, v4, :cond_1f

    if-le v2, v5, :cond_19

    goto :goto_1f

    .line 89
    :cond_19
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move v4, v3

    goto :goto_2d

    .line 87
    :cond_1f
    :goto_1f
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_24
    const/16 v6, 0x9

    if-le v2, v6, :cond_2d

    .line 92
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_2d
    :goto_2d
    const/16 v6, 0x39

    if-gt v1, v6, :cond_82

    const/16 v7, 0x30

    if-ge v1, v7, :cond_36

    goto :goto_82

    :cond_36
    sub-int/2addr v1, v7

    if-ge v4, v2, :cond_7d

    add-int/lit8 v8, v4, 0x1

    .line 100
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-gt v9, v6, :cond_78

    if-ge v9, v7, :cond_44

    goto :goto_78

    :cond_44
    mul-int/lit8 v1, v1, 0xa

    sub-int/2addr v9, v7

    add-int/2addr v1, v9

    if-ge v8, v2, :cond_7d

    add-int/2addr v4, v3

    .line 106
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-gt v3, v6, :cond_73

    if-ge v3, v7, :cond_54

    goto :goto_73

    :cond_54
    mul-int/lit8 v1, v1, 0xa

    sub-int/2addr v3, v7

    add-int/2addr v1, v3

    if-ge v4, v2, :cond_7d

    :goto_5a
    add-int/lit8 v3, v4, 0x1

    .line 114
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-gt v4, v6, :cond_6e

    if-ge v4, v7, :cond_65

    goto :goto_6e

    :cond_65
    mul-int/2addr v1, v5

    add-int/lit8 v4, v4, -0x30

    add-int/2addr v1, v4

    if-lt v3, v2, :cond_6c

    goto :goto_7d

    :cond_6c
    move v4, v3

    goto :goto_5a

    .line 116
    :cond_6e
    :goto_6e
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 108
    :cond_73
    :goto_73
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 102
    :cond_78
    :goto_78
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_7d
    :goto_7d
    if-eqz v0, :cond_81

    neg-int p0, v1

    return p0

    :cond_81
    return v1

    .line 96
    :cond_82
    :goto_82
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static parseInt([CII)I
    .registers 5

    add-int v0, p1, p2

    add-int/lit8 v0, v0, -0x1

    .line 37
    aget-char v0, p0, v0

    add-int/lit8 v0, v0, -0x30

    packed-switch p2, :pswitch_data_62

    return v0

    :pswitch_c
    add-int/lit8 p2, p1, 0x1

    .line 41
    aget-char p1, p0, p1

    add-int/lit8 p1, p1, -0x30

    const v1, 0x5f5e100

    mul-int/2addr p1, v1

    add-int/2addr v0, p1

    move p1, p2

    :pswitch_18
    add-int/lit8 p2, p1, 0x1

    .line 43
    aget-char p1, p0, p1

    add-int/lit8 p1, p1, -0x30

    const v1, 0x989680

    mul-int/2addr p1, v1

    add-int/2addr v0, p1

    move p1, p2

    :pswitch_24
    add-int/lit8 p2, p1, 0x1

    .line 45
    aget-char p1, p0, p1

    add-int/lit8 p1, p1, -0x30

    const v1, 0xf4240

    mul-int/2addr p1, v1

    add-int/2addr v0, p1

    move p1, p2

    :pswitch_30
    add-int/lit8 p2, p1, 0x1

    .line 47
    aget-char p1, p0, p1

    add-int/lit8 p1, p1, -0x30

    const v1, 0x186a0

    mul-int/2addr p1, v1

    add-int/2addr v0, p1

    move p1, p2

    :pswitch_3c
    add-int/lit8 p2, p1, 0x1

    .line 49
    aget-char p1, p0, p1

    add-int/lit8 p1, p1, -0x30

    mul-int/lit16 p1, p1, 0x2710

    add-int/2addr v0, p1

    move p1, p2

    :pswitch_46
    add-int/lit8 p2, p1, 0x1

    .line 51
    aget-char p1, p0, p1

    add-int/lit8 p1, p1, -0x30

    mul-int/lit16 p1, p1, 0x3e8

    add-int/2addr v0, p1

    move p1, p2

    :pswitch_50
    add-int/lit8 p2, p1, 0x1

    .line 53
    aget-char p1, p0, p1

    add-int/lit8 p1, p1, -0x30

    mul-int/lit8 p1, p1, 0x64

    add-int/2addr v0, p1

    move p1, p2

    .line 55
    :pswitch_5a
    aget-char p0, p0, p1

    add-int/lit8 p0, p0, -0x30

    mul-int/lit8 p0, p0, 0xa

    add-int/2addr v0, p0

    return v0

    :pswitch_data_62
    .packed-switch 0x2
        :pswitch_5a
        :pswitch_50
        :pswitch_46
        :pswitch_3c
        :pswitch_30
        :pswitch_24
        :pswitch_18
        :pswitch_c
    .end packed-switch
.end method

.method public static parseLong(Ljava/lang/String;)J
    .registers 3

    .line 145
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x9

    if-gt v0, v1, :cond_e

    .line 147
    invoke-static {p0}, Lcom/fasterxml/jackson/core/io/NumberInput;->parseInt(Ljava/lang/String;)I

    move-result p0

    int-to-long v0, p0

    return-wide v0

    .line 150
    :cond_e
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static parseLong([CII)J
    .registers 8

    const/16 v0, 0x9

    sub-int/2addr p2, v0

    .line 130
    invoke-static {p0, p1, p2}, Lcom/fasterxml/jackson/core/io/NumberInput;->parseInt([CII)I

    move-result v1

    int-to-long v1, v1

    const-wide/32 v3, 0x3b9aca00

    mul-long/2addr v1, v3

    add-int/2addr p1, p2

    .line 131
    invoke-static {p0, p1, v0}, Lcom/fasterxml/jackson/core/io/NumberInput;->parseInt([CII)I

    move-result p0

    int-to-long p0, p0

    add-long/2addr v1, p0

    return-wide v1
.end method
