.class abstract Lcom/google/protobuf/Utf8$Processor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Utf8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Processor"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static partialIsValidUtf8(Ljava/nio/ByteBuffer;II)I
    .registers 10

    .line 541
    # invokes: Lcom/google/protobuf/Utf8;->estimateConsecutiveAscii(Ljava/nio/ByteBuffer;II)I
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/Utf8;->access$200(Ljava/nio/ByteBuffer;II)I

    move-result v0

    add-int/2addr p1, v0

    :cond_5
    :goto_5
    if-lt p1, p2, :cond_9

    const/4 p0, 0x0

    return p0

    :cond_9
    add-int/lit8 v0, p1, 0x1

    .line 552
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    if-gez v1, :cond_83

    const/16 v2, -0x20

    const/4 v3, -0x1

    const/16 v4, -0x41

    if-ge v1, v2, :cond_2a

    if-lt v0, p2, :cond_1b

    return v1

    :cond_1b
    const/16 v2, -0x3e

    if-lt v1, v2, :cond_29

    .line 564
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    if-le v0, v4, :cond_26

    goto :goto_29

    :cond_26
    add-int/lit8 p1, p1, 0x2

    goto :goto_5

    :cond_29
    :goto_29
    return v3

    :cond_2a
    const/16 v5, -0x10

    if-ge v1, v5, :cond_57

    add-int/lit8 v5, p2, -0x1

    if-lt v0, v5, :cond_38

    sub-int/2addr p2, v0

    .line 572
    # invokes: Lcom/google/protobuf/Utf8;->incompleteStateFor(Ljava/nio/ByteBuffer;III)I
    invoke-static {p0, v1, v0, p2}, Lcom/google/protobuf/Utf8;->access$300(Ljava/nio/ByteBuffer;III)I

    move-result p0

    return p0

    :cond_38
    add-int/lit8 v5, p1, 0x2

    .line 575
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    if-gt v0, v4, :cond_56

    const/16 v6, -0x60

    if-ne v1, v2, :cond_46

    if-lt v0, v6, :cond_56

    :cond_46
    const/16 v2, -0x13

    if-ne v1, v2, :cond_4c

    if-ge v0, v6, :cond_56

    .line 582
    :cond_4c
    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    if-le v0, v4, :cond_53

    goto :goto_56

    :cond_53
    add-int/lit8 p1, p1, 0x3

    goto :goto_5

    :cond_56
    :goto_56
    return v3

    :cond_57
    add-int/lit8 v2, p2, -0x2

    if-lt v0, v2, :cond_61

    sub-int/2addr p2, v0

    .line 590
    # invokes: Lcom/google/protobuf/Utf8;->incompleteStateFor(Ljava/nio/ByteBuffer;III)I
    invoke-static {p0, v1, v0, p2}, Lcom/google/protobuf/Utf8;->access$300(Ljava/nio/ByteBuffer;III)I

    move-result p0

    return p0

    :cond_61
    add-int/lit8 v2, p1, 0x2

    .line 594
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    if-gt v0, v4, :cond_82

    shl-int/lit8 v1, v1, 0x1c

    add-int/lit8 v0, v0, 0x70

    add-int/2addr v1, v0

    shr-int/lit8 v0, v1, 0x1e

    if-nez v0, :cond_82

    add-int/lit8 v0, p1, 0x3

    .line 602
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    if-gt v1, v4, :cond_82

    add-int/lit8 p1, p1, 0x4

    .line 604
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    if-le v0, v4, :cond_5

    :cond_82
    return v3

    :cond_83
    move p1, v0

    goto :goto_5
.end method


# virtual methods
.method final decodeUtf8(Ljava/nio/ByteBuffer;II)Ljava/lang/String;
    .registers 5

    .line 626
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 627
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    .line 628
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    add-int/2addr v0, p2

    invoke-virtual {p0, p1, v0, p3}, Lcom/google/protobuf/Utf8$Processor;->decodeUtf8([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 629
    :cond_14
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 630
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/Utf8$Processor;->decodeUtf8Direct(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 632
    :cond_1f
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/Utf8$Processor;->decodeUtf8Default(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method abstract decodeUtf8([BII)Ljava/lang/String;
.end method

.method final decodeUtf8Default(Ljava/nio/ByteBuffer;II)Ljava/lang/String;
    .registers 10

    or-int p0, p2, p3

    .line 646
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v0

    sub-int/2addr v0, p2

    sub-int/2addr v0, p3

    or-int/2addr p0, v0

    if-ltz p0, :cond_ba

    add-int p0, p2, p3

    .line 656
    new-array v4, p3, [C

    const/4 p3, 0x0

    move v0, p3

    :goto_11
    if-ge p2, p0, :cond_27

    .line 662
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    .line 663
    # invokes: Lcom/google/protobuf/Utf8$DecodeUtil;->isOneByte(B)Z
    invoke-static {v1}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$400(B)Z

    move-result v2

    if-nez v2, :cond_1e

    goto :goto_27

    :cond_1e
    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v2, v0, 0x1

    .line 667
    # invokes: Lcom/google/protobuf/Utf8$DecodeUtil;->handleOneByte(B[CI)V
    invoke-static {v1, v4, v0}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$500(B[CI)V

    move v0, v2

    goto :goto_11

    :cond_27
    :goto_27
    move v5, v0

    :goto_28
    if-ge p2, p0, :cond_b4

    add-int/lit8 v0, p2, 0x1

    move v1, v0

    .line 671
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    .line 672
    # invokes: Lcom/google/protobuf/Utf8$DecodeUtil;->isOneByte(B)Z
    invoke-static {v0}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$400(B)Z

    move-result v2

    if-eqz v2, :cond_56

    add-int/lit8 p2, v5, 0x1

    .line 673
    # invokes: Lcom/google/protobuf/Utf8$DecodeUtil;->handleOneByte(B[CI)V
    invoke-static {v0, v4, v5}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$500(B[CI)V

    move v0, v1

    :goto_3d
    if-ge v0, p0, :cond_53

    .line 677
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    .line 678
    # invokes: Lcom/google/protobuf/Utf8$DecodeUtil;->isOneByte(B)Z
    invoke-static {v1}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$400(B)Z

    move-result v2

    if-nez v2, :cond_4a

    goto :goto_53

    :cond_4a
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, p2, 0x1

    .line 682
    # invokes: Lcom/google/protobuf/Utf8$DecodeUtil;->handleOneByte(B[CI)V
    invoke-static {v1, v4, p2}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$500(B[CI)V

    move p2, v2

    goto :goto_3d

    :cond_53
    :goto_53
    move v5, p2

    move p2, v0

    goto :goto_28

    .line 684
    :cond_56
    # invokes: Lcom/google/protobuf/Utf8$DecodeUtil;->isTwoBytes(B)Z
    invoke-static {v0}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$600(B)Z

    move-result v2

    if-eqz v2, :cond_70

    if-ge v1, p0, :cond_6b

    add-int/lit8 p2, p2, 0x2

    .line 689
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    add-int/lit8 v2, v5, 0x1

    .line 688
    # invokes: Lcom/google/protobuf/Utf8$DecodeUtil;->handleTwoBytes(BB[CI)V
    invoke-static {v0, v1, v4, v5}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$700(BB[CI)V

    move v5, v2

    goto :goto_28

    .line 686
    :cond_6b
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    .line 690
    :cond_70
    # invokes: Lcom/google/protobuf/Utf8$DecodeUtil;->isThreeBytes(B)Z
    invoke-static {v0}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$800(B)Z

    move-result v2

    if-eqz v2, :cond_92

    add-int/lit8 v2, p0, -0x1

    if-ge v1, v2, :cond_8d

    add-int/lit8 v2, p2, 0x2

    .line 696
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    add-int/lit8 p2, p2, 0x3

    .line 697
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    add-int/lit8 v3, v5, 0x1

    .line 694
    # invokes: Lcom/google/protobuf/Utf8$DecodeUtil;->handleThreeBytes(BBB[CI)V
    invoke-static {v0, v1, v2, v4, v5}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$900(BBB[CI)V

    move v5, v3

    goto :goto_28

    .line 692
    :cond_8d
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_92
    add-int/lit8 v2, p0, -0x2

    if-ge v1, v2, :cond_af

    add-int/lit8 v2, p2, 0x2

    .line 706
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    add-int/lit8 v3, p2, 0x3

    .line 707
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    add-int/lit8 p2, p2, 0x4

    .line 708
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    .line 704
    # invokes: Lcom/google/protobuf/Utf8$DecodeUtil;->handleFourBytes(BBBB[CI)V
    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$1000(BBBB[CI)V

    add-int/lit8 v5, v5, 0x2

    goto/16 :goto_28

    .line 702
    :cond_af
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    .line 716
    :cond_b4
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v4, p3, v5}, Ljava/lang/String;-><init>([CII)V

    return-object p0

    .line 647
    :cond_ba
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 648
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "buffer limit=%d, index=%d, limit=%d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method abstract decodeUtf8Direct(Ljava/nio/ByteBuffer;II)Ljava/lang/String;
.end method

.method abstract encodeUtf8(Ljava/lang/CharSequence;[BII)I
.end method

.method final encodeUtf8(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .registers 6

    .line 769
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 770
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p0

    .line 771
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    move-result v1

    add-int/2addr v1, p0

    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    invoke-static {p1, v0, v1, v2}, Lcom/google/protobuf/Utf8;->encode(Ljava/lang/CharSequence;[BII)I

    move-result p1

    sub-int/2addr p1, p0

    .line 772
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    .line 773
    :cond_20
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 774
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/Utf8$Processor;->encodeUtf8Direct(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    return-void

    .line 776
    :cond_2a
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/Utf8$Processor;->encodeUtf8Default(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method final encodeUtf8Default(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .registers 10

    .line 788
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    .line 789
    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    move-result v0

    const/4 v1, 0x0

    :goto_9
    const/16 v2, 0x80

    if-ge v1, p0, :cond_1c

    .line 798
    :try_start_d
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ge v3, v2, :cond_1c

    add-int v2, v0, v1

    int-to-byte v3, v3

    .line 799
    invoke-virtual {p2, v2, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_1c
    if-ne v1, p0, :cond_24

    add-int p0, v0, v1

    .line 803
    invoke-virtual {p2, p0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    :cond_24
    add-int/2addr v0, v1

    :goto_25
    if-ge v1, p0, :cond_c4

    .line 809
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ge v3, v2, :cond_33

    int-to-byte v3, v3

    .line 812
    invoke-virtual {p2, v0, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;
    :try_end_31
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_d .. :try_end_31} :catch_c8

    goto/16 :goto_be

    :cond_33
    const/16 v4, 0x800

    if-ge v3, v4, :cond_4e

    add-int/lit8 v4, v0, 0x1

    ushr-int/lit8 v5, v3, 0x6

    or-int/lit16 v5, v5, 0xc0

    int-to-byte v5, v5

    .line 817
    :try_start_3e
    invoke-virtual {p2, v0, v5}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    and-int/lit8 v0, v3, 0x3f

    or-int/2addr v0, v2

    int-to-byte v0, v0

    .line 818
    invoke-virtual {p2, v4, v0}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;
    :try_end_48
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3e .. :try_end_48} :catch_4b

    move v0, v4

    goto/16 :goto_be

    :catch_4b
    move v0, v4

    goto/16 :goto_c8

    :cond_4e
    const v4, 0xd800

    if-lt v3, v4, :cond_a2

    const v4, 0xdfff

    if-ge v4, v3, :cond_59

    goto :goto_a2

    :cond_59
    add-int/lit8 v4, v1, 0x1

    if-eq v4, p0, :cond_9c

    .line 833
    :try_start_5d
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v5

    if-eqz v5, :cond_9b

    .line 837
    invoke-static {v3, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v1
    :try_end_6b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5d .. :try_end_6b} :catch_94

    add-int/lit8 v3, v0, 0x1

    ushr-int/lit8 v5, v1, 0x12

    or-int/lit16 v5, v5, 0xf0

    int-to-byte v5, v5

    .line 838
    :try_start_72
    invoke-virtual {p2, v0, v5}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;
    :try_end_75
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_72 .. :try_end_75} :catch_99

    add-int/lit8 v5, v0, 0x2

    ushr-int/lit8 v6, v1, 0xc

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v6, v2

    int-to-byte v6, v6

    .line 839
    :try_start_7d
    invoke-virtual {p2, v3, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;
    :try_end_80
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7d .. :try_end_80} :catch_96

    add-int/lit8 v0, v0, 0x3

    ushr-int/lit8 v3, v1, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v3, v2

    int-to-byte v3, v3

    .line 840
    :try_start_88
    invoke-virtual {p2, v5, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v1, v2

    int-to-byte v1, v1

    .line 841
    invoke-virtual {p2, v0, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;
    :try_end_92
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_88 .. :try_end_92} :catch_94

    move v1, v4

    goto :goto_be

    :catch_94
    :goto_94
    move v1, v4

    goto :goto_c8

    :catch_96
    move v1, v4

    move v0, v5

    goto :goto_c8

    :catch_99
    move v0, v3

    goto :goto_94

    :cond_9b
    move v1, v4

    .line 834
    :cond_9c
    :try_start_9c
    new-instance v2, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;

    invoke-direct {v2, v1, p0}, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    throw v2
    :try_end_a2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9c .. :try_end_a2} :catch_c8

    :cond_a2
    :goto_a2
    add-int/lit8 v4, v0, 0x1

    ushr-int/lit8 v5, v3, 0xc

    or-int/lit16 v5, v5, 0xe0

    int-to-byte v5, v5

    .line 824
    :try_start_a9
    invoke-virtual {p2, v0, v5}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;
    :try_end_ac
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a9 .. :try_end_ac} :catch_4b

    add-int/lit8 v0, v0, 0x2

    ushr-int/lit8 v5, v3, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v5, v2

    int-to-byte v5, v5

    .line 825
    :try_start_b4
    invoke-virtual {p2, v4, v5}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v3, v2

    int-to-byte v3, v3

    .line 826
    invoke-virtual {p2, v0, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    :goto_be
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_25

    .line 846
    :cond_c4
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_c7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_b4 .. :try_end_c7} :catch_c8

    return-void

    .line 852
    :catch_c8
    :goto_c8
    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    move-result p0

    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    move-result p2

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    add-int/2addr p0, p2

    .line 853
    new-instance p2, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed writing "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 854
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, " at index "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method abstract encodeUtf8Direct(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
.end method

.method final isValidUtf8(Ljava/nio/ByteBuffer;II)Z
    .registers 5

    const/4 v0, 0x0

    .line 417
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/google/protobuf/Utf8$Processor;->partialIsValidUtf8(ILjava/nio/ByteBuffer;II)I

    move-result p0

    if-nez p0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    return v0
.end method

.method final isValidUtf8([BII)Z
    .registers 5

    const/4 v0, 0x0

    .line 390
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/google/protobuf/Utf8$Processor;->partialIsValidUtf8(I[BII)I

    move-result p0

    if-nez p0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    return v0
.end method

.method final partialIsValidUtf8(ILjava/nio/ByteBuffer;II)I
    .registers 6

    .line 428
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 429
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    .line 430
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    add-int/2addr p3, v0

    add-int/2addr v0, p4

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/protobuf/Utf8$Processor;->partialIsValidUtf8(I[BII)I

    move-result p0

    return p0

    .line 431
    :cond_15
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 432
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/protobuf/Utf8$Processor;->partialIsValidUtf8Direct(ILjava/nio/ByteBuffer;II)I

    move-result p0

    return p0

    .line 434
    :cond_20
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/protobuf/Utf8$Processor;->partialIsValidUtf8Default(ILjava/nio/ByteBuffer;II)I

    move-result p0

    return p0
.end method

.method abstract partialIsValidUtf8(I[BII)I
.end method

.method final partialIsValidUtf8Default(ILjava/nio/ByteBuffer;II)I
    .registers 10

    if-eqz p1, :cond_92

    if-lt p3, p4, :cond_5

    return p1

    :cond_5
    int-to-byte p0, p1

    const/16 v0, -0x20

    const/4 v1, -0x1

    const/16 v2, -0x41

    if-ge p0, v0, :cond_1e

    const/16 p1, -0x3e

    if-lt p0, p1, :cond_1d

    add-int/lit8 p0, p3, 0x1

    .line 469
    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    if-le p1, v2, :cond_1a

    goto :goto_1d

    :cond_1a
    move p3, p0

    goto/16 :goto_92

    :cond_1d
    :goto_1d
    return v1

    :cond_1e
    const/16 v3, -0x10

    if-ge p0, v3, :cond_4f

    shr-int/lit8 p1, p1, 0x8

    not-int p1, p1

    int-to-byte p1, p1

    if-nez p1, :cond_38

    add-int/lit8 p1, p3, 0x1

    .line 478
    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p3

    if-lt p1, p4, :cond_35

    .line 480
    # invokes: Lcom/google/protobuf/Utf8;->incompleteStateFor(II)I
    invoke-static {p0, p3}, Lcom/google/protobuf/Utf8;->access$000(II)I

    move-result p0

    return p0

    :cond_35
    move v4, p3

    move p3, p1

    move p1, v4

    :cond_38
    if-gt p1, v2, :cond_4e

    const/16 v3, -0x60

    if-ne p0, v0, :cond_40

    if-lt p1, v3, :cond_4e

    :cond_40
    const/16 v0, -0x13

    if-ne p0, v0, :cond_46

    if-ge p1, v3, :cond_4e

    :cond_46
    add-int/lit8 p0, p3, 0x1

    .line 489
    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    if-le p1, v2, :cond_1a

    :cond_4e
    return v1

    :cond_4f
    shr-int/lit8 v0, p1, 0x8

    not-int v0, v0

    int-to-byte v0, v0

    if-nez v0, :cond_64

    add-int/lit8 p1, p3, 0x1

    .line 499
    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    if-lt p1, p4, :cond_62

    .line 501
    # invokes: Lcom/google/protobuf/Utf8;->incompleteStateFor(II)I
    invoke-static {p0, v0}, Lcom/google/protobuf/Utf8;->access$000(II)I

    move-result p0

    return p0

    :cond_62
    const/4 p3, 0x0

    goto :goto_6a

    :cond_64
    shr-int/lit8 p1, p1, 0x10

    int-to-byte p1, p1

    move v4, p3

    move p3, p1

    move p1, v4

    :goto_6a
    if-nez p3, :cond_7c

    add-int/lit8 p3, p1, 0x1

    .line 507
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    if-lt p3, p4, :cond_79

    .line 509
    # invokes: Lcom/google/protobuf/Utf8;->incompleteStateFor(III)I
    invoke-static {p0, v0, p1}, Lcom/google/protobuf/Utf8;->access$100(III)I

    move-result p0

    return p0

    :cond_79
    move v4, p3

    move p3, p1

    move p1, v4

    :cond_7c
    if-gt v0, v2, :cond_91

    shl-int/lit8 p0, p0, 0x1c

    add-int/lit8 v0, v0, 0x70

    add-int/2addr p0, v0

    shr-int/lit8 p0, p0, 0x1e

    if-nez p0, :cond_91

    if-gt p3, v2, :cond_91

    add-int/lit8 p3, p1, 0x1

    .line 526
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    if-le p0, v2, :cond_92

    :cond_91
    return v1

    .line 533
    :cond_92
    :goto_92
    invoke-static {p2, p3, p4}, Lcom/google/protobuf/Utf8$Processor;->partialIsValidUtf8(Ljava/nio/ByteBuffer;II)I

    move-result p0

    return p0
.end method

.method abstract partialIsValidUtf8Direct(ILjava/nio/ByteBuffer;II)I
.end method
