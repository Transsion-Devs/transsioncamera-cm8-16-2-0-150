.class public final Lcom/fasterxml/jackson/core/io/JsonStringEncoder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final HB:[B

.field private static final HC:[C

.field private static final instance:Lcom/fasterxml/jackson/core/io/JsonStringEncoder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 24
    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->copyHexChars()[C

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->HC:[C

    .line 26
    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->copyHexBytes()[B

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->HB:[B

    .line 49
    new-instance v0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;

    invoke-direct {v0}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->instance:Lcom/fasterxml/jackson/core/io/JsonStringEncoder;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private _appendByte(IILcom/fasterxml/jackson/core/util/ByteArrayBuilder;I)I
    .registers 5

    .line 605
    invoke-virtual {p3, p4}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->setCurrentSegmentLength(I)V

    const/16 p0, 0x5c

    .line 606
    invoke-virtual {p3, p0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    if-gez p2, :cond_41

    const/16 p0, 0x75

    .line 608
    invoke-virtual {p3, p0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    const/16 p0, 0xff

    if-le p1, p0, :cond_28

    shr-int/lit8 p0, p1, 0x8

    .line 611
    sget-object p2, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->HB:[B

    shr-int/lit8 p4, p1, 0xc

    aget-byte p4, p2, p4

    invoke-virtual {p3, p4}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    and-int/lit8 p0, p0, 0xf

    .line 612
    aget-byte p0, p2, p0

    invoke-virtual {p3, p0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    and-int/lit16 p1, p1, 0xff

    goto :goto_30

    :cond_28
    const/16 p0, 0x30

    .line 615
    invoke-virtual {p3, p0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    .line 616
    invoke-virtual {p3, p0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    .line 618
    :goto_30
    sget-object p0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->HB:[B

    shr-int/lit8 p2, p1, 0x4

    aget-byte p2, p0, p2

    invoke-virtual {p3, p2}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    and-int/lit8 p1, p1, 0xf

    .line 619
    aget-byte p0, p0, p1

    invoke-virtual {p3, p0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    goto :goto_45

    :cond_41
    int-to-byte p0, p2

    .line 621
    invoke-virtual {p3, p0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    .line 623
    :goto_45
    invoke-virtual {p3}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->getCurrentSegmentLength()I

    move-result p0

    return p0
.end method

.method private _appendNamed(I[C)I
    .registers 3

    const/4 p0, 0x1

    int-to-char p1, p1

    .line 599
    aput-char p1, p2, p0

    const/4 p0, 0x2

    return p0
.end method

.method private _appendNumeric(I[C)I
    .registers 5

    const/4 p0, 0x1

    const/16 v0, 0x75

    .line 591
    aput-char v0, p2, p0

    .line 593
    sget-object p0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->HC:[C

    shr-int/lit8 v0, p1, 0x4

    aget-char v0, p0, v0

    const/4 v1, 0x4

    aput-char v0, p2, v1

    and-int/lit8 p1, p1, 0xf

    .line 594
    aget-char p0, p0, p1

    const/4 p1, 0x5

    aput-char p0, p2, p1

    const/4 p0, 0x6

    return p0
.end method

.method private static _convert(II)I
    .registers 5

    const v0, 0xdc00

    if-lt p1, v0, :cond_16

    const v1, 0xdfff

    if-gt p1, v1, :cond_16

    const v1, 0xd800

    sub-int/2addr p0, v1

    shl-int/lit8 p0, p0, 0xa

    const/high16 v1, 0x10000

    add-int/2addr p0, v1

    sub-int/2addr p1, v0

    add-int/2addr p0, p1

    return p0

    .line 629
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Broken surrogate pair: first char 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", second 0x"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "; illegal combination"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static _illegal(I)V
    .registers 2

    .line 635
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Lcom/fasterxml/jackson/core/io/UTF8Writer;->illegalSurrogateDesc(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static _initialByteBufSize(I)I
    .registers 2

    add-int/lit8 v0, p0, 0x6

    shr-int/lit8 p0, p0, 0x1

    add-int/2addr v0, p0

    const/16 p0, 0x18

    .line 651
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/16 v0, 0x7d00

    .line 653
    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method static _initialCharBufSize(I)I
    .registers 3

    shr-int/lit8 v0, p0, 0x3

    add-int/lit8 v0, v0, 0x6

    const/16 v1, 0x3e8

    .line 643
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/2addr p0, v0

    const/16 v0, 0x10

    .line 642
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/16 v0, 0x7d00

    .line 644
    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private _qbuf()[C
    .registers 3

    const/4 p0, 0x6

    .line 583
    new-array p0, p0, [C

    const/4 v0, 0x0

    const/16 v1, 0x5c

    .line 584
    aput-char v1, p0, v0

    const/4 v0, 0x2

    const/16 v1, 0x30

    .line 585
    aput-char v1, p0, v0

    const/4 v0, 0x3

    .line 586
    aput-char v1, p0, v0

    return-object p0
.end method

.method public static getInstance()Lcom/fasterxml/jackson/core/io/JsonStringEncoder;
    .registers 1

    .line 60
    sget-object v0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->instance:Lcom/fasterxml/jackson/core/io/JsonStringEncoder;

    return-object v0
.end method


# virtual methods
.method public encodeAsUTF8(Ljava/lang/String;)[B
    .registers 11

    .line 387
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    .line 389
    invoke-static {p0}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_initialByteBufSize(I)I

    move-result v0

    new-array v1, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v2

    move v5, v4

    :goto_e
    if-ge v4, p0, :cond_f4

    add-int/lit8 v6, v4, 0x1

    .line 395
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_16
    const/16 v7, 0x7f

    if-gt v4, v7, :cond_3f

    if-lt v5, v0, :cond_2b

    if-nez v3, :cond_22

    .line 401
    invoke-static {v1, v5}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->fromInitial([BI)Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;

    move-result-object v3

    .line 403
    :cond_22
    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v0

    .line 404
    array-length v1, v0

    move v5, v1

    move-object v1, v0

    move v0, v5

    move v5, v2

    :cond_2b
    add-int/lit8 v7, v5, 0x1

    int-to-byte v4, v4

    .line 407
    aput-byte v4, v1, v5

    if-lt v6, p0, :cond_35

    move v5, v7

    goto/16 :goto_f4

    :cond_35
    add-int/lit8 v4, v6, 0x1

    .line 411
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move v6, v4

    move v4, v5

    move v5, v7

    goto :goto_16

    :cond_3f
    if-nez v3, :cond_45

    .line 416
    invoke-static {v1, v5}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->fromInitial([BI)Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;

    move-result-object v3

    :cond_45
    if-lt v5, v0, :cond_4d

    .line 419
    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v1

    .line 420
    array-length v0, v1

    move v5, v2

    :cond_4d
    const/16 v7, 0x800

    if-ge v4, v7, :cond_5e

    add-int/lit8 v7, v5, 0x1

    shr-int/lit8 v8, v4, 0x6

    or-int/lit16 v8, v8, 0xc0

    int-to-byte v8, v8

    .line 424
    aput-byte v8, v1, v5

    :goto_5a
    move v5, v4

    move v4, v6

    goto/16 :goto_dd

    :cond_5e
    const v7, 0xd800

    if-lt v4, v7, :cond_be

    const v7, 0xdfff

    if-le v4, v7, :cond_69

    goto :goto_be

    :cond_69
    const v7, 0xdbff

    if-le v4, v7, :cond_71

    .line 437
    invoke-static {v4}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_illegal(I)V

    :cond_71
    if-lt v6, p0, :cond_76

    .line 441
    invoke-static {v4}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_illegal(I)V

    :cond_76
    add-int/lit8 v7, v6, 0x1

    .line 443
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v4, v6}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_convert(II)I

    move-result v4

    const v6, 0x10ffff

    if-le v4, v6, :cond_88

    .line 445
    invoke-static {v4}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_illegal(I)V

    :cond_88
    add-int/lit8 v6, v5, 0x1

    shr-int/lit8 v8, v4, 0x12

    or-int/lit16 v8, v8, 0xf0

    int-to-byte v8, v8

    .line 447
    aput-byte v8, v1, v5

    if-lt v6, v0, :cond_99

    .line 449
    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v1

    .line 450
    array-length v0, v1

    move v6, v2

    :cond_99
    add-int/lit8 v5, v6, 0x1

    shr-int/lit8 v8, v4, 0xc

    and-int/lit8 v8, v8, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    .line 453
    aput-byte v8, v1, v6

    if-lt v5, v0, :cond_af

    .line 455
    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v0

    .line 456
    array-length v1, v0

    move v5, v1

    move-object v1, v0

    move v0, v5

    move v5, v2

    :cond_af
    add-int/lit8 v6, v5, 0x1

    shr-int/lit8 v8, v4, 0x6

    and-int/lit8 v8, v8, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    .line 459
    aput-byte v8, v1, v5

    move v5, v4

    move v4, v7

    move v7, v6

    goto :goto_dd

    :cond_be
    :goto_be
    add-int/lit8 v7, v5, 0x1

    shr-int/lit8 v8, v4, 0xc

    or-int/lit16 v8, v8, 0xe0

    int-to-byte v8, v8

    .line 428
    aput-byte v8, v1, v5

    if-lt v7, v0, :cond_cf

    .line 430
    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v1

    .line 431
    array-length v0, v1

    move v7, v2

    :cond_cf
    add-int/lit8 v5, v7, 0x1

    shr-int/lit8 v8, v4, 0x6

    and-int/lit8 v8, v8, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    .line 434
    aput-byte v8, v1, v7

    move v7, v5

    goto/16 :goto_5a

    :goto_dd
    if-lt v7, v0, :cond_e8

    .line 463
    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v0

    .line 464
    array-length v1, v0

    move v7, v1

    move-object v1, v0

    move v0, v7

    move v7, v2

    :cond_e8
    add-int/lit8 v6, v7, 0x1

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    .line 467
    aput-byte v5, v1, v7

    move v5, v6

    goto/16 :goto_e

    :cond_f4
    :goto_f4
    if-nez v3, :cond_fb

    .line 470
    invoke-static {v1, v2, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    return-object p0

    .line 472
    :cond_fb
    invoke-virtual {v3, v5}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->completeAndCoalesce(I)[B

    move-result-object p0

    return-object p0
.end method

.method public quoteAsString(Ljava/lang/String;)[C
    .registers 14

    .line 79
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 80
    invoke-static {v0}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_initialCharBufSize(I)I

    move-result v1

    new-array v1, v1, [C

    .line 81
    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->get7BitOutputEscapes()[I

    move-result-object v2

    .line 82
    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v7, v4

    move v8, v7

    move-object v6, v5

    :goto_14
    if-ge v7, v0, :cond_75

    .line 92
    :goto_16
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ge v9, v3, :cond_5b

    .line 93
    aget v10, v2, v9

    if-eqz v10, :cond_5b

    if-nez v6, :cond_26

    .line 110
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_qbuf()[C

    move-result-object v6

    :cond_26
    add-int/lit8 v9, v7, 0x1

    .line 112
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 113
    aget v10, v2, v7

    if-gez v10, :cond_35

    .line 115
    invoke-direct {p0, v7, v6}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_appendNumeric(I[C)I

    move-result v7

    goto :goto_39

    .line 116
    :cond_35
    invoke-direct {p0, v10, v6}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_appendNamed(I[C)I

    move-result v7

    :goto_39
    add-int v10, v8, v7

    .line 118
    array-length v11, v1

    if-le v10, v11, :cond_55

    .line 119
    array-length v10, v1

    sub-int/2addr v10, v8

    if-lez v10, :cond_45

    .line 121
    invoke-static {v6, v4, v1, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_45
    if-nez v5, :cond_4b

    .line 124
    invoke-static {v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->fromInitial([C)Lcom/fasterxml/jackson/core/util/TextBuffer;

    move-result-object v5

    .line 126
    :cond_4b
    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v1

    sub-int/2addr v7, v10

    .line 128
    invoke-static {v6, v10, v1, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v8, v7

    goto :goto_59

    .line 131
    :cond_55
    invoke-static {v6, v4, v1, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v8, v10

    :goto_59
    move v7, v9

    goto :goto_14

    .line 96
    :cond_5b
    array-length v10, v1

    if-lt v8, v10, :cond_69

    if-nez v5, :cond_64

    .line 98
    invoke-static {v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->fromInitial([C)Lcom/fasterxml/jackson/core/util/TextBuffer;

    move-result-object v5

    .line 100
    :cond_64
    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v1

    move v8, v4

    :cond_69
    add-int/lit8 v10, v8, 0x1

    .line 103
    aput-char v9, v1, v8

    add-int/lit8 v7, v7, 0x1

    if-lt v7, v0, :cond_73

    move v8, v10

    goto :goto_75

    :cond_73
    move v8, v10

    goto :goto_16

    :cond_75
    :goto_75
    if-nez v5, :cond_7c

    .line 137
    invoke-static {v1, v4, v8}, Ljava/util/Arrays;->copyOfRange([CII)[C

    move-result-object p0

    return-object p0

    .line 139
    :cond_7c
    invoke-virtual {v5, v8}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 140
    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsArray()[C

    move-result-object p0

    return-object p0
.end method

.method public quoteAsUTF8(Ljava/lang/String;)[B
    .registers 13

    .line 281
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 283
    invoke-static {v0}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_initialByteBufSize(I)I

    move-result v1

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v2

    move v5, v4

    :goto_e
    if-ge v4, v0, :cond_106

    .line 288
    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->get7BitOutputEscapes()[I

    move-result-object v6

    .line 292
    :goto_14
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x7f

    if-gt v7, v8, :cond_3d

    .line 293
    aget v9, v6, v7

    if-eqz v9, :cond_21

    goto :goto_3d

    .line 296
    :cond_21
    array-length v8, v1

    if-lt v5, v8, :cond_2f

    if-nez v3, :cond_2a

    .line 298
    invoke-static {v1, v5}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->fromInitial([BI)Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;

    move-result-object v3

    .line 300
    :cond_2a
    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v1

    move v5, v2

    :cond_2f
    add-int/lit8 v8, v5, 0x1

    int-to-byte v7, v7

    .line 303
    aput-byte v7, v1, v5

    add-int/lit8 v4, v4, 0x1

    if-lt v4, v0, :cond_3b

    move v5, v8

    goto/16 :goto_106

    :cond_3b
    move v5, v8

    goto :goto_14

    :cond_3d
    :goto_3d
    if-nez v3, :cond_43

    .line 309
    invoke-static {v1, v5}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->fromInitial([BI)Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;

    move-result-object v3

    .line 311
    :cond_43
    array-length v7, v1

    if-lt v5, v7, :cond_4b

    .line 312
    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v1

    move v5, v2

    :cond_4b
    add-int/lit8 v7, v4, 0x1

    .line 316
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-gt v9, v8, :cond_5f

    .line 318
    aget v1, v6, v9

    .line 320
    invoke-direct {p0, v9, v1, v3, v5}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_appendByte(IILcom/fasterxml/jackson/core/util/ByteArrayBuilder;I)I

    move-result v5

    .line 321
    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->getCurrentSegment()[B

    move-result-object v1

    :goto_5d
    move v4, v7

    goto :goto_e

    :cond_5f
    const/16 v6, 0x7ff

    if-gt v9, v6, :cond_72

    add-int/lit8 v4, v5, 0x1

    shr-int/lit8 v6, v9, 0x6

    or-int/lit16 v6, v6, 0xc0

    int-to-byte v6, v6

    .line 325
    aput-byte v6, v1, v5

    and-int/lit8 v5, v9, 0x3f

    or-int/lit16 v5, v5, 0x80

    goto/16 :goto_f6

    :cond_72
    const v6, 0xd800

    if-lt v9, v6, :cond_d3

    const v6, 0xdfff

    if-le v9, v6, :cond_7d

    goto :goto_d3

    :cond_7d
    const v6, 0xdbff

    if-le v9, v6, :cond_85

    .line 339
    invoke-static {v9}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_illegal(I)V

    :cond_85
    if-lt v7, v0, :cond_8a

    .line 343
    invoke-static {v9}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_illegal(I)V

    :cond_8a
    add-int/lit8 v4, v4, 0x2

    .line 345
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v9, v6}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_convert(II)I

    move-result v6

    const v7, 0x10ffff

    if-le v6, v7, :cond_9c

    .line 347
    invoke-static {v6}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_illegal(I)V

    :cond_9c
    add-int/lit8 v7, v5, 0x1

    shr-int/lit8 v8, v6, 0x12

    or-int/lit16 v8, v8, 0xf0

    int-to-byte v8, v8

    .line 349
    aput-byte v8, v1, v5

    .line 350
    array-length v5, v1

    if-lt v7, v5, :cond_ad

    .line 351
    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v1

    move v7, v2

    :cond_ad
    add-int/lit8 v5, v7, 0x1

    shr-int/lit8 v8, v6, 0xc

    and-int/lit8 v8, v8, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    .line 354
    aput-byte v8, v1, v7

    .line 355
    array-length v7, v1

    if-lt v5, v7, :cond_c0

    .line 356
    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v1

    move v5, v2

    :cond_c0
    add-int/lit8 v7, v5, 0x1

    shr-int/lit8 v8, v6, 0x6

    and-int/lit8 v8, v8, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    .line 359
    aput-byte v8, v1, v5

    and-int/lit8 v5, v6, 0x3f

    or-int/lit16 v5, v5, 0x80

    move v10, v7

    move v7, v4

    :goto_d1
    move v4, v10

    goto :goto_f6

    :cond_d3
    :goto_d3
    add-int/lit8 v4, v5, 0x1

    shr-int/lit8 v6, v9, 0xc

    or-int/lit16 v6, v6, 0xe0

    int-to-byte v6, v6

    .line 330
    aput-byte v6, v1, v5

    .line 331
    array-length v5, v1

    if-lt v4, v5, :cond_e4

    .line 332
    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v1

    move v4, v2

    :cond_e4
    add-int/lit8 v5, v4, 0x1

    shr-int/lit8 v6, v9, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    .line 335
    aput-byte v6, v1, v4

    and-int/lit8 v4, v9, 0x3f

    or-int/lit16 v4, v4, 0x80

    move v10, v5

    move v5, v4

    goto :goto_d1

    .line 363
    :goto_f6
    array-length v6, v1

    if-lt v4, v6, :cond_fe

    .line 364
    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v1

    move v4, v2

    :cond_fe
    add-int/lit8 v6, v4, 0x1

    int-to-byte v5, v5

    .line 367
    aput-byte v5, v1, v4

    move v5, v6

    goto/16 :goto_5d

    :cond_106
    :goto_106
    if-nez v3, :cond_10d

    .line 370
    invoke-static {v1, v2, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    return-object p0

    .line 372
    :cond_10d
    invoke-virtual {v3, v5}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->completeAndCoalesce(I)[B

    move-result-object p0

    return-object p0
.end method
