.class public Lcom/ss/android/ttve/audio/TEBufferedAudioCaptureRecorder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/vesdk/audio/VEAudioCaptureListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "TEBufferedAudioCaptureRecorder"


# instance fields
.field private audioCapture:Lcom/ss/android/vesdk/VEAudioCapture;

.field private audioWritter:Lcom/ss/android/ttve/audio/TEAudioWriterInterface;

.field privacyCert:Lcom/bytedance/bpea/basics/Cert;

.field sampleRateInHz:I

.field saveAudioDurationMs:I

.field saveAudioFilePath:Ljava/lang/String;

.field saveAudioSpeed:D

.field saveAudioStartMs:I

.field private syncCondition:Landroid/os/ConditionVariable;


# direct methods
.method public constructor <init>(Lcom/ss/android/ttve/audio/TEAudioWriterInterface;)V
    .registers 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/ss/android/ttve/audio/TEBufferedAudioCaptureRecorder;->syncCondition:Landroid/os/ConditionVariable;

    const v0, 0xac44

    .line 30
    iput v0, p0, Lcom/ss/android/ttve/audio/TEBufferedAudioCaptureRecorder;->sampleRateInHz:I

    .line 38
    iput-object p1, p0, Lcom/ss/android/ttve/audio/TEBufferedAudioCaptureRecorder;->audioWritter:Lcom/ss/android/ttve/audio/TEAudioWriterInterface;

    return-void
.end method

.method static synthetic access$000(Lcom/ss/android/ttve/audio/TEBufferedAudioCaptureRecorder;)Lcom/ss/android/vesdk/VEAudioCapture;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/ss/android/ttve/audio/TEBufferedAudioCaptureRecorder;->audioCapture:Lcom/ss/android/vesdk/VEAudioCapture;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ss/android/ttve/audio/TEBufferedAudioCaptureRecorder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 4

    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/ss/android/ttve/audio/TEBufferedAudioCaptureRecorder;->buildInfoJSONObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private buildInfoJSONObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 6

    .line 240
    const-string p0, ""

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 242
    :try_start_7
    const-string v1, "oldState"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 243
    const-string v1, "newState"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 244
    const-string p0, "error"

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 245
    const-string p0, "startTime"

    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 246
    const-string p0, "endTime"

    invoke-virtual {v0, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_20
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_20} :catch_21

    return-object v0

    :catch_21
    move-exception p0

    .line 249
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method private runSyncTask(Ljava/util/concurrent/Callable;ILjava/lang/String;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Integer;",
            ">;I",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/ss/android/ttve/audio/TEBufferedAudioCaptureRecorder;->syncCondition:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    const/4 v0, -0x1

    .line 49
    :try_start_6
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 50
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_46

    .line 51
    iget-object p0, p0, Lcom/ss/android/ttve/audio/TEBufferedAudioCaptureRecorder;->syncCondition:Landroid/os/ConditionVariable;

    int-to-long v1, p2

    invoke-virtual {p0, v1, v2}, Landroid/os/ConditionVariable;->block(J)Z

    move-result p0

    if-eqz p0, :cond_1d

    const/4 p0, 0x0

    goto :goto_1e

    :cond_1d
    move p0, v0

    :goto_1e
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    if-ne p0, v0, :cond_46

    .line 53
    const-string p0, "TEBufferedAudioCaptureRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " timeout ! timeoutMs:"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_3d} :catch_3e

    goto :goto_46

    :catch_3e
    move-exception p0

    .line 57
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 58
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 60
    :cond_46
    :goto_46
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private wakeupWaiter()V
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/ss/android/ttve/audio/TEBufferedAudioCaptureRecorder;->syncCondition:Landroid/os/ConditionVariable;

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method


# virtual methods
.method public getAudioCaller()Lcom/ss/android/ttve/audio/TEAudioWriterInterface;
    .registers 1

    .line 154
    iget-object p0, p0, Lcom/ss/android/ttve/audio/TEBufferedAudioCaptureRecorder;->audioWritter:Lcom/ss/android/ttve/audio/TEAudioWriterInterface;

    return-object p0
.end method

.method public getSampleRateInHz()I
    .registers 3

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "call getSampleRateInHz():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/ttve/audio/TEBufferedAudioCaptureRecorder;->sampleRateInHz:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TEBufferedAudioCaptureRecorder"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget p0, p0, Lcom/ss/android/ttve/audio/TEBufferedAudioCaptureRecorder;->sampleRateInHz:I

    return p0
.end method

.method public declared-synchronized init(I)I
    .registers 6

    monitor-enter p0

    .line 66
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/ttve/audio/TEBufferedAudioCaptureRecorder;->audioCapture:Lcom/ss/android/vesdk/VEAudioCapture;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_58

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 67
    monitor-exit p0

    return v1

    .line 69
    :cond_8
    :try_start_8
    new-instance v0, Lcom/ss/android/vesdk/VEAudioCaptureSettings$Builder;

    invoke-direct {v0}, Lcom/ss/android/vesdk/VEAudioCaptureSettings$Builder;-><init>()V

    const v2, 0xac44

    invoke-virtual {v0, v2}, Lcom/ss/android/vesdk/VEAudioCaptureSettings$Builder;->setSampleRate(I)Lcom/ss/android/vesdk/VEAudioCaptureSettings$Builder;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/ss/android/vesdk/VEAudioCaptureSettings$Builder;->setChannel(I)Lcom/ss/android/vesdk/VEAudioCaptureSettings$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ss/android/vesdk/VEAudioCaptureSettings$Builder;->setAudioCaptureLowLatency(Z)Lcom/ss/android/vesdk/VEAudioCaptureSettings$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEAudioCaptureSettings$Builder;->build()Lcom/ss/android/vesdk/VEAudioCaptureSettings;

    move-result-object v0

    .line 72
    new-instance v1, Lcom/ss/android/vesdk/VEAudioCapture;

    invoke-direct {v1}, Lcom/ss/android/vesdk/VEAudioCapture;-><init>()V

    iput-object v1, p0, Lcom/ss/android/ttve/audio/TEBufferedAudioCaptureRecorder;->audioCapture:Lcom/ss/android/vesdk/VEAudioCapture;

    .line 73
    invoke-virtual {v1, p0}, Lcom/ss/android/vesdk/VEAudioCapture;->addCaptureListener(Lcom/ss/android/vesdk/audio/VEAudioCaptureListener;)Z

    .line 75
    new-instance v1, Lcom/ss/android/ttve/audio/TEBufferedAudioCaptureRecorder$1;

    invoke-direct {v1, p0, v0}, Lcom/ss/android/ttve/audio/TEBufferedAudioCaptureRecorder$1;-><init>(Lcom/ss/android/ttve/audio/TEBufferedAudioCaptureRecorder;Lcom/ss/android/vesdk/VEAudioCaptureSettings;)V

    const-string v0, "init()"

    const/16 v2, 0x7d0

    invoke-direct {p0, v1, v2, v0}, Lcom/ss/android/ttve/audio/TEBufferedAudioCaptureRecorder;->runSyncTask(Ljava/util/concurrent/Callable;ILjava/lang/String;)I

    move-result v0

    .line 81
    const-string v1, "TEBufferedAudioCaptureRecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call init, sourceId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " retValue:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_56
    .catchall {:try_start_8 .. :try_end_56} :catchall_58

    .line 82
    monitor-exit p0

    return v0

    :catchall_58
    move-exception p1

    :try_start_59
    monitor-exit p0
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    throw p1
.end method

.method public onError(IILjava/lang/String;)V
    .registers 6

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "errorType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ret:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " msg:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TEBufferedAudioCaptureRecorder"

    invoke-static {p2, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-direct {p0}, Lcom/ss/android/ttve/audio/TEBufferedAudioCaptureRecorder;->wakeupWaiter()V

    return-void
.end method

.method public onInfo(IIDLjava/lang/Object;)V
    .registers 14

    .line 187
    sget p2, Lcom/ss/android/vesdk/VEInfo;->TE_INFO_RECORD_AUDIO_CAPTURE_INIT:I

    const-string p3, "TEBufferedAudioCaptureRecorder"

    if-ne p1, p2, :cond_2c

    .line 188
    const-string p1, "oninfo TE_INFO_RECORD_AUDIO_CAPTURE_INIT"

    invoke-static {p3, p1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p5, :cond_8a

    .line 190
    check-cast p5, Lcom/ss/android/vesdk/VEAudioCaptureSettings;

    .line 191
    invoke-virtual {p5}, Lcom/ss/android/vesdk/VEAudioCaptureSettings;->getSampleRate()I

    move-result p1

    iput p1, p0, Lcom/ss/android/ttve/audio/TEBufferedAudioCaptureRecorder;->sampleRateInHz:I

    .line 192
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "oninfo TE_INFO_RECORD_AUDIO_CAPTURE_INIT samplerate:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/ss/android/ttve/audio/TEBufferedAudioCaptureRecorder;->sampleRateInHz:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8a

    .line 194
    :cond_2c
    sget p2, Lcom/ss/android/vesdk/VEInfo;->TE_INFO_RECORD_AUDIO_CAPTURE_START:I

    if-ne p1, p2, :cond_65

    .line 195
    const-string p1, "oninfo TE_INFO_RECORD_AUDIO_CAPTURE_START"

    invoke-static {p3, p1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/ss/android/ttve/audio/TEBufferedAudioCaptureRecorder;->audioWritter:Lcom/ss/android/ttve/audio/TEAudioWriterInterface;

    if-eqz v0, :cond_5f

    .line 197
    iget-object v1, p0, Lcom/ss/android/ttve/audio/TEBufferedAudioCaptureRecorder;->saveAudioFilePath:Ljava/lang/String;

    iget v2, p0, Lcom/ss/android/ttve/audio/TEBufferedAudioCaptureRecorder;->sampleRateInHz:I

    iget-wide v4, p0, Lcom/ss/android/ttve/audio/TEBufferedAudioCaptureRecorder;->saveAudioSpeed:D

    iget v6, p0, Lcom/ss/android/ttve/audio/TEBufferedAudioCaptureRecorder;->saveAudioStartMs:I

    iget v7, p0, Lcom/ss/android/ttve/audio/TEBufferedAudioCaptureRecorder;->saveAudioDurationMs:I

    const/4 v3, 0x2

    invoke-interface/range {v0 .. v7}, Lcom/ss/android/ttve/audio/TEAudioWriterInterface;->initWavFile(Ljava/lang/String;IIDII)I

    move-result p1

    if-eqz p1, :cond_8a

    .line 199
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "init wav file failed, ret = "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8a

    .line 202
    :cond_5f
    const-string p1, "oninfo TE_INFO_RECORD_AUDIO_CAPTURE_START, audioWritter is null !"

    invoke-static {p3, p1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8a

    .line 204
    :cond_65
    sget p2, Lcom/ss/android/vesdk/VEInfo;->TE_INFO_RECORD_AUDIO_CAPTURE_STOP:I

    if-ne p1, p2, :cond_76

    .line 205
    const-string p1, "oninfo TE_INFO_RECORD_AUDIO_CAPTURE_STOP"

    invoke-static {p3, p1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object p1, p0, Lcom/ss/android/ttve/audio/TEBufferedAudioCaptureRecorder;->audioWritter:Lcom/ss/android/ttve/audio/TEAudioWriterInterface;

    if-eqz p1, :cond_8a

    .line 207
    invoke-interface {p1}, Lcom/ss/android/ttve/audio/TEAudioWriterInterface;->closeWavFile()I

    goto :goto_8a

    .line 210
    :cond_76
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "oninfo other type : "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    :cond_8a
    :goto_8a
    invoke-direct {p0}, Lcom/ss/android/ttve/audio/TEBufferedAudioCaptureRecorder;->wakeupWaiter()V

    return-void
.end method

.method public onReceive(Lcom/ss/android/vesdk/audio/VEAudioSample;)V
    .registers 3

    .line 224
    iget-object v0, p0, Lcom/ss/android/ttve/audio/TEBufferedAudioCaptureRecorder;->audioWritter:Lcom/ss/android/ttve/audio/TEAudioWriterInterface;

    if-eqz v0, :cond_42

    .line 226
    invoke-virtual {p1}, Lcom/ss/android/vesdk/audio/VEAudioSample;->getSampleBuffer()Lcom/ss/android/vesdk/audio/VEAudioSample$SampleBuffer;

    move-result-object v0

    instance-of v0, v0, Lcom/ss/android/vesdk/audio/VEAudioSample$ByteBufferSampleBuffer;

    if-eqz v0, :cond_1b

    .line 227
    invoke-virtual {p1}, Lcom/ss/android/vesdk/audio/VEAudioSample;->getSampleBuffer()Lcom/ss/android/vesdk/audio/VEAudioSample$SampleBuffer;

    move-result-object v0

    check-cast v0, Lcom/ss/android/vesdk/audio/VEAudioSample$ByteBufferSampleBuffer;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/audio/VEAudioSample$ByteBufferSampleBuffer;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    goto :goto_2f

    .line 228
    :cond_1b
    invoke-virtual {p1}, Lcom/ss/android/vesdk/audio/VEAudioSample;->getSampleBuffer()Lcom/ss/android/vesdk/audio/VEAudioSample$SampleBuffer;

    move-result-object v0

    instance-of v0, v0, Lcom/ss/android/vesdk/audio/VEAudioSample$ByteArraySampleBuffer;

    if-eqz v0, :cond_2e

    .line 229
    invoke-virtual {p1}, Lcom/ss/android/vesdk/audio/VEAudioSample;->getSampleBuffer()Lcom/ss/android/vesdk/audio/VEAudioSample$SampleBuffer;

    move-result-object v0

    check-cast v0, Lcom/ss/android/vesdk/audio/VEAudioSample$ByteArraySampleBuffer;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/audio/VEAudioSample$ByteArraySampleBuffer;->getByteArray()[B

    move-result-object v0

    goto :goto_2f

    :cond_2e
    const/4 v0, 0x0

    :goto_2f
    if-eqz v0, :cond_3b

    .line 232
    iget-object p0, p0, Lcom/ss/android/ttve/audio/TEBufferedAudioCaptureRecorder;->audioWritter:Lcom/ss/android/ttve/audio/TEAudioWriterInterface;

    invoke-virtual {p1}, Lcom/ss/android/vesdk/audio/VEAudioSample;->getByteSize()I

    move-result p1

    invoke-interface {p0, v0, p1}, Lcom/ss/android/ttve/audio/TEAudioWriterInterface;->addPCMData([BI)I

    return-void

    .line 234
    :cond_3b
    const-string p0, "TEBufferedAudioCaptureRecorder"

    const-string p1, "sample buffer is empty!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_42
    return-void
.end method

.method public declared-synchronized startRecording(Ljava/lang/String;DIILcom/bytedance/bpea/basics/Cert;)I
    .registers 10

    monitor-enter p0

    const/4 v0, 0x1

    .line 89
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/ss/android/ttve/audio/TEBufferedAudioCaptureRecorder;->init(I)I

    move-result v0
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_18

    if-eqz v0, :cond_a

    .line 91
    monitor-exit p0

    return v0

    .line 95
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/ss/android/ttve/audio/TEBufferedAudioCaptureRecorder;->audioCapture:Lcom/ss/android/vesdk/VEAudioCapture;

    if-nez v0, :cond_1a

    .line 96
    const-string p1, "TEBufferedAudioCaptureRecorder"

    const-string p2, "call startRecording()  audioCpature is null"

    invoke-static {p1, p2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_18

    .line 97
    monitor-exit p0

    const/4 p0, -0x1

    return p0

    :catchall_18
    move-exception p1

    goto :goto_69

    .line 100
    :cond_1a
    :try_start_1a
    iput-object p1, p0, Lcom/ss/android/ttve/audio/TEBufferedAudioCaptureRecorder;->saveAudioFilePath:Ljava/lang/String;

    .line 101
    iput-wide p2, p0, Lcom/ss/android/ttve/audio/TEBufferedAudioCaptureRecorder;->saveAudioSpeed:D

    .line 102
    iput p4, p0, Lcom/ss/android/ttve/audio/TEBufferedAudioCaptureRecorder;->saveAudioStartMs:I

    .line 103
    iput p5, p0, Lcom/ss/android/ttve/audio/TEBufferedAudioCaptureRecorder;->saveAudioDurationMs:I

    .line 104
    iput-object p6, p0, Lcom/ss/android/ttve/audio/TEBufferedAudioCaptureRecorder;->privacyCert:Lcom/bytedance/bpea/basics/Cert;

    .line 105
    new-instance v0, Lcom/ss/android/ttve/audio/TEBufferedAudioCaptureRecorder$2;

    invoke-direct {v0, p0, p6}, Lcom/ss/android/ttve/audio/TEBufferedAudioCaptureRecorder$2;-><init>(Lcom/ss/android/ttve/audio/TEBufferedAudioCaptureRecorder;Lcom/bytedance/bpea/basics/Cert;)V

    const-string p6, "startRecording()"

    const/16 v1, 0x7d0

    invoke-direct {p0, v0, v1, p6}, Lcom/ss/android/ttve/audio/TEBufferedAudioCaptureRecorder;->runSyncTask(Ljava/util/concurrent/Callable;ILjava/lang/String;)I

    move-result p6

    .line 116
    const-string v0, "TEBufferedAudioCaptureRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call startRecording  path:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " speed:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, " startMs:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " durationMs:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " retValue:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_67
    .catchall {:try_start_1a .. :try_end_67} :catchall_18

    .line 117
    monitor-exit p0

    return p6

    :goto_69
    :try_start_69
    monitor-exit p0
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_18

    throw p1
.end method

.method public declared-synchronized stopRecording(Lcom/bytedance/bpea/basics/Cert;)Z
    .registers 4

    monitor-enter p0

    .line 122
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/ttve/audio/TEBufferedAudioCaptureRecorder;->audioCapture:Lcom/ss/android/vesdk/VEAudioCapture;

    if-nez v0, :cond_11

    .line 123
    const-string p1, "TEBufferedAudioCaptureRecorder"

    const-string v0, "call stopRecording()  audioCpature is null"

    invoke-static {p1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_f

    .line 124
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :catchall_f
    move-exception p1

    goto :goto_39

    .line 127
    :cond_11
    :try_start_11
    iput-object p1, p0, Lcom/ss/android/ttve/audio/TEBufferedAudioCaptureRecorder;->privacyCert:Lcom/bytedance/bpea/basics/Cert;

    .line 131
    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEAudioCapture;->stop()I

    .line 132
    iget-object p1, p0, Lcom/ss/android/ttve/audio/TEBufferedAudioCaptureRecorder;->audioCapture:Lcom/ss/android/vesdk/VEAudioCapture;

    iget-object v0, p0, Lcom/ss/android/ttve/audio/TEBufferedAudioCaptureRecorder;->privacyCert:Lcom/bytedance/bpea/basics/Cert;

    invoke-virtual {p1, v0}, Lcom/ss/android/vesdk/VEAudioCapture;->release(Lcom/bytedance/bpea/basics/Cert;)V

    const/4 p1, 0x0

    .line 133
    iput-object p1, p0, Lcom/ss/android/ttve/audio/TEBufferedAudioCaptureRecorder;->audioCapture:Lcom/ss/android/vesdk/VEAudioCapture;

    .line 148
    const-string p1, "TEBufferedAudioCaptureRecorder"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "call stopRecording() retValue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_37
    .catchall {:try_start_11 .. :try_end_37} :catchall_f

    .line 149
    monitor-exit p0

    return v1

    :goto_39
    :try_start_39
    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_f

    throw p1
.end method

.method public declared-synchronized unInit()V
    .registers 2

    monitor-enter p0

    .line 159
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/ttve/audio/TEBufferedAudioCaptureRecorder;->privacyCert:Lcom/bytedance/bpea/basics/Cert;

    invoke-virtual {p0, v0}, Lcom/ss/android/ttve/audio/TEBufferedAudioCaptureRecorder;->unInit(Lcom/bytedance/bpea/basics/Cert;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 160
    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public declared-synchronized unInit(Lcom/bytedance/bpea/basics/Cert;)V
    .registers 5

    monitor-enter p0

    .line 163
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/ttve/audio/TEBufferedAudioCaptureRecorder;->audioCapture:Lcom/ss/android/vesdk/VEAudioCapture;

    if-eqz v0, :cond_3e

    .line 164
    const-string v0, "editor uninit will stop mic"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-direct {p0, v0, v1, v2}, Lcom/ss/android/ttve/audio/TEBufferedAudioCaptureRecorder;->buildInfoJSONObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 165
    const-string v1, "vesdk_event_will_stop_mic"

    const-string v2, "behavior"

    invoke-static {v1, v0, v2}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/ss/android/ttve/audio/TEBufferedAudioCaptureRecorder;->audioCapture:Lcom/ss/android/vesdk/VEAudioCapture;

    invoke-virtual {v0, p1}, Lcom/ss/android/vesdk/VEAudioCapture;->release(Lcom/bytedance/bpea/basics/Cert;)V

    .line 167
    const-string p1, "editor uninit did stop mic"

    const-string v0, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/ss/android/ttve/audio/TEBufferedAudioCaptureRecorder;->buildInfoJSONObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 168
    const-string v0, "vesdk_event_did_stop_mic"

    const-string v1, "behavior"

    invoke-static {v0, p1, v1}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 169
    iput-object p1, p0, Lcom/ss/android/ttve/audio/TEBufferedAudioCaptureRecorder;->audioCapture:Lcom/ss/android/vesdk/VEAudioCapture;

    goto :goto_3e

    :catchall_3c
    move-exception p1

    goto :goto_4e

    .line 172
    :cond_3e
    :goto_3e
    iget-object p1, p0, Lcom/ss/android/ttve/audio/TEBufferedAudioCaptureRecorder;->audioWritter:Lcom/ss/android/ttve/audio/TEAudioWriterInterface;

    if-eqz p1, :cond_45

    .line 173
    invoke-interface {p1}, Lcom/ss/android/ttve/audio/TEAudioWriterInterface;->destroy()V

    .line 175
    :cond_45
    const-string p1, "TEBufferedAudioCaptureRecorder"

    const-string v0, "call unInit() finished!"

    invoke-static {p1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4c
    .catchall {:try_start_1 .. :try_end_4c} :catchall_3c

    .line 176
    monitor-exit p0

    return-void

    :goto_4e
    :try_start_4e
    monitor-exit p0
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_3c

    throw p1
.end method
