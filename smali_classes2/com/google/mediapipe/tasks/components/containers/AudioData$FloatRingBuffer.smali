.class Lcom/google/mediapipe/tasks/components/containers/AudioData$FloatRingBuffer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/components/containers/AudioData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FloatRingBuffer"
.end annotation


# instance fields
.field private final buffer:[F

.field private nextIndex:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 279
    iput v0, p0, Lcom/google/mediapipe/tasks/components/containers/AudioData$FloatRingBuffer;->nextIndex:I

    .line 282
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/google/mediapipe/tasks/components/containers/AudioData$FloatRingBuffer;->buffer:[F

    return-void
.end method


# virtual methods
.method public getBuffer()Ljava/nio/ByteBuffer;
    .registers 6

    .line 321
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/AudioData$FloatRingBuffer;->buffer:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 322
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 323
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    .line 324
    iget-object v2, p0, Lcom/google/mediapipe/tasks/components/containers/AudioData$FloatRingBuffer;->buffer:[F

    iget v3, p0, Lcom/google/mediapipe/tasks/components/containers/AudioData$FloatRingBuffer;->nextIndex:I

    array-length v4, v2

    sub-int/2addr v4, v3

    invoke-virtual {v1, v2, v3, v4}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    .line 325
    iget-object v2, p0, Lcom/google/mediapipe/tasks/components/containers/AudioData$FloatRingBuffer;->buffer:[F

    const/4 v3, 0x0

    iget p0, p0, Lcom/google/mediapipe/tasks/components/containers/AudioData$FloatRingBuffer;->nextIndex:I

    invoke-virtual {v1, v2, v3, p0}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    .line 326
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    return-object v0
.end method

.method public getCapacity()I
    .registers 1

    .line 331
    iget-object p0, p0, Lcom/google/mediapipe/tasks/components/containers/AudioData$FloatRingBuffer;->buffer:[F

    array-length p0, p0

    return p0
.end method

.method public load([FII)V
    .registers 8

    add-int v0, p2, p3

    .line 290
    array-length v1, p1

    if-gt v0, v1, :cond_31

    .line 297
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/AudioData$FloatRingBuffer;->buffer:[F

    array-length v1, v0

    if-le p3, v1, :cond_e

    .line 298
    array-length v1, v0

    sub-int/2addr p3, v1

    add-int/2addr p2, p3

    .line 299
    array-length p3, v0

    .line 301
    :cond_e
    iget v1, p0, Lcom/google/mediapipe/tasks/components/containers/AudioData$FloatRingBuffer;->nextIndex:I

    add-int v2, v1, p3

    array-length v3, v0

    if-ge v2, v3, :cond_19

    .line 304
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_27

    .line 307
    :cond_19
    array-length v2, v0

    sub-int/2addr v2, v1

    .line 309
    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v2

    .line 311
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/AudioData$FloatRingBuffer;->buffer:[F

    const/4 v1, 0x0

    sub-int v2, p3, v2

    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 314
    :goto_27
    iget p1, p0, Lcom/google/mediapipe/tasks/components/containers/AudioData$FloatRingBuffer;->nextIndex:I

    add-int/2addr p1, p3

    iget-object p2, p0, Lcom/google/mediapipe/tasks/components/containers/AudioData$FloatRingBuffer;->buffer:[F

    array-length p2, p2

    rem-int/2addr p1, p2

    iput p1, p0, Lcom/google/mediapipe/tasks/components/containers/AudioData$FloatRingBuffer;->nextIndex:I

    return-void

    .line 291
    :cond_31
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 294
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p2, p3, p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 292
    const-string p2, "Index out of range. offset (%d) + size (%d) should <= newData.length (%d)"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
