.class public final Lokio/internal/_Utf8Kt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final commonAsUtf8ToByteArray(Ljava/lang/String;)[B
    .registers 13

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    .line 46
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_12
    const-string v3, "copyOf(...)"

    if-ge v2, v1, :cond_f8

    .line 47
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x80

    .line 48
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v6

    if-ltz v6, :cond_f1

    .line 50
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    move v4, v2

    :cond_27
    :goto_27
    if-ge v2, v1, :cond_e9

    .line 140
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 143
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v7

    if-gez v7, :cond_54

    int-to-byte v6, v6

    add-int/lit8 v7, v4, 0x1

    .line 51
    aput-byte v6, v0, v4

    add-int/lit8 v2, v2, 0x1

    :goto_3a
    move v4, v7

    if-ge v2, v1, :cond_27

    .line 149
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v6

    if-gez v6, :cond_27

    add-int/lit8 v6, v2, 0x1

    .line 150
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    add-int/lit8 v7, v4, 0x1

    .line 51
    aput-byte v2, v0, v4

    move v2, v6

    goto :goto_3a

    :cond_54
    const/16 v7, 0x800

    .line 154
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v7

    if-gez v7, :cond_70

    shr-int/lit8 v7, v6, 0x6

    or-int/lit16 v7, v7, 0xc0

    int-to-byte v7, v7

    add-int/lit8 v8, v4, 0x1

    .line 51
    aput-byte v7, v0, v4

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v6, v5

    int-to-byte v6, v6

    add-int/lit8 v4, v4, 0x2

    aput-byte v6, v0, v8

    :goto_6d
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    :cond_70
    const v7, 0xd800

    const/16 v8, 0x3f

    if-gt v7, v6, :cond_ce

    const v7, 0xe000

    if-ge v6, v7, :cond_ce

    const v9, 0xdbff

    .line 177
    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v9

    if-gtz v9, :cond_c5

    add-int/lit8 v9, v2, 0x1

    if-le v1, v9, :cond_c5

    .line 179
    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const v11, 0xdc00

    if-gt v11, v10, :cond_c5

    if-ge v10, v7, :cond_c5

    shl-int/lit8 v6, v6, 0xa

    .line 188
    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v7

    add-int/2addr v6, v7

    const v7, -0x35fdc00

    add-int/2addr v6, v7

    shr-int/lit8 v7, v6, 0x12

    or-int/lit16 v7, v7, 0xf0

    int-to-byte v7, v7

    add-int/lit8 v9, v4, 0x1

    .line 51
    aput-byte v7, v0, v4

    shr-int/lit8 v7, v6, 0xc

    and-int/2addr v7, v8

    or-int/2addr v7, v5

    int-to-byte v7, v7

    add-int/lit8 v10, v4, 0x2

    aput-byte v7, v0, v9

    shr-int/lit8 v7, v6, 0x6

    and-int/2addr v7, v8

    or-int/2addr v7, v5

    int-to-byte v7, v7

    add-int/lit8 v9, v4, 0x3

    aput-byte v7, v0, v10

    and-int/2addr v6, v8

    or-int/2addr v6, v5

    int-to-byte v6, v6

    add-int/lit8 v4, v4, 0x4

    aput-byte v6, v0, v9

    add-int/lit8 v2, v2, 0x2

    goto/16 :goto_27

    :cond_c5
    add-int/lit8 v6, v4, 0x1

    aput-byte v8, v0, v4

    add-int/lit8 v2, v2, 0x1

    move v4, v6

    goto/16 :goto_27

    :cond_ce
    shr-int/lit8 v7, v6, 0xc

    or-int/lit16 v7, v7, 0xe0

    int-to-byte v7, v7

    add-int/lit8 v9, v4, 0x1

    aput-byte v7, v0, v4

    shr-int/lit8 v7, v6, 0x6

    and-int/2addr v7, v8

    or-int/2addr v7, v5

    int-to-byte v7, v7

    add-int/lit8 v8, v4, 0x2

    aput-byte v7, v0, v9

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v6, v5

    int-to-byte v6, v6

    add-int/lit8 v4, v4, 0x3

    aput-byte v6, v0, v8

    goto :goto_6d

    .line 53
    :cond_e9
    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_f1
    int-to-byte v3, v4

    .line 55
    aput-byte v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_12

    .line 58
    :cond_f8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-static {v0, p0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final commonToUtf8String([BII)Ljava/lang/String;
    .registers 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const-string v3, "<this>"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz v1, :cond_18d

    .line 28
    array-length v3, v0

    if-gt v2, v3, :cond_18d

    if-gt v1, v2, :cond_18d

    sub-int v3, v2, v1

    .line 31
    new-array v3, v3, [C

    const/4 v4, 0x0

    move v5, v4

    :cond_18
    :goto_18
    if-ge v1, v2, :cond_188

    .line 262
    aget-byte v6, v0, v1

    if-ltz v6, :cond_34

    int-to-char v6, v6

    add-int/lit8 v7, v5, 0x1

    .line 35
    aput-char v6, v3, v5

    add-int/lit8 v1, v1, 0x1

    :goto_25
    move v5, v7

    if-ge v1, v2, :cond_18

    .line 271
    aget-byte v6, v0, v1

    if-ltz v6, :cond_18

    add-int/lit8 v1, v1, 0x1

    int-to-char v6, v6

    add-int/lit8 v7, v5, 0x1

    .line 35
    aput-char v6, v3, v5

    goto :goto_25

    :cond_34
    shr-int/lit8 v7, v6, 0x5

    const/4 v8, -0x2

    const/16 v10, 0x80

    const v11, 0xfffd

    const/4 v12, 0x1

    if-ne v7, v8, :cond_73

    add-int/lit8 v7, v1, 0x1

    if-gt v2, v7, :cond_4d

    int-to-char v6, v11

    add-int/lit8 v7, v5, 0x1

    aput-char v6, v3, v5

    .line 277
    :goto_48
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_4a
    :goto_4a
    move v5, v7

    :goto_4b
    move v9, v12

    goto :goto_71

    .line 404
    :cond_4d
    aget-byte v7, v0, v7

    and-int/lit16 v8, v7, 0xc0

    if-ne v8, v10, :cond_6b

    xor-int/lit16 v7, v7, 0xf80

    shl-int/lit8 v6, v6, 0x6

    xor-int/2addr v6, v7

    if-ge v6, v10, :cond_62

    int-to-char v6, v11

    add-int/lit8 v7, v5, 0x1

    .line 35
    aput-char v6, v3, v5

    .line 277
    :goto_5f
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_68

    :cond_62
    int-to-char v6, v6

    add-int/lit8 v7, v5, 0x1

    .line 35
    aput-char v6, v3, v5

    goto :goto_5f

    :goto_68
    move v5, v7

    :goto_69
    const/4 v9, 0x2

    goto :goto_71

    :cond_6b
    int-to-char v6, v11

    add-int/lit8 v7, v5, 0x1

    aput-char v6, v3, v5

    goto :goto_48

    :goto_71
    add-int/2addr v1, v9

    goto :goto_18

    :cond_73
    shr-int/lit8 v7, v6, 0x4

    const v13, 0xe000

    const v14, 0xd800

    const/4 v15, 0x3

    if-ne v7, v8, :cond_dc

    add-int/lit8 v7, v1, 0x2

    if-gt v2, v7, :cond_94

    int-to-char v6, v11

    add-int/lit8 v7, v5, 0x1

    aput-char v6, v3, v5

    .line 281
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    add-int/lit8 v5, v1, 0x1

    if-le v2, v5, :cond_4a

    .line 443
    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xc0

    if-ne v5, v10, :cond_4a

    :goto_93
    goto :goto_68

    :cond_94
    add-int/lit8 v8, v1, 0x1

    .line 454
    aget-byte v8, v0, v8

    and-int/lit16 v9, v8, 0xc0

    if-ne v9, v10, :cond_d3

    .line 459
    aget-byte v7, v0, v7

    and-int/lit16 v9, v7, 0xc0

    if-ne v9, v10, :cond_cb

    const v9, -0x1e080

    xor-int/2addr v7, v9

    shl-int/lit8 v8, v8, 0x6

    xor-int/2addr v7, v8

    shl-int/lit8 v6, v6, 0xc

    xor-int/2addr v6, v7

    const/16 v7, 0x800

    if-ge v6, v7, :cond_b8

    int-to-char v6, v11

    add-int/lit8 v7, v5, 0x1

    .line 35
    aput-char v6, v3, v5

    .line 281
    :goto_b5
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_c8

    :cond_b8
    if-gt v14, v6, :cond_c2

    if-ge v6, v13, :cond_c2

    int-to-char v6, v11

    add-int/lit8 v7, v5, 0x1

    .line 35
    aput-char v6, v3, v5

    goto :goto_b5

    :cond_c2
    int-to-char v6, v6

    add-int/lit8 v7, v5, 0x1

    aput-char v6, v3, v5

    goto :goto_b5

    :goto_c8
    move v5, v7

    :goto_c9
    move v9, v15

    goto :goto_71

    :cond_cb
    int-to-char v6, v11

    add-int/lit8 v7, v5, 0x1

    aput-char v6, v3, v5

    .line 281
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_93

    :cond_d3
    int-to-char v6, v11

    add-int/lit8 v7, v5, 0x1

    .line 35
    aput-char v6, v3, v5

    .line 281
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_4a

    :cond_dc
    shr-int/lit8 v7, v6, 0x3

    if-ne v7, v8, :cond_17f

    add-int/lit8 v7, v1, 0x3

    if-gt v2, v7, :cond_106

    add-int/lit8 v6, v5, 0x1

    .line 35
    aput-char v11, v3, v5

    .line 297
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    add-int/lit8 v5, v1, 0x1

    if-le v2, v5, :cond_103

    .line 503
    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xc0

    if-ne v5, v10, :cond_103

    add-int/lit8 v5, v1, 0x2

    if-le v2, v5, :cond_100

    .line 507
    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xc0

    if-ne v5, v10, :cond_100

    :goto_fe
    move v5, v6

    goto :goto_c9

    :cond_100
    :goto_100
    move v5, v6

    goto/16 :goto_69

    :cond_103
    :goto_103
    move v5, v6

    goto/16 :goto_4b

    :cond_106
    add-int/lit8 v8, v1, 0x1

    .line 518
    aget-byte v8, v0, v8

    and-int/lit16 v9, v8, 0xc0

    if-ne v9, v10, :cond_178

    add-int/lit8 v9, v1, 0x2

    .line 523
    aget-byte v9, v0, v9

    and-int/lit16 v12, v9, 0xc0

    if-ne v12, v10, :cond_171

    .line 528
    aget-byte v7, v0, v7

    and-int/lit16 v12, v7, 0xc0

    if-ne v12, v10, :cond_16a

    const v10, 0x381f80

    xor-int/2addr v7, v10

    shl-int/lit8 v9, v9, 0x6

    xor-int/2addr v7, v9

    shl-int/lit8 v8, v8, 0xc

    xor-int/2addr v7, v8

    shl-int/lit8 v6, v6, 0x12

    xor-int/2addr v6, v7

    const v7, 0x10ffff

    if-le v6, v7, :cond_135

    add-int/lit8 v6, v5, 0x1

    .line 35
    aput-char v11, v3, v5

    .line 297
    :goto_132
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_166

    :cond_135
    if-gt v14, v6, :cond_13e

    if-ge v6, v13, :cond_13e

    add-int/lit8 v6, v5, 0x1

    .line 35
    aput-char v11, v3, v5

    goto :goto_132

    :cond_13e
    const/high16 v7, 0x10000

    if-ge v6, v7, :cond_147

    add-int/lit8 v6, v5, 0x1

    aput-char v11, v3, v5

    goto :goto_132

    :cond_147
    if-eq v6, v11, :cond_161

    ushr-int/lit8 v7, v6, 0xa

    const v8, 0xd7c0

    add-int/2addr v7, v8

    int-to-char v7, v7

    add-int/lit8 v8, v5, 0x1

    aput-char v7, v3, v5

    and-int/lit16 v6, v6, 0x3ff

    const v7, 0xdc00

    add-int/2addr v6, v7

    int-to-char v6, v6

    add-int/lit8 v5, v5, 0x2

    aput-char v6, v3, v8

    move v6, v5

    goto :goto_132

    :cond_161
    add-int/lit8 v6, v5, 0x1

    aput-char v11, v3, v5

    goto :goto_132

    :goto_166
    const/4 v9, 0x4

    move v5, v6

    goto/16 :goto_71

    :cond_16a
    add-int/lit8 v6, v5, 0x1

    aput-char v11, v3, v5

    .line 297
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_fe

    :cond_171
    add-int/lit8 v6, v5, 0x1

    .line 35
    aput-char v11, v3, v5

    .line 297
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_100

    :cond_178
    add-int/lit8 v6, v5, 0x1

    .line 35
    aput-char v11, v3, v5

    .line 297
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_103

    :cond_17f
    add-int/lit8 v6, v5, 0x1

    .line 35
    aput-char v11, v3, v5

    add-int/lit8 v1, v1, 0x1

    move v5, v6

    goto/16 :goto_18

    .line 38
    :cond_188
    invoke-static {v3, v4, v5}, Lkotlin/text/StringsKt;->concatToString([CII)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 29
    :cond_18d
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " beginIndex="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " endIndex="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static synthetic commonToUtf8String$default([BIIILjava/lang/Object;)Ljava/lang/String;
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_5

    const/4 p1, 0x0

    :cond_5
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_a

    .line 27
    array-length p2, p0

    :cond_a
    invoke-static {p0, p1, p2}, Lokio/internal/_Utf8Kt;->commonToUtf8String([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
