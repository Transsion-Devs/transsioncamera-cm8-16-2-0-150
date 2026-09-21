.class public Lorg/apache/commons/io/input/NullInputStream;
.super Ljava/io/InputStream;
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

    .line 85
    invoke-direct {p0, v2, v3, v0, v1}, Lorg/apache/commons/io/input/NullInputStream;-><init>(JZZ)V

    return-void
.end method

.method public constructor <init>(J)V
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 95
    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/io/input/NullInputStream;-><init>(JZZ)V

    return-void
.end method

.method public constructor <init>(JZZ)V
    .registers 7

    .line 109
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const-wide/16 v0, -0x1

    .line 72
    iput-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->mark:J

    .line 110
    iput-wide p1, p0, Lorg/apache/commons/io/input/NullInputStream;->size:J

    .line 111
    iput-boolean p3, p0, Lorg/apache/commons/io/input/NullInputStream;->markSupported:Z

    .line 112
    iput-boolean p4, p0, Lorg/apache/commons/io/input/NullInputStream;->throwEofException:Z

    return-void
.end method

.method private doEndOfFile()I
    .registers 2

    const/4 v0, 0x1

    .line 346
    iput-boolean v0, p0, Lorg/apache/commons/io/input/NullInputStream;->eof:Z

    .line 347
    iget-boolean p0, p0, Lorg/apache/commons/io/input/NullInputStream;->throwEofException:Z

    if-nez p0, :cond_9

    const/4 p0, -0x1

    return p0

    .line 348
    :cond_9
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method


# virtual methods
.method public available()I
    .registers 5

    .line 140
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->size:J

    iget-wide v2, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-gtz p0, :cond_d

    const/4 p0, 0x0

    return p0

    :cond_d
    const-wide/32 v2, 0x7fffffff

    cmp-long p0, v0, v2

    if-lez p0, :cond_18

    const p0, 0x7fffffff

    return p0

    :cond_18
    long-to-int p0, v0

    return p0
.end method

.method public close()V
    .registers 3

    const/4 v0, 0x0

    .line 158
    iput-boolean v0, p0, Lorg/apache/commons/io/input/NullInputStream;->eof:Z

    const-wide/16 v0, 0x0

    .line 159
    iput-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    const-wide/16 v0, -0x1

    .line 160
    iput-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->mark:J

    return-void
.end method

.method public getPosition()J
    .registers 3

    .line 121
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    return-wide v0
.end method

.method public getSize()J
    .registers 3

    .line 130
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->size:J

    return-wide v0
.end method

.method public declared-synchronized mark(I)V
    .registers 4

    monitor-enter p0

    .line 172
    :try_start_1
    iget-boolean v0, p0, Lorg/apache/commons/io/input/NullInputStream;->markSupported:Z

    if-eqz v0, :cond_10

    .line 175
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    iput-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->mark:J

    int-to-long v0, p1

    .line 176
    iput-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->readlimit:J
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 177
    monitor-exit p0

    return-void

    :catchall_e
    move-exception p1

    goto :goto_15

    .line 173
    :cond_10
    :try_start_10
    invoke-static {}, Lorg/apache/commons/io/input/UnsupportedOperationExceptions;->mark()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1

    .line 177
    :goto_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_e

    throw p1
.end method

.method public markSupported()Z
    .registers 1

    .line 186
    iget-boolean p0, p0, Lorg/apache/commons/io/input/NullInputStream;->markSupported:Z

    return p0
.end method

.method protected processByte()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method protected processBytes([BII)V
    .registers 4

    return-void
.end method

.method public read()I
    .registers 5

    .line 201
    iget-boolean v0, p0, Lorg/apache/commons/io/input/NullInputStream;->eof:Z

    if-nez v0, :cond_1b

    .line 204
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    iget-wide v2, p0, Lorg/apache/commons/io/input/NullInputStream;->size:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_11

    .line 205
    invoke-direct {p0}, Lorg/apache/commons/io/input/NullInputStream;->doEndOfFile()I

    move-result p0

    return p0

    :cond_11
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 207
    iput-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    .line 208
    invoke-virtual {p0}, Lorg/apache/commons/io/input/NullInputStream;->processByte()I

    move-result p0

    return p0

    .line 202
    :cond_1b
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Read after end of file"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public read([B)I
    .registers 4

    const/4 v0, 0x0

    .line 224
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/io/input/NullInputStream;->read([BII)I

    move-result p0

    return p0
.end method

.method public read([BII)I
    .registers 10

    .line 242
    iget-boolean v0, p0, Lorg/apache/commons/io/input/NullInputStream;->eof:Z

    if-nez v0, :cond_22

    .line 245
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    iget-wide v2, p0, Lorg/apache/commons/io/input/NullInputStream;->size:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_11

    .line 246
    invoke-direct {p0}, Lorg/apache/commons/io/input/NullInputStream;->doEndOfFile()I

    move-result p0

    return p0

    :cond_11
    int-to-long v4, p3

    add-long/2addr v0, v4

    .line 248
    iput-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_1e

    sub-long/2addr v0, v2

    long-to-int v0, v0

    sub-int/2addr p3, v0

    .line 252
    iput-wide v2, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    .line 254
    :cond_1e
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/io/input/NullInputStream;->processBytes([BII)V

    return p3

    .line 243
    :cond_22
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Read after end of file"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public declared-synchronized reset()V
    .registers 7

    monitor-enter p0

    .line 268
    :try_start_1
    iget-boolean v0, p0, Lorg/apache/commons/io/input/NullInputStream;->markSupported:Z

    if-eqz v0, :cond_4f

    .line 271
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->mark:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_47

    .line 274
    iget-wide v2, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    iget-wide v4, p0, Lorg/apache/commons/io/input/NullInputStream;->readlimit:J

    add-long/2addr v4, v0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1f

    .line 279
    iput-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    const/4 v0, 0x0

    .line 280
    iput-boolean v0, p0, Lorg/apache/commons/io/input/NullInputStream;->eof:Z
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    .line 281
    monitor-exit p0

    return-void

    :catchall_1d
    move-exception v0

    goto :goto_54

    .line 275
    :cond_1f
    :try_start_1f
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Marked position ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/apache/commons/io/input/NullInputStream;->mark:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "] is no longer valid - passed the read limit ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/apache/commons/io/input/NullInputStream;->readlimit:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :cond_47
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No position has been marked"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_4f
    invoke-static {}, Lorg/apache/commons/io/input/UnsupportedOperationExceptions;->reset()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0

    .line 281
    :goto_54
    monitor-exit p0
    :try_end_55
    .catchall {:try_start_1f .. :try_end_55} :catchall_1d

    throw v0
.end method

.method public skip(J)J
    .registers 8

    .line 296
    iget-boolean v0, p0, Lorg/apache/commons/io/input/NullInputStream;->eof:Z

    if-nez v0, :cond_1e

    .line 299
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    iget-wide v2, p0, Lorg/apache/commons/io/input/NullInputStream;->size:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_12

    .line 300
    invoke-direct {p0}, Lorg/apache/commons/io/input/NullInputStream;->doEndOfFile()I

    move-result p0

    int-to-long p0, p0

    return-wide p0

    :cond_12
    add-long/2addr v0, p1

    .line 302
    iput-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_1d

    sub-long/2addr v0, v2

    sub-long/2addr p1, v0

    .line 306
    iput-wide v2, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    :cond_1d
    return-wide p1

    .line 297
    :cond_1e
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Skip after end of file"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
