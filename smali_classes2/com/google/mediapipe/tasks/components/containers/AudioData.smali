.class public Lcom/google/mediapipe/tasks/components/containers/AudioData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/tasks/components/containers/AudioData$FloatRingBuffer;,
        Lcom/google/mediapipe/tasks/components/containers/AudioData$AudioDataFormat;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AudioData"


# instance fields
.field private final buffer:Lcom/google/mediapipe/tasks/components/containers/AudioData$FloatRingBuffer;

.field private final format:Lcom/google/mediapipe/tasks/components/containers/AudioData$AudioDataFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>(Lcom/google/mediapipe/tasks/components/containers/AudioData$AudioDataFormat;I)V
    .registers 4

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    iput-object p1, p0, Lcom/google/mediapipe/tasks/components/containers/AudioData;->format:Lcom/google/mediapipe/tasks/components/containers/AudioData$AudioDataFormat;

    .line 272
    new-instance v0, Lcom/google/mediapipe/tasks/components/containers/AudioData$FloatRingBuffer;

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/components/containers/AudioData$AudioDataFormat;->getNumOfChannels()I

    move-result p1

    mul-int/2addr p2, p1

    invoke-direct {v0, p2}, Lcom/google/mediapipe/tasks/components/containers/AudioData$FloatRingBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/AudioData;->buffer:Lcom/google/mediapipe/tasks/components/containers/AudioData$FloatRingBuffer;

    return-void
.end method

.method public static create(Landroid/media/AudioFormat;I)Lcom/google/mediapipe/tasks/components/containers/AudioData;
    .registers 3

    .line 80
    new-instance v0, Lcom/google/mediapipe/tasks/components/containers/AudioData;

    invoke-static {p0}, Lcom/google/mediapipe/tasks/components/containers/AudioData$AudioDataFormat;->create(Landroid/media/AudioFormat;)Lcom/google/mediapipe/tasks/components/containers/AudioData$AudioDataFormat;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/google/mediapipe/tasks/components/containers/AudioData;-><init>(Lcom/google/mediapipe/tasks/components/containers/AudioData$AudioDataFormat;I)V

    return-object v0
.end method

.method public static create(Lcom/google/mediapipe/tasks/components/containers/AudioData$AudioDataFormat;I)Lcom/google/mediapipe/tasks/components/containers/AudioData;
    .registers 3

    .line 68
    new-instance v0, Lcom/google/mediapipe/tasks/components/containers/AudioData;

    invoke-direct {v0, p0, p1}, Lcom/google/mediapipe/tasks/components/containers/AudioData;-><init>(Lcom/google/mediapipe/tasks/components/containers/AudioData$AudioDataFormat;I)V

    return-object v0
.end method


# virtual methods
.method public getBuffer()[F
    .registers 2

    .line 254
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/AudioData;->buffer:Lcom/google/mediapipe/tasks/components/containers/AudioData$FloatRingBuffer;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/components/containers/AudioData$FloatRingBuffer;->getCapacity()I

    move-result v0

    new-array v0, v0, [F

    .line 255
    iget-object p0, p0, Lcom/google/mediapipe/tasks/components/containers/AudioData;->buffer:Lcom/google/mediapipe/tasks/components/containers/AudioData$FloatRingBuffer;

    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/AudioData$FloatRingBuffer;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 256
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/nio/FloatBuffer;->get([F)Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public getBufferLength()I
    .registers 2

    .line 267
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/AudioData;->buffer:Lcom/google/mediapipe/tasks/components/containers/AudioData$FloatRingBuffer;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/components/containers/AudioData$FloatRingBuffer;->getCapacity()I

    move-result v0

    iget-object p0, p0, Lcom/google/mediapipe/tasks/components/containers/AudioData;->format:Lcom/google/mediapipe/tasks/components/containers/AudioData$AudioDataFormat;

    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/AudioData$AudioDataFormat;->getNumOfChannels()I

    move-result p0

    div-int/2addr v0, p0

    return v0
.end method

.method public getFormat()Lcom/google/mediapipe/tasks/components/containers/AudioData$AudioDataFormat;
    .registers 1

    .line 262
    iget-object p0, p0, Lcom/google/mediapipe/tasks/components/containers/AudioData;->format:Lcom/google/mediapipe/tasks/components/containers/AudioData$AudioDataFormat;

    return-object p0
.end method

.method public load(Landroid/media/AudioRecord;)I
    .registers 6

    .line 208
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/AudioData;->format:Lcom/google/mediapipe/tasks/components/containers/AudioData$AudioDataFormat;

    invoke-virtual {p1}, Landroid/media/AudioRecord;->getFormat()Landroid/media/AudioFormat;

    move-result-object v1

    invoke-static {v1}, Lcom/google/mediapipe/tasks/components/containers/AudioData$AudioDataFormat;->create(Landroid/media/AudioFormat;)Lcom/google/mediapipe/tasks/components/containers/AudioData$AudioDataFormat;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 212
    invoke-virtual {p1}, Landroid/media/AudioRecord;->getAudioFormat()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2e

    .line 213
    invoke-virtual {p1}, Landroid/media/AudioRecord;->getChannelCount()I

    move-result v0

    invoke-virtual {p1}, Landroid/media/AudioRecord;->getBufferSizeInFrames()I

    move-result v1

    mul-int/2addr v0, v1

    new-array v1, v0, [F

    .line 214
    invoke-virtual {p1, v1, v3, v0, v2}, Landroid/media/AudioRecord;->read([FIII)I

    move-result p1

    if-lez p1, :cond_4a

    .line 216
    invoke-virtual {p0, v1, v3, p1}, Lcom/google/mediapipe/tasks/components/containers/AudioData;->load([FII)V

    return p1

    .line 219
    :cond_2e
    invoke-virtual {p1}, Landroid/media/AudioRecord;->getAudioFormat()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_77

    .line 220
    invoke-virtual {p1}, Landroid/media/AudioRecord;->getChannelCount()I

    move-result v0

    invoke-virtual {p1}, Landroid/media/AudioRecord;->getBufferSizeInFrames()I

    move-result v1

    mul-int/2addr v0, v1

    new-array v1, v0, [S

    .line 221
    invoke-virtual {p1, v1, v3, v0, v2}, Landroid/media/AudioRecord;->read([SIII)I

    move-result p1

    if-lez p1, :cond_4a

    .line 223
    invoke-virtual {p0, v1, v3, p1}, Lcom/google/mediapipe/tasks/components/containers/AudioData;->load([SII)V

    return p1

    :cond_4a
    const/4 p0, -0x6

    if-eq p1, p0, :cond_6f

    const/4 p0, -0x3

    if-eq p1, p0, :cond_67

    const/4 p0, -0x2

    if-eq p1, p0, :cond_5f

    const/4 p0, -0x1

    if-eq p1, p0, :cond_57

    return v3

    .line 242
    :cond_57
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "AudioRecord.ERROR"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 236
    :cond_5f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "AudioRecord.ERROR_BAD_VALUE"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 233
    :cond_67
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "AudioRecord.ERROR_INVALID_OPERATION"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 239
    :cond_6f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "AudioRecord.ERROR_DEAD_OBJECT"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 227
    :cond_77
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unsupported encoding. Requires ENCODING_PCM_16BIT or ENCODING_PCM_FLOAT."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 209
    :cond_7f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Incompatible audio format."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public load([F)V
    .registers 4

    const/4 v0, 0x0

    .line 139
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/mediapipe/tasks/components/containers/AudioData;->load([FII)V

    return-void
.end method

.method public load([FII)V
    .registers 5

    .line 152
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/AudioData;->format:Lcom/google/mediapipe/tasks/components/containers/AudioData$AudioDataFormat;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/components/containers/AudioData$AudioDataFormat;->getNumOfChannels()I

    move-result v0

    rem-int v0, p3, v0

    if-nez v0, :cond_10

    .line 158
    iget-object p0, p0, Lcom/google/mediapipe/tasks/components/containers/AudioData;->buffer:Lcom/google/mediapipe/tasks/components/containers/AudioData$FloatRingBuffer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/mediapipe/tasks/components/containers/AudioData$FloatRingBuffer;->load([FII)V

    return-void

    .line 153
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 156
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p0, p0, Lcom/google/mediapipe/tasks/components/containers/AudioData;->format:Lcom/google/mediapipe/tasks/components/containers/AudioData$AudioDataFormat;

    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/AudioData$AudioDataFormat;->getNumOfChannels()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p2, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 154
    const-string p2, "Size (%d) needs to be a multiplier of the number of channels (%d)"

    invoke-static {p2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public load([S)V
    .registers 4

    const/4 v0, 0x0

    .line 169
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/mediapipe/tasks/components/containers/AudioData;->load([SII)V

    return-void
.end method

.method public load([SII)V
    .registers 8

    add-int v0, p2, p3

    .line 183
    array-length v1, p1

    if-gt v0, v1, :cond_1f

    .line 189
    new-array v0, p3, [F

    const/4 v1, 0x0

    :goto_8
    if-ge v1, p3, :cond_1b

    add-int v2, v1, p2

    .line 192
    aget-short v2, p1, v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    const v3, 0x46fffe00    # 32767.0f

    div-float/2addr v2, v3

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 194
    :cond_1b
    invoke-virtual {p0, v0}, Lcom/google/mediapipe/tasks/components/containers/AudioData;->load([F)V

    return-void

    .line 184
    :cond_1f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 187
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p2, p3, p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 185
    const-string p2, "Index out of range. offset (%d) + size (%d) should <= newData.length (%d)"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
