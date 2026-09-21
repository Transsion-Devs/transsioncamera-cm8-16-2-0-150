.class public Lorg/apache/commons/io/input/buffer/CircularBufferInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field protected final buffer:Lorg/apache/commons/io/input/buffer/CircularByteBuffer;

.field protected final bufferSize:I

.field private eof:Z

.field protected final in:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3

    const/16 v0, 0x2000

    .line 68
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/io/input/buffer/CircularBufferInputStream;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 4

    .line 51
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    if-lez p2, :cond_19

    .line 55
    const-string v0, "inputStream"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/commons/io/input/buffer/CircularBufferInputStream;->in:Ljava/io/InputStream;

    .line 56
    new-instance p1, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;

    invoke-direct {p1, p2}, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;-><init>(I)V

    iput-object p1, p0, Lorg/apache/commons/io/input/buffer/CircularBufferInputStream;->buffer:Lorg/apache/commons/io/input/buffer/CircularByteBuffer;

    .line 57
    iput p2, p0, Lorg/apache/commons/io/input/buffer/CircularBufferInputStream;->bufferSize:I

    const/4 p1, 0x0

    .line 58
    iput-boolean p1, p0, Lorg/apache/commons/io/input/buffer/CircularBufferInputStream;->eof:Z

    return-void

    .line 53
    :cond_19
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid bufferSize: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 143
    iget-object v0, p0, Lorg/apache/commons/io/input/buffer/CircularBufferInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    const/4 v0, 0x1

    .line 144
    iput-boolean v0, p0, Lorg/apache/commons/io/input/buffer/CircularBufferInputStream;->eof:Z

    .line 145
    iget-object p0, p0, Lorg/apache/commons/io/input/buffer/CircularBufferInputStream;->buffer:Lorg/apache/commons/io/input/buffer/CircularByteBuffer;

    invoke-virtual {p0}, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->clear()V

    return-void
.end method

.method protected fillBuffer()V
    .registers 6

    .line 77
    iget-boolean v0, p0, Lorg/apache/commons/io/input/buffer/CircularBufferInputStream;->eof:Z

    if-eqz v0, :cond_5

    goto :goto_28

    .line 80
    :cond_5
    iget-object v0, p0, Lorg/apache/commons/io/input/buffer/CircularBufferInputStream;->buffer:Lorg/apache/commons/io/input/buffer/CircularByteBuffer;

    invoke-virtual {v0}, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->getSpace()I

    move-result v0

    .line 81
    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->byteArray(I)[B

    move-result-object v1

    :cond_f
    :goto_f
    if-lez v0, :cond_28

    .line 83
    iget-object v2, p0, Lorg/apache/commons/io/input/buffer/CircularBufferInputStream;->in:Ljava/io/InputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_1f

    const/4 v0, 0x1

    .line 85
    iput-boolean v0, p0, Lorg/apache/commons/io/input/buffer/CircularBufferInputStream;->eof:Z

    return-void

    :cond_1f
    if-lez v2, :cond_f

    .line 89
    iget-object v4, p0, Lorg/apache/commons/io/input/buffer/CircularBufferInputStream;->buffer:Lorg/apache/commons/io/input/buffer/CircularByteBuffer;

    invoke-virtual {v4, v1, v3, v2}, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->add([BII)V

    sub-int/2addr v0, v2

    goto :goto_f

    :cond_28
    :goto_28
    return-void
.end method

.method protected haveBytes(I)Z
    .registers 3

    .line 103
    iget-object v0, p0, Lorg/apache/commons/io/input/buffer/CircularBufferInputStream;->buffer:Lorg/apache/commons/io/input/buffer/CircularByteBuffer;

    invoke-virtual {v0}, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->getCurrentNumberOfBytes()I

    move-result v0

    if-ge v0, p1, :cond_b

    .line 104
    invoke-virtual {p0}, Lorg/apache/commons/io/input/buffer/CircularBufferInputStream;->fillBuffer()V

    .line 106
    :cond_b
    iget-object p0, p0, Lorg/apache/commons/io/input/buffer/CircularBufferInputStream;->buffer:Lorg/apache/commons/io/input/buffer/CircularByteBuffer;

    invoke-virtual {p0}, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->hasBytes()Z

    move-result p0

    return p0
.end method

.method public read()I
    .registers 2

    const/4 v0, 0x1

    .line 111
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/buffer/CircularBufferInputStream;->haveBytes(I)Z

    move-result v0

    if-nez v0, :cond_9

    const/4 p0, -0x1

    return p0

    .line 114
    :cond_9
    iget-object p0, p0, Lorg/apache/commons/io/input/buffer/CircularBufferInputStream;->buffer:Lorg/apache/commons/io/input/buffer/CircularByteBuffer;

    invoke-virtual {p0}, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->read()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public read([B)I
    .registers 4

    const/4 v0, 0x0

    .line 119
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/io/input/buffer/CircularBufferInputStream;->read([BII)I

    move-result p0

    return p0
.end method

.method public read([BII)I
    .registers 7

    .line 124
    const-string v0, "targetBuffer"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-ltz p2, :cond_34

    if-ltz p3, :cond_2c

    .line 131
    invoke-virtual {p0, p3}, Lorg/apache/commons/io/input/buffer/CircularBufferInputStream;->haveBytes(I)Z

    move-result v0

    if-nez v0, :cond_11

    const/4 p0, -0x1

    return p0

    .line 134
    :cond_11
    iget-object v0, p0, Lorg/apache/commons/io/input/buffer/CircularBufferInputStream;->buffer:Lorg/apache/commons/io/input/buffer/CircularByteBuffer;

    invoke-virtual {v0}, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->getCurrentNumberOfBytes()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    const/4 v0, 0x0

    :goto_1c
    if-ge v0, p3, :cond_2b

    add-int v1, p2, v0

    .line 136
    iget-object v2, p0, Lorg/apache/commons/io/input/buffer/CircularBufferInputStream;->buffer:Lorg/apache/commons/io/input/buffer/CircularByteBuffer;

    invoke-virtual {v2}, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->read()B

    move-result v2

    aput-byte v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :cond_2b
    return p3

    .line 129
    :cond_2c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Length must not be negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 126
    :cond_34
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Offset must not be negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
