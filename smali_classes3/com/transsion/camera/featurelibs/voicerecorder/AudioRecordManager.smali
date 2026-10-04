.class public Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAudioRecord:Landroid/media/AudioRecord;

.field private mBuffer:[B

.field private mConfig:Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 22
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ARMag"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createAudioRecord()Z
    .registers 12

    .line 132
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordManager;->mConfig:Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 135
    :cond_6
    iget v2, v0, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig;->bufferSize:I

    .line 136
    iget v3, v0, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig;->sampleRate:I

    iget v4, v0, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig;->audioChannels:I

    iget v0, v0, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig;->audioFormat:I

    invoke-static {v3, v4, v0}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    if-ge v2, v0, :cond_16

    move v8, v0

    goto :goto_17

    :cond_16
    move v8, v2

    .line 140
    :goto_17
    sget-object v0, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createAudioRecord: audio recorder buffer size to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    move v2, v1

    .line 141
    :goto_2e
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordManager;->mConfig:Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig;

    iget v0, v0, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig;->maxRetry:I

    if-ge v2, v0, :cond_8e

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 143
    :try_start_36
    new-instance v3, Landroid/media/AudioRecord;

    iget-object v0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordManager;->mConfig:Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig;

    iget v4, v0, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig;->audioSource:I

    iget v5, v0, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig;->sampleRate:I

    iget v6, v0, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig;->audioChannels:I

    iget v7, v0, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig;->audioFormat:I

    invoke-direct/range {v3 .. v8}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v3, p0, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordManager;->mAudioRecord:Landroid/media/AudioRecord;

    .line 145
    invoke-virtual {v3}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-ne v0, v10, :cond_66

    .line 146
    sget-object v0, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createAudioRecord: create AudioRecord ok, retry="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v10

    :catch_64
    move-exception v0

    goto :goto_6e

    .line 149
    :cond_66
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordManager;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 150
    iput-object v9, p0, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordManager;->mAudioRecord:Landroid/media/AudioRecord;
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_6d} :catch_64

    goto :goto_7e

    .line 152
    :goto_6e
    sget-object v3, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v4, "createAudioRecord: create AudioRecord exception"

    invoke-static {v3, v4, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 153
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordManager;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_7e

    .line 154
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 155
    iput-object v9, p0, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordManager;->mAudioRecord:Landroid/media/AudioRecord;

    .line 158
    :cond_7e
    :goto_7e
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordManager;->mConfig:Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig;

    iget v3, v0, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig;->maxRetry:I

    sub-int/2addr v3, v10

    if-ge v2, v3, :cond_8b

    .line 159
    iget v0, v0, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig;->retryIntervalMs:I

    int-to-long v3, v0

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    :cond_8b
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    .line 162
    :cond_8e
    sget-object p0, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "createAudioRecord: failed to create AudioRecord after retry"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1
.end method


# virtual methods
.method public declared-synchronized prepare(Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig;)Z
    .registers 5

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_f

    .line 35
    :try_start_4
    sget-object p1, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "prepare: config is null"

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_d

    .line 36
    monitor-exit p0

    return v0

    :catchall_d
    move-exception p1

    goto :goto_3e

    .line 38
    :cond_f
    :try_start_f
    iget-object v1, p0, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordManager;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v1, :cond_1c

    .line 39
    sget-object p1, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "prepare: already prepared, release first"

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_f .. :try_end_1a} :catchall_d

    .line 40
    monitor-exit p0

    return v0

    .line 42
    :cond_1c
    :try_start_1c
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordManager;->mConfig:Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig;

    .line 43
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordManager;->createAudioRecord()Z

    move-result p1
    :try_end_22
    .catchall {:try_start_1c .. :try_end_22} :catchall_d

    if-nez p1, :cond_26

    .line 44
    monitor-exit p0

    return v0

    .line 46
    :cond_26
    :try_start_26
    iget-object p1, p0, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordManager;->mConfig:Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig;

    iget v0, p1, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig;->bufferSize:I

    .line 47
    iget v1, p1, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig;->sampleRate:I

    iget v2, p1, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig;->audioChannels:I

    iget p1, p1, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig;->audioFormat:I

    invoke-static {v1, v2, p1}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result p1

    if-ge v0, p1, :cond_37

    move v0, p1

    .line 51
    :cond_37
    new-array p1, v0, [B

    iput-object p1, p0, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordManager;->mBuffer:[B
    :try_end_3b
    .catchall {:try_start_26 .. :try_end_3b} :catchall_d

    .line 52
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :goto_3e
    :try_start_3e
    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_d

    throw p1
.end method

.method public declared-synchronized release()V
    .registers 5

    monitor-enter p0

    .line 113
    :try_start_1
    sget-object v0, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "release: start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordManager;->mAudioRecord:Landroid/media/AudioRecord;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_1a

    const/4 v1, 0x0

    if-eqz v0, :cond_2d

    .line 116
    :try_start_d
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1e

    .line 117
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordManager;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    goto :goto_1e

    :catchall_1a
    move-exception v0

    goto :goto_3a

    :catch_1c
    move-exception v0

    goto :goto_24

    .line 119
    :cond_1e
    :goto_1e
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordManager;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_23} :catch_1c
    .catchall {:try_start_d .. :try_end_23} :catchall_1a

    goto :goto_2b

    .line 121
    :goto_24
    :try_start_24
    sget-object v2, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "release: exception"

    invoke-static {v2, v3, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 123
    :goto_2b
    iput-object v1, p0, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordManager;->mAudioRecord:Landroid/media/AudioRecord;

    .line 125
    :cond_2d
    iput-object v1, p0, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordManager;->mBuffer:[B

    .line 126
    iput-object v1, p0, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordManager;->mConfig:Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig;

    .line 127
    sget-object v0, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "release: end"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_38
    .catchall {:try_start_24 .. :try_end_38} :catchall_1a

    .line 128
    monitor-exit p0

    return-void

    :goto_3a
    :try_start_3a
    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_1a

    throw v0
.end method

.method public runReadLoop(Lcom/transsion/camera/featurelibs/voicerecorder/IAudioRecordListener;Ljava/util/function/BooleanSupplier;)V
    .registers 11

    .line 75
    const-string v0, "runReadLoop: runReadLoop exit"

    const-string v1, "runReadLoop: stop AudioRecord exception"

    iget-object v2, p0, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordManager;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v2, :cond_b2

    iget-object v2, p0, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordManager;->mBuffer:[B

    if-eqz v2, :cond_b2

    if-nez p1, :cond_10

    goto/16 :goto_b2

    .line 79
    :cond_10
    sget-object v2, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "runReadLoop: start, thread: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 80
    invoke-interface {p1}, Lcom/transsion/camera/featurelibs/voicerecorder/IAudioRecordListener;->onRecordStart()V

    :cond_31
    :goto_31
    const/4 v2, 0x3

    .line 82
    :try_start_32
    invoke-interface {p2}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v3
    :try_end_36
    .catchall {:try_start_32 .. :try_end_36} :catchall_4b

    if-eqz v3, :cond_74

    const/4 v3, 0x1

    .line 85
    :try_start_39
    iget-object v4, p0, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordManager;->mAudioRecord:Landroid/media/AudioRecord;

    iget-object v5, p0, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordManager;->mBuffer:[B

    array-length v6, v5

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7, v6, v7}, Landroid/media/AudioRecord;->read([BIII)I

    move-result v4
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_43} :catch_69
    .catchall {:try_start_39 .. :try_end_43} :catchall_4b

    if-lez v4, :cond_4d

    .line 92
    :try_start_45
    iget-object v3, p0, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordManager;->mBuffer:[B

    invoke-interface {p1, v3, v4}, Lcom/transsion/camera/featurelibs/voicerecorder/IAudioRecordListener;->onRecordData([BI)V

    goto :goto_31

    :catchall_4b
    move-exception p2

    goto :goto_93

    :cond_4d
    if-gez v4, :cond_31

    .line 94
    sget-object p2, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "runReadLoop: Recording error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 95
    invoke-interface {p1, v3}, Lcom/transsion/camera/featurelibs/voicerecorder/IAudioRecordListener;->onRecordError(I)V

    goto :goto_74

    :catch_69
    move-exception p2

    .line 87
    sget-object v4, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v5, "runReadLoop: read exception"

    invoke-static {v4, v5, p2}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    invoke-interface {p1, v3}, Lcom/transsion/camera/featurelibs/voicerecorder/IAudioRecordListener;->onRecordError(I)V
    :try_end_74
    .catchall {:try_start_45 .. :try_end_74} :catchall_4b

    .line 100
    :cond_74
    :goto_74
    iget-object p2, p0, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordManager;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz p2, :cond_8a

    invoke-virtual {p2}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result p2

    if-ne p2, v2, :cond_8a

    .line 102
    :try_start_7e
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordManager;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {p0}, Landroid/media/AudioRecord;->stop()V
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_83} :catch_84

    goto :goto_8a

    :catch_84
    move-exception p0

    .line 104
    sget-object p2, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-static {p2, v1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 107
    :cond_8a
    :goto_8a
    invoke-interface {p1}, Lcom/transsion/camera/featurelibs/voicerecorder/IAudioRecordListener;->onRecordEnd()V

    .line 108
    sget-object p0, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 100
    :goto_93
    iget-object v3, p0, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordManager;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v3, :cond_a9

    invoke-virtual {v3}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v3

    if-ne v3, v2, :cond_a9

    .line 102
    :try_start_9d
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordManager;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {p0}, Landroid/media/AudioRecord;->stop()V
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_a2} :catch_a3

    goto :goto_a9

    :catch_a3
    move-exception p0

    .line 104
    sget-object v2, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-static {v2, v1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 107
    :cond_a9
    :goto_a9
    invoke-interface {p1}, Lcom/transsion/camera/featurelibs/voicerecorder/IAudioRecordListener;->onRecordEnd()V

    .line 108
    sget-object p0, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 109
    throw p2

    .line 76
    :cond_b2
    :goto_b2
    sget-object p0, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "runReadLoop: not prepared or listener null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized startRecording()Z
    .registers 5

    monitor-enter p0

    .line 56
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordManager;->mAudioRecord:Landroid/media/AudioRecord;

    const/4 v1, 0x0

    if-nez v0, :cond_11

    .line 57
    sget-object v0, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "startRecording: not prepared"

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 58
    monitor-exit p0

    return v1

    :catchall_f
    move-exception v0

    goto :goto_3a

    .line 60
    :cond_11
    :try_start_11
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ne v0, v2, :cond_22

    .line 61
    sget-object v0, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "startRecording: already recording"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_20
    .catchall {:try_start_11 .. :try_end_20} :catchall_f

    .line 62
    monitor-exit p0

    return v3

    .line 65
    :cond_22
    :try_start_22
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordManager;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 66
    sget-object v0, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "startRecording: ok"

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_2e} :catch_30
    .catchall {:try_start_22 .. :try_end_2e} :catchall_f

    .line 67
    monitor-exit p0

    return v3

    :catch_30
    move-exception v0

    .line 69
    :try_start_31
    sget-object v2, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "startRecording: exception"

    invoke-static {v2, v3, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_38
    .catchall {:try_start_31 .. :try_end_38} :catchall_f

    .line 70
    monitor-exit p0

    return v1

    :goto_3a
    :try_start_3a
    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_f

    throw v0
.end method
