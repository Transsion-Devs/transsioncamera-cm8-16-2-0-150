.class public Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mAudioEncoder:Lcom/transsion/camera/utils/encoder/MediaEncoder;

.field private mAudioFileEncoder:Lcom/transsion/camera/utils/encoder/MediaEncoder;

.field private mEncoderCount:I

.field mEncoderLock:Ljava/lang/Object;

.field private mInited:Z

.field private volatile mIsStarted:Z

.field private final mMediaMuxer:Landroid/media/MediaMuxer;

.field private mStatredCount:I

.field private mVideoEncoder:Lcom/transsion/camera/utils/encoder/MediaEncoder;


# direct methods
.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .registers 4

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mInited:Z

    .line 22
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mEncoderLock:Ljava/lang/Object;

    .line 30
    new-instance v1, Landroid/media/MediaMuxer;

    invoke-direct {v1, p1, v0}, Landroid/media/MediaMuxer;-><init>(Ljava/io/FileDescriptor;I)V

    iput-object v1, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mMediaMuxer:Landroid/media/MediaMuxer;

    .line 31
    iput v0, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mStatredCount:I

    iput v0, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mEncoderCount:I

    .line 32
    iput-boolean v0, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mIsStarted:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mInited:Z

    .line 22
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mEncoderLock:Ljava/lang/Object;

    .line 36
    new-instance v1, Landroid/media/MediaMuxer;

    invoke-direct {v1, p1, v0}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mMediaMuxer:Landroid/media/MediaMuxer;

    .line 37
    iput v0, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mStatredCount:I

    iput v0, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mEncoderCount:I

    .line 38
    iput-boolean v0, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mIsStarted:Z

    return-void
.end method

.method private unLock()V
    .registers 2

    .line 207
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mEncoderLock:Ljava/lang/Object;

    monitor-enter v0

    .line 208
    :try_start_3
    iget-object p0, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mEncoderLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 209
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method


# virtual methods
.method addEncoder(Lcom/transsion/camera/utils/encoder/MediaEncoder;)V
    .registers 5

    .line 100
    instance-of v0, p1, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;

    const-string v1, "Video encoder already added."

    if-eqz v0, :cond_13

    .line 101
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mVideoEncoder:Lcom/transsion/camera/utils/encoder/MediaEncoder;

    if-nez v0, :cond_d

    .line 103
    iput-object p1, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mVideoEncoder:Lcom/transsion/camera/utils/encoder/MediaEncoder;

    goto :goto_1d

    .line 102
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 104
    :cond_13
    instance-of v0, p1, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;

    if-eqz v0, :cond_3d

    .line 105
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mAudioEncoder:Lcom/transsion/camera/utils/encoder/MediaEncoder;

    if-nez v0, :cond_37

    .line 107
    iput-object p1, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mAudioEncoder:Lcom/transsion/camera/utils/encoder/MediaEncoder;

    .line 114
    :goto_1d
    iget-object p1, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mVideoEncoder:Lcom/transsion/camera/utils/encoder/MediaEncoder;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_25

    move p1, v1

    goto :goto_26

    :cond_25
    move p1, v0

    :goto_26
    iget-object v2, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mAudioEncoder:Lcom/transsion/camera/utils/encoder/MediaEncoder;

    if-eqz v2, :cond_2c

    move v2, v1

    goto :goto_2d

    :cond_2c
    move v2, v0

    :goto_2d
    add-int/2addr p1, v2

    iget-object v2, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mAudioFileEncoder:Lcom/transsion/camera/utils/encoder/MediaEncoder;

    if-eqz v2, :cond_33

    move v0, v1

    :cond_33
    add-int/2addr p1, v0

    iput p1, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mEncoderCount:I

    return-void

    .line 106
    :cond_37
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 113
    :cond_3d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unsupported encoder"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method declared-synchronized addTrack(Landroid/media/MediaFormat;)I
    .registers 6

    monitor-enter p0

    .line 175
    :try_start_1
    iget-boolean v0, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mIsStarted:Z

    if-nez v0, :cond_37

    .line 177
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0, p1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v0

    .line 179
    const-string v1, "MediaMuxerWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addTrack:trackNum="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mEncoderCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",trackIx="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",format="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_35

    .line 180
    monitor-exit p0

    return v0

    :catchall_35
    move-exception p1

    goto :goto_3f

    .line 176
    :cond_37
    :try_start_37
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "muxer already started"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 180
    :goto_3f
    monitor-exit p0
    :try_end_40
    .catchall {:try_start_37 .. :try_end_40} :catchall_35

    throw p1
.end method

.method enCoderLock()V
    .registers 2

    .line 197
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mEncoderLock:Ljava/lang/Object;

    monitor-enter v0

    .line 199
    :try_start_3
    iget-object p0, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mEncoderLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_8} :catch_b
    .catchall {:try_start_3 .. :try_end_8} :catchall_9

    goto :goto_f

    :catchall_9
    move-exception p0

    goto :goto_11

    :catch_b
    move-exception p0

    .line 201
    :try_start_c
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 203
    :goto_f
    monitor-exit v0

    return-void

    :goto_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_9

    throw p0
.end method

.method public declared-synchronized isStarted()Z
    .registers 4

    monitor-enter p0

    .line 90
    :try_start_1
    const-string v0, "MediaMuxerWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isStarted : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mIsStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mInited="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mInited:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-boolean v0, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mIsStarted:Z

    if-eqz v0, :cond_2f

    iget-boolean v0, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mInited:Z
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2d

    if-eqz v0, :cond_2f

    const/4 v0, 0x1

    goto :goto_30

    :catchall_2d
    move-exception v0

    goto :goto_32

    :cond_2f
    const/4 v0, 0x0

    :goto_30
    monitor-exit p0

    return v0

    :goto_32
    :try_start_32
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_2d

    throw v0
.end method

.method public declared-synchronized pauseRecording()V
    .registers 2

    monitor-enter p0

    .line 60
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mVideoEncoder:Lcom/transsion/camera/utils/encoder/MediaEncoder;

    if-eqz v0, :cond_b

    .line 61
    invoke-virtual {v0}, Lcom/transsion/camera/utils/encoder/MediaEncoder;->pauseRecording()V

    goto :goto_b

    :catchall_9
    move-exception v0

    goto :goto_1b

    .line 62
    :cond_b
    :goto_b
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mAudioEncoder:Lcom/transsion/camera/utils/encoder/MediaEncoder;

    if-eqz v0, :cond_12

    .line 63
    invoke-virtual {v0}, Lcom/transsion/camera/utils/encoder/MediaEncoder;->pauseRecording()V

    .line 64
    :cond_12
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mAudioFileEncoder:Lcom/transsion/camera/utils/encoder/MediaEncoder;

    if-eqz v0, :cond_19

    .line 65
    invoke-virtual {v0}, Lcom/transsion/camera/utils/encoder/MediaEncoder;->pauseRecording()V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_9

    .line 66
    :cond_19
    monitor-exit p0

    return-void

    :goto_1b
    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_9

    throw v0
.end method

.method public prepare()V
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mVideoEncoder:Lcom/transsion/camera/utils/encoder/MediaEncoder;

    if-eqz v0, :cond_7

    .line 43
    invoke-virtual {v0}, Lcom/transsion/camera/utils/encoder/MediaEncoder;->prepare()V

    .line 44
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mAudioEncoder:Lcom/transsion/camera/utils/encoder/MediaEncoder;

    if-eqz v0, :cond_e

    .line 45
    invoke-virtual {v0}, Lcom/transsion/camera/utils/encoder/MediaEncoder;->prepare()V

    .line 46
    :cond_e
    iget-object p0, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mAudioFileEncoder:Lcom/transsion/camera/utils/encoder/MediaEncoder;

    if-eqz p0, :cond_15

    .line 47
    invoke-virtual {p0}, Lcom/transsion/camera/utils/encoder/MediaEncoder;->prepare()V

    :cond_15
    return-void
.end method

.method public declared-synchronized resumeRecording()V
    .registers 2

    monitor-enter p0

    .line 69
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mVideoEncoder:Lcom/transsion/camera/utils/encoder/MediaEncoder;

    if-eqz v0, :cond_b

    .line 70
    invoke-virtual {v0}, Lcom/transsion/camera/utils/encoder/MediaEncoder;->resumeRecording()V

    goto :goto_b

    :catchall_9
    move-exception v0

    goto :goto_1b

    .line 71
    :cond_b
    :goto_b
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mAudioEncoder:Lcom/transsion/camera/utils/encoder/MediaEncoder;

    if-eqz v0, :cond_12

    .line 72
    invoke-virtual {v0}, Lcom/transsion/camera/utils/encoder/MediaEncoder;->resumeRecording()V

    .line 73
    :cond_12
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mAudioFileEncoder:Lcom/transsion/camera/utils/encoder/MediaEncoder;

    if-eqz v0, :cond_19

    .line 74
    invoke-virtual {v0}, Lcom/transsion/camera/utils/encoder/MediaEncoder;->resumeRecording()V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_9

    .line 75
    :cond_19
    monitor-exit p0

    return-void

    :goto_1b
    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_9

    throw v0
.end method

.method public declared-synchronized setOrientationHint(I)V
    .registers 3

    monitor-enter p0

    .line 118
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mMediaMuxer:Landroid/media/MediaMuxer;

    if-eqz v0, :cond_b

    .line 119
    invoke-virtual {v0, p1}, Landroid/media/MediaMuxer;->setOrientationHint(I)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_9

    goto :goto_b

    :catchall_9
    move-exception p1

    goto :goto_d

    .line 121
    :cond_b
    :goto_b
    monitor-exit p0

    return-void

    :goto_d
    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_9

    throw p1
.end method

.method declared-synchronized start()Z
    .registers 4

    monitor-enter p0

    .line 130
    :try_start_1
    const-string v0, "MediaMuxerWrapper"

    const-string v1, "start:"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget v0, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mStatredCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mStatredCount:I

    .line 132
    iget v2, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mEncoderCount:I

    if-lez v2, :cond_32

    if-ne v0, v2, :cond_32

    .line 133
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->start()V

    .line 134
    iput-boolean v1, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mIsStarted:Z

    .line 135
    const-string v0, "MediaMuxerWrapper"

    const-string v2, "start : unLock()"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-direct {p0}, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->unLock()V

    .line 137
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 138
    const-string v0, "MediaMuxerWrapper"

    const-string v2, "MediaMuxer started:"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32

    :catchall_30
    move-exception v0

    goto :goto_38

    .line 140
    :cond_32
    :goto_32
    iput-boolean v1, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mInited:Z

    .line 141
    iget-boolean v0, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mIsStarted:Z
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_30

    monitor-exit p0

    return v0

    :goto_38
    :try_start_38
    monitor-exit p0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_30

    throw v0
.end method

.method public declared-synchronized startRecording()V
    .registers 2

    monitor-enter p0

    .line 51
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mVideoEncoder:Lcom/transsion/camera/utils/encoder/MediaEncoder;

    if-eqz v0, :cond_b

    .line 52
    invoke-virtual {v0}, Lcom/transsion/camera/utils/encoder/MediaEncoder;->startRecording()V

    goto :goto_b

    :catchall_9
    move-exception v0

    goto :goto_1b

    .line 53
    :cond_b
    :goto_b
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mAudioEncoder:Lcom/transsion/camera/utils/encoder/MediaEncoder;

    if-eqz v0, :cond_12

    .line 54
    invoke-virtual {v0}, Lcom/transsion/camera/utils/encoder/MediaEncoder;->startRecording()V

    .line 55
    :cond_12
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mAudioFileEncoder:Lcom/transsion/camera/utils/encoder/MediaEncoder;

    if-eqz v0, :cond_19

    .line 56
    invoke-virtual {v0}, Lcom/transsion/camera/utils/encoder/MediaEncoder;->startRecording()V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_9

    .line 57
    :cond_19
    monitor-exit p0

    return-void

    :goto_1b
    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_9

    throw v0
.end method

.method declared-synchronized stop()V
    .registers 6

    monitor-enter p0

    .line 149
    :try_start_1
    const-string v0, "MediaMuxerWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop:mStatredCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mStatredCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget v0, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mStatredCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mStatredCount:I

    .line 151
    const-string v0, "MediaMuxerWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mEncoderCount > 0 : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mEncoderCount:I

    const/4 v4, 0x0

    if-lez v3, :cond_32

    move v3, v1

    goto :goto_33

    :cond_32
    move v3, v4

    :goto_33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "mStatredCount <= 0 : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mStatredCount:I

    if-gtz v3, :cond_40

    goto :goto_41

    :cond_40
    move v1, v4

    :goto_41
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "mInited : "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mInited:Z

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget v0, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mEncoderCount:I

    if-lez v0, :cond_87

    iget v0, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mStatredCount:I

    if-gtz v0, :cond_87

    iget-boolean v0, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mInited:Z

    if-eqz v0, :cond_87

    .line 155
    iput-boolean v4, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mInited:Z

    .line 156
    iget-boolean v0, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mIsStarted:Z

    if-eqz v0, :cond_71

    .line 157
    iput-boolean v4, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mIsStarted:Z

    .line 158
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V

    goto :goto_71

    :catchall_6f
    move-exception v0

    goto :goto_89

    .line 160
    :cond_71
    :goto_71
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V

    .line 161
    const-string v0, "MediaMuxerWrapper"

    const-string v1, "MediaMuxer stopped : unLock()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-direct {p0}, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->unLock()V

    .line 163
    const-string v0, "MediaMuxerWrapper"

    const-string v1, "MediaMuxer stopped:"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_87
    .catchall {:try_start_1 .. :try_end_87} :catchall_6f

    .line 165
    :cond_87
    monitor-exit p0

    return-void

    :goto_89
    :try_start_89
    monitor-exit p0
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_6f

    throw v0
.end method

.method public declared-synchronized stopRecording()V
    .registers 3

    monitor-enter p0

    .line 78
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mVideoEncoder:Lcom/transsion/camera/utils/encoder/MediaEncoder;

    if-eqz v0, :cond_b

    .line 79
    invoke-virtual {v0}, Lcom/transsion/camera/utils/encoder/MediaEncoder;->stopRecording()V

    goto :goto_b

    :catchall_9
    move-exception v0

    goto :goto_22

    :cond_b
    :goto_b
    const/4 v0, 0x0

    .line 80
    iput-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mVideoEncoder:Lcom/transsion/camera/utils/encoder/MediaEncoder;

    .line 81
    iget-object v1, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mAudioEncoder:Lcom/transsion/camera/utils/encoder/MediaEncoder;

    if-eqz v1, :cond_15

    .line 82
    invoke-virtual {v1}, Lcom/transsion/camera/utils/encoder/MediaEncoder;->stopRecording()V

    .line 83
    :cond_15
    iput-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mAudioEncoder:Lcom/transsion/camera/utils/encoder/MediaEncoder;

    .line 84
    iget-object v1, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mAudioFileEncoder:Lcom/transsion/camera/utils/encoder/MediaEncoder;

    if-eqz v1, :cond_1e

    .line 85
    invoke-virtual {v1}, Lcom/transsion/camera/utils/encoder/MediaEncoder;->stopRecording()V

    .line 86
    :cond_1e
    iput-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mAudioFileEncoder:Lcom/transsion/camera/utils/encoder/MediaEncoder;
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_9

    .line 87
    monitor-exit p0

    return-void

    :goto_22
    :try_start_22
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_9

    throw v0
.end method

.method declared-synchronized writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .registers 5

    monitor-enter p0

    .line 192
    :try_start_1
    iget v0, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mStatredCount:I

    if-lez v0, :cond_d

    .line 193
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_b

    goto :goto_d

    :catchall_b
    move-exception p1

    goto :goto_f

    .line 194
    :cond_d
    :goto_d
    monitor-exit p0

    return-void

    :goto_f
    :try_start_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_b

    throw p1
.end method
