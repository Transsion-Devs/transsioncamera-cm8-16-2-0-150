.class public Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# static fields
.field public static final END_OF_STREAM:I = -0x1


# instance fields
.field private final data:[B

.field private final eod:I

.field private markedOffset:I

.field private offset:I


# direct methods
.method public constructor <init>([B)V
    .registers 3

    .line 67
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 68
    const-string v0, "data"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, [B

    iput-object v0, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->data:[B

    const/4 v0, 0x0

    .line 69
    iput v0, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->offset:I

    .line 70
    array-length p1, p1

    iput p1, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->eod:I

    .line 71
    iput v0, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->markedOffset:I

    return-void
.end method

.method public constructor <init>([BI)V
    .registers 4

    .line 82
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 83
    const-string v0, "data"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-ltz p2, :cond_1e

    .line 87
    iput-object p1, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->data:[B

    .line 88
    array-length v0, p1

    if-lez v0, :cond_11

    array-length v0, p1

    goto :goto_12

    :cond_11
    move v0, p2

    :goto_12
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->offset:I

    .line 89
    array-length p1, p1

    iput p1, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->eod:I

    .line 90
    iput p2, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->markedOffset:I

    return-void

    .line 85
    :cond_1e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "offset cannot be negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>([BII)V
    .registers 5

    .line 103
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    if-ltz p2, :cond_32

    if-ltz p3, :cond_2a

    .line 110
    const-string v0, "data"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, [B

    iput-object v0, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->data:[B

    .line 111
    array-length v0, p1

    if-lez v0, :cond_16

    array-length v0, p1

    goto :goto_17

    :cond_16
    move v0, p2

    :goto_17
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->offset:I

    add-int/2addr p2, p3

    .line 112
    array-length p1, p1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->eod:I

    .line 113
    iget p1, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->offset:I

    iput p1, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->markedOffset:I

    return-void

    .line 108
    :cond_2a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "length cannot be negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 105
    :cond_32
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "offset cannot be negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public available()I
    .registers 2

    .line 118
    iget v0, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->offset:I

    iget p0, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->eod:I

    if-ge v0, p0, :cond_8

    sub-int/2addr p0, v0

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public mark(I)V
    .registers 2

    .line 178
    iget p1, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->offset:I

    iput p1, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->markedOffset:I

    return-void
.end method

.method public markSupported()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public read()I
    .registers 4

    .line 123
    iget v0, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->offset:I

    iget v1, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->eod:I

    if-ge v0, v1, :cond_11

    iget-object v1, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->data:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->offset:I

    aget-byte p0, v1, v0

    and-int/lit16 p0, p0, 0xff

    return p0

    :cond_11
    const/4 p0, -0x1

    return p0
.end method

.method public read([B)I
    .registers 4

    .line 128
    const-string v0, "dest"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 129
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->read([BII)I

    move-result p0

    return p0
.end method

.method public read([BII)I
    .registers 6

    .line 134
    const-string v0, "dest"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-ltz p2, :cond_2a

    if-ltz p3, :cond_2a

    add-int v0, p2, p3

    .line 135
    array-length v1, p1

    if-gt v0, v1, :cond_2a

    .line 139
    iget v0, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->offset:I

    iget v1, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->eod:I

    if-lt v0, v1, :cond_16

    const/4 p0, -0x1

    return p0

    :cond_16
    sub-int/2addr v1, v0

    if-ge p3, v1, :cond_1a

    goto :goto_1b

    :cond_1a
    move p3, v1

    :goto_1b
    if-gtz p3, :cond_1f

    const/4 p0, 0x0

    return p0

    .line 150
    :cond_1f
    iget-object v1, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->data:[B

    invoke-static {v1, v0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 151
    iget p1, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->offset:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->offset:I

    return p3

    .line 136
    :cond_2a
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public reset()V
    .registers 2

    .line 184
    iget v0, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->markedOffset:I

    iput v0, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->offset:I

    return-void
.end method

.method public skip(J)J
    .registers 7

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_18

    .line 161
    iget v0, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->eod:I

    iget v1, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->offset:I

    sub-int/2addr v0, v1

    int-to-long v2, v0

    cmp-long v0, p1, v2

    if-gez v0, :cond_11

    goto :goto_12

    :cond_11
    move-wide p1, v2

    :goto_12
    int-to-long v0, v1

    add-long/2addr v0, p1

    long-to-int v0, v0

    .line 166
    iput v0, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->offset:I

    return-wide p1

    .line 158
    :cond_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Skipping backward is not supported"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
