.class public Lcom/ss/android/ttve/nativePort/TEAudioDataInterface;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/vesdk/audio/VEAudioCaptureListener;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private handle:J

.field private mAudioCaptureSettings:Lcom/ss/android/vesdk/VEAudioCaptureSettings;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 18
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->loadRecorder()V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-direct {p0}, Lcom/ss/android/ttve/nativePort/TEAudioDataInterface;->nativeCreate()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEAudioDataInterface;->handle:J

    return-void
.end method

.method private native nativeCreate()J
.end method

.method private native nativeInit(JIII)I
.end method

.method private native nativeRelease(J)V
.end method

.method private native nativeSendArrayData(J[BIJJ)I
.end method

.method private native nativeSendBufferData(JLjava/nio/ByteBuffer;IJJ)I
.end method


# virtual methods
.method public getHandle()J
    .registers 3

    .line 28
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEAudioDataInterface;->handle:J

    return-wide v0
.end method

.method public onError(IILjava/lang/String;)V
    .registers 4

    return-void
.end method

.method public onInfo(IIDLjava/lang/Object;)V
    .registers 12

    .line 44
    sget p2, Lcom/ss/android/vesdk/VEInfo;->TE_INFO_RECORD_AUDIO_CAPTURE_INIT:I

    if-ne p1, p2, :cond_24

    .line 45
    check-cast p5, Lcom/ss/android/vesdk/VEAudioCaptureSettings;

    iput-object p5, p0, Lcom/ss/android/ttve/nativePort/TEAudioDataInterface;->mAudioCaptureSettings:Lcom/ss/android/vesdk/VEAudioCaptureSettings;

    .line 46
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEAudioDataInterface;->handle:J

    const-wide/16 p1, 0x0

    cmp-long p1, v1, p1

    if-eqz p1, :cond_24

    .line 47
    invoke-virtual {p5}, Lcom/ss/android/vesdk/VEAudioCaptureSettings;->getSampleRate()I

    move-result v3

    iget-object p1, p0, Lcom/ss/android/ttve/nativePort/TEAudioDataInterface;->mAudioCaptureSettings:Lcom/ss/android/vesdk/VEAudioCaptureSettings;

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEAudioCaptureSettings;->getChannel()I

    move-result v4

    iget-object p1, p0, Lcom/ss/android/ttve/nativePort/TEAudioDataInterface;->mAudioCaptureSettings:Lcom/ss/android/vesdk/VEAudioCaptureSettings;

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEAudioCaptureSettings;->getBitSamples()I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ttve/nativePort/TEAudioDataInterface;->nativeInit(JIII)I

    :cond_24
    return-void
.end method

.method public declared-synchronized onReceive(Lcom/ss/android/vesdk/audio/VEAudioSample;)V
    .registers 14

    monitor-enter p0

    .line 33
    :try_start_1
    iget-wide v2, p0, Lcom/ss/android/ttve/nativePort/TEAudioDataInterface;->handle:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_63

    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/TEAudioDataInterface;->mAudioCaptureSettings:Lcom/ss/android/vesdk/VEAudioCaptureSettings;

    if-eqz v0, :cond_63

    .line 34
    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEAudioCaptureSettings;->getDataStore()I

    move-result v0

    const-wide/16 v2, 0x3e8

    if-nez v0, :cond_3f

    move-wide v4, v2

    .line 35
    iget-wide v2, p0, Lcom/ss/android/ttve/nativePort/TEAudioDataInterface;->handle:J

    invoke-virtual {p1}, Lcom/ss/android/vesdk/audio/VEAudioSample;->getSampleBuffer()Lcom/ss/android/vesdk/audio/VEAudioSample$SampleBuffer;

    move-result-object v0

    check-cast v0, Lcom/ss/android/vesdk/audio/VEAudioSample$ByteArraySampleBuffer;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/audio/VEAudioSample$ByteArraySampleBuffer;->getByteArray()[B

    move-result-object v0

    move-wide v6, v4

    invoke-virtual {p1}, Lcom/ss/android/vesdk/audio/VEAudioSample;->getByteSize()I

    move-result v5

    move-wide v8, v6

    invoke-virtual {p1}, Lcom/ss/android/vesdk/audio/VEAudioSample;->getTimeStamp()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    div-long/2addr v10, v8

    invoke-virtual {p1}, Lcom/ss/android/vesdk/audio/VEAudioSample;->getTimeStamp()J

    move-result-wide v8

    sub-long v8, v10, v8

    move-object v1, p0

    move-object v4, v0

    invoke-direct/range {v1 .. v9}, Lcom/ss/android/ttve/nativePort/TEAudioDataInterface;->nativeSendArrayData(J[BIJJ)I

    goto :goto_63

    :catchall_3d
    move-exception v0

    goto :goto_65

    :cond_3f
    move-wide v8, v2

    .line 37
    iget-wide v2, p0, Lcom/ss/android/ttve/nativePort/TEAudioDataInterface;->handle:J

    invoke-virtual {p1}, Lcom/ss/android/vesdk/audio/VEAudioSample;->getSampleBuffer()Lcom/ss/android/vesdk/audio/VEAudioSample$SampleBuffer;

    move-result-object v0

    check-cast v0, Lcom/ss/android/vesdk/audio/VEAudioSample$ByteBufferSampleBuffer;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/audio/VEAudioSample$ByteBufferSampleBuffer;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {p1}, Lcom/ss/android/vesdk/audio/VEAudioSample;->getByteSize()I

    move-result v5

    invoke-virtual {p1}, Lcom/ss/android/vesdk/audio/VEAudioSample;->getTimeStamp()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    div-long/2addr v10, v8

    invoke-virtual {p1}, Lcom/ss/android/vesdk/audio/VEAudioSample;->getTimeStamp()J

    move-result-wide v8

    sub-long v8, v10, v8

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/ss/android/ttve/nativePort/TEAudioDataInterface;->nativeSendBufferData(JLjava/nio/ByteBuffer;IJJ)I
    :try_end_63
    .catchall {:try_start_1 .. :try_end_63} :catchall_3d

    .line 40
    :cond_63
    :goto_63
    monitor-exit p0

    return-void

    :goto_65
    :try_start_65
    monitor-exit p0
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_3d

    throw v0
.end method

.method public declared-synchronized release()V
    .registers 6

    monitor-enter p0

    .line 58
    :try_start_1
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEAudioDataInterface;->handle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_11

    .line 59
    invoke-direct {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TEAudioDataInterface;->nativeRelease(J)V

    .line 60
    iput-wide v2, p0, Lcom/ss/android/ttve/nativePort/TEAudioDataInterface;->handle:J
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_f

    goto :goto_11

    :catchall_f
    move-exception v0

    goto :goto_13

    .line 62
    :cond_11
    :goto_11
    monitor-exit p0

    return-void

    :goto_13
    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_f

    throw v0
.end method
