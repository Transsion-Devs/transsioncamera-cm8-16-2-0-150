.class Lcom/bumptech/glide/util/ByteBufferUtil$ByteBufferStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/util/ByteBufferUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ByteBufferStream"
.end annotation


# instance fields
.field private final byteBuffer:Ljava/nio/ByteBuffer;

.field private markPos:I


# direct methods
.method constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 3

    .line 183
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, -0x1

    .line 181
    iput v0, p0, Lcom/bumptech/glide/util/ByteBufferUtil$ByteBufferStream;->markPos:I

    .line 184
    iput-object p1, p0, Lcom/bumptech/glide/util/ByteBufferUtil$ByteBufferStream;->byteBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public available()I
    .registers 1

    .line 189
    iget-object p0, p0, Lcom/bumptech/glide/util/ByteBufferUtil$ByteBufferStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result p0

    return p0
.end method

.method public declared-synchronized mark(I)V
    .registers 2

    monitor-enter p0

    .line 202
    :try_start_1
    iget-object p1, p0, Lcom/bumptech/glide/util/ByteBufferUtil$ByteBufferStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p1

    iput p1, p0, Lcom/bumptech/glide/util/ByteBufferUtil$ByteBufferStream;->markPos:I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 203
    monitor-exit p0

    return-void

    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method public markSupported()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public read()I
    .registers 2

    .line 194
    iget-object v0, p0, Lcom/bumptech/glide/util/ByteBufferUtil$ByteBufferStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p0, -0x1

    return p0

    .line 197
    :cond_a
    iget-object p0, p0, Lcom/bumptech/glide/util/ByteBufferUtil$ByteBufferStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public read([BII)I
    .registers 5

    .line 212
    iget-object v0, p0, Lcom/bumptech/glide/util/ByteBufferUtil$ByteBufferStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p0, -0x1

    return p0

    .line 215
    :cond_a
    invoke-virtual {p0}, Lcom/bumptech/glide/util/ByteBufferUtil$ByteBufferStream;->available()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 216
    iget-object p0, p0, Lcom/bumptech/glide/util/ByteBufferUtil$ByteBufferStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return p3
.end method

.method public declared-synchronized reset()V
    .registers 3

    monitor-enter p0

    .line 222
    :try_start_1
    iget v0, p0, Lcom/bumptech/glide/util/ByteBufferUtil$ByteBufferStream;->markPos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_f

    .line 226
    iget-object v1, p0, Lcom/bumptech/glide/util/ByteBufferUtil$ByteBufferStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 227
    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    goto :goto_17

    .line 223
    :cond_f
    :try_start_f
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot reset to unset mark position"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :goto_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_d

    throw v0
.end method

.method public skip(J)J
    .registers 5

    .line 231
    iget-object v0, p0, Lcom/bumptech/glide/util/ByteBufferUtil$ByteBufferStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_b

    const-wide/16 p0, -0x1

    return-wide p0

    .line 235
    :cond_b
    invoke-virtual {p0}, Lcom/bumptech/glide/util/ByteBufferUtil$ByteBufferStream;->available()I

    move-result v0

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    .line 236
    iget-object p0, p0, Lcom/bumptech/glide/util/ByteBufferUtil$ByteBufferStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v0, p1

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-wide p1
.end method
