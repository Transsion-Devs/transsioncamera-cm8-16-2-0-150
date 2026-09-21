.class public Lorg/apache/commons/io/input/TeeReader;
.super Lorg/apache/commons/io/input/ProxyReader;
.source "SourceFile"


# instance fields
.field private final branch:Ljava/io/Writer;

.field private final closeBranch:Z


# direct methods
.method public constructor <init>(Ljava/io/Reader;Ljava/io/Writer;)V
    .registers 4

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/io/input/TeeReader;-><init>(Ljava/io/Reader;Ljava/io/Writer;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Ljava/io/Writer;Z)V
    .registers 4

    .line 70
    invoke-direct {p0, p1}, Lorg/apache/commons/io/input/ProxyReader;-><init>(Ljava/io/Reader;)V

    .line 71
    iput-object p2, p0, Lorg/apache/commons/io/input/TeeReader;->branch:Ljava/io/Writer;

    .line 72
    iput-boolean p3, p0, Lorg/apache/commons/io/input/TeeReader;->closeBranch:Z

    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    .line 84
    :try_start_0
    invoke-super {p0}, Lorg/apache/commons/io/input/ProxyReader;->close()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_d

    .line 86
    iget-boolean v0, p0, Lorg/apache/commons/io/input/TeeReader;->closeBranch:Z

    if-eqz v0, :cond_c

    .line 87
    iget-object p0, p0, Lorg/apache/commons/io/input/TeeReader;->branch:Ljava/io/Writer;

    invoke-virtual {p0}, Ljava/io/Writer;->close()V

    :cond_c
    return-void

    :catchall_d
    move-exception v0

    .line 86
    iget-boolean v1, p0, Lorg/apache/commons/io/input/TeeReader;->closeBranch:Z

    if-eqz v1, :cond_17

    .line 87
    iget-object p0, p0, Lorg/apache/commons/io/input/TeeReader;->branch:Ljava/io/Writer;

    invoke-virtual {p0}, Ljava/io/Writer;->close()V

    .line 89
    :cond_17
    throw v0
.end method

.method public read()I
    .registers 3

    .line 100
    invoke-super {p0}, Lorg/apache/commons/io/input/ProxyReader;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    .line 102
    iget-object p0, p0, Lorg/apache/commons/io/input/TeeReader;->branch:Ljava/io/Writer;

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(I)V

    :cond_c
    return v0
.end method

.method public read(Ljava/nio/CharBuffer;)I
    .registers 6

    .line 150
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v0

    .line 151
    invoke-super {p0, p1}, Lorg/apache/commons/io/input/ProxyReader;->read(Ljava/nio/CharBuffer;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_30

    .line 155
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v2

    .line 156
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v3

    .line 158
    :try_start_13
    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 159
    iget-object p0, p0, Lorg/apache/commons/io/input/TeeReader;->branch:Ljava/io/Writer;

    invoke-virtual {p0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_1f
    .catchall {:try_start_13 .. :try_end_1f} :catchall_27

    .line 162
    invoke-virtual {p1, v2}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    return v1

    :catchall_27
    move-exception p0

    invoke-virtual {p1, v2}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 163
    throw p0

    :cond_30
    return v1
.end method

.method public read([C)I
    .registers 4

    .line 116
    invoke-super {p0, p1}, Lorg/apache/commons/io/input/ProxyReader;->read([C)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    .line 118
    iget-object p0, p0, Lorg/apache/commons/io/input/TeeReader;->branch:Ljava/io/Writer;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/io/Writer;->write([CII)V

    :cond_d
    return v0
.end method

.method public read([CII)I
    .registers 5

    .line 134
    invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/io/input/ProxyReader;->read([CII)I

    move-result p3

    const/4 v0, -0x1

    if-eq p3, v0, :cond_c

    .line 136
    iget-object p0, p0, Lorg/apache/commons/io/input/TeeReader;->branch:Ljava/io/Writer;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/Writer;->write([CII)V

    :cond_c
    return p3
.end method
