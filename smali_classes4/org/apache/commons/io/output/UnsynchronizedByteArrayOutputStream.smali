.class public final Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;
.super Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 2

    const/16 v0, 0x400

    .line 38
    invoke-direct {p0, v0}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    .line 47
    invoke-direct {p0}, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;-><init>()V

    if-ltz p1, :cond_9

    .line 51
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->needNewBuffer(I)V

    return-void

    .line 49
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Negative initial size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static toBufferedInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .registers 2

    const/16 v0, 0x400

    .line 111
    invoke-static {p0, v0}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;->toBufferedInputStream(Ljava/io/InputStream;I)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public static toBufferedInputStream(Ljava/io/InputStream;I)Ljava/io/InputStream;
    .registers 3

    .line 134
    new-instance v0, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;

    invoke-direct {v0, p1}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;-><init>(I)V

    .line 135
    :try_start_5
    invoke-virtual {v0, p0}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;->write(Ljava/io/InputStream;)I

    .line 136
    invoke-virtual {v0}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;->toInputStream()Ljava/io/InputStream;

    move-result-object p0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_10

    .line 137
    invoke-virtual {v0}, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->close()V

    return-object p0

    :catchall_10
    move-exception p0

    .line 134
    :try_start_11
    throw p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_12

    :catchall_12
    move-exception p1

    .line 137
    :try_start_13
    invoke-virtual {v0}, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->close()V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_17

    goto :goto_1b

    :catchall_17
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1b
    throw p1
.end method


# virtual methods
.method public reset()V
    .registers 1

    .line 85
    invoke-virtual {p0}, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->resetImpl()V

    return-void
.end method

.method public size()I
    .registers 1

    .line 77
    iget p0, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->count:I

    return p0
.end method

.method public toByteArray()[B
    .registers 1

    .line 147
    invoke-virtual {p0}, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->toByteArrayImpl()[B

    move-result-object p0

    return-object p0
.end method

.method public toInputStream()Ljava/io/InputStream;
    .registers 2

    .line 142
    new-instance v0, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->toInputStream(Lorg/apache/commons/io/output/AbstractByteArrayOutputStream$InputStreamConstructor;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public write(Ljava/io/InputStream;)I
    .registers 2

    .line 72
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->writeImpl(Ljava/io/InputStream;)I

    move-result p0

    return p0
.end method

.method public write(I)V
    .registers 2

    .line 67
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->writeImpl(I)V

    return-void
.end method

.method public write([BII)V
    .registers 6

    if-ltz p2, :cond_15

    .line 56
    array-length v0, p1

    if-gt p2, v0, :cond_15

    if-ltz p3, :cond_15

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_15

    if-ltz v0, :cond_15

    if-nez p3, :cond_11

    return-void

    .line 62
    :cond_11
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->writeImpl([BII)V

    return-void

    .line 57
    :cond_15
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "offset=%,d, length=%,d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 2

    .line 90
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->writeToImpl(Ljava/io/OutputStream;)V

    return-void
.end method
