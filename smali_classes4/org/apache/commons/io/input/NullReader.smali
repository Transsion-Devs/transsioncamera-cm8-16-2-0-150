.class public Lorg/apache/commons/io/input/NullReader;
.super Ljava/io/Reader;
.source "SourceFile"


# instance fields
.field private eof:Z

.field private mark:J

.field private final markSupported:Z

.field private position:J

.field private readlimit:J

.field private final size:J

.field private final throwEofException:Z


# direct methods
.method public constructor <init>()V
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 84
    invoke-direct {p0, v2, v3, v0, v1}, Lorg/apache/commons/io/input/NullReader;-><init>(JZZ)V

    return-void
.end method

.method public constructor <init>(J)V
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 94
    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/io/input/NullReader;-><init>(JZZ)V

    return-void
.end method

.method public constructor <init>(JZZ)V
    .registers 7

    .line 108
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    const-wide/16 v0, -0x1

    .line 71
    iput-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->mark:J

    .line 109
    iput-wide p1, p0, Lorg/apache/commons/io/input/NullReader;->size:J

    .line 110
    iput-boolean p3, p0, Lorg/apache/commons/io/input/NullReader;->markSupported:Z

    .line 111
    iput-boolean p4, p0, Lorg/apache/commons/io/input/NullReader;->throwEofException:Z

    return-void
.end method

.method private doEndOfFile()I
    .registers 2

    const/4 v0, 0x1

    .line 330
    iput-boolean v0, p0, Lorg/apache/commons/io/input/NullReader;->eof:Z

    .line 331
    iget-boolean p0, p0, Lorg/apache/commons/io/input/NullReader;->throwEofException:Z

    if-nez p0, :cond_9

    const/4 p0, -0x1

    return p0

    .line 332
    :cond_9
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method


# virtual methods
.method public close()V
    .registers 3

    const/4 v0, 0x0

    .line 140
    iput-boolean v0, p0, Lorg/apache/commons/io/input/NullReader;->eof:Z

    const-wide/16 v0, 0x0

    .line 141
    iput-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    const-wide/16 v0, -0x1

    .line 142
    iput-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->mark:J

    return-void
.end method

.method public getPosition()J
    .registers 3

    .line 120
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    return-wide v0
.end method

.method public getSize()J
    .registers 3

    .line 129
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->size:J

    return-wide v0
.end method

.method public declared-synchronized mark(I)V
    .registers 4

    monitor-enter p0

    .line 154
    :try_start_1
    iget-boolean v0, p0, Lorg/apache/commons/io/input/NullReader;->markSupported:Z

    if-eqz v0, :cond_10

    .line 157
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    iput-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->mark:J

    int-to-long v0, p1

    .line 158
    iput-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->readlimit:J
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 159
    monitor-exit p0

    return-void

    :catchall_e
    move-exception p1

    goto :goto_15

    .line 155
    :cond_10
    :try_start_10
    invoke-static {}, Lorg/apache/commons/io/input/UnsupportedOperationExceptions;->mark()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1

    .line 159
    :goto_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_e

    throw p1
.end method

.method public markSupported()Z
    .registers 1

    .line 168
    iget-boolean p0, p0, Lorg/apache/commons/io/input/NullReader;->markSupported:Z

    return p0
.end method

.method protected processChar()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method protected processChars([CII)V
    .registers 4

    return-void
.end method

.method public read()I
    .registers 5

    .line 183
    iget-boolean v0, p0, Lorg/apache/commons/io/input/NullReader;->eof:Z

    if-nez v0, :cond_1b

    .line 186
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    iget-wide v2, p0, Lorg/apache/commons/io/input/NullReader;->size:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_11

    .line 187
    invoke-direct {p0}, Lorg/apache/commons/io/input/NullReader;->doEndOfFile()I

    move-result p0

    return p0

    :cond_11
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 189
    iput-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    .line 190
    invoke-virtual {p0}, Lorg/apache/commons/io/input/NullReader;->processChar()I

    move-result p0

    return p0

    .line 184
    :cond_1b
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Read after end of file"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public read([C)I
    .registers 4

    const/4 v0, 0x0

    .line 206
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/io/input/NullReader;->read([CII)I

    move-result p0

    return p0
.end method

.method public read([CII)I
    .registers 10

    .line 224
    iget-boolean v0, p0, Lorg/apache/commons/io/input/NullReader;->eof:Z

    if-nez v0, :cond_22

    .line 227
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    iget-wide v2, p0, Lorg/apache/commons/io/input/NullReader;->size:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_11

    .line 228
    invoke-direct {p0}, Lorg/apache/commons/io/input/NullReader;->doEndOfFile()I

    move-result p0

    return p0

    :cond_11
    int-to-long v4, p3

    add-long/2addr v0, v4

    .line 230
    iput-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_1e

    sub-long/2addr v0, v2

    long-to-int v0, v0

    sub-int/2addr p3, v0

    .line 234
    iput-wide v2, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    .line 236
    :cond_1e
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/io/input/NullReader;->processChars([CII)V

    return p3

    .line 225
    :cond_22
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Read after end of file"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public declared-synchronized reset()V
    .registers 7

    monitor-enter p0

    .line 250
    :try_start_1
    iget-boolean v0, p0, Lorg/apache/commons/io/input/NullReader;->markSupported:Z

    if-eqz v0, :cond_4f

    .line 253
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->mark:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_47

    .line 256
    iget-wide v2, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    iget-wide v4, p0, Lorg/apache/commons/io/input/NullReader;->readlimit:J

    add-long/2addr v4, v0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1f

    .line 261
    iput-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    const/4 v0, 0x0

    .line 262
    iput-boolean v0, p0, Lorg/apache/commons/io/input/NullReader;->eof:Z
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    .line 263
    monitor-exit p0

    return-void

    :catchall_1d
    move-exception v0

    goto :goto_54

    .line 257
    :cond_1f
    :try_start_1f
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Marked position ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/apache/commons/io/input/NullReader;->mark:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "] is no longer valid - passed the read limit ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/apache/commons/io/input/NullReader;->readlimit:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_47
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No position has been marked"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_4f
    invoke-static {}, Lorg/apache/commons/io/input/UnsupportedOperationExceptions;->reset()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0

    .line 263
    :goto_54
    monitor-exit p0
    :try_end_55
    .catchall {:try_start_1f .. :try_end_55} :catchall_1d

    throw v0
.end method

.method public skip(J)J
    .registers 8

    .line 278
    iget-boolean v0, p0, Lorg/apache/commons/io/input/NullReader;->eof:Z

    if-nez v0, :cond_1e

    .line 281
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    iget-wide v2, p0, Lorg/apache/commons/io/input/NullReader;->size:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_12

    .line 282
    invoke-direct {p0}, Lorg/apache/commons/io/input/NullReader;->doEndOfFile()I

    move-result p0

    int-to-long p0, p0

    return-wide p0

    :cond_12
    add-long/2addr v0, p1

    .line 284
    iput-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_1d

    sub-long/2addr v0, v2

    sub-long/2addr p1, v0

    .line 288
    iput-wide v2, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    :cond_1d
    return-wide p1

    .line 279
    :cond_1e
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Skip after end of file"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
