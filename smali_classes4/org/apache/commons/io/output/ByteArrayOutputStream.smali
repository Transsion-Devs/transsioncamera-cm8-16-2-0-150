.class public Lorg/apache/commons/io/output/ByteArrayOutputStream;
.super Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 2

    const/16 v0, 0x400

    .line 34
    invoke-direct {p0, v0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    .line 44
    invoke-direct {p0}, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;-><init>()V

    if-ltz p1, :cond_e

    .line 49
    monitor-enter p0

    .line 50
    :try_start_6
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->needNewBuffer(I)V

    .line 51
    monitor-exit p0

    return-void

    :catchall_b
    move-exception p1

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_b

    throw p1

    .line 46
    :cond_e
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

    .line 123
    invoke-static {p0, v0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->toBufferedInputStream(Ljava/io/InputStream;I)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public static toBufferedInputStream(Ljava/io/InputStream;I)Ljava/io/InputStream;
    .registers 3

    .line 151
    new-instance v0, Lorg/apache/commons/io/output/ByteArrayOutputStream;

    invoke-direct {v0, p1}, Lorg/apache/commons/io/output/ByteArrayOutputStream;-><init>(I)V

    .line 152
    :try_start_5
    invoke-virtual {v0, p0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->write(Ljava/io/InputStream;)I

    .line 153
    invoke-virtual {v0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->toInputStream()Ljava/io/InputStream;

    move-result-object p0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_10

    .line 154
    invoke-virtual {v0}, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->close()V

    return-object p0

    :catchall_10
    move-exception p0

    .line 151
    :try_start_11
    throw p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_12

    :catchall_12
    move-exception p1

    .line 154
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
.method public declared-synchronized reset()V
    .registers 2

    monitor-enter p0

    .line 91
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->resetImpl()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 92
    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    :try_start_7
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_7 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public declared-synchronized size()I
    .registers 2

    monitor-enter p0

    .line 83
    :try_start_1
    iget v0, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->count:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public declared-synchronized toByteArray()[B
    .registers 2

    monitor-enter p0

    .line 164
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->toByteArrayImpl()[B

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-object v0

    :catchall_7
    move-exception v0

    :try_start_8
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public declared-synchronized toInputStream()Ljava/io/InputStream;
    .registers 2

    monitor-enter p0

    .line 159
    :try_start_1
    new-instance v0, Lorg/apache/commons/io/output/ByteArrayOutputStream$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/apache/commons/io/output/ByteArrayOutputStream$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->toInputStream(Lorg/apache/commons/io/output/AbstractByteArrayOutputStream$InputStreamConstructor;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-object v0

    :catchall_c
    move-exception v0

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw v0
.end method

.method public declared-synchronized write(Ljava/io/InputStream;)I
    .registers 2

    monitor-enter p0

    .line 78
    :try_start_1
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->writeImpl(Ljava/io/InputStream;)I

    move-result p1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return p1

    :catchall_7
    move-exception p1

    :try_start_8
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public declared-synchronized write(I)V
    .registers 2

    monitor-enter p0

    .line 73
    :try_start_1
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->writeImpl(I)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 74
    monitor-exit p0

    return-void

    :catchall_6
    move-exception p1

    :try_start_7
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_7 .. :try_end_8} :catchall_6

    throw p1
.end method

.method public write([BII)V
    .registers 6

    if-ltz p2, :cond_1a

    .line 56
    array-length v0, p1

    if-gt p2, v0, :cond_1a

    if-ltz p3, :cond_1a

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_1a

    if-ltz v0, :cond_1a

    if-nez p3, :cond_11

    return-void

    .line 66
    :cond_11
    monitor-enter p0

    .line 67
    :try_start_12
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->writeImpl([BII)V

    .line 68
    monitor-exit p0

    return-void

    :catchall_17
    move-exception p1

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_17

    throw p1

    .line 61
    :cond_1a
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public declared-synchronized writeTo(Ljava/io/OutputStream;)V
    .registers 2

    monitor-enter p0

    .line 96
    :try_start_1
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->writeToImpl(Ljava/io/OutputStream;)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 97
    monitor-exit p0

    return-void

    :catchall_6
    move-exception p1

    :try_start_7
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_7 .. :try_end_8} :catchall_6

    throw p1
.end method
