.class public abstract Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;
.super Ljava/io/OutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/io/output/AbstractByteArrayOutputStream$InputStreamConstructor;
    }
.end annotation


# static fields
.field static final DEFAULT_SIZE:I = 0x400


# instance fields
.field private final buffers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field protected count:I

.field private currentBuffer:[B

.field private currentBufferIndex:I

.field private filledBufferSum:I

.field private reuseBuffers:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 60
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->buffers:Ljava/util/List;

    const/4 v0, 0x1

    .line 75
    iput-boolean v0, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->reuseBuffers:Z

    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    return-void
.end method

.method protected needNewBuffer(I)V
    .registers 4

    .line 84
    iget v0, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->currentBufferIndex:I

    iget-object v1, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->buffers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_25

    .line 86
    iget p1, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->filledBufferSum:I

    iget-object v0, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->currentBuffer:[B

    array-length v0, v0

    add-int/2addr p1, v0

    iput p1, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->filledBufferSum:I

    .line 88
    iget p1, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->currentBufferIndex:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->currentBufferIndex:I

    .line 89
    iget-object v0, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->buffers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->currentBuffer:[B

    return-void

    .line 93
    :cond_25
    iget-object v0, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->currentBuffer:[B

    if-nez v0, :cond_2d

    const/4 v0, 0x0

    .line 95
    iput v0, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->filledBufferSum:I

    goto :goto_3f

    .line 97
    :cond_2d
    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->filledBufferSum:I

    sub-int/2addr p1, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 100
    iget v0, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->filledBufferSum:I

    iget-object v1, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->currentBuffer:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->filledBufferSum:I

    .line 103
    :goto_3f
    iget v0, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->currentBufferIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->currentBufferIndex:I

    .line 104
    invoke-static {p1}, Lorg/apache/commons/io/IOUtils;->byteArray(I)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->currentBuffer:[B

    .line 105
    iget-object p0, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->buffers:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public abstract reset()V
.end method

.method protected resetImpl()V
    .registers 3

    const/4 v0, 0x0

    .line 232
    iput v0, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->count:I

    .line 233
    iput v0, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->filledBufferSum:I

    .line 234
    iput v0, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->currentBufferIndex:I

    .line 235
    iget-boolean v1, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->reuseBuffers:Z

    if-eqz v1, :cond_16

    .line 236
    iget-object v1, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->buffers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->currentBuffer:[B

    return-void

    :cond_16
    const/4 v1, 0x0

    .line 239
    iput-object v1, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->currentBuffer:[B

    .line 240
    iget-object v1, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->buffers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v0, v0

    .line 241
    iget-object v1, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->buffers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 242
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->needNewBuffer(I)V

    const/4 v0, 0x1

    .line 243
    iput-boolean v0, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->reuseBuffers:Z

    return-void
.end method

.method public abstract size()I
.end method

.method public abstract toByteArray()[B
.end method

.method protected toByteArrayImpl()[B
    .registers 7

    .line 361
    iget v0, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->count:I

    if-nez v0, :cond_7

    .line 363
    sget-object p0, Lorg/apache/commons/io/IOUtils;->EMPTY_BYTE_ARRAY:[B

    return-object p0

    .line 365
    :cond_7
    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->byteArray(I)[B

    move-result-object v1

    .line 367
    iget-object p0, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->buffers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v2, 0x0

    move v3, v2

    :cond_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 368
    array-length v5, v4

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 369
    invoke-static {v4, v2, v1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v3, v5

    sub-int/2addr v0, v5

    if-nez v0, :cond_13

    :cond_2b
    return-object v1
.end method

.method public abstract toInputStream()Ljava/io/InputStream;
.end method

.method protected toInputStream(Lorg/apache/commons/io/output/AbstractByteArrayOutputStream$InputStreamConstructor;)Ljava/io/InputStream;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/io/InputStream;",
            ">(",
            "Lorg/apache/commons/io/output/AbstractByteArrayOutputStream$InputStreamConstructor<",
            "TT;>;)",
            "Ljava/io/InputStream;"
        }
    .end annotation

    .line 307
    iget v0, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->count:I

    if-nez v0, :cond_7

    .line 309
    sget-object p0, Lorg/apache/commons/io/input/ClosedInputStream;->CLOSED_INPUT_STREAM:Lorg/apache/commons/io/input/ClosedInputStream;

    return-object p0

    .line 311
    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->buffers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 312
    iget-object v2, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->buffers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 313
    array-length v5, v3

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 314
    invoke-interface {p1, v3, v4, v5}, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream$InputStreamConstructor;->construct([BII)Ljava/io/InputStream;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sub-int/2addr v0, v5

    if-nez v0, :cond_18

    .line 320
    :cond_34
    iput-boolean v4, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->reuseBuffers:Z

    .line 321
    new-instance p0, Ljava/io/SequenceInputStream;

    invoke-static {v1}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/SequenceInputStream;-><init>(Ljava/util/Enumeration;)V

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 390
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 403
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public toString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 3

    .line 416
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public abstract write(Ljava/io/InputStream;)I
.end method

.method public abstract write(I)V
.end method

.method public abstract write([BII)V
.end method

.method protected writeImpl(Ljava/io/InputStream;)I
    .registers 7

    .line 188
    iget v0, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->count:I

    iget v1, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->filledBufferSum:I

    sub-int/2addr v0, v1

    .line 189
    iget-object v1, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->currentBuffer:[B

    array-length v2, v1

    sub-int/2addr v2, v0

    invoke-virtual {p1, v1, v0, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_f
    const/4 v4, -0x1

    if-eq v1, v4, :cond_2c

    add-int/2addr v3, v1

    add-int/2addr v0, v1

    .line 193
    iget v4, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->count:I

    add-int/2addr v4, v1

    iput v4, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->count:I

    .line 194
    iget-object v1, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->currentBuffer:[B

    array-length v4, v1

    if-ne v0, v4, :cond_23

    .line 195
    array-length v0, v1

    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->needNewBuffer(I)V

    move v0, v2

    .line 198
    :cond_23
    iget-object v1, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->currentBuffer:[B

    array-length v4, v1

    sub-int/2addr v4, v0

    invoke-virtual {p1, v1, v0, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    goto :goto_f

    :cond_2c
    return v3
.end method

.method protected writeImpl(I)V
    .registers 5

    .line 152
    iget v0, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->count:I

    iget v1, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->filledBufferSum:I

    sub-int v1, v0, v1

    .line 153
    iget-object v2, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->currentBuffer:[B

    array-length v2, v2

    if-ne v1, v2, :cond_11

    add-int/lit8 v0, v0, 0x1

    .line 154
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->needNewBuffer(I)V

    const/4 v1, 0x0

    .line 157
    :cond_11
    iget-object v0, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->currentBuffer:[B

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    .line 158
    iget p1, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->count:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->count:I

    return-void
.end method

.method protected writeImpl([BII)V
    .registers 10

    .line 125
    iget v0, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->count:I

    add-int v1, v0, p3

    .line 127
    iget v2, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->filledBufferSum:I

    sub-int/2addr v0, v2

    move v2, p3

    :cond_8
    :goto_8
    if-lez v2, :cond_22

    .line 129
    iget-object v3, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->currentBuffer:[B

    array-length v3, v3

    sub-int/2addr v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int v4, p2, p3

    sub-int/2addr v4, v2

    .line 130
    iget-object v5, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->currentBuffer:[B

    invoke-static {p1, v4, v5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v2, v3

    if-lez v2, :cond_8

    .line 133
    invoke-virtual {p0, v1}, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->needNewBuffer(I)V

    const/4 v0, 0x0

    goto :goto_8

    .line 137
    :cond_22
    iput v1, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->count:I

    return-void
.end method

.method public abstract writeTo(Ljava/io/OutputStream;)V
.end method

.method protected writeToImpl(Ljava/io/OutputStream;)V
    .registers 6

    .line 266
    iget v0, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->count:I

    .line 267
    iget-object p0, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->buffers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 268
    array-length v2, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    .line 269
    invoke-virtual {p1, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    sub-int/2addr v0, v2

    if-nez v0, :cond_8

    :cond_20
    return-void
.end method
