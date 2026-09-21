.class public Lcom/fasterxml/jackson/core/util/BufferRecycler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BYTE_BUFFER_LENGTHS:[I

.field private static final CHAR_BUFFER_LENGTHS:[I


# instance fields
.field protected final _byteBuffers:Ljava/util/concurrent/atomic/AtomicReferenceArray;

.field protected final _charBuffers:Ljava/util/concurrent/atomic/AtomicReferenceArray;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x1f40

    const/16 v1, 0x7d0

    .line 76
    filled-new-array {v0, v0, v1, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/core/util/BufferRecycler;->BYTE_BUFFER_LENGTHS:[I

    const/16 v0, 0xfa0

    const/16 v1, 0xc8

    .line 77
    filled-new-array {v0, v0, v1, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/core/util/BufferRecycler;->CHAR_BUFFER_LENGTHS:[I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x4

    .line 96
    invoke-direct {p0, v0, v0}, Lcom/fasterxml/jackson/core/util/BufferRecycler;-><init>(II)V

    return-void
.end method

.method protected constructor <init>(II)V
    .registers 4

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object v0, p0, Lcom/fasterxml/jackson/core/util/BufferRecycler;->_byteBuffers:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 110
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object p1, p0, Lcom/fasterxml/jackson/core/util/BufferRecycler;->_charBuffers:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    return-void
.end method


# virtual methods
.method public final allocByteBuffer(I)[B
    .registers 3

    const/4 v0, 0x0

    .line 125
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/util/BufferRecycler;->allocByteBuffer(II)[B

    move-result-object p0

    return-object p0
.end method

.method public allocByteBuffer(II)[B
    .registers 5

    .line 129
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/util/BufferRecycler;->byteBufferLength(I)I

    move-result v0

    if-ge p2, v0, :cond_7

    move p2, v0

    .line 133
    :cond_7
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/BufferRecycler;->_byteBuffers:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    if-eqz p1, :cond_17

    .line 134
    array-length v0, p1

    if-ge v0, p2, :cond_16

    goto :goto_17

    :cond_16
    return-object p1

    .line 135
    :cond_17
    :goto_17
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/core/util/BufferRecycler;->balloc(I)[B

    move-result-object p0

    return-object p0
.end method

.method public final allocCharBuffer(I)[C
    .registers 3

    const/4 v0, 0x0

    .line 151
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/util/BufferRecycler;->allocCharBuffer(II)[C

    move-result-object p0

    return-object p0
.end method

.method public allocCharBuffer(II)[C
    .registers 5

    .line 155
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/util/BufferRecycler;->charBufferLength(I)I

    move-result v0

    if-ge p2, v0, :cond_7

    move p2, v0

    .line 159
    :cond_7
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/BufferRecycler;->_charBuffers:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [C

    if-eqz p1, :cond_17

    .line 160
    array-length v0, p1

    if-ge v0, p2, :cond_16

    goto :goto_17

    :cond_16
    return-object p1

    .line 161
    :cond_17
    :goto_17
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/core/util/BufferRecycler;->calloc(I)[C

    move-result-object p0

    return-object p0
.end method

.method protected balloc(I)[B
    .registers 2

    .line 190
    new-array p0, p1, [B

    return-object p0
.end method

.method protected byteBufferLength(I)I
    .registers 2

    .line 177
    sget-object p0, Lcom/fasterxml/jackson/core/util/BufferRecycler;->BYTE_BUFFER_LENGTHS:[I

    aget p0, p0, p1

    return p0
.end method

.method protected calloc(I)[C
    .registers 2

    .line 191
    new-array p0, p1, [C

    return-object p0
.end method

.method protected charBufferLength(I)I
    .registers 2

    .line 181
    sget-object p0, Lcom/fasterxml/jackson/core/util/BufferRecycler;->CHAR_BUFFER_LENGTHS:[I

    aget p0, p0, p1

    return p0
.end method

.method public releaseByteBuffer(I[B)V
    .registers 3

    .line 141
    iget-object p0, p0, Lcom/fasterxml/jackson/core/util/BufferRecycler;->_byteBuffers:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    return-void
.end method

.method public releaseCharBuffer(I[C)V
    .registers 3

    .line 167
    iget-object p0, p0, Lcom/fasterxml/jackson/core/util/BufferRecycler;->_charBuffers:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    return-void
.end method
