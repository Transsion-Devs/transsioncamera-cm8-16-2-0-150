.class public abstract Lorg/apache/commons/io/input/ProxyReader;
.super Ljava/io/FilterReader;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .registers 2

    .line 46
    invoke-direct {p0, p1}, Ljava/io/FilterReader;-><init>(Ljava/io/Reader;)V

    return-void
.end method


# virtual methods
.method protected afterRead(I)V
    .registers 2

    return-void
.end method

.method protected beforeRead(I)V
    .registers 2

    return-void
.end method

.method public close()V
    .registers 2

    .line 166
    :try_start_0
    iget-object v0, p0, Ljava/io/FilterReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    .line 168
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyReader;->handleIOException(Ljava/io/IOException;)V

    return-void
.end method

.method protected handleIOException(Ljava/io/IOException;)V
    .registers 2

    .line 263
    throw p1
.end method

.method public declared-synchronized mark(I)V
    .registers 3

    monitor-enter p0

    .line 180
    :try_start_1
    iget-object v0, p0, Ljava/io/FilterReader;->in:Ljava/io/Reader;

    invoke-virtual {v0, p1}, Ljava/io/Reader;->mark(I)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_9
    .catchall {:try_start_1 .. :try_end_6} :catchall_7

    goto :goto_d

    :catchall_7
    move-exception p1

    goto :goto_f

    :catch_9
    move-exception p1

    .line 182
    :try_start_a
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/input/ProxyReader;->handleIOException(Ljava/io/IOException;)V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_7

    .line 184
    :goto_d
    monitor-exit p0

    return-void

    :goto_f
    :try_start_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_7

    throw p1
.end method

.method public markSupported()Z
    .registers 1

    .line 205
    iget-object p0, p0, Ljava/io/FilterReader;->in:Ljava/io/Reader;

    invoke-virtual {p0}, Ljava/io/Reader;->markSupported()Z

    move-result p0

    return p0
.end method

.method public read()I
    .registers 4

    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 58
    :try_start_2
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyReader;->beforeRead(I)V

    .line 59
    iget-object v2, p0, Ljava/io/FilterReader;->in:Ljava/io/Reader;

    invoke-virtual {v2}, Ljava/io/Reader;->read()I

    move-result v2

    if-eq v2, v1, :cond_e

    goto :goto_f

    :cond_e
    move v0, v1

    .line 60
    :goto_f
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyReader;->afterRead(I)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_12} :catch_13

    return v2

    :catch_13
    move-exception v0

    .line 63
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyReader;->handleIOException(Ljava/io/IOException;)V

    return v1
.end method

.method public read(Ljava/nio/CharBuffer;)I
    .registers 3

    .line 118
    :try_start_0
    invoke-static {p1}, Lorg/apache/commons/io/IOUtils;->length(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyReader;->beforeRead(I)V

    .line 119
    iget-object v0, p0, Ljava/io/FilterReader;->in:Ljava/io/Reader;

    invoke-virtual {v0, p1}, Ljava/io/Reader;->read(Ljava/nio/CharBuffer;)I

    move-result p1

    .line 120
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/input/ProxyReader;->afterRead(I)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_10} :catch_11

    return p1

    :catch_11
    move-exception p1

    .line 123
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/input/ProxyReader;->handleIOException(Ljava/io/IOException;)V

    const/4 p0, -0x1

    return p0
.end method

.method public read([C)I
    .registers 3

    .line 77
    :try_start_0
    invoke-static {p1}, Lorg/apache/commons/io/IOUtils;->length([C)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyReader;->beforeRead(I)V

    .line 78
    iget-object v0, p0, Ljava/io/FilterReader;->in:Ljava/io/Reader;

    invoke-virtual {v0, p1}, Ljava/io/Reader;->read([C)I

    move-result p1

    .line 79
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/input/ProxyReader;->afterRead(I)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_10} :catch_11

    return p1

    :catch_11
    move-exception p1

    .line 82
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/input/ProxyReader;->handleIOException(Ljava/io/IOException;)V

    const/4 p0, -0x1

    return p0
.end method

.method public read([CII)I
    .registers 5

    .line 98
    :try_start_0
    invoke-virtual {p0, p3}, Lorg/apache/commons/io/input/ProxyReader;->beforeRead(I)V

    .line 99
    iget-object v0, p0, Ljava/io/FilterReader;->in:Ljava/io/Reader;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Reader;->read([CII)I

    move-result p1

    .line 100
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/input/ProxyReader;->afterRead(I)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_d

    return p1

    :catch_d
    move-exception p1

    .line 103
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/input/ProxyReader;->handleIOException(Ljava/io/IOException;)V

    const/4 p0, -0x1

    return p0
.end method

.method public ready()Z
    .registers 2

    .line 152
    :try_start_0
    iget-object v0, p0, Ljava/io/FilterReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->ready()Z

    move-result p0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_7

    return p0

    :catch_7
    move-exception v0

    .line 154
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyReader;->handleIOException(Ljava/io/IOException;)V

    const/4 p0, 0x0

    return p0
.end method

.method public declared-synchronized reset()V
    .registers 2

    monitor-enter p0

    .line 193
    :try_start_1
    iget-object v0, p0, Ljava/io/FilterReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->reset()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_9
    .catchall {:try_start_1 .. :try_end_6} :catchall_7

    goto :goto_d

    :catchall_7
    move-exception v0

    goto :goto_f

    :catch_9
    move-exception v0

    .line 195
    :try_start_a
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyReader;->handleIOException(Ljava/io/IOException;)V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_7

    .line 197
    :goto_d
    monitor-exit p0

    return-void

    :goto_f
    :try_start_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_7

    throw v0
.end method

.method public skip(J)J
    .registers 4

    .line 137
    :try_start_0
    iget-object v0, p0, Ljava/io/FilterReader;->in:Ljava/io/Reader;

    invoke-virtual {v0, p1, p2}, Ljava/io/Reader;->skip(J)J

    move-result-wide p0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_7

    return-wide p0

    :catch_7
    move-exception p1

    .line 139
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/input/ProxyReader;->handleIOException(Ljava/io/IOException;)V

    const-wide/16 p0, 0x0

    return-wide p0
.end method
