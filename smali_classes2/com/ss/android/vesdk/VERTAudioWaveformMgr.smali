.class public Lcom/ss/android/vesdk/VERTAudioWaveformMgr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "VERTAudioWaveformMgr"


# instance fields
.field private final mAudioFormat:I

.field private final mChannelNum:I

.field private mNative:J


# direct methods
.method constructor <init>(IIIFI)V
    .registers 6

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {p2, p3, p4, p5}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->createRTAudioWaveformMgr(IIFI)J

    move-result-wide p3

    iput-wide p3, p0, Lcom/ss/android/vesdk/VERTAudioWaveformMgr;->mNative:J

    .line 20
    iput p2, p0, Lcom/ss/android/vesdk/VERTAudioWaveformMgr;->mChannelNum:I

    .line 21
    iput p1, p0, Lcom/ss/android/vesdk/VERTAudioWaveformMgr;->mAudioFormat:I

    return-void
.end method


# virtual methods
.method public destroy()I
    .registers 6

    .line 29
    iget-wide v0, p0, Lcom/ss/android/vesdk/VERTAudioWaveformMgr;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_12

    .line 30
    const-string p0, "VERTAudioWaveformMgr"

    const-string v0, "destroy, mNative == 0"

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x70

    return p0

    .line 33
    :cond_12
    invoke-static {v0, v1}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->deleteRTAudioWaveformMgr(J)I

    move-result v0

    .line 34
    iput-wide v2, p0, Lcom/ss/android/vesdk/VERTAudioWaveformMgr;->mNative:J

    return v0
.end method

.method public finish()I
    .registers 5

    .line 138
    iget-wide v0, p0, Lcom/ss/android/vesdk/VERTAudioWaveformMgr;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_12

    .line 139
    const-string p0, "VERTAudioWaveformMgr"

    const-string v0, "finish, mNative == 0"

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x70

    return p0

    .line 142
    :cond_12
    invoke-static {v0, v1}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->rtAudioWaveformFinish(J)I

    move-result p0

    return p0
.end method

.method public getRemainedPoints([FII)I
    .registers 8

    .line 111
    iget-wide v0, p0, Lcom/ss/android/vesdk/VERTAudioWaveformMgr;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_12

    .line 112
    const-string p0, "VERTAudioWaveformMgr"

    const-string p1, "getRemainedPoints, mNative == 0"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x70

    return p0

    .line 115
    :cond_12
    invoke-static {v0, v1, p1, p2, p3}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->rtAudioWaveformGetPoints(J[FII)I

    move-result p0

    return p0
.end method

.method public process([FII)I
    .registers 10

    .line 80
    iget-wide v0, p0, Lcom/ss/android/vesdk/VERTAudioWaveformMgr;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-string v1, "VERTAudioWaveformMgr"

    if-nez v0, :cond_12

    .line 81
    const-string p0, "process, mNative == 0"

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x70

    return p0

    .line 84
    :cond_12
    iget v0, p0, Lcom/ss/android/vesdk/VERTAudioWaveformMgr;->mChannelNum:I

    if-ltz v0, :cond_55

    if-ltz p3, :cond_55

    mul-int v2, p3, v0

    array-length v3, p1

    sub-int/2addr v3, p2

    if-gt v2, v3, :cond_55

    iget v2, p0, Lcom/ss/android/vesdk/VERTAudioWaveformMgr;->mAudioFormat:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_24

    goto :goto_55

    :cond_24
    const/4 v1, 0x2

    .line 94
    new-array v1, v1, [I

    const/4 v2, 0x1

    aput p3, v1, v2

    const/4 v2, 0x0

    aput v0, v1, v2

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    move v1, v2

    .line 95
    :goto_36
    iget v3, p0, Lcom/ss/android/vesdk/VERTAudioWaveformMgr;->mChannelNum:I

    if-ge v1, v3, :cond_4e

    move v3, v2

    :goto_3b
    if-ge v3, p3, :cond_4b

    .line 97
    aget-object v4, v0, v1

    iget v5, p0, Lcom/ss/android/vesdk/VERTAudioWaveformMgr;->mChannelNum:I

    mul-int/2addr v5, v3

    add-int/2addr v5, v1

    add-int/2addr v5, p2

    aget v5, p1, v5

    aput v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3b

    :cond_4b
    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    .line 100
    :cond_4e
    iget-wide p0, p0, Lcom/ss/android/vesdk/VERTAudioWaveformMgr;->mNative:J

    invoke-static {p0, p1, v0, v3, p3}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->rtAudioWaveformProcess(J[[FII)I

    move-result p0

    return p0

    .line 86
    :cond_55
    :goto_55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "process param error mChannelNum "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ss/android/vesdk/VERTAudioWaveformMgr;->mChannelNum:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", bufSize "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", offset "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", frameNum "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mAudioFormat "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/ss/android/vesdk/VERTAudioWaveformMgr;->mAudioFormat:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x64

    return p0
.end method

.method public process([SII)I
    .registers 11

    .line 47
    iget-wide v0, p0, Lcom/ss/android/vesdk/VERTAudioWaveformMgr;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-string v1, "VERTAudioWaveformMgr"

    if-nez v0, :cond_12

    .line 48
    const-string p0, "process, mNative == 0"

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x70

    return p0

    .line 51
    :cond_12
    iget v0, p0, Lcom/ss/android/vesdk/VERTAudioWaveformMgr;->mChannelNum:I

    if-ltz v0, :cond_59

    if-ltz p3, :cond_59

    mul-int v2, p3, v0

    array-length v3, p1

    sub-int/2addr v3, p2

    if-gt v2, v3, :cond_59

    iget v2, p0, Lcom/ss/android/vesdk/VERTAudioWaveformMgr;->mAudioFormat:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_24

    goto :goto_59

    .line 61
    :cond_24
    new-array v1, v3, [I

    const/4 v2, 0x1

    aput p3, v1, v2

    const/4 v2, 0x0

    aput v0, v1, v2

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    move v1, v2

    .line 62
    :goto_35
    iget v3, p0, Lcom/ss/android/vesdk/VERTAudioWaveformMgr;->mChannelNum:I

    if-ge v1, v3, :cond_52

    move v3, v2

    :goto_3a
    if-ge v3, p3, :cond_4f

    .line 64
    aget-object v4, v0, v1

    iget v5, p0, Lcom/ss/android/vesdk/VERTAudioWaveformMgr;->mChannelNum:I

    mul-int/2addr v5, v3

    add-int/2addr v5, v1

    add-int/2addr v5, p2

    aget-short v5, p1, v5

    int-to-float v5, v5

    const v6, 0x46fffe00    # 32767.0f

    div-float/2addr v5, v6

    aput v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    :cond_4f
    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    .line 67
    :cond_52
    iget-wide p0, p0, Lcom/ss/android/vesdk/VERTAudioWaveformMgr;->mNative:J

    invoke-static {p0, p1, v0, v3, p3}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->rtAudioWaveformProcess(J[[FII)I

    move-result p0

    return p0

    .line 53
    :cond_59
    :goto_59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "process param error mChannelNum "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ss/android/vesdk/VERTAudioWaveformMgr;->mChannelNum:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", bufSize "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", offset "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", frameNum "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mAudioFormat "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/ss/android/vesdk/VERTAudioWaveformMgr;->mAudioFormat:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x64

    return p0
.end method

.method public reset()I
    .registers 5

    .line 124
    iget-wide v0, p0, Lcom/ss/android/vesdk/VERTAudioWaveformMgr;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_12

    .line 125
    const-string p0, "VERTAudioWaveformMgr"

    const-string v0, "reset, mNative == 0"

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x70

    return p0

    .line 128
    :cond_12
    invoke-static {v0, v1}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->rtAudioWaveformReset(J)I

    move-result p0

    return p0
.end method
