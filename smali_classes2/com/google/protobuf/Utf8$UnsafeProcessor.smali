.class final Lcom/google/protobuf/Utf8$UnsafeProcessor;
.super Lcom/google/protobuf/Utf8$Processor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Utf8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UnsafeProcessor"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1169
    invoke-direct {p0}, Lcom/google/protobuf/Utf8$Processor;-><init>()V

    return-void
.end method

.method static isAvailable()Z
    .registers 1

    .line 1172
    invoke-static {}, Lcom/google/protobuf/UnsafeUtil;->hasUnsafeArrayOperations()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/google/protobuf/UnsafeUtil;->hasUnsafeByteBufferOperations()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method private static partialIsValidUtf8(JI)I
    .registers 13

    .line 1774
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/Utf8$UnsafeProcessor;->unsafeEstimateConsecutiveAscii(JI)I

    move-result v0

    int-to-long v1, v0

    add-long/2addr p0, v1

    sub-int/2addr p2, v0

    :cond_7
    :goto_7
    const/4 v0, 0x0

    move v1, v0

    :goto_9
    const-wide/16 v2, 0x1

    if-lez p2, :cond_1a

    add-long v4, p0, v2

    .line 1783
    invoke-static {p0, p1}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v1

    if-ltz v1, :cond_19

    add-int/lit8 p2, p2, -0x1

    move-wide p0, v4

    goto :goto_9

    :cond_19
    move-wide p0, v4

    :cond_1a
    if-nez p2, :cond_1d

    return v0

    :cond_1d
    add-int/lit8 v0, p2, -0x1

    const/16 v4, -0x20

    const/4 v5, -0x1

    const/16 v6, -0x41

    if-ge v1, v4, :cond_3a

    if-nez v0, :cond_29

    return v1

    :cond_29
    add-int/lit8 p2, p2, -0x2

    const/16 v0, -0x3e

    if-lt v1, v0, :cond_39

    add-long/2addr v2, p0

    .line 1800
    invoke-static {p0, p1}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result p0

    if-le p0, v6, :cond_37

    goto :goto_39

    :cond_37
    move-wide p0, v2

    goto :goto_7

    :cond_39
    :goto_39
    return v5

    :cond_3a
    const/16 v7, -0x10

    const-wide/16 v8, 0x2

    if-ge v1, v7, :cond_65

    const/4 v7, 0x2

    if-ge v0, v7, :cond_48

    .line 1808
    invoke-static {p0, p1, v1, v0}, Lcom/google/protobuf/Utf8$UnsafeProcessor;->unsafeIncompleteStateFor(JII)I

    move-result p0

    return p0

    :cond_48
    add-int/lit8 p2, p2, -0x3

    add-long/2addr v2, p0

    .line 1812
    invoke-static {p0, p1}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    if-gt v0, v6, :cond_64

    const/16 v7, -0x60

    if-ne v1, v4, :cond_57

    if-lt v0, v7, :cond_64

    :cond_57
    const/16 v4, -0x13

    if-ne v1, v4, :cond_5d

    if-ge v0, v7, :cond_64

    :cond_5d
    add-long/2addr p0, v8

    .line 1819
    invoke-static {v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    if-le v0, v6, :cond_7

    :cond_64
    return v5

    :cond_65
    const/4 v4, 0x3

    if-ge v0, v4, :cond_6d

    .line 1827
    invoke-static {p0, p1, v1, v0}, Lcom/google/protobuf/Utf8$UnsafeProcessor;->unsafeIncompleteStateFor(JII)I

    move-result p0

    return p0

    :cond_6d
    add-int/lit8 p2, p2, -0x4

    add-long/2addr v2, p0

    .line 1831
    invoke-static {p0, p1}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    if-gt v0, v6, :cond_8f

    shl-int/lit8 v1, v1, 0x1c

    add-int/lit8 v0, v0, 0x70

    add-int/2addr v1, v0

    shr-int/lit8 v0, v1, 0x1e

    if-nez v0, :cond_8f

    add-long/2addr v8, p0

    .line 1839
    invoke-static {v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    if-gt v0, v6, :cond_8f

    const-wide/16 v0, 0x3

    add-long/2addr p0, v0

    .line 1841
    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    if-le v0, v6, :cond_7

    :cond_8f
    return v5
.end method

.method private static partialIsValidUtf8([BJI)I
    .registers 14

    .line 1700
    invoke-static {p0, p1, p2, p3}, Lcom/google/protobuf/Utf8$UnsafeProcessor;->unsafeEstimateConsecutiveAscii([BJI)I

    move-result v0

    sub-int/2addr p3, v0

    int-to-long v0, v0

    add-long/2addr p1, v0

    :cond_7
    :goto_7
    const/4 v0, 0x0

    move v1, v0

    :goto_9
    const-wide/16 v2, 0x1

    if-lez p3, :cond_1a

    add-long v4, p1, v2

    .line 1709
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v1

    if-ltz v1, :cond_19

    add-int/lit8 p3, p3, -0x1

    move-wide p1, v4

    goto :goto_9

    :cond_19
    move-wide p1, v4

    :cond_1a
    if-nez p3, :cond_1d

    return v0

    :cond_1d
    add-int/lit8 v0, p3, -0x1

    const/16 v4, -0x20

    const/4 v5, -0x1

    const/16 v6, -0x41

    if-ge v1, v4, :cond_3a

    if-nez v0, :cond_29

    return v1

    :cond_29
    add-int/lit8 p3, p3, -0x2

    const/16 v0, -0x3e

    if-lt v1, v0, :cond_39

    add-long/2addr v2, p1

    .line 1726
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p1

    if-le p1, v6, :cond_37

    goto :goto_39

    :cond_37
    move-wide p1, v2

    goto :goto_7

    :cond_39
    :goto_39
    return v5

    :cond_3a
    const/16 v7, -0x10

    const-wide/16 v8, 0x2

    if-ge v1, v7, :cond_65

    const/4 v7, 0x2

    if-ge v0, v7, :cond_48

    .line 1733
    invoke-static {p0, v1, p1, p2, v0}, Lcom/google/protobuf/Utf8$UnsafeProcessor;->unsafeIncompleteStateFor([BIJI)I

    move-result p0

    return p0

    :cond_48
    add-int/lit8 p3, p3, -0x3

    add-long/2addr v2, p1

    .line 1738
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v0

    if-gt v0, v6, :cond_64

    const/16 v7, -0x60

    if-ne v1, v4, :cond_57

    if-lt v0, v7, :cond_64

    :cond_57
    const/16 v4, -0x13

    if-ne v1, v4, :cond_5d

    if-ge v0, v7, :cond_64

    :cond_5d
    add-long/2addr p1, v8

    .line 1744
    invoke-static {p0, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v0

    if-le v0, v6, :cond_7

    :cond_64
    return v5

    :cond_65
    const/4 v4, 0x3

    if-ge v0, v4, :cond_6d

    .line 1751
    invoke-static {p0, v1, p1, p2, v0}, Lcom/google/protobuf/Utf8$UnsafeProcessor;->unsafeIncompleteStateFor([BIJI)I

    move-result p0

    return p0

    :cond_6d
    add-int/lit8 p3, p3, -0x4

    add-long/2addr v2, p1

    .line 1756
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v0

    if-gt v0, v6, :cond_8f

    shl-int/lit8 v1, v1, 0x1c

    add-int/lit8 v0, v0, 0x70

    add-int/2addr v1, v0

    shr-int/lit8 v0, v1, 0x1e

    if-nez v0, :cond_8f

    add-long/2addr v8, p1

    .line 1763
    invoke-static {p0, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v0

    if-gt v0, v6, :cond_8f

    const-wide/16 v0, 0x3

    add-long/2addr p1, v0

    .line 1765
    invoke-static {p0, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v0

    if-le v0, v6, :cond_7

    :cond_8f
    return v5
.end method

.method private static unsafeEstimateConsecutiveAscii(JI)I
    .registers 9

    const/16 v0, 0x10

    if-ge p2, v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    long-to-int v0, p0

    and-int/lit8 v0, v0, 0x7

    const/16 v1, 0x8

    rsub-int/lit8 v0, v0, 0x8

    move v2, v0

    :goto_e
    if-lez v2, :cond_1f

    const-wide/16 v3, 0x1

    add-long/2addr v3, p0

    .line 1683
    invoke-static {p0, p1}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result p0

    if-gez p0, :cond_1b

    sub-int/2addr v0, v2

    return v0

    :cond_1b
    add-int/lit8 v2, v2, -0x1

    move-wide p0, v3

    goto :goto_e

    :cond_1f
    sub-int v0, p2, v0

    :goto_21
    if-lt v0, v1, :cond_39

    .line 1693
    invoke-static {p0, p1}, Lcom/google/protobuf/UnsafeUtil;->getLong(J)J

    move-result-wide v2

    const-wide v4, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_39

    const-wide/16 v2, 0x8

    add-long/2addr p0, v2

    add-int/lit8 v0, v0, -0x8

    goto :goto_21

    :cond_39
    sub-int/2addr p2, v0

    return p2
.end method

.method private static unsafeEstimateConsecutiveAscii([BJI)I
    .registers 8

    const/16 v0, 0x10

    const/4 v1, 0x0

    if-ge p3, v0, :cond_6

    return v1

    :cond_6
    :goto_6
    if-ge v1, p3, :cond_16

    const-wide/16 v2, 0x1

    add-long/2addr v2, p1

    .line 1660
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p1

    if-gez p1, :cond_12

    return v1

    :cond_12
    add-int/lit8 v1, v1, 0x1

    move-wide p1, v2

    goto :goto_6

    :cond_16
    return p3
.end method

.method private static unsafeIncompleteStateFor(JII)I
    .registers 6

    if-eqz p3, :cond_27

    const/4 v0, 0x1

    if-eq p3, v0, :cond_1e

    const/4 v0, 0x2

    if-ne p3, v0, :cond_18

    .line 1871
    invoke-static {p0, p1}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result p3

    const-wide/16 v0, 0x1

    add-long/2addr p0, v0

    invoke-static {p0, p1}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result p0

    .line 1870
    # invokes: Lcom/google/protobuf/Utf8;->incompleteStateFor(III)I
    invoke-static {p2, p3, p0}, Lcom/google/protobuf/Utf8;->access$100(III)I

    move-result p0

    return p0

    .line 1873
    :cond_18
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1868
    :cond_1e
    invoke-static {p0, p1}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result p0

    # invokes: Lcom/google/protobuf/Utf8;->incompleteStateFor(II)I
    invoke-static {p2, p0}, Lcom/google/protobuf/Utf8;->access$000(II)I

    move-result p0

    return p0

    .line 1866
    :cond_27
    # invokes: Lcom/google/protobuf/Utf8;->incompleteStateFor(I)I
    invoke-static {p2}, Lcom/google/protobuf/Utf8;->access$1200(I)I

    move-result p0

    return p0
.end method

.method private static unsafeIncompleteStateFor([BIJI)I
    .registers 7

    if-eqz p4, :cond_27

    const/4 v0, 0x1

    if-eq p4, v0, :cond_1e

    const/4 v0, 0x2

    if-ne p4, v0, :cond_18

    .line 1857
    invoke-static {p0, p2, p3}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p4

    const-wide/16 v0, 0x1

    add-long/2addr p2, v0

    invoke-static {p0, p2, p3}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p0

    .line 1856
    # invokes: Lcom/google/protobuf/Utf8;->incompleteStateFor(III)I
    invoke-static {p1, p4, p0}, Lcom/google/protobuf/Utf8;->access$100(III)I

    move-result p0

    return p0

    .line 1859
    :cond_18
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1854
    :cond_1e
    invoke-static {p0, p2, p3}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p0

    # invokes: Lcom/google/protobuf/Utf8;->incompleteStateFor(II)I
    invoke-static {p1, p0}, Lcom/google/protobuf/Utf8;->access$000(II)I

    move-result p0

    return p0

    .line 1852
    :cond_27
    # invokes: Lcom/google/protobuf/Utf8;->incompleteStateFor(I)I
    invoke-static {p1}, Lcom/google/protobuf/Utf8;->access$1200(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method decodeUtf8([BII)Ljava/lang/String;
    .registers 13

    or-int p0, p2, p3

    .line 1369
    array-length v0, p1

    sub-int/2addr v0, p2

    sub-int/2addr v0, p3

    or-int/2addr p0, v0

    if-ltz p0, :cond_c1

    add-int p0, p2, p3

    .line 1379
    new-array v4, p3, [C

    const/4 p3, 0x0

    move v0, p3

    :goto_e
    if-ge p2, p0, :cond_25

    int-to-long v1, p2

    .line 1385
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v1

    .line 1386
    # invokes: Lcom/google/protobuf/Utf8$DecodeUtil;->isOneByte(B)Z
    invoke-static {v1}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$400(B)Z

    move-result v2

    if-nez v2, :cond_1c

    goto :goto_25

    :cond_1c
    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v2, v0, 0x1

    .line 1390
    # invokes: Lcom/google/protobuf/Utf8$DecodeUtil;->handleOneByte(B[CI)V
    invoke-static {v1, v4, v0}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$500(B[CI)V

    move v0, v2

    goto :goto_e

    :cond_25
    :goto_25
    move v5, v0

    :goto_26
    if-ge p2, p0, :cond_bb

    add-int/lit8 v0, p2, 0x1

    int-to-long v1, p2

    .line 1394
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v1

    .line 1395
    # invokes: Lcom/google/protobuf/Utf8$DecodeUtil;->isOneByte(B)Z
    invoke-static {v1}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$400(B)Z

    move-result v2

    if-eqz v2, :cond_54

    add-int/lit8 p2, v5, 0x1

    .line 1396
    # invokes: Lcom/google/protobuf/Utf8$DecodeUtil;->handleOneByte(B[CI)V
    invoke-static {v1, v4, v5}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$500(B[CI)V

    :goto_3a
    if-ge v0, p0, :cond_51

    int-to-long v1, v0

    .line 1400
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v1

    .line 1401
    # invokes: Lcom/google/protobuf/Utf8$DecodeUtil;->isOneByte(B)Z
    invoke-static {v1}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$400(B)Z

    move-result v2

    if-nez v2, :cond_48

    goto :goto_51

    :cond_48
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, p2, 0x1

    .line 1405
    # invokes: Lcom/google/protobuf/Utf8$DecodeUtil;->handleOneByte(B[CI)V
    invoke-static {v1, v4, p2}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$500(B[CI)V

    move p2, v2

    goto :goto_3a

    :cond_51
    :goto_51
    move v5, p2

    move p2, v0

    goto :goto_26

    .line 1407
    :cond_54
    # invokes: Lcom/google/protobuf/Utf8$DecodeUtil;->isTwoBytes(B)Z
    invoke-static {v1}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$600(B)Z

    move-result v2

    if-eqz v2, :cond_6f

    if-ge v0, p0, :cond_6a

    add-int/lit8 p2, p2, 0x2

    int-to-long v2, v0

    .line 1412
    invoke-static {p1, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v0

    add-int/lit8 v2, v5, 0x1

    .line 1411
    # invokes: Lcom/google/protobuf/Utf8$DecodeUtil;->handleTwoBytes(BB[CI)V
    invoke-static {v1, v0, v4, v5}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$700(BB[CI)V

    move v5, v2

    goto :goto_26

    .line 1409
    :cond_6a
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    .line 1413
    :cond_6f
    # invokes: Lcom/google/protobuf/Utf8$DecodeUtil;->isThreeBytes(B)Z
    invoke-static {v1}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$800(B)Z

    move-result v2

    if-eqz v2, :cond_93

    add-int/lit8 v2, p0, -0x1

    if-ge v0, v2, :cond_8e

    add-int/lit8 v2, p2, 0x2

    int-to-long v6, v0

    .line 1419
    invoke-static {p1, v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v0

    add-int/lit8 p2, p2, 0x3

    int-to-long v2, v2

    .line 1420
    invoke-static {p1, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v2

    add-int/lit8 v3, v5, 0x1

    .line 1417
    # invokes: Lcom/google/protobuf/Utf8$DecodeUtil;->handleThreeBytes(BBB[CI)V
    invoke-static {v1, v0, v2, v4, v5}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$900(BBB[CI)V

    move v5, v3

    goto :goto_26

    .line 1415
    :cond_8e
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_93
    add-int/lit8 v2, p0, -0x2

    if-ge v0, v2, :cond_b6

    add-int/lit8 v2, p2, 0x2

    int-to-long v6, v0

    .line 1429
    invoke-static {p1, v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v0

    add-int/lit8 v3, p2, 0x3

    int-to-long v6, v2

    .line 1430
    invoke-static {p1, v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v2

    add-int/lit8 p2, p2, 0x4

    int-to-long v6, v3

    .line 1431
    invoke-static {p1, v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v3

    move v8, v1

    move v1, v0

    move v0, v8

    .line 1427
    # invokes: Lcom/google/protobuf/Utf8$DecodeUtil;->handleFourBytes(BBBB[CI)V
    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$1000(BBBB[CI)V

    add-int/lit8 v5, v5, 0x2

    goto/16 :goto_26

    .line 1425
    :cond_b6
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    .line 1439
    :cond_bb
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v4, p3, v5}, Ljava/lang/String;-><init>([CII)V

    return-object p0

    .line 1370
    :cond_c1
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    array-length p1, p1

    .line 1371
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
    .registers 24

    move/from16 v0, p2

    move/from16 v1, p3

    or-int v2, v0, v1

    .line 1446
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->limit()I

    move-result v3

    sub-int/2addr v3, v0

    sub-int/2addr v3, v1

    or-int/2addr v2, v3

    if-ltz v2, :cond_d2

    .line 1450
    invoke-static/range {p1 .. p1}, Lcom/google/protobuf/UnsafeUtil;->addressOffset(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    int-to-long v4, v0

    add-long/2addr v2, v4

    int-to-long v4, v1

    add-long/2addr v4, v2

    .line 1455
    new-array v10, v1, [C

    const/4 v0, 0x0

    move v1, v0

    :goto_1b
    cmp-long v6, v2, v4

    const-wide/16 v12, 0x1

    if-gez v6, :cond_34

    .line 1461
    invoke-static {v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v6

    .line 1462
    # invokes: Lcom/google/protobuf/Utf8$DecodeUtil;->isOneByte(B)Z
    invoke-static {v6}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$400(B)Z

    move-result v7

    if-nez v7, :cond_2c

    goto :goto_34

    :cond_2c
    add-long/2addr v2, v12

    add-int/lit8 v7, v1, 0x1

    .line 1466
    # invokes: Lcom/google/protobuf/Utf8$DecodeUtil;->handleOneByte(B[CI)V
    invoke-static {v6, v10, v1}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$500(B[CI)V

    move v1, v7

    goto :goto_1b

    :cond_34
    :goto_34
    move v11, v1

    :goto_35
    cmp-long v1, v2, v4

    if-gez v1, :cond_cc

    add-long v6, v2, v12

    move-wide v7, v6

    .line 1470
    invoke-static {v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v6

    .line 1471
    # invokes: Lcom/google/protobuf/Utf8$DecodeUtil;->isOneByte(B)Z
    invoke-static {v6}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$400(B)Z

    move-result v1

    if-eqz v1, :cond_66

    add-int/lit8 v1, v11, 0x1

    .line 1472
    # invokes: Lcom/google/protobuf/Utf8$DecodeUtil;->handleOneByte(B[CI)V
    invoke-static {v6, v10, v11}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$500(B[CI)V

    move-wide v6, v7

    :goto_4c
    cmp-long v2, v6, v4

    if-gez v2, :cond_63

    .line 1476
    invoke-static {v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v2

    .line 1477
    # invokes: Lcom/google/protobuf/Utf8$DecodeUtil;->isOneByte(B)Z
    invoke-static {v2}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$400(B)Z

    move-result v3

    if-nez v3, :cond_5b

    goto :goto_63

    :cond_5b
    add-long/2addr v6, v12

    add-int/lit8 v3, v1, 0x1

    .line 1481
    # invokes: Lcom/google/protobuf/Utf8$DecodeUtil;->handleOneByte(B[CI)V
    invoke-static {v2, v10, v1}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$500(B[CI)V

    move v1, v3

    goto :goto_4c

    :cond_63
    :goto_63
    move v11, v1

    move-wide v2, v6

    goto :goto_35

    .line 1483
    :cond_66
    # invokes: Lcom/google/protobuf/Utf8$DecodeUtil;->isTwoBytes(B)Z
    invoke-static {v6}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$600(B)Z

    move-result v1

    const-wide/16 v14, 0x2

    if-eqz v1, :cond_83

    cmp-long v1, v7, v4

    if-gez v1, :cond_7e

    add-long/2addr v2, v14

    .line 1488
    invoke-static {v7, v8}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v1

    add-int/lit8 v7, v11, 0x1

    .line 1487
    # invokes: Lcom/google/protobuf/Utf8$DecodeUtil;->handleTwoBytes(BB[CI)V
    invoke-static {v6, v1, v10, v11}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$700(BB[CI)V

    move v11, v7

    goto :goto_35

    .line 1485
    :cond_7e
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1489
    :cond_83
    # invokes: Lcom/google/protobuf/Utf8$DecodeUtil;->isThreeBytes(B)Z
    invoke-static {v6}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$800(B)Z

    move-result v1

    const-wide/16 v16, 0x3

    if-eqz v1, :cond_a8

    sub-long v18, v4, v12

    cmp-long v1, v7, v18

    if-gez v1, :cond_a3

    add-long/2addr v14, v2

    .line 1495
    invoke-static {v7, v8}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v1

    add-long v2, v2, v16

    .line 1496
    invoke-static {v14, v15}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v7

    add-int/lit8 v8, v11, 0x1

    .line 1493
    # invokes: Lcom/google/protobuf/Utf8$DecodeUtil;->handleThreeBytes(BBB[CI)V
    invoke-static {v6, v1, v7, v10, v11}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$900(BBB[CI)V

    move v11, v8

    goto :goto_35

    .line 1491
    :cond_a3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_a8
    sub-long v18, v4, v14

    cmp-long v1, v7, v18

    if-gez v1, :cond_c7

    add-long/2addr v14, v2

    .line 1505
    invoke-static {v7, v8}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v7

    add-long v16, v2, v16

    .line 1506
    invoke-static {v14, v15}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v8

    const-wide/16 v14, 0x4

    add-long/2addr v2, v14

    .line 1507
    invoke-static/range {v16 .. v17}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v9

    .line 1503
    # invokes: Lcom/google/protobuf/Utf8$DecodeUtil;->handleFourBytes(BBBB[CI)V
    invoke-static/range {v6 .. v11}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$1000(BBBB[CI)V

    add-int/lit8 v11, v11, 0x2

    goto/16 :goto_35

    .line 1501
    :cond_c7
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1515
    :cond_cc
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v10, v0, v11}, Ljava/lang/String;-><init>([CII)V

    return-object v1

    .line 1447
    :cond_d2
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 1448
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->limit()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v3, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "buffer limit=%d, index=%d, limit=%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method encodeUtf8(Ljava/lang/CharSequence;[BII)I
    .registers 28

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    int-to-long v4, v2

    int-to-long v6, v3

    add-long/2addr v6, v4

    .line 1522
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v8

    .line 1523
    const-string v9, " at index "

    const-string v10, "Failed writing "

    if-gt v8, v3, :cond_135

    array-length v11, v1

    sub-int/2addr v11, v3

    if-lt v11, v2, :cond_135

    const/4 v2, 0x0

    :goto_1a
    const-wide/16 v11, 0x1

    const/16 v3, 0x80

    if-ge v2, v8, :cond_2f

    .line 1532
    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    if-ge v13, v3, :cond_2f

    add-long/2addr v11, v4

    int-to-byte v3, v13

    .line 1533
    invoke-static {v1, v4, v5, v3}, Lcom/google/protobuf/UnsafeUtil;->putByte([BJB)V

    add-int/lit8 v2, v2, 0x1

    move-wide v4, v11

    goto :goto_1a

    :cond_2f
    if-ne v2, v8, :cond_33

    long-to-int v0, v4

    return v0

    :cond_33
    :goto_33
    if-ge v2, v8, :cond_133

    .line 1541
    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    if-ge v13, v3, :cond_4c

    cmp-long v14, v4, v6

    if-gez v14, :cond_4c

    add-long v14, v4, v11

    int-to-byte v13, v13

    .line 1543
    invoke-static {v1, v4, v5, v13}, Lcom/google/protobuf/UnsafeUtil;->putByte([BJB)V

    move-wide/from16 v19, v6

    move-wide/from16 p3, v11

    move-wide v4, v14

    goto/16 :goto_ef

    :cond_4c
    const/16 v14, 0x800

    const-wide/16 v15, 0x2

    if-ge v13, v14, :cond_70

    sub-long v17, v6, v15

    cmp-long v14, v4, v17

    if-gtz v14, :cond_70

    move-wide/from16 p3, v11

    add-long v11, v4, p3

    ushr-int/lit8 v14, v13, 0x6

    or-int/lit16 v14, v14, 0x3c0

    int-to-byte v14, v14

    .line 1545
    invoke-static {v1, v4, v5, v14}, Lcom/google/protobuf/UnsafeUtil;->putByte([BJB)V

    add-long/2addr v4, v15

    and-int/lit8 v13, v13, 0x3f

    or-int/2addr v13, v3

    int-to-byte v13, v13

    .line 1546
    invoke-static {v1, v11, v12, v13}, Lcom/google/protobuf/UnsafeUtil;->putByte([BJB)V

    move-wide/from16 v19, v6

    goto/16 :goto_ef

    :cond_70
    move-wide/from16 p3, v11

    const v11, 0xdfff

    const v12, 0xd800

    const-wide/16 v17, 0x3

    if-lt v13, v12, :cond_82

    if-ge v11, v13, :cond_7f

    goto :goto_82

    :cond_7f
    move-wide/from16 v19, v6

    goto :goto_a9

    :cond_82
    :goto_82
    sub-long v19, v6, v17

    cmp-long v14, v4, v19

    if-gtz v14, :cond_7f

    add-long v11, v4, p3

    ushr-int/lit8 v14, v13, 0xc

    or-int/lit16 v14, v14, 0x1e0

    int-to-byte v14, v14

    .line 1549
    invoke-static {v1, v4, v5, v14}, Lcom/google/protobuf/UnsafeUtil;->putByte([BJB)V

    add-long v14, v4, v15

    ushr-int/lit8 v16, v13, 0x6

    move-wide/from16 v19, v6

    and-int/lit8 v6, v16, 0x3f

    or-int/2addr v6, v3

    int-to-byte v6, v6

    .line 1550
    invoke-static {v1, v11, v12, v6}, Lcom/google/protobuf/UnsafeUtil;->putByte([BJB)V

    add-long v4, v4, v17

    and-int/lit8 v6, v13, 0x3f

    or-int/2addr v6, v3

    int-to-byte v6, v6

    .line 1551
    invoke-static {v1, v14, v15, v6}, Lcom/google/protobuf/UnsafeUtil;->putByte([BJB)V

    goto :goto_ef

    :goto_a9
    const-wide/16 v6, 0x4

    sub-long v21, v19, v6

    cmp-long v14, v4, v21

    if-gtz v14, :cond_100

    add-int/lit8 v11, v2, 0x1

    if-eq v11, v8, :cond_f8

    .line 1556
    invoke-interface {v0, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v13, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v12

    if-eqz v12, :cond_f7

    .line 1559
    invoke-static {v13, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    add-long v12, v4, p3

    ushr-int/lit8 v14, v2, 0x12

    or-int/lit16 v14, v14, 0xf0

    int-to-byte v14, v14

    .line 1560
    invoke-static {v1, v4, v5, v14}, Lcom/google/protobuf/UnsafeUtil;->putByte([BJB)V

    add-long v14, v4, v15

    ushr-int/lit8 v16, v2, 0xc

    move-wide/from16 v21, v6

    and-int/lit8 v6, v16, 0x3f

    or-int/2addr v6, v3

    int-to-byte v6, v6

    .line 1561
    invoke-static {v1, v12, v13, v6}, Lcom/google/protobuf/UnsafeUtil;->putByte([BJB)V

    add-long v6, v4, v17

    ushr-int/lit8 v12, v2, 0x6

    and-int/lit8 v12, v12, 0x3f

    or-int/2addr v12, v3

    int-to-byte v12, v12

    .line 1562
    invoke-static {v1, v14, v15, v12}, Lcom/google/protobuf/UnsafeUtil;->putByte([BJB)V

    add-long v4, v4, v21

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v3

    int-to-byte v2, v2

    .line 1563
    invoke-static {v1, v6, v7, v2}, Lcom/google/protobuf/UnsafeUtil;->putByte([BJB)V

    move v2, v11

    :goto_ef
    add-int/lit8 v2, v2, 0x1

    move-wide/from16 v11, p3

    move-wide/from16 v6, v19

    goto/16 :goto_33

    :cond_f7
    move v2, v11

    .line 1557
    :cond_f8
    new-instance v0, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v0, v2, v8}, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    throw v0

    :cond_100
    if-gt v12, v13, :cond_118

    if-gt v13, v11, :cond_118

    add-int/lit8 v1, v2, 0x1

    if-eq v1, v8, :cond_112

    .line 1566
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v13, v0}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v0

    if-nez v0, :cond_118

    .line 1568
    :cond_112
    new-instance v0, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;

    invoke-direct {v0, v2, v8}, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    throw v0

    .line 1571
    :cond_118
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_133
    long-to-int v0, v4

    return v0

    .line 1525
    :cond_135
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, -0x1

    .line 1526
    invoke-interface {v0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v0, v2, v3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method encodeUtf8Direct(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .registers 29

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 1581
    invoke-static {v1}, Lcom/google/protobuf/UnsafeUtil;->addressOffset(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    .line 1582
    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v4, v2

    .line 1583
    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v6, v2

    .line 1584
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v8

    int-to-long v9, v8

    sub-long v11, v6, v4

    cmp-long v9, v9, v11

    .line 1585
    const-string v10, " at index "

    const-string v11, "Failed writing "

    if-gtz v9, :cond_160

    const/4 v9, 0x0

    :goto_24
    const-wide/16 v12, 0x1

    const/16 v14, 0x80

    if-ge v9, v8, :cond_39

    .line 1594
    invoke-interface {v0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v15

    if-ge v15, v14, :cond_39

    add-long/2addr v12, v4

    int-to-byte v14, v15

    .line 1595
    invoke-static {v4, v5, v14}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    add-int/lit8 v9, v9, 0x1

    move-wide v4, v12

    goto :goto_24

    :cond_39
    if-ne v9, v8, :cond_41

    sub-long/2addr v4, v2

    long-to-int v0, v4

    .line 1599
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    :cond_41
    :goto_41
    if-ge v9, v8, :cond_157

    .line 1604
    invoke-interface {v0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v15

    if-ge v15, v14, :cond_5e

    cmp-long v16, v4, v6

    if-gez v16, :cond_5e

    add-long v16, v4, v12

    int-to-byte v15, v15

    .line 1606
    invoke-static {v4, v5, v15}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    move-wide/from16 v22, v2

    move-wide/from16 v24, v6

    move v2, v14

    move-wide/from16 v4, v16

    move-wide/from16 v16, v12

    goto/16 :goto_110

    :cond_5e
    move-wide/from16 v16, v12

    const/16 v12, 0x800

    const-wide/16 v18, 0x2

    if-ge v15, v12, :cond_89

    sub-long v12, v6, v18

    cmp-long v12, v4, v12

    if-gtz v12, :cond_89

    add-long v12, v4, v16

    ushr-int/lit8 v14, v15, 0x6

    or-int/lit16 v14, v14, 0x3c0

    int-to-byte v14, v14

    .line 1608
    invoke-static {v4, v5, v14}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    add-long v4, v4, v18

    and-int/lit8 v14, v15, 0x3f

    const/16 v15, 0x80

    or-int/2addr v14, v15

    int-to-byte v14, v14

    .line 1609
    invoke-static {v12, v13, v14}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    move-wide/from16 v22, v2

    move-wide/from16 v24, v6

    :goto_85
    const/16 v2, 0x80

    goto/16 :goto_110

    :cond_89
    const v12, 0xdfff

    const v13, 0xd800

    const-wide/16 v20, 0x3

    if-lt v15, v13, :cond_9b

    if-ge v12, v15, :cond_96

    goto :goto_9b

    :cond_96
    move-wide/from16 v22, v2

    move-wide/from16 v24, v6

    goto :goto_c7

    :cond_9b
    :goto_9b
    sub-long v22, v6, v20

    cmp-long v14, v4, v22

    if-gtz v14, :cond_96

    add-long v12, v4, v16

    ushr-int/lit8 v14, v15, 0xc

    or-int/lit16 v14, v14, 0x1e0

    int-to-byte v14, v14

    .line 1612
    invoke-static {v4, v5, v14}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    move-wide/from16 v22, v2

    add-long v2, v4, v18

    ushr-int/lit8 v14, v15, 0x6

    and-int/lit8 v14, v14, 0x3f

    move-wide/from16 v24, v6

    const/16 v6, 0x80

    or-int/lit16 v7, v14, 0x80

    int-to-byte v7, v7

    .line 1613
    invoke-static {v12, v13, v7}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    add-long v4, v4, v20

    and-int/lit8 v7, v15, 0x3f

    or-int/2addr v7, v6

    int-to-byte v6, v7

    .line 1614
    invoke-static {v2, v3, v6}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    goto :goto_85

    :goto_c7
    const-wide/16 v2, 0x4

    sub-long v6, v24, v2

    cmp-long v6, v4, v6

    if-gtz v6, :cond_124

    add-int/lit8 v6, v9, 0x1

    if-eq v6, v8, :cond_11c

    .line 1619
    invoke-interface {v0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v15, v7}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v9

    if-eqz v9, :cond_11b

    .line 1622
    invoke-static {v15, v7}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v7

    add-long v12, v4, v16

    ushr-int/lit8 v9, v7, 0x12

    or-int/lit16 v9, v9, 0xf0

    int-to-byte v9, v9

    .line 1623
    invoke-static {v4, v5, v9}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    add-long v14, v4, v18

    ushr-int/lit8 v9, v7, 0xc

    and-int/lit8 v9, v9, 0x3f

    move-wide/from16 v18, v2

    const/16 v2, 0x80

    or-int/lit16 v3, v9, 0x80

    int-to-byte v3, v3

    .line 1624
    invoke-static {v12, v13, v3}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    add-long v12, v4, v20

    ushr-int/lit8 v3, v7, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v3, v2

    int-to-byte v3, v3

    .line 1625
    invoke-static {v14, v15, v3}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    add-long v4, v4, v18

    and-int/lit8 v3, v7, 0x3f

    or-int/2addr v3, v2

    int-to-byte v3, v3

    .line 1626
    invoke-static {v12, v13, v3}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    move v9, v6

    :goto_110
    add-int/lit8 v9, v9, 0x1

    move v14, v2

    move-wide/from16 v12, v16

    move-wide/from16 v2, v22

    move-wide/from16 v6, v24

    goto/16 :goto_41

    :cond_11b
    move v9, v6

    .line 1620
    :cond_11c
    new-instance v0, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;

    add-int/lit8 v9, v9, -0x1

    invoke-direct {v0, v9, v8}, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    throw v0

    :cond_124
    if-gt v13, v15, :cond_13c

    if-gt v15, v12, :cond_13c

    add-int/lit8 v1, v9, 0x1

    if-eq v1, v8, :cond_136

    .line 1629
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v15, v0}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v0

    if-nez v0, :cond_13c

    .line 1631
    :cond_136
    new-instance v0, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;

    invoke-direct {v0, v9, v8}, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    throw v0

    .line 1634
    :cond_13c
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_157
    move-wide/from16 v22, v2

    sub-long v4, v4, v22

    long-to-int v0, v4

    .line 1639
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    .line 1587
    :cond_160
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, -0x1

    .line 1588
    invoke-interface {v0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method partialIsValidUtf8(I[BII)I
    .registers 14

    or-int p0, p3, p4

    .line 1178
    array-length v0, p2

    sub-int/2addr v0, p4

    or-int/2addr p0, v0

    if-ltz p0, :cond_a8

    int-to-long v0, p3

    int-to-long p3, p4

    if-eqz p1, :cond_a1

    cmp-long p0, v0, p3

    if-ltz p0, :cond_10

    return p1

    :cond_10
    int-to-byte p0, p1

    const/16 v2, -0x20

    const/4 v3, -0x1

    const/16 v4, -0x41

    const-wide/16 v5, 0x1

    if-ge p0, v2, :cond_2a

    const/16 p1, -0x3e

    if-lt p0, p1, :cond_29

    add-long/2addr v5, v0

    .line 1204
    invoke-static {p2, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p0

    if-le p0, v4, :cond_26

    goto :goto_29

    :cond_26
    move-wide v0, v5

    goto/16 :goto_a1

    :cond_29
    :goto_29
    return v3

    :cond_2a
    const/16 v7, -0x10

    if-ge p0, v7, :cond_5e

    shr-int/lit8 p1, p1, 0x8

    not-int p1, p1

    int-to-byte p1, p1

    if-nez p1, :cond_44

    add-long v7, v0, v5

    .line 1213
    invoke-static {p2, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p1

    cmp-long v0, v7, p3

    if-ltz v0, :cond_43

    .line 1215
    # invokes: Lcom/google/protobuf/Utf8;->incompleteStateFor(II)I
    invoke-static {p0, p1}, Lcom/google/protobuf/Utf8;->access$000(II)I

    move-result p0

    return p0

    :cond_43
    move-wide v0, v7

    :cond_44
    if-gt p1, v4, :cond_5d

    const/16 v7, -0x60

    if-ne p0, v2, :cond_4c

    if-lt p1, v7, :cond_5d

    :cond_4c
    const/16 v2, -0x13

    if-ne p0, v2, :cond_52

    if-ge p1, v7, :cond_5d

    :cond_52
    add-long p0, v0, v5

    .line 1224
    invoke-static {p2, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v0

    if-le v0, v4, :cond_5b

    goto :goto_5d

    :cond_5b
    move-wide v0, p0

    goto :goto_a1

    :cond_5d
    :goto_5d
    return v3

    :cond_5e
    shr-int/lit8 v2, p1, 0x8

    not-int v2, v2

    int-to-byte v2, v2

    if-nez v2, :cond_76

    add-long v7, v0, v5

    .line 1234
    invoke-static {p2, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v2

    cmp-long p1, v7, p3

    if-ltz p1, :cond_73

    .line 1236
    # invokes: Lcom/google/protobuf/Utf8;->incompleteStateFor(II)I
    invoke-static {p0, v2}, Lcom/google/protobuf/Utf8;->access$000(II)I

    move-result p0

    return p0

    :cond_73
    const/4 p1, 0x0

    move-wide v0, v7

    goto :goto_79

    :cond_76
    shr-int/lit8 p1, p1, 0x10

    int-to-byte p1, p1

    :goto_79
    if-nez p1, :cond_8b

    add-long v7, v0, v5

    .line 1242
    invoke-static {p2, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p1

    cmp-long v0, v7, p3

    if-ltz v0, :cond_8a

    .line 1244
    # invokes: Lcom/google/protobuf/Utf8;->incompleteStateFor(III)I
    invoke-static {p0, v2, p1}, Lcom/google/protobuf/Utf8;->access$100(III)I

    move-result p0

    return p0

    :cond_8a
    move-wide v0, v7

    :cond_8b
    if-gt v2, v4, :cond_a0

    shl-int/lit8 p0, p0, 0x1c

    add-int/lit8 v2, v2, 0x70

    add-int/2addr p0, v2

    shr-int/lit8 p0, p0, 0x1e

    if-nez p0, :cond_a0

    if-gt p1, v4, :cond_a0

    add-long p0, v0, v5

    .line 1261
    invoke-static {p2, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v0

    if-le v0, v4, :cond_5b

    :cond_a0
    return v3

    :cond_a1
    :goto_a1
    sub-long/2addr p3, v0

    long-to-int p0, p3

    .line 1267
    invoke-static {p2, v0, v1, p0}, Lcom/google/protobuf/Utf8$UnsafeProcessor;->partialIsValidUtf8([BJI)I

    move-result p0

    return p0

    .line 1179
    :cond_a8
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    array-length p1, p2

    .line 1180
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Array length=%d, index=%d, limit=%d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method partialIsValidUtf8Direct(ILjava/nio/ByteBuffer;II)I
    .registers 13

    or-int p0, p3, p4

    .line 1274
    invoke-virtual {p2}, Ljava/nio/Buffer;->limit()I

    move-result v0

    sub-int/2addr v0, p4

    or-int/2addr p0, v0

    if-ltz p0, :cond_b2

    .line 1278
    invoke-static {p2}, Lcom/google/protobuf/UnsafeUtil;->addressOffset(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    int-to-long v2, p3

    add-long/2addr v0, v2

    sub-int/2addr p4, p3

    int-to-long p2, p4

    add-long/2addr p2, v0

    if-eqz p1, :cond_ab

    cmp-long p0, v0, p2

    if-ltz p0, :cond_1a

    return p1

    :cond_1a
    int-to-byte p0, p1

    const/16 p4, -0x20

    const/4 v2, -0x1

    const/16 v3, -0x41

    const-wide/16 v4, 0x1

    if-ge p0, p4, :cond_34

    const/16 p1, -0x3e

    if-lt p0, p1, :cond_33

    add-long/2addr v4, v0

    .line 1301
    invoke-static {v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result p0

    if-le p0, v3, :cond_30

    goto :goto_33

    :cond_30
    move-wide v0, v4

    goto/16 :goto_ab

    :cond_33
    :goto_33
    return v2

    :cond_34
    const/16 v6, -0x10

    if-ge p0, v6, :cond_68

    shr-int/lit8 p1, p1, 0x8

    not-int p1, p1

    int-to-byte p1, p1

    if-nez p1, :cond_4e

    add-long v6, v0, v4

    .line 1310
    invoke-static {v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result p1

    cmp-long v0, v6, p2

    if-ltz v0, :cond_4d

    .line 1312
    # invokes: Lcom/google/protobuf/Utf8;->incompleteStateFor(II)I
    invoke-static {p0, p1}, Lcom/google/protobuf/Utf8;->access$000(II)I

    move-result p0

    return p0

    :cond_4d
    move-wide v0, v6

    :cond_4e
    if-gt p1, v3, :cond_67

    const/16 v6, -0x60

    if-ne p0, p4, :cond_56

    if-lt p1, v6, :cond_67

    :cond_56
    const/16 p4, -0x13

    if-ne p0, p4, :cond_5c

    if-ge p1, v6, :cond_67

    :cond_5c
    add-long p0, v0, v4

    .line 1321
    invoke-static {v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result p4

    if-le p4, v3, :cond_65

    goto :goto_67

    :cond_65
    move-wide v0, p0

    goto :goto_ab

    :cond_67
    :goto_67
    return v2

    :cond_68
    shr-int/lit8 p4, p1, 0x8

    not-int p4, p4

    int-to-byte p4, p4

    if-nez p4, :cond_80

    add-long v6, v0, v4

    .line 1331
    invoke-static {v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result p4

    cmp-long p1, v6, p2

    if-ltz p1, :cond_7d

    .line 1333
    # invokes: Lcom/google/protobuf/Utf8;->incompleteStateFor(II)I
    invoke-static {p0, p4}, Lcom/google/protobuf/Utf8;->access$000(II)I

    move-result p0

    return p0

    :cond_7d
    const/4 p1, 0x0

    move-wide v0, v6

    goto :goto_83

    :cond_80
    shr-int/lit8 p1, p1, 0x10

    int-to-byte p1, p1

    :goto_83
    if-nez p1, :cond_95

    add-long v6, v0, v4

    .line 1339
    invoke-static {v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result p1

    cmp-long v0, v6, p2

    if-ltz v0, :cond_94

    .line 1341
    # invokes: Lcom/google/protobuf/Utf8;->incompleteStateFor(III)I
    invoke-static {p0, p4, p1}, Lcom/google/protobuf/Utf8;->access$100(III)I

    move-result p0

    return p0

    :cond_94
    move-wide v0, v6

    :cond_95
    if-gt p4, v3, :cond_aa

    shl-int/lit8 p0, p0, 0x1c

    add-int/lit8 p4, p4, 0x70

    add-int/2addr p0, p4

    shr-int/lit8 p0, p0, 0x1e

    if-nez p0, :cond_aa

    if-gt p1, v3, :cond_aa

    add-long p0, v0, v4

    .line 1358
    invoke-static {v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result p4

    if-le p4, v3, :cond_65

    :cond_aa
    return v2

    :cond_ab
    :goto_ab
    sub-long/2addr p2, v0

    long-to-int p0, p2

    .line 1364
    invoke-static {v0, v1, p0}, Lcom/google/protobuf/Utf8$UnsafeProcessor;->partialIsValidUtf8(JI)I

    move-result p0

    return p0

    .line 1275
    :cond_b2
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 1276
    invoke-virtual {p2}, Ljava/nio/Buffer;->limit()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "buffer limit=%d, index=%d, limit=%d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
