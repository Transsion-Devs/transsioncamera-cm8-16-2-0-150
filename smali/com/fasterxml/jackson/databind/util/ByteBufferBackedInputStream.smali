.class public Lcom/fasterxml/jackson/databind/util/ByteBufferBackedInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field protected final _b:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 2

    .line 14
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/ByteBufferBackedInputStream;->_b:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public available()I
    .registers 1

    .line 16
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/util/ByteBufferBackedInputStream;->_b:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result p0

    return p0
.end method

.method public read()I
    .registers 2

    .line 19
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ByteBufferBackedInputStream;->_b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/util/ByteBufferBackedInputStream;->_b:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    return p0

    :cond_11
    const/4 p0, -0x1

    return p0
.end method

.method public read([BII)I
    .registers 5

    .line 23
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ByteBufferBackedInputStream;->_b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p0, -0x1

    return p0

    .line 24
    :cond_a
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ByteBufferBackedInputStream;->_b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 25
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/util/ByteBufferBackedInputStream;->_b:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return p3
.end method
