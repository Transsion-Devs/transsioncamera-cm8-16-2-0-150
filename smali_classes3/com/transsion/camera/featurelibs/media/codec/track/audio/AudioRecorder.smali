.class public Lcom/transsion/camera/featurelibs/media/codec/track/audio/AudioRecorder;
.super Lcom/transsion/camera/featurelibs/media/codec/track/BaseTrackRecorder;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/featurelibs/media/codec/encoder/IEncoderInput;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAudioRecord:Landroid/media/AudioRecord;

.field private mBufferSize:I

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 39
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AudioRecorder"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/featurelibs/media/codec/track/audio/AudioRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 49
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/media/codec/track/BaseTrackRecorder;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/media/codec/track/audio/AudioRecorder;->mContext:Landroid/content/Context;

    .line 51
    new-instance p1, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;

    invoke-direct {p1, p0, p0}, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;-><init>(Lcom/transsion/camera/featurelibs/media/codec/encoder/IEncoderInput;Lcom/transsion/camera/featurelibs/media/codec/encoder/IEncoderListener;)V

    iput-object p1, p0, Lcom/transsion/camera/featurelibs/media/codec/track/BaseTrackRecorder;->mMediaEncoder:Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;

    return-void
.end method


# virtual methods
.method public declared-synchronized fillInput(Lcom/transsion/camera/featurelibs/media/codec/encoder/FrameInfo;)V
    .registers 6

    monitor-enter p0

    .line 143
    :try_start_1
    sget-object v0, Lcom/transsion/camera/featurelibs/media/codec/track/audio/AudioRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "fillInput"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 146
    iget-object v1, p0, Lcom/transsion/camera/featurelibs/media/codec/base/BaseMediaWorker;->mCurrentState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x2

    if-eq v2, v1, :cond_30

    const/4 v2, 0x3

    if-eq v2, v1, :cond_30

    .line 148
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fillInput invalid state: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/featurelibs/media/codec/base/BaseMediaWorker;->stateDescription(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_2e

    .line 149
    monitor-exit p0

    return-void

    :catchall_2e
    move-exception p1

    goto :goto_7d

    .line 152
    :cond_30
    :try_start_30
    iget-object v1, p0, Lcom/transsion/camera/featurelibs/media/codec/track/audio/AudioRecorder;->mAudioRecord:Landroid/media/AudioRecord;

    .line 153
    iget-object v2, p0, Lcom/transsion/camera/featurelibs/media/codec/track/BaseTrackRecorder;->mMediaEncoder:Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;
    :try_end_34
    .catchall {:try_start_30 .. :try_end_34} :catchall_2e

    if-eqz v1, :cond_5b

    if-nez v2, :cond_39

    goto :goto_5b

    .line 161
    :cond_39
    :try_start_39
    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/media/codec/encoder/FrameInfo;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v2, p0, Lcom/transsion/camera/featurelibs/media/codec/track/audio/AudioRecorder;->mBufferSize:I

    invoke-virtual {v1, v0, v2}, Landroid/media/AudioRecord;->read(Ljava/nio/ByteBuffer;I)I
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_42} :catch_43
    .catchall {:try_start_39 .. :try_end_42} :catchall_2e

    goto :goto_4b

    :catch_43
    move-exception v0

    .line 163
    :try_start_44
    sget-object v1, Lcom/transsion/camera/featurelibs/media/codec/track/audio/AudioRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "fillInput"

    invoke-static {v1, v2, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 166
    :goto_4b
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/BaseTrackRecorder;->mRecorderSync:Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderSync;

    if-eqz v0, :cond_59

    .line 168
    invoke-virtual {v0}, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderSync;->getPresentationTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/featurelibs/media/codec/encoder/FrameInfo;->setPresentationTime(J)V
    :try_end_59
    .catchall {:try_start_44 .. :try_end_59} :catchall_2e

    .line 170
    :cond_59
    monitor-exit p0

    return-void

    .line 156
    :cond_5b
    :goto_5b
    :try_start_5b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fillBuffer failed, mAudioRecord: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/featurelibs/media/codec/track/audio/AudioRecorder;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mMediaEncoder: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/featurelibs/media/codec/track/BaseTrackRecorder;->mMediaEncoder:Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_7b
    .catchall {:try_start_5b .. :try_end_7b} :catchall_2e

    .line 157
    monitor-exit p0

    return-void

    :goto_7d
    :try_start_7d
    monitor-exit p0
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_2e

    throw p1
.end method

.method public onError(Landroid/media/MediaCodec;Ljava/lang/Exception;)V
    .registers 5

    .line 174
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/featurelibs/media/codec/track/BaseTrackRecorder;->onError(Landroid/media/MediaCodec;Ljava/lang/Exception;)V

    .line 175
    sget-object p1, Lcom/transsion/camera/featurelibs/media/codec/track/audio/AudioRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 176
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/BaseTrackRecorder;->mRecorderListener:Lcom/transsion/camera/featurelibs/media/codec/track/ITrackRecorderListener;

    if-eqz p0, :cond_28

    const p1, 0x186a0

    const/4 p2, 0x0

    .line 178
    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/featurelibs/media/codec/track/ITrackRecorderListener;->onTrackError(II)V

    :cond_28
    return-void
.end method

.method public declared-synchronized pause()V
    .registers 3

    monitor-enter p0

    .line 112
    :try_start_1
    invoke-super {p0}, Lcom/transsion/camera/featurelibs/media/codec/base/BaseMediaWorker;->pause()V

    .line 113
    sget-object v0, Lcom/transsion/camera/featurelibs/media/codec/track/audio/AudioRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "pause"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/BaseTrackRecorder;->mMediaEncoder:Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;

    invoke-virtual {v0}, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;->pause()V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 115
    monitor-exit p0

    return-void

    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public prepare()V
    .registers 8

    .line 57
    invoke-super {p0}, Lcom/transsion/camera/featurelibs/media/codec/base/BaseMediaWorker;->prepare()V

    .line 59
    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/media/codec/track/BaseTrackRecorder;->trackValid()Z

    move-result v0

    if-nez v0, :cond_11

    .line 60
    sget-object p0, Lcom/transsion/camera/featurelibs/media/codec/track/audio/AudioRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "prepare failed, invalid track"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 64
    :cond_11
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/audio/AudioRecorder;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_23

    .line 65
    sget-object p0, Lcom/transsion/camera/featurelibs/media/codec/track/audio/AudioRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "RECORD_AUDIO permission not granted"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 69
    :cond_23
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/base/BaseMediaWorker;->mParam:Ljava/lang/Object;

    check-cast v0, Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam;

    .line 70
    invoke-virtual {v0}, Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam;->sampleRate()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/featurelibs/media/codec/base/BaseMediaWorker;->mParam:Ljava/lang/Object;

    check-cast v1, Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam;

    invoke-virtual {v1}, Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam;->channelConfig()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/featurelibs/media/codec/base/BaseMediaWorker;->mParam:Ljava/lang/Object;

    check-cast v2, Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam;

    invoke-virtual {v2}, Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam;->audioFormat()I

    move-result v2

    .line 69
    invoke-static {v0, v1, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/audio/AudioRecorder;->mBufferSize:I

    .line 71
    new-instance v1, Landroid/media/AudioRecord;

    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/base/BaseMediaWorker;->mParam:Ljava/lang/Object;

    check-cast v0, Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam;

    invoke-virtual {v0}, Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam;->audioSource()I

    move-result v2

    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/base/BaseMediaWorker;->mParam:Ljava/lang/Object;

    check-cast v0, Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam;

    .line 72
    invoke-virtual {v0}, Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam;->sampleRate()I

    move-result v3

    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/base/BaseMediaWorker;->mParam:Ljava/lang/Object;

    check-cast v0, Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam;

    invoke-virtual {v0}, Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam;->channelConfig()I

    move-result v4

    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/base/BaseMediaWorker;->mParam:Ljava/lang/Object;

    check-cast v0, Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam;

    invoke-virtual {v0}, Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam;->audioFormat()I

    move-result v5

    iget v6, p0, Lcom/transsion/camera/featurelibs/media/codec/track/audio/AudioRecorder;->mBufferSize:I

    invoke-direct/range {v1 .. v6}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v1, p0, Lcom/transsion/camera/featurelibs/media/codec/track/audio/AudioRecorder;->mAudioRecord:Landroid/media/AudioRecord;

    .line 74
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/BaseTrackRecorder;->mMediaEncoder:Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;

    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;->prepare()V

    return-void
.end method

.method public declared-synchronized release()V
    .registers 3

    monitor-enter p0

    .line 131
    :try_start_1
    invoke-super {p0}, Lcom/transsion/camera/featurelibs/media/codec/base/BaseMediaWorker;->release()V

    .line 132
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/BaseTrackRecorder;->mMediaEncoder:Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;

    invoke-virtual {v0}, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;->release()V

    const/4 v0, 0x0

    .line 133
    iput-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/BaseTrackRecorder;->mMediaEncoder:Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;

    .line 134
    iget-object v1, p0, Lcom/transsion/camera/featurelibs/media/codec/track/audio/AudioRecorder;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v1, :cond_18

    .line 135
    invoke-virtual {v1}, Landroid/media/AudioRecord;->release()V

    .line 136
    iput-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/audio/AudioRecorder;->mAudioRecord:Landroid/media/AudioRecord;
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_16

    goto :goto_18

    :catchall_16
    move-exception v0

    goto :goto_1a

    .line 138
    :cond_18
    :goto_18
    monitor-exit p0

    return-void

    :goto_1a
    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_16

    throw v0
.end method

.method public declared-synchronized reset()V
    .registers 2

    monitor-enter p0

    .line 119
    :try_start_1
    invoke-super {p0}, Lcom/transsion/camera/featurelibs/media/codec/base/BaseMediaWorker;->reset()V

    .line 120
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/BaseTrackRecorder;->mMediaEncoder:Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;

    if-eqz v0, :cond_e

    .line 121
    invoke-virtual {v0}, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;->reset()V

    goto :goto_e

    :catchall_c
    move-exception v0

    goto :goto_1a

    .line 123
    :cond_e
    :goto_e
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/audio/AudioRecorder;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_18

    .line 124
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    const/4 v0, 0x0

    .line 125
    iput-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/audio/AudioRecorder;->mAudioRecord:Landroid/media/AudioRecord;
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_c

    .line 127
    :cond_18
    monitor-exit p0

    return-void

    :goto_1a
    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_c

    throw v0
.end method

.method public declared-synchronized resume()V
    .registers 3

    monitor-enter p0

    .line 105
    :try_start_1
    invoke-super {p0}, Lcom/transsion/camera/featurelibs/media/codec/base/BaseMediaWorker;->resume()V

    .line 106
    sget-object v0, Lcom/transsion/camera/featurelibs/media/codec/track/audio/AudioRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "resume"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/BaseTrackRecorder;->mMediaEncoder:Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;

    invoke-virtual {v0}, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;->resume()V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 108
    monitor-exit p0

    return-void

    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public declared-synchronized start()V
    .registers 4

    monitor-enter p0

    .line 79
    :try_start_1
    invoke-super {p0}, Lcom/transsion/camera/featurelibs/media/codec/base/BaseMediaWorker;->start()V

    .line 80
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/audio/AudioRecorder;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/BaseTrackRecorder;->mMediaEncoder:Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;

    if-nez v0, :cond_d

    goto :goto_19

    .line 84
    :cond_d
    invoke-virtual {v0}, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;->start()V

    .line 85
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/audio/AudioRecorder;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    .line 86
    monitor-exit p0

    return-void

    :catchall_17
    move-exception v0

    goto :goto_3d

    .line 81
    :cond_19
    :goto_19
    :try_start_19
    sget-object v0, Lcom/transsion/camera/featurelibs/media/codec/track/audio/AudioRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start failed, mAudioRecord: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/featurelibs/media/codec/track/audio/AudioRecorder;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mMediaEncoder: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/featurelibs/media/codec/track/BaseTrackRecorder;->mMediaEncoder:Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_3b
    .catchall {:try_start_19 .. :try_end_3b} :catchall_17

    .line 82
    monitor-exit p0

    return-void

    :goto_3d
    :try_start_3d
    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_17

    throw v0
.end method

.method public declared-synchronized stop()V
    .registers 5

    monitor-enter p0

    .line 90
    :try_start_1
    invoke-super {p0}, Lcom/transsion/camera/featurelibs/media/codec/base/BaseMediaWorker;->stop()V

    .line 91
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/audio/AudioRecorder;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/BaseTrackRecorder;->mMediaEncoder:Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_16

    if-nez v0, :cond_d

    goto :goto_35

    .line 96
    :cond_d
    :try_start_d
    invoke-virtual {v0}, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;->stop()V

    .line 97
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/audio/AudioRecorder;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V
    :try_end_15
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_15} :catch_18
    .catchall {:try_start_d .. :try_end_15} :catchall_16

    goto :goto_33

    :catchall_16
    move-exception v0

    goto :goto_59

    :catch_18
    move-exception v0

    .line 99
    :try_start_19
    sget-object v1, Lcom/transsion/camera/featurelibs/media/codec/track/audio/AudioRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stop "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_33
    .catchall {:try_start_19 .. :try_end_33} :catchall_16

    .line 101
    :goto_33
    monitor-exit p0

    return-void

    .line 92
    :cond_35
    :goto_35
    :try_start_35
    sget-object v0, Lcom/transsion/camera/featurelibs/media/codec/track/audio/AudioRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop failed, mAudioRecord: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/featurelibs/media/codec/track/audio/AudioRecorder;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mMediaEncoder: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/featurelibs/media/codec/track/BaseTrackRecorder;->mMediaEncoder:Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_57
    .catchall {:try_start_35 .. :try_end_57} :catchall_16

    .line 93
    monitor-exit p0

    return-void

    :goto_59
    :try_start_59
    monitor-exit p0
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_16

    throw v0
.end method
