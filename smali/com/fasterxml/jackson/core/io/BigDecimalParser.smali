.class public final Lcom/fasterxml/jackson/core/io/BigDecimalParser;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final chars:[C


# direct methods
.method constructor <init>([C)V
    .registers 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/fasterxml/jackson/core/io/BigDecimalParser;->chars:[C

    return-void
.end method

.method private adjustScale(IJ)I
    .registers 8

    int-to-long v0, p1

    sub-long/2addr v0, p2

    const-wide/32 v2, 0x7fffffff

    cmp-long p0, v0, v2

    if-gtz p0, :cond_12

    const-wide/32 v2, -0x80000000

    cmp-long p0, v0, v2

    if-ltz p0, :cond_12

    long-to-int p0, v0

    return p0

    .line 168
    :cond_12
    new-instance p0, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scale out of range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " while adjusting scale "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " to exponent "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static parse(Ljava/lang/String;)Ljava/math/BigDecimal;
    .registers 1

    .line 32
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-static {p0}, Lcom/fasterxml/jackson/core/io/BigDecimalParser;->parse([C)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public static parse([C)Ljava/math/BigDecimal;
    .registers 6

    .line 43
    array-length v0, p0

    const/16 v1, 0x1f4

    if-ge v0, v1, :cond_d

    .line 46
    :try_start_5
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>([C)V

    return-object v0

    :catch_b
    move-exception v0

    goto :goto_19

    .line 48
    :cond_d
    new-instance v1, Lcom/fasterxml/jackson/core/io/BigDecimalParser;

    invoke-direct {v1, p0}, Lcom/fasterxml/jackson/core/io/BigDecimalParser;-><init>([C)V

    div-int/lit8 v0, v0, 0xa

    invoke-direct {v1, v0}, Lcom/fasterxml/jackson/core/io/BigDecimalParser;->parseBigDecimal(I)Ljava/math/BigDecimal;

    move-result-object p0
    :try_end_18
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_18} :catch_b

    return-object p0

    .line 50
    :goto_19
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_21

    .line 53
    const-string v0, "Not a valid number representation"

    .line 56
    :cond_21
    array-length v1, p0

    const/16 v2, 0x3e8

    if-gt v1, v2, :cond_2c

    .line 57
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([C)V

    goto :goto_50

    .line 59
    :cond_2c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p0, v4, v2}, Ljava/util/Arrays;->copyOfRange([CII)[C

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "(truncated, full length is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " chars)"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 62
    :goto_50
    new-instance p0, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Value \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" can not be represented as `java.math.BigDecimal`, reason: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static parse([CII)Ljava/math/BigDecimal;
    .registers 4

    if-gtz p1, :cond_5

    .line 36
    array-length v0, p0

    if-eq p2, v0, :cond_a

    :cond_5
    add-int/2addr p2, p1

    .line 37
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->copyOfRange([CII)[C

    move-result-object p0

    .line 39
    :cond_a
    invoke-static {p0}, Lcom/fasterxml/jackson/core/io/BigDecimalParser;->parse([C)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method private parseBigDecimal(I)Ljava/math/BigDecimal;
    .registers 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 75
    iget-object v2, v0, Lcom/fasterxml/jackson/core/io/BigDecimalParser;->chars:[C

    array-length v2, v2

    const/4 v4, -0x1

    move v6, v4

    move v8, v6

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_10
    if-ge v5, v2, :cond_84

    .line 78
    iget-object v14, v0, Lcom/fasterxml/jackson/core/io/BigDecimalParser;->chars:[C

    aget-char v14, v14, v5

    const/16 v15, 0x2b

    .line 79
    const-string v3, "Multiple signs in number"

    const/16 v16, 0x1

    const-string v13, "Multiple signs in exponent"

    if-eq v14, v15, :cond_6a

    const/16 v15, 0x45

    if-eq v14, v15, :cond_5e

    const/16 v15, 0x65

    if-eq v14, v15, :cond_5e

    const/16 v15, 0x2d

    if-eq v14, v15, :cond_43

    const/16 v3, 0x2e

    if-eq v14, v3, :cond_37

    if-ltz v8, :cond_7b

    if-ne v6, v4, :cond_7b

    add-int/lit8 v7, v7, 0x1

    goto :goto_7b

    :cond_37
    if-gez v8, :cond_3b

    move v8, v5

    goto :goto_7b

    .line 118
    :cond_3b
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "Multiple decimal points"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_43
    if-ltz v6, :cond_50

    if-nez v10, :cond_4a

    :goto_47
    move/from16 v10, v16

    goto :goto_7b

    .line 97
    :cond_4a
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0, v13}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_50
    if-nez v9, :cond_58

    add-int/lit8 v11, v5, 0x1

    move/from16 v9, v16

    move v12, v9

    goto :goto_7b

    .line 102
    :cond_58
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5e
    if-gez v6, :cond_62

    move v6, v5

    goto :goto_7b

    .line 112
    :cond_62
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "Multiple exponent markers"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6a
    if-ltz v6, :cond_75

    if-nez v10, :cond_6f

    goto :goto_47

    .line 83
    :cond_6f
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0, v13}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_75
    if-nez v9, :cond_7e

    add-int/lit8 v11, v5, 0x1

    move/from16 v9, v16

    :cond_7b
    :goto_7b
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    .line 88
    :cond_7e
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_84
    const/16 v16, 0x1

    if-ltz v6, :cond_9f

    .line 133
    new-instance v3, Ljava/lang/String;

    iget-object v4, v0, Lcom/fasterxml/jackson/core/io/BigDecimalParser;->chars:[C

    add-int/lit8 v5, v6, 0x1

    sub-int/2addr v2, v6

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v3, v4, v5, v2}, Ljava/lang/String;-><init>([CII)V

    .line 134
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v4, v3

    .line 135
    invoke-direct {v0, v7, v4, v5}, Lcom/fasterxml/jackson/core/io/BigDecimalParser;->adjustScale(IJ)I

    move-result v7

    move v2, v6

    goto :goto_a0

    :cond_9f
    const/4 v3, 0x0

    :goto_a0
    if-ltz v8, :cond_b7

    sub-int v4, v8, v11

    .line 144
    invoke-direct {v0, v11, v4, v3, v1}, Lcom/fasterxml/jackson/core/io/BigDecimalParser;->toBigDecimalRec(IIII)Ljava/math/BigDecimal;

    move-result-object v4

    sub-int/2addr v2, v8

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v8, v8, 0x1

    sub-int/2addr v3, v2

    .line 147
    invoke-direct {v0, v8, v2, v3, v1}, Lcom/fasterxml/jackson/core/io/BigDecimalParser;->toBigDecimalRec(IIII)Ljava/math/BigDecimal;

    move-result-object v0

    .line 149
    invoke-virtual {v4, v0}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_bc

    :cond_b7
    sub-int/2addr v2, v11

    .line 151
    invoke-direct {v0, v11, v2, v3, v1}, Lcom/fasterxml/jackson/core/io/BigDecimalParser;->toBigDecimalRec(IIII)Ljava/math/BigDecimal;

    move-result-object v0

    :goto_bc
    if-eqz v7, :cond_c2

    .line 155
    invoke-virtual {v0, v7}, Ljava/math/BigDecimal;->setScale(I)Ljava/math/BigDecimal;

    move-result-object v0

    :cond_c2
    if-eqz v12, :cond_c8

    .line 159
    invoke-virtual {v0}, Ljava/math/BigDecimal;->negate()Ljava/math/BigDecimal;

    move-result-object v0

    :cond_c8
    return-object v0
.end method

.method private toBigDecimalRec(IIII)Ljava/math/BigDecimal;
    .registers 7

    if-le p2, p4, :cond_16

    .line 177
    div-int/lit8 v0, p2, 0x2

    add-int v1, p3, p2

    sub-int/2addr v1, v0

    .line 178
    invoke-direct {p0, p1, v0, v1, p4}, Lcom/fasterxml/jackson/core/io/BigDecimalParser;->toBigDecimalRec(IIII)Ljava/math/BigDecimal;

    move-result-object v1

    add-int/2addr p1, v0

    sub-int/2addr p2, v0

    .line 179
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/core/io/BigDecimalParser;->toBigDecimalRec(IIII)Ljava/math/BigDecimal;

    move-result-object p0

    .line 181
    invoke-virtual {v1, p0}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0

    :cond_16
    if-nez p2, :cond_1b

    .line 184
    sget-object p0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    return-object p0

    :cond_1b
    new-instance p4, Ljava/math/BigDecimal;

    iget-object p0, p0, Lcom/fasterxml/jackson/core/io/BigDecimalParser;->chars:[C

    invoke-direct {p4, p0, p1, p2}, Ljava/math/BigDecimal;-><init>([CII)V

    invoke-virtual {p4, p3}, Ljava/math/BigDecimal;->movePointRight(I)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method
