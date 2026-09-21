.class final Lcom/google/protobuf/Utf8$SafeProcessor;
.super Lcom/google/protobuf/Utf8$Processor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Utf8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SafeProcessor"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 860
    invoke-direct {p0}, Lcom/google/protobuf/Utf8$Processor;-><init>()V

    return-void
.end method

.method private static partialIsValidUtf8([BII)I
    .registers 4

    :goto_0
    if-ge p1, p2, :cond_9

    .line 1098
    aget-byte v0, p0, p1

    if-ltz v0, :cond_9

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_9
    if-lt p1, p2, :cond_d

    const/4 p0, 0x0

    return p0

    .line 1102
    :cond_d
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/Utf8$SafeProcessor;->partialIsValidUtf8NonAscii([BII)I

    move-result p0

    return p0
.end method

.method private static partialIsValidUtf8NonAscii([BII)I
    .registers 10

    :cond_0
    :goto_0
    if-lt p1, p2, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    add-int/lit8 v0, p1, 0x1

    .line 1115
    aget-byte v1, p0, p1

    if-gez v1, :cond_6a

    const/16 v2, -0x20

    const/4 v3, -0x1

    const/16 v4, -0x41

    if-ge v1, v2, :cond_1f

    if-lt v0, p2, :cond_14

    return v1

    :cond_14
    const/16 v2, -0x3e

    if-lt v1, v2, :cond_1e

    add-int/lit8 p1, p1, 0x2

    .line 1127
    aget-byte v0, p0, v0

    if-le v0, v4, :cond_0

    :cond_1e
    return v3

    :cond_1f
    const/16 v5, -0x10

    if-ge v1, v5, :cond_45

    add-int/lit8 v5, p2, -0x1

    if-lt v0, v5, :cond_2c

    .line 1134
    # invokes: Lcom/google/protobuf/Utf8;->incompleteStateFor([BII)I
    invoke-static {p0, v0, p2}, Lcom/google/protobuf/Utf8;->access$1100([BII)I

    move-result p0

    return p0

    :cond_2c
    add-int/lit8 v5, p1, 0x2

    .line 1136
    aget-byte v0, p0, v0

    if-gt v0, v4, :cond_44

    const/16 v6, -0x60

    if-ne v1, v2, :cond_38

    if-lt v0, v6, :cond_44

    :cond_38
    const/16 v2, -0x13

    if-ne v1, v2, :cond_3e

    if-ge v0, v6, :cond_44

    :cond_3e
    add-int/lit8 p1, p1, 0x3

    aget-byte v0, p0, v5

    if-le v0, v4, :cond_0

    :cond_44
    return v3

    :cond_45
    add-int/lit8 v2, p2, -0x2

    if-lt v0, v2, :cond_4e

    .line 1149
    # invokes: Lcom/google/protobuf/Utf8;->incompleteStateFor([BII)I
    invoke-static {p0, v0, p2}, Lcom/google/protobuf/Utf8;->access$1100([BII)I

    move-result p0

    return p0

    :cond_4e
    add-int/lit8 v2, p1, 0x2

    .line 1151
    aget-byte v0, p0, v0

    if-gt v0, v4, :cond_69

    shl-int/lit8 v1, v1, 0x1c

    add-int/lit8 v0, v0, 0x70

    add-int/2addr v1, v0

    shr-int/lit8 v0, v1, 0x1e

    if-nez v0, :cond_69

    add-int/lit8 v0, p1, 0x3

    aget-byte v1, p0, v2

    if-gt v1, v4, :cond_69

    add-int/lit8 p1, p1, 0x4

    aget-byte v0, p0, v0

    if-le v0, v4, :cond_0

    :cond_69
    return v3

    :cond_6a
    move p1, v0

    goto :goto_0
.end method


# virtual methods
.method decodeUtf8([BII)Ljava/lang/String;
    .registers 10

    or-int p0, p2, p3

    .line 958
    array-length v0, p1

    sub-int/2addr v0, p2

    sub-int/2addr v0, p3

    or-int/2addr p0, v0

    if-ltz p0, :cond_a4

    add-int p0, p2, p3

    .line 968
    new-array v4, p3, [C

    const/4 p3, 0x0

    move v0, p3

    :goto_e
    if-ge p2, p0, :cond_22

    .line 974
    aget-byte v1, p1, p2

    .line 975
    # invokes: Lcom/google/protobuf/Utf8$DecodeUtil;->isOneByte(B)Z
    invoke-static {v1}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$400(B)Z

    move-result v2

    if-nez v2, :cond_19

    goto :goto_22

    :cond_19
    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v2, v0, 0x1

    .line 979
    # invokes: Lcom/google/protobuf/Utf8$DecodeUtil;->handleOneByte(B[CI)V
    invoke-static {v1, v4, v0}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$500(B[CI)V

    move v0, v2

    goto :goto_e

    :cond_22
    :goto_22
    move v5, v0

    :goto_23
    if-ge p2, p0, :cond_9e

    add-int/lit8 v0, p2, 0x1

    move v1, v0

    .line 983
    aget-byte v0, p1, p2

    .line 984
    # invokes: Lcom/google/protobuf/Utf8$DecodeUtil;->isOneByte(B)Z
    invoke-static {v0}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$400(B)Z

    move-result v2

    if-eqz v2, :cond_4d

    add-int/lit8 p2, v5, 0x1

    .line 985
    # invokes: Lcom/google/protobuf/Utf8$DecodeUtil;->handleOneByte(B[CI)V
    invoke-static {v0, v4, v5}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$500(B[CI)V

    move v0, v1

    :goto_36
    if-ge v0, p0, :cond_4a

    .line 989
    aget-byte v1, p1, v0

    .line 990
    # invokes: Lcom/google/protobuf/Utf8$DecodeUtil;->isOneByte(B)Z
    invoke-static {v1}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$400(B)Z

    move-result v2

    if-nez v2, :cond_41

    goto :goto_4a

    :cond_41
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, p2, 0x1

    .line 994
    # invokes: Lcom/google/protobuf/Utf8$DecodeUtil;->handleOneByte(B[CI)V
    invoke-static {v1, v4, p2}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$500(B[CI)V

    move p2, v2

    goto :goto_36

    :cond_4a
    :goto_4a
    move v5, p2

    move p2, v0

    goto :goto_23

    .line 996
    :cond_4d
    # invokes: Lcom/google/protobuf/Utf8$DecodeUtil;->isTwoBytes(B)Z
    invoke-static {v0}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$600(B)Z

    move-result v2

    if-eqz v2, :cond_65

    if-ge v1, p0, :cond_60

    add-int/lit8 p2, p2, 0x2

    .line 1000
    aget-byte v1, p1, v1

    add-int/lit8 v2, v5, 0x1

    # invokes: Lcom/google/protobuf/Utf8$DecodeUtil;->handleTwoBytes(BB[CI)V
    invoke-static {v0, v1, v4, v5}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$700(BB[CI)V

    move v5, v2

    goto :goto_23

    .line 998
    :cond_60
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    .line 1001
    :cond_65
    # invokes: Lcom/google/protobuf/Utf8$DecodeUtil;->isThreeBytes(B)Z
    invoke-static {v0}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$800(B)Z

    move-result v2

    if-eqz v2, :cond_83

    add-int/lit8 v2, p0, -0x1

    if-ge v1, v2, :cond_7e

    add-int/lit8 v2, p2, 0x2

    .line 1005
    aget-byte v1, p1, v1

    add-int/lit8 p2, p2, 0x3

    aget-byte v2, p1, v2

    add-int/lit8 v3, v5, 0x1

    # invokes: Lcom/google/protobuf/Utf8$DecodeUtil;->handleThreeBytes(BBB[CI)V
    invoke-static {v0, v1, v2, v4, v5}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$900(BBB[CI)V

    move v5, v3

    goto :goto_23

    .line 1003
    :cond_7e
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_83
    add-int/lit8 v2, p0, -0x2

    if-ge v1, v2, :cond_99

    add-int/lit8 v2, p2, 0x2

    .line 1015
    aget-byte v1, p1, v1

    add-int/lit8 v3, p2, 0x3

    aget-byte v2, p1, v2

    add-int/lit8 p2, p2, 0x4

    aget-byte v3, p1, v3

    # invokes: Lcom/google/protobuf/Utf8$DecodeUtil;->handleFourBytes(BBBB[CI)V
    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$1000(BBBB[CI)V

    add-int/lit8 v5, v5, 0x2

    goto :goto_23

    .line 1013
    :cond_99
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    .line 1027
    :cond_9e
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v4, p3, v5}, Ljava/lang/String;-><init>([CII)V

    return-object p0

    .line 959
    :cond_a4
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    array-length p1, p1

    .line 960
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "buffer length=%d, index=%d, size=%d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method decodeUtf8Direct(Ljava/nio/ByteBuffer;II)Ljava/lang/String;
    .registers 4

    .line 1034
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/Utf8$Processor;->decodeUtf8Default(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method encodeUtf8(Ljava/lang/CharSequence;[BII)I
    .registers 11

    .line 1039
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    add-int/2addr p4, p3

    const/4 v0, 0x0

    :goto_6
    const/16 v1, 0x80

    if-ge v0, p0, :cond_1a

    add-int v2, v0, p3

    if-ge v2, p4, :cond_1a

    .line 1045
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ge v3, v1, :cond_1a

    int-to-byte v1, v3

    .line 1046
    aput-byte v1, p2, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_1a
    if-ne v0, p0, :cond_1e

    add-int/2addr p3, p0

    return p3

    :cond_1e
    add-int/2addr p3, v0

    :goto_1f
    if-ge v0, p0, :cond_fd

    .line 1053
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ge v2, v1, :cond_31

    if-ge p3, p4, :cond_31

    add-int/lit8 v3, p3, 0x1

    int-to-byte v2, v2

    .line 1055
    aput-byte v2, p2, p3

    move p3, v3

    goto/16 :goto_b5

    :cond_31
    const/16 v3, 0x800

    if-ge v2, v3, :cond_4b

    add-int/lit8 v3, p4, -0x2

    if-gt p3, v3, :cond_4b

    add-int/lit8 v3, p3, 0x1

    ushr-int/lit8 v4, v2, 0x6

    or-int/lit16 v4, v4, 0x3c0

    int-to-byte v4, v4

    .line 1057
    aput-byte v4, p2, p3

    add-int/lit8 p3, p3, 0x2

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v1

    int-to-byte v2, v2

    .line 1058
    aput-byte v2, p2, v3

    goto :goto_b5

    :cond_4b
    const v3, 0xdfff

    const v4, 0xd800

    if-lt v2, v4, :cond_55

    if-ge v3, v2, :cond_75

    :cond_55
    add-int/lit8 v5, p4, -0x3

    if-gt p3, v5, :cond_75

    add-int/lit8 v3, p3, 0x1

    ushr-int/lit8 v4, v2, 0xc

    or-int/lit16 v4, v4, 0x1e0

    int-to-byte v4, v4

    .line 1061
    aput-byte v4, p2, p3

    add-int/lit8 v4, p3, 0x2

    ushr-int/lit8 v5, v2, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v5, v1

    int-to-byte v5, v5

    .line 1062
    aput-byte v5, p2, v3

    add-int/lit8 p3, p3, 0x3

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v1

    int-to-byte v2, v2

    .line 1063
    aput-byte v2, p2, v4

    goto :goto_b5

    :cond_75
    add-int/lit8 v5, p4, -0x4

    if-gt p3, v5, :cond_c2

    add-int/lit8 v3, v0, 0x1

    .line 1068
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-eq v3, v4, :cond_ba

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v4

    if-eqz v4, :cond_b9

    .line 1071
    invoke-static {v2, v0}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v0

    add-int/lit8 v2, p3, 0x1

    ushr-int/lit8 v4, v0, 0x12

    or-int/lit16 v4, v4, 0xf0

    int-to-byte v4, v4

    .line 1072
    aput-byte v4, p2, p3

    add-int/lit8 v4, p3, 0x2

    ushr-int/lit8 v5, v0, 0xc

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v5, v1

    int-to-byte v5, v5

    .line 1073
    aput-byte v5, p2, v2

    add-int/lit8 v2, p3, 0x3

    ushr-int/lit8 v5, v0, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v5, v1

    int-to-byte v5, v5

    .line 1074
    aput-byte v5, p2, v4

    add-int/lit8 p3, p3, 0x4

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v1

    int-to-byte v0, v0

    .line 1075
    aput-byte v0, p2, v2

    move v0, v3

    :goto_b5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1f

    :cond_b9
    move v0, v3

    .line 1069
    :cond_ba
    new-instance p1, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p1, v0, p0}, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    throw p1

    :cond_c2
    if-gt v4, v2, :cond_de

    if-gt v2, v3, :cond_de

    add-int/lit8 p2, v0, 0x1

    .line 1080
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p4

    if-eq p2, p4, :cond_d8

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result p1

    if-nez p1, :cond_de

    .line 1081
    :cond_d8
    new-instance p1, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;

    invoke-direct {p1, v0, p0}, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    throw p1

    .line 1083
    :cond_de
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed writing "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p2, " at index "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_fd
    return p3
.end method

.method encodeUtf8Direct(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .registers 3

    .line 1092
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/Utf8$Processor;->encodeUtf8Default(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method partialIsValidUtf8(I[BII)I
    .registers 10

    if-eqz p1, :cond_86

    if-lt p3, p4, :cond_5

    return p1

    :cond_5
    int-to-byte p0, p1

    const/16 v0, -0x20

    const/4 v1, -0x1

    const/16 v2, -0x41

    if-ge p0, v0, :cond_1c

    const/16 p1, -0x3e

    if-lt p0, p1, :cond_1b

    add-int/lit8 p0, p3, 0x1

    .line 881
    aget-byte p1, p2, p3

    if-le p1, v2, :cond_18

    goto :goto_1b

    :cond_18
    move p3, p0

    goto/16 :goto_86

    :cond_1b
    :goto_1b
    return v1

    :cond_1c
    const/16 v3, -0x10

    if-ge p0, v3, :cond_49

    shr-int/lit8 p1, p1, 0x8

    not-int p1, p1

    int-to-byte p1, p1

    if-nez p1, :cond_34

    add-int/lit8 p1, p3, 0x1

    .line 892
    aget-byte p3, p2, p3

    if-lt p1, p4, :cond_31

    .line 894
    # invokes: Lcom/google/protobuf/Utf8;->incompleteStateFor(II)I
    invoke-static {p0, p3}, Lcom/google/protobuf/Utf8;->access$000(II)I

    move-result p0

    return p0

    :cond_31
    move v4, p3

    move p3, p1

    move p1, v4

    :cond_34
    if-gt p1, v2, :cond_48

    const/16 v3, -0x60

    if-ne p0, v0, :cond_3c

    if-lt p1, v3, :cond_48

    :cond_3c
    const/16 v0, -0x13

    if-ne p0, v0, :cond_42

    if-ge p1, v3, :cond_48

    :cond_42
    add-int/lit8 p0, p3, 0x1

    .line 897
    aget-byte p1, p2, p3

    if-le p1, v2, :cond_18

    :cond_48
    return v1

    :cond_49
    shr-int/lit8 v0, p1, 0x8

    not-int v0, v0

    int-to-byte v0, v0

    if-nez v0, :cond_5c

    add-int/lit8 p1, p3, 0x1

    .line 913
    aget-byte v0, p2, p3

    if-lt p1, p4, :cond_5a

    .line 915
    # invokes: Lcom/google/protobuf/Utf8;->incompleteStateFor(II)I
    invoke-static {p0, v0}, Lcom/google/protobuf/Utf8;->access$000(II)I

    move-result p0

    return p0

    :cond_5a
    const/4 p3, 0x0

    goto :goto_62

    :cond_5c
    shr-int/lit8 p1, p1, 0x10

    int-to-byte p1, p1

    move v4, p3

    move p3, p1

    move p1, v4

    :goto_62
    if-nez p3, :cond_72

    add-int/lit8 p3, p1, 0x1

    .line 921
    aget-byte p1, p2, p1

    if-lt p3, p4, :cond_6f

    .line 923
    # invokes: Lcom/google/protobuf/Utf8;->incompleteStateFor(III)I
    invoke-static {p0, v0, p1}, Lcom/google/protobuf/Utf8;->access$100(III)I

    move-result p0

    return p0

    :cond_6f
    move v4, p3

    move p3, p1

    move p1, v4

    :cond_72
    if-gt v0, v2, :cond_85

    shl-int/lit8 p0, p0, 0x1c

    add-int/lit8 v0, v0, 0x70

    add-int/2addr p0, v0

    shr-int/lit8 p0, p0, 0x1e

    if-nez p0, :cond_85

    if-gt p3, v2, :cond_85

    add-int/lit8 p3, p1, 0x1

    .line 931
    aget-byte p0, p2, p1

    if-le p0, v2, :cond_86

    :cond_85
    return v1

    .line 946
    :cond_86
    :goto_86
    invoke-static {p2, p3, p4}, Lcom/google/protobuf/Utf8$SafeProcessor;->partialIsValidUtf8([BII)I

    move-result p0

    return p0
.end method

.method partialIsValidUtf8Direct(ILjava/nio/ByteBuffer;II)I
    .registers 5

    .line 952
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/protobuf/Utf8$Processor;->partialIsValidUtf8Default(ILjava/nio/ByteBuffer;II)I

    move-result p0

    return p0
.end method
