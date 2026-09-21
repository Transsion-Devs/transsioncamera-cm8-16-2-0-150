.class public final Lokio/Utf8;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final HIGH_SURROGATE_HEADER:I = 0xd7c0

.field public static final LOG_SURROGATE_HEADER:I = 0xdc00

.field public static final MASK_2BYTES:I = 0xf80

.field public static final MASK_3BYTES:I = -0x1e080

.field public static final MASK_4BYTES:I = 0x381f80

.field public static final REPLACEMENT_BYTE:B = 0x3ft

.field public static final REPLACEMENT_CHARACTER:C = '\ufffd'

.field public static final REPLACEMENT_CODE_POINT:I = 0xfffd


# direct methods
.method public static final isIsoControl(I)Z
    .registers 2

    if-ltz p0, :cond_7

    const/16 v0, 0x20

    if-ge p0, v0, :cond_7

    goto :goto_f

    :cond_7
    const/16 v0, 0x7f

    if-gt v0, p0, :cond_11

    const/16 v0, 0xa0

    if-ge p0, v0, :cond_11

    :goto_f
    const/4 p0, 0x1

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method public static final isUtf8Continuation(B)Z
    .registers 2

    and-int/lit16 p0, p0, 0xc0

    const/16 v0, 0x80

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public static final process2Utf8Bytes([BIILkotlin/jvm/functions/Function1;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lkotlin/jvm/functions/Function1;",
            ")I"
        }
    .end annotation

    const v0, 0xfffd

    .line 398
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 0
    const-string v1, "<this>"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "yield"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v1, p1, 0x1

    const/4 v2, 0x1

    if-gt p2, v1, :cond_1a

    .line 398
    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return v2

    .line 403
    :cond_1a
    aget-byte p1, p0, p1

    .line 404
    aget-byte p0, p0, v1

    and-int/lit16 p2, p0, 0xc0

    const/16 v1, 0x80

    if-ne p2, v1, :cond_38

    xor-int/lit16 p0, p0, 0xf80

    shl-int/lit8 p1, p1, 0x6

    xor-int/2addr p0, p1

    if-ge p0, v1, :cond_2f

    .line 419
    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_36

    .line 422
    :cond_2f
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p3, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_36
    const/4 p0, 0x2

    return p0

    .line 406
    :cond_38
    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return v2
.end method

.method public static final process3Utf8Bytes([BIILkotlin/jvm/functions/Function1;)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lkotlin/jvm/functions/Function1;",
            ")I"
        }
    .end annotation

    const v0, 0xfffd

    .line 442
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 0
    const-string v1, "<this>"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "yield"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v1, p1, 0x2

    const/16 v2, 0x80

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-gt p2, v1, :cond_27

    .line 442
    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr p1, v3

    if-le p2, p1, :cond_26

    .line 443
    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xc0

    if-ne p0, v2, :cond_26

    return v4

    :cond_26
    return v3

    .line 453
    :cond_27
    aget-byte p2, p0, p1

    add-int/2addr p1, v3

    .line 454
    aget-byte p1, p0, p1

    and-int/lit16 v5, p1, 0xc0

    if-ne v5, v2, :cond_63

    .line 459
    aget-byte p0, p0, v1

    and-int/lit16 v1, p0, 0xc0

    if-ne v1, v2, :cond_5f

    const v1, -0x1e080

    xor-int/2addr p0, v1

    shl-int/lit8 p1, p1, 0x6

    xor-int/2addr p0, p1

    shl-int/lit8 p1, p2, 0xc

    xor-int/2addr p0, p1

    const/16 p1, 0x800

    if-ge p0, p1, :cond_48

    .line 475
    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5d

    :cond_48
    const p1, 0xd800

    if-gt p1, p0, :cond_56

    const p1, 0xe000

    if-ge p0, p1, :cond_56

    .line 478
    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5d

    .line 481
    :cond_56
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p3, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5d
    const/4 p0, 0x3

    return p0

    .line 461
    :cond_5f
    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return v4

    .line 456
    :cond_63
    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return v3
.end method

.method public static final process4Utf8Bytes([BIILkotlin/jvm/functions/Function1;)I
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lkotlin/jvm/functions/Function1;",
            ")I"
        }
    .end annotation

    const v0, 0xfffd

    .line 502
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 0
    const-string v1, "<this>"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "yield"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v1, p1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/16 v4, 0x80

    const/4 v5, 0x3

    if-gt p2, v1, :cond_33

    .line 502
    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p3, p1, 0x1

    if-le p2, p3, :cond_32

    .line 503
    aget-byte p3, p0, p3

    and-int/lit16 p3, p3, 0xc0

    if-ne p3, v4, :cond_32

    add-int/2addr p1, v2

    if-le p2, p1, :cond_31

    .line 507
    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xc0

    if-ne p0, v4, :cond_31

    return v5

    :cond_31
    return v2

    :cond_32
    return v3

    .line 517
    :cond_33
    aget-byte p2, p0, p1

    add-int/lit8 v6, p1, 0x1

    .line 518
    aget-byte v6, p0, v6

    and-int/lit16 v7, v6, 0xc0

    if-ne v7, v4, :cond_87

    add-int/2addr p1, v2

    .line 523
    aget-byte p1, p0, p1

    and-int/lit16 v3, p1, 0xc0

    if-ne v3, v4, :cond_83

    .line 528
    aget-byte p0, p0, v1

    and-int/lit16 v1, p0, 0xc0

    if-ne v1, v4, :cond_7f

    const v1, 0x381f80

    xor-int/2addr p0, v1

    shl-int/lit8 p1, p1, 0x6

    xor-int/2addr p0, p1

    shl-int/lit8 p1, v6, 0xc

    xor-int/2addr p0, p1

    shl-int/lit8 p1, p2, 0x12

    xor-int/2addr p0, p1

    const p1, 0x10ffff

    if-le p0, p1, :cond_60

    .line 545
    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7d

    :cond_60
    const p1, 0xd800

    if-gt p1, p0, :cond_6e

    const p1, 0xe000

    if-ge p0, p1, :cond_6e

    .line 548
    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7d

    :cond_6e
    const/high16 p1, 0x10000

    if-ge p0, p1, :cond_76

    .line 551
    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7d

    .line 554
    :cond_76
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p3, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_7d
    const/4 p0, 0x4

    return p0

    .line 530
    :cond_7f
    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return v5

    .line 525
    :cond_83
    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return v2

    .line 520
    :cond_87
    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return v3
.end method

.method public static final processUtf16Chars([BIILkotlin/jvm/functions/Function1;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    const v0, 0xfffd

    .line 295
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    .line 0
    const-string v2, "<this>"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "yield"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_11
    :goto_11
    if-ge p1, p2, :cond_169

    .line 262
    aget-byte v2, p0, p1

    if-ltz v2, :cond_32

    int-to-char v2, v2

    .line 266
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {p3, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    :goto_21
    if-ge p1, p2, :cond_11

    .line 271
    aget-byte v2, p0, p1

    if-ltz v2, :cond_11

    add-int/lit8 p1, p1, 0x1

    int-to-char v2, v2

    .line 272
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {p3, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_21

    :cond_32
    shr-int/lit8 v3, v2, 0x5

    const/4 v4, -0x2

    const/4 v5, 0x2

    const/16 v6, 0x80

    const/4 v7, 0x1

    if-ne v3, v4, :cond_67

    add-int/lit8 v3, p1, 0x1

    if-gt p2, v3, :cond_4b

    :cond_3f
    int-to-char v2, v0

    .line 277
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {p3, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_49
    :goto_49
    move v5, v7

    goto :goto_65

    .line 404
    :cond_4b
    aget-byte v3, p0, v3

    and-int/lit16 v4, v3, 0xc0

    if-ne v4, v6, :cond_3f

    xor-int/lit16 v3, v3, 0xf80

    shl-int/lit8 v2, v2, 0x6

    xor-int/2addr v2, v3

    if-ge v2, v6, :cond_63

    int-to-char v2, v0

    .line 277
    :goto_59
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {p3, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_65

    :cond_63
    int-to-char v2, v2

    goto :goto_59

    :cond_65
    :goto_65
    add-int/2addr p1, v5

    goto :goto_11

    :cond_67
    shr-int/lit8 v3, v2, 0x4

    const v8, 0xe000

    const v9, 0xd800

    const/4 v10, 0x3

    if-ne v3, v4, :cond_d2

    add-int/lit8 v3, p1, 0x2

    if-gt p2, v3, :cond_8b

    int-to-char v2, v0

    .line 281
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {p3, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    add-int/lit8 v2, p1, 0x1

    if-le p2, v2, :cond_49

    .line 443
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xc0

    if-ne v2, v6, :cond_49

    goto :goto_65

    :cond_8b
    add-int/lit8 v4, p1, 0x1

    .line 454
    aget-byte v4, p0, v4

    and-int/lit16 v11, v4, 0xc0

    if-ne v11, v6, :cond_c6

    .line 459
    aget-byte v3, p0, v3

    and-int/lit16 v7, v3, 0xc0

    if-ne v7, v6, :cond_bb

    const v5, -0x1e080

    xor-int/2addr v3, v5

    shl-int/lit8 v4, v4, 0x6

    xor-int/2addr v3, v4

    shl-int/lit8 v2, v2, 0xc

    xor-int/2addr v2, v3

    const/16 v3, 0x800

    if-ge v2, v3, :cond_b2

    :goto_a7
    int-to-char v2, v0

    .line 281
    :goto_a8
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {p3, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_b9

    :cond_b2
    if-gt v9, v2, :cond_b7

    if-ge v2, v8, :cond_b7

    goto :goto_a7

    :cond_b7
    int-to-char v2, v2

    goto :goto_a8

    :goto_b9
    move v5, v10

    goto :goto_65

    :cond_bb
    int-to-char v2, v0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {p3, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_65

    :cond_c6
    int-to-char v2, v0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {p3, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_49

    :cond_d2
    shr-int/lit8 v3, v2, 0x3

    if-ne v3, v4, :cond_162

    add-int/lit8 v3, p1, 0x3

    if-gt p2, v3, :cond_f4

    .line 295
    invoke-interface {p3, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    add-int/lit8 v2, p1, 0x1

    if-le p2, v2, :cond_49

    .line 503
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xc0

    if-ne v2, v6, :cond_49

    add-int/lit8 v2, p1, 0x2

    if-le p2, v2, :cond_65

    .line 507
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xc0

    if-ne v2, v6, :cond_65

    :goto_f3
    goto :goto_b9

    :cond_f4
    add-int/lit8 v4, p1, 0x1

    .line 518
    aget-byte v4, p0, v4

    and-int/lit16 v11, v4, 0xc0

    if-ne v11, v6, :cond_15b

    add-int/lit8 v7, p1, 0x2

    .line 523
    aget-byte v7, p0, v7

    and-int/lit16 v11, v7, 0xc0

    if-ne v11, v6, :cond_154

    .line 528
    aget-byte v3, p0, v3

    and-int/lit16 v5, v3, 0xc0

    if-ne v5, v6, :cond_14e

    const v5, 0x381f80

    xor-int/2addr v3, v5

    shl-int/lit8 v5, v7, 0x6

    xor-int/2addr v3, v5

    shl-int/lit8 v4, v4, 0xc

    xor-int/2addr v3, v4

    shl-int/lit8 v2, v2, 0x12

    xor-int/2addr v2, v3

    const v3, 0x10ffff

    if-le v2, v3, :cond_122

    .line 295
    :cond_11c
    :goto_11c
    invoke-interface {p3, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    :goto_11f
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_14b

    :cond_122
    if-gt v9, v2, :cond_127

    if-ge v2, v8, :cond_127

    goto :goto_11c

    :cond_127
    const/high16 v3, 0x10000

    if-ge v2, v3, :cond_12c

    goto :goto_11c

    :cond_12c
    if-eq v2, v0, :cond_11c

    ushr-int/lit8 v3, v2, 0xa

    const v4, 0xd7c0

    add-int/2addr v3, v4

    int-to-char v3, v3

    .line 291
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {p3, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v2, v2, 0x3ff

    const v3, 0xdc00

    add-int/2addr v2, v3

    int-to-char v2, v2

    .line 293
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {p3, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11f

    :goto_14b
    const/4 v5, 0x4

    goto/16 :goto_65

    .line 295
    :cond_14e
    invoke-interface {p3, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_f3

    .line 295
    :cond_154
    invoke-interface {p3, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_65

    .line 295
    :cond_15b
    invoke-interface {p3, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_49

    .line 302
    :cond_162
    invoke-interface {p3, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_11

    :cond_169
    return-void
.end method

.method public static final processUtf8Bytes(Ljava/lang/String;IILkotlin/jvm/functions/Function1;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "yield"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_a
    :goto_a
    if-ge p1, p2, :cond_ee

    .line 140
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x80

    .line 143
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v2

    if-gez v2, :cond_3e

    int-to-byte v0, v0

    .line 145
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    :goto_22
    if-ge p1, p2, :cond_a

    .line 149
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v0

    if-gez v0, :cond_a

    add-int/lit8 v0, p1, 0x1

    .line 150
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    int-to-byte p1, p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-interface {p3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move p1, v0

    goto :goto_22

    :cond_3e
    const/16 v2, 0x800

    .line 154
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v2

    if-gez v2, :cond_60

    shr-int/lit8 v2, v0, 0x6

    or-int/lit16 v2, v2, 0xc0

    int-to-byte v2, v2

    .line 157
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {p3, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v1

    int-to-byte v0, v0

    .line 158
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5d
    add-int/lit8 p1, p1, 0x1

    goto :goto_a

    :cond_60
    const v2, 0xd800

    const/16 v3, 0x3f

    if-gt v2, v0, :cond_c9

    const v2, 0xe000

    if-ge v0, v2, :cond_c9

    const v4, 0xdbff

    .line 177
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v4

    if-gtz v4, :cond_c1

    add-int/lit8 v4, p1, 0x1

    if-le p2, v4, :cond_c1

    .line 179
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const v6, 0xdc00

    if-gt v6, v5, :cond_c1

    if-ge v5, v2, :cond_c1

    shl-int/lit8 v0, v0, 0xa

    .line 188
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/2addr v0, v2

    const v2, -0x35fdc00

    add-int/2addr v0, v2

    shr-int/lit8 v2, v0, 0x12

    or-int/lit16 v2, v2, 0xf0

    int-to-byte v2, v2

    .line 194
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {p3, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    shr-int/lit8 v2, v0, 0xc

    and-int/2addr v2, v3

    or-int/2addr v2, v1

    int-to-byte v2, v2

    .line 195
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {p3, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    shr-int/lit8 v2, v0, 0x6

    and-int/2addr v2, v3

    or-int/2addr v2, v1

    int-to-byte v2, v2

    .line 196
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {p3, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    and-int/2addr v0, v3

    or-int/2addr v0, v1

    int-to-byte v0, v0

    .line 197
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x2

    goto/16 :goto_a

    .line 181
    :cond_c1
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5d

    :cond_c9
    shr-int/lit8 v2, v0, 0xc

    or-int/lit16 v2, v2, 0xe0

    int-to-byte v2, v2

    .line 166
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {p3, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    shr-int/lit8 v2, v0, 0x6

    and-int/2addr v2, v3

    or-int/2addr v2, v1

    int-to-byte v2, v2

    .line 167
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {p3, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v1

    int-to-byte v0, v0

    .line 168
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5d

    :cond_ee
    return-void
.end method

.method public static final processUtf8CodePoints([BIILkotlin/jvm/functions/Function1;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    const v0, 0xfffd

    .line 228
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 0
    const-string v1, "<this>"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "yield"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_11
    :goto_11
    if-ge p1, p2, :cond_13d

    .line 214
    aget-byte v1, p0, p1

    if-ltz v1, :cond_30

    .line 218
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p3, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    :goto_20
    if-ge p1, p2, :cond_11

    .line 222
    aget-byte v1, p0, p1

    if-ltz v1, :cond_11

    add-int/lit8 p1, p1, 0x1

    .line 223
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p3, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_20

    :cond_30
    shr-int/lit8 v2, v1, 0x5

    const/4 v3, -0x2

    const/4 v4, 0x2

    const/16 v5, 0x80

    const/4 v6, 0x1

    if-ne v2, v3, :cond_61

    add-int/lit8 v2, p1, 0x1

    if-gt p2, v2, :cond_44

    .line 228
    :cond_3d
    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_42
    :goto_42
    move v4, v6

    goto :goto_5f

    .line 404
    :cond_44
    aget-byte v2, p0, v2

    and-int/lit16 v3, v2, 0xc0

    if-ne v3, v5, :cond_3d

    xor-int/lit16 v2, v2, 0xf80

    shl-int/lit8 v1, v1, 0x6

    xor-int/2addr v1, v2

    if-ge v1, v5, :cond_57

    .line 228
    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_54
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_5f

    :cond_57
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p3, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_54

    :cond_5f
    :goto_5f
    add-int/2addr p1, v4

    goto :goto_11

    :cond_61
    shr-int/lit8 v2, v1, 0x4

    const v7, 0xe000

    const v8, 0xd800

    const/4 v9, 0x3

    if-ne v2, v3, :cond_bd

    add-int/lit8 v2, p1, 0x2

    if-gt p2, v2, :cond_80

    .line 232
    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    add-int/lit8 v1, p1, 0x1

    if-le p2, v1, :cond_42

    .line 443
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xc0

    if-ne v1, v5, :cond_42

    goto :goto_5f

    :cond_80
    add-int/lit8 v3, p1, 0x1

    .line 454
    aget-byte v3, p0, v3

    and-int/lit16 v10, v3, 0xc0

    if-ne v10, v5, :cond_b7

    .line 459
    aget-byte v2, p0, v2

    and-int/lit16 v6, v2, 0xc0

    if-ne v6, v5, :cond_b1

    const v4, -0x1e080

    xor-int/2addr v2, v4

    shl-int/lit8 v3, v3, 0x6

    xor-int/2addr v2, v3

    shl-int/lit8 v1, v1, 0xc

    xor-int/2addr v1, v2

    const/16 v2, 0x800

    if-ge v1, v2, :cond_a2

    .line 232
    :goto_9c
    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_9f
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_af

    :cond_a2
    if-gt v8, v1, :cond_a7

    if-ge v1, v7, :cond_a7

    goto :goto_9c

    :cond_a7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p3, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9f

    :goto_af
    move v4, v9

    goto :goto_5f

    :cond_b1
    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_5f

    :cond_b7
    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_42

    :cond_bd
    shr-int/lit8 v2, v1, 0x3

    if-ne v2, v3, :cond_136

    add-int/lit8 v2, p1, 0x3

    if-gt p2, v2, :cond_df

    .line 236
    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    add-int/lit8 v1, p1, 0x1

    if-le p2, v1, :cond_42

    .line 503
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xc0

    if-ne v1, v5, :cond_42

    add-int/lit8 v1, p1, 0x2

    if-le p2, v1, :cond_5f

    .line 507
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xc0

    if-ne v1, v5, :cond_5f

    :goto_de
    goto :goto_af

    :cond_df
    add-int/lit8 v3, p1, 0x1

    .line 518
    aget-byte v3, p0, v3

    and-int/lit16 v10, v3, 0xc0

    if-ne v10, v5, :cond_12f

    add-int/lit8 v6, p1, 0x2

    .line 523
    aget-byte v6, p0, v6

    and-int/lit16 v10, v6, 0xc0

    if-ne v10, v5, :cond_128

    .line 528
    aget-byte v2, p0, v2

    and-int/lit16 v4, v2, 0xc0

    if-ne v4, v5, :cond_122

    const v4, 0x381f80

    xor-int/2addr v2, v4

    shl-int/lit8 v4, v6, 0x6

    xor-int/2addr v2, v4

    shl-int/lit8 v3, v3, 0xc

    xor-int/2addr v2, v3

    shl-int/lit8 v1, v1, 0x12

    xor-int/2addr v1, v2

    const v2, 0x10ffff

    if-le v1, v2, :cond_10d

    .line 236
    :goto_107
    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_10a
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_11f

    :cond_10d
    if-gt v8, v1, :cond_112

    if-ge v1, v7, :cond_112

    goto :goto_107

    :cond_112
    const/high16 v2, 0x10000

    if-ge v1, v2, :cond_117

    goto :goto_107

    :cond_117
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p3, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10a

    :goto_11f
    const/4 v4, 0x4

    goto/16 :goto_5f

    :cond_122
    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_de

    :cond_128
    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_5f

    :cond_12f
    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_42

    .line 241
    :cond_136
    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_11

    :cond_13d
    return-void
.end method

.method public static final size(Ljava/lang/String;)J
    .registers 4

    .line 0
    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v2, v0, v1}, Lokio/Utf8;->size$default(Ljava/lang/String;IIILjava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final size(Ljava/lang/String;I)J
    .registers 5

    .line 0
    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lokio/Utf8;->size$default(Ljava/lang/String;IIILjava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final size(Ljava/lang/String;II)J
    .registers 12

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p1, :cond_a1

    if-lt p2, p1, :cond_7e

    .line 80
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p2, v0, :cond_57

    const-wide/16 v0, 0x0

    :goto_11
    if-ge p1, p2, :cond_56

    .line 85
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x80

    const-wide/16 v4, 0x1

    if-ge v2, v3, :cond_21

    add-long/2addr v0, v4

    :goto_1e
    add-int/lit8 p1, p1, 0x1

    goto :goto_11

    :cond_21
    const/16 v3, 0x800

    if-ge v2, v3, :cond_29

    const/4 v2, 0x2

    :goto_26
    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_1e

    :cond_29
    const v3, 0xd800

    if-lt v2, v3, :cond_54

    const v3, 0xdfff

    if-le v2, v3, :cond_34

    goto :goto_54

    :cond_34
    add-int/lit8 v6, p1, 0x1

    if-ge v6, p2, :cond_3d

    .line 100
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_3e

    :cond_3d
    const/4 v7, 0x0

    :goto_3e
    const v8, 0xdbff

    if-gt v2, v8, :cond_51

    const v2, 0xdc00

    if-lt v7, v2, :cond_51

    if-le v7, v3, :cond_4b

    goto :goto_51

    :cond_4b
    const/4 v2, 0x4

    int-to-long v2, v2

    add-long/2addr v0, v2

    add-int/lit8 p1, p1, 0x2

    goto :goto_11

    :cond_51
    :goto_51
    add-long/2addr v0, v4

    move p1, v6

    goto :goto_11

    :cond_54
    :goto_54
    const/4 v2, 0x3

    goto :goto_26

    :cond_56
    return-wide v0

    .line 80
    :cond_57
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "endIndex > string.length: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " > "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 79
    :cond_7e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "endIndex < beginIndex: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " < "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 78
    :cond_a1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "beginIndex < 0: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic size$default(Ljava/lang/String;IIILjava/lang/Object;)J
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_5

    const/4 p1, 0x0

    :cond_5
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_d

    .line 77
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    :cond_d
    invoke-static {p0, p1, p2}, Lokio/Utf8;->size(Ljava/lang/String;II)J

    move-result-wide p0

    return-wide p0
.end method
