.class public Lorg/libsdl/app/BufferedAudioRecorder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/libsdl/app/BufferedAudioRecorder$AudioRecorderRunnable;,
        Lorg/libsdl/app/BufferedAudioRecorder$RecordingState;
    }
.end annotation


# static fields
.field protected static channelConfigOffset:I = 0x0

.field protected static channelConfigSuggested:[I = null

.field protected static sampleRateOffset:I = -0x1

.field protected static sampleRateSuggested:[I


# instance fields
.field audio:Landroid/media/AudioRecord;

.field final audioFormat:I

.field private audioMonitor:Lcom/ss/android/medialib/presenter/VEAudioMonitor;

.field audioSource:I

.field bufferSizeInBytes:I

.field channelConfig:I

.field private final encodeBitRate:I

.field private final encodeChannels:I

.field private final encodeSampleRate:I

.field isRecording:Z

.field isStopPCMCallback:Z

.field isStopped:Z

.field private mAudioRecordStartTime:J

.field private mEnableMicBgmDelayOpt:Z

.field private mMicRestartCount:I

.field private mMicStartInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

.field private mMicState:I

.field mProcessThread:Lcom/ss/android/medialib/audio/AudioDataProcessThread;

.field private mRecordingState:Lorg/libsdl/app/BufferedAudioRecorder$RecordingState;

.field private mStateCallback:Lcom/ss/android/medialib/presenter/MediaRecordPresenter$AudioRecordStateCallack;

.field presenter:Lorg/libsdl/app/AudioRecorderInterfaceExt;

.field sampleRateInHz:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/16 v0, 0x3e80

    const/16 v1, 0x5622

    const v2, 0xac44

    const/16 v3, 0x1f40

    const/16 v4, 0x2b11

    .line 38
    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lorg/libsdl/app/BufferedAudioRecorder;->sampleRateSuggested:[I

    const/4 v0, -0x1

    .line 39
    sput v0, Lorg/libsdl/app/BufferedAudioRecorder;->channelConfigOffset:I

    const/16 v0, 0x10

    const/4 v1, 0x1

    const/16 v2, 0xc

    .line 40
    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lorg/libsdl/app/BufferedAudioRecorder;->channelConfigSuggested:[I

    return-void
.end method

.method public constructor <init>(Lorg/libsdl/app/AudioRecorderInterfaceExt;IIILcom/ss/android/medialib/presenter/VEAudioMonitor;)V
    .registers 9

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lorg/libsdl/app/BufferedAudioRecorder;->mMicState:I

    const/4 v1, -0x1

    .line 46
    iput v1, p0, Lorg/libsdl/app/BufferedAudioRecorder;->sampleRateInHz:I

    .line 47
    iput v0, p0, Lorg/libsdl/app/BufferedAudioRecorder;->bufferSizeInBytes:I

    .line 48
    iput v1, p0, Lorg/libsdl/app/BufferedAudioRecorder;->channelConfig:I

    const/4 v1, 0x2

    .line 49
    iput v1, p0, Lorg/libsdl/app/BufferedAudioRecorder;->audioFormat:I

    .line 51
    iput-boolean v0, p0, Lorg/libsdl/app/BufferedAudioRecorder;->isRecording:Z

    .line 54
    iput-boolean v0, p0, Lorg/libsdl/app/BufferedAudioRecorder;->isStopped:Z

    .line 55
    iput-boolean v0, p0, Lorg/libsdl/app/BufferedAudioRecorder;->isStopPCMCallback:Z

    const/4 v1, 0x1

    .line 56
    iput v1, p0, Lorg/libsdl/app/BufferedAudioRecorder;->audioSource:I

    const-wide/16 v1, 0x0

    .line 59
    iput-wide v1, p0, Lorg/libsdl/app/BufferedAudioRecorder;->mAudioRecordStartTime:J

    const/16 v1, 0xa

    .line 66
    iput v1, p0, Lorg/libsdl/app/BufferedAudioRecorder;->mMicRestartCount:I

    .line 67
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lorg/libsdl/app/BufferedAudioRecorder;->mMicStartInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 75
    new-instance v1, Lorg/libsdl/app/BufferedAudioRecorder$RecordingState;

    invoke-direct {v1, p0}, Lorg/libsdl/app/BufferedAudioRecorder$RecordingState;-><init>(Lorg/libsdl/app/BufferedAudioRecorder;)V

    iput-object v1, p0, Lorg/libsdl/app/BufferedAudioRecorder;->mRecordingState:Lorg/libsdl/app/BufferedAudioRecorder$RecordingState;

    .line 76
    iput-boolean v0, p0, Lorg/libsdl/app/BufferedAudioRecorder;->mEnableMicBgmDelayOpt:Z

    .line 102
    iput-object p1, p0, Lorg/libsdl/app/BufferedAudioRecorder;->presenter:Lorg/libsdl/app/AudioRecorderInterfaceExt;

    .line 103
    iput p2, p0, Lorg/libsdl/app/BufferedAudioRecorder;->encodeSampleRate:I

    .line 104
    iput p3, p0, Lorg/libsdl/app/BufferedAudioRecorder;->encodeChannels:I

    .line 105
    iput p4, p0, Lorg/libsdl/app/BufferedAudioRecorder;->encodeBitRate:I

    .line 106
    iput-object p5, p0, Lorg/libsdl/app/BufferedAudioRecorder;->audioMonitor:Lcom/ss/android/medialib/presenter/VEAudioMonitor;

    .line 107
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object p1

    const-string p2, "ve_enable_bgm_mic_delay_opt"

    invoke-virtual {p1, p2, v0}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lorg/libsdl/app/BufferedAudioRecorder;->mEnableMicBgmDelayOpt:Z

    .line 108
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "enable_bgm_mic_delay_opt: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lorg/libsdl/app/BufferedAudioRecorder;->mEnableMicBgmDelayOpt:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BufferedAudioRecorder"

    invoke-static {p1, p0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lorg/libsdl/app/BufferedAudioRecorder;)J
    .registers 3

    .line 26
    iget-wide v0, p0, Lorg/libsdl/app/BufferedAudioRecorder;->mAudioRecordStartTime:J

    return-wide v0
.end method

.method static synthetic access$002(Lorg/libsdl/app/BufferedAudioRecorder;J)J
    .registers 3

    .line 26
    iput-wide p1, p0, Lorg/libsdl/app/BufferedAudioRecorder;->mAudioRecordStartTime:J

    return-wide p1
.end method

.method static synthetic access$100(Lorg/libsdl/app/BufferedAudioRecorder;)Z
    .registers 1

    .line 26
    iget-boolean p0, p0, Lorg/libsdl/app/BufferedAudioRecorder;->mEnableMicBgmDelayOpt:Z

    return p0
.end method

.method private buildInfoJSONObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 6

    .line 653
    const-string p0, ""

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 655
    :try_start_7
    const-string v1, "oldState"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 656
    const-string v1, "newState"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 657
    const-string p0, "error"

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 658
    const-string p0, "startTime"

    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 659
    const-string p0, "endTime"

    invoke-virtual {v0, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_20
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_20} :catch_21

    return-object v0

    :catch_21
    move-exception p0

    .line 662
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method private collectStartMicInfo(IIJ)V
    .registers 8

    .line 456
    iget-object v0, p0, Lorg/libsdl/app/BufferedAudioRecorder;->mMicStartInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "micStartRet"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    iget-object p0, p0, Lorg/libsdl/app/BufferedAudioRecorder;->mMicStartInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "micStartCost"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private innerStartRecording(DZ)Z
    .registers 9

    const/4 v0, 0x0

    .line 363
    iput-boolean v0, p0, Lorg/libsdl/app/BufferedAudioRecorder;->isStopped:Z

    .line 364
    iput-boolean v0, p0, Lorg/libsdl/app/BufferedAudioRecorder;->isStopPCMCallback:Z

    .line 366
    new-instance v1, Lcom/ss/android/medialib/audio/AudioDataProcessThread;

    iget-object v2, p0, Lorg/libsdl/app/BufferedAudioRecorder;->presenter:Lorg/libsdl/app/AudioRecorderInterfaceExt;

    invoke-direct {v1, v2, v2}, Lcom/ss/android/medialib/audio/AudioDataProcessThread;-><init>(Lorg/libsdl/app/AudioRecorderInterface;Lcom/ss/android/medialib/audio/AudioDataProcessThread$OnProcessDataListener;)V

    iput-object v1, p0, Lorg/libsdl/app/BufferedAudioRecorder;->mProcessThread:Lcom/ss/android/medialib/audio/AudioDataProcessThread;

    .line 367
    invoke-virtual {v1}, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->start()V

    if-eqz p3, :cond_20

    .line 369
    iget-object p3, p0, Lorg/libsdl/app/BufferedAudioRecorder;->mProcessThread:Lcom/ss/android/medialib/audio/AudioDataProcessThread;

    iget v1, p0, Lorg/libsdl/app/BufferedAudioRecorder;->sampleRateInHz:I

    iget v2, p0, Lorg/libsdl/app/BufferedAudioRecorder;->channelConfig:I

    invoke-virtual {p0, v2}, Lorg/libsdl/app/BufferedAudioRecorder;->getChannelCount(I)I

    move-result v2

    invoke-virtual {p3, v1, v2, p1, p2}, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->startFeeding(IID)V

    .line 372
    :cond_20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 373
    invoke-direct {p0}, Lorg/libsdl/app/BufferedAudioRecorder;->startMic()I

    move-result p3

    .line 374
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p1

    invoke-direct {p0, v0, p3, v1, v2}, Lorg/libsdl/app/BufferedAudioRecorder;->collectStartMicInfo(IIJ)V

    if-eqz p3, :cond_6e

    move p1, v0

    .line 377
    :goto_33
    iget p2, p0, Lorg/libsdl/app/BufferedAudioRecorder;->mMicRestartCount:I

    if-ge p1, p2, :cond_6e

    .line 378
    iget-object p2, p0, Lorg/libsdl/app/BufferedAudioRecorder;->audio:Landroid/media/AudioRecord;

    if-nez p2, :cond_40

    .line 379
    iget p2, p0, Lorg/libsdl/app/BufferedAudioRecorder;->audioSource:I

    invoke-virtual {p0, p2}, Lorg/libsdl/app/BufferedAudioRecorder;->init(I)V

    .line 381
    :cond_40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    .line 382
    invoke-direct {p0}, Lorg/libsdl/app/BufferedAudioRecorder;->startMic()I

    move-result v1

    add-int/lit8 v2, p1, 0x1

    .line 383
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, p2

    invoke-direct {p0, v2, v1, v3, v4}, Lorg/libsdl/app/BufferedAudioRecorder;->collectStartMicInfo(IIJ)V

    if-eqz v1, :cond_6d

    .line 385
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "retry start mic times : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BufferedAudioRecorder"

    invoke-static {p2, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move p3, v1

    move p1, v2

    goto :goto_33

    :cond_6d
    move p3, v1

    .line 391
    :cond_6e
    iget-object p1, p0, Lorg/libsdl/app/BufferedAudioRecorder;->mMicStartInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "te_record_audio_mic_start_info"

    invoke-static {v0, p2, p1}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfString(ILjava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_8f

    .line 394
    iget-object p1, p0, Lorg/libsdl/app/BufferedAudioRecorder;->mMicStartInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 396
    iget-object p1, p0, Lorg/libsdl/app/BufferedAudioRecorder;->mStateCallback:Lcom/ss/android/medialib/presenter/MediaRecordPresenter$AudioRecordStateCallack;

    if-eqz p1, :cond_89

    const/16 p2, -0x25b

    .line 398
    invoke-interface {p1, p2}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$AudioRecordStateCallack;->onState(I)V

    .line 401
    :cond_89
    iget-object p0, p0, Lorg/libsdl/app/BufferedAudioRecorder;->presenter:Lorg/libsdl/app/AudioRecorderInterfaceExt;

    invoke-interface {p0, v0}, Lorg/libsdl/app/AudioRecorderInterface;->recordStatus(Z)V

    return v0

    .line 406
    :cond_8f
    iget-object p0, p0, Lorg/libsdl/app/BufferedAudioRecorder;->mStateCallback:Lcom/ss/android/medialib/presenter/MediaRecordPresenter$AudioRecordStateCallack;

    if-eqz p0, :cond_97

    const/4 p1, 0x3

    .line 407
    invoke-interface {p0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$AudioRecordStateCallack;->onState(I)V

    :cond_97
    const/4 p0, 0x1

    return p0
.end method

.method private declared-synchronized startMic()I
    .registers 7

    monitor-enter p0

    const/4 v0, 0x0

    .line 415
    :try_start_2
    iget-object v1, p0, Lorg/libsdl/app/BufferedAudioRecorder;->audio:Landroid/media/AudioRecord;

    const/4 v2, 0x1

    if-eqz v1, :cond_84

    invoke-virtual {v1}, Landroid/media/AudioRecord;->getState()I

    move-result v1

    if-eqz v1, :cond_84

    .line 416
    const-string v1, "will start mic"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-direct {p0, v1, v3, v4}, Lorg/libsdl/app/BufferedAudioRecorder;->buildInfoJSONObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 417
    const-string v3, "vesdk_event_will_start_mic"

    const-string v4, "behavior"

    invoke-static {v3, v1, v4}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 418
    iget-object v1, p0, Lorg/libsdl/app/BufferedAudioRecorder;->audio:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->startRecording()V

    .line 419
    const-string v1, "did start mic"

    const-string v3, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v3, v4}, Lorg/libsdl/app/BufferedAudioRecorder;->buildInfoJSONObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 420
    const-string v3, "vesdk_event_did_start_mic"

    const-string v4, "behavior"

    invoke-static {v3, v1, v4}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 421
    iget-object v1, p0, Lorg/libsdl/app/BufferedAudioRecorder;->audioMonitor:Lcom/ss/android/medialib/presenter/VEAudioMonitor;

    if-eqz v1, :cond_50

    .line 422
    iget-object v3, p0, Lorg/libsdl/app/BufferedAudioRecorder;->audio:Landroid/media/AudioRecord;

    const-string v4, "start success"

    invoke-virtual {v1, v3, v2, v0, v4}, Lcom/ss/android/medialib/presenter/VEAudioMonitor;->onInfo(Landroid/media/AudioRecord;IILjava/lang/String;)V

    goto :goto_50

    :catchall_4c
    move-exception v0

    goto :goto_b7

    :catch_4e
    move-exception v1

    goto :goto_92

    :cond_50
    :goto_50
    const/4 v1, 0x2

    .line 424
    iput v1, p0, Lorg/libsdl/app/BufferedAudioRecorder;->mMicState:I

    .line 431
    iget-object v1, p0, Lorg/libsdl/app/BufferedAudioRecorder;->audio:Landroid/media/AudioRecord;

    if-eqz v1, :cond_82

    .line 432
    invoke-virtual {v1}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_82

    .line 433
    const-string v1, "BufferedAudioRecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "audio starRecording failed! Stop immediately! cur status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/libsdl/app/BufferedAudioRecorder;->audio:Landroid/media/AudioRecord;

    .line 434
    invoke-virtual {v3}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 433
    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    invoke-virtual {p0}, Lorg/libsdl/app/BufferedAudioRecorder;->unInit()V

    .line 437
    iput v0, p0, Lorg/libsdl/app/BufferedAudioRecorder;->mMicState:I
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7f} :catch_4e
    .catchall {:try_start_2 .. :try_end_7f} :catchall_4c

    .line 438
    monitor-exit p0

    const/4 p0, -0x2

    return p0

    .line 452
    :cond_82
    monitor-exit p0

    return v0

    .line 426
    :cond_84
    :try_start_84
    iget-object v1, p0, Lorg/libsdl/app/BufferedAudioRecorder;->audioMonitor:Lcom/ss/android/medialib/presenter/VEAudioMonitor;

    const/4 v3, -0x1

    if-eqz v1, :cond_90

    .line 427
    iget-object v4, p0, Lorg/libsdl/app/BufferedAudioRecorder;->audio:Landroid/media/AudioRecord;

    const-string v5, "start failed"

    invoke-virtual {v1, v4, v2, v3, v5}, Lcom/ss/android/medialib/presenter/VEAudioMonitor;->onInfo(Landroid/media/AudioRecord;IILjava/lang/String;)V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_90} :catch_4e
    .catchall {:try_start_84 .. :try_end_90} :catchall_4c

    .line 429
    :cond_90
    monitor-exit p0

    return v3

    .line 442
    :goto_92
    :try_start_92
    iget-object v2, p0, Lorg/libsdl/app/BufferedAudioRecorder;->audio:Landroid/media/AudioRecord;

    if-eqz v2, :cond_99

    .line 443
    invoke-virtual {v2}, Landroid/media/AudioRecord;->release()V
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_99} :catch_99
    .catchall {:try_start_92 .. :try_end_99} :catchall_4c

    :catch_99
    :cond_99
    const/4 v2, 0x0

    .line 445
    :try_start_9a
    iput-object v2, p0, Lorg/libsdl/app/BufferedAudioRecorder;->audio:Landroid/media/AudioRecord;

    .line 446
    iput v0, p0, Lorg/libsdl/app/BufferedAudioRecorder;->mMicState:I

    .line 448
    const-string v0, "BufferedAudioRecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "audio recording failed!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b4
    .catchall {:try_start_9a .. :try_end_b4} :catchall_4c

    .line 449
    monitor-exit p0

    const/4 p0, -0x3

    return p0

    :goto_b7
    :try_start_b7
    monitor-exit p0
    :try_end_b8
    .catchall {:try_start_b7 .. :try_end_b8} :catchall_4c

    throw v0
.end method


# virtual methods
.method public attachRecordingObserver(Landroidx/lifecycle/Observer;)V
    .registers 2

    .line 668
    iget-object p0, p0, Lorg/libsdl/app/BufferedAudioRecorder;->mRecordingState:Lorg/libsdl/app/BufferedAudioRecorder$RecordingState;

    invoke-virtual {p0, p1}, Lorg/libsdl/app/BufferedAudioRecorder$RecordingState;->attach(Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method protected finalize()V
    .registers 6

    .line 121
    const-string v0, "behavior"

    const-string v1, ""

    iget-object v2, p0, Lorg/libsdl/app/BufferedAudioRecorder;->audio:Landroid/media/AudioRecord;

    if-eqz v2, :cond_47

    .line 123
    :try_start_8
    invoke-virtual {v2}, Landroid/media/AudioRecord;->getState()I

    move-result v2

    if-eqz v2, :cond_3c

    .line 124
    const-string v2, "finalize will stop mic"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3, v1}, Lorg/libsdl/app/BufferedAudioRecorder;->buildInfoJSONObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 125
    const-string v3, "vesdk_event_will_stop_mic"

    invoke-static {v3, v2, v0}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 126
    iget-object v2, p0, Lorg/libsdl/app/BufferedAudioRecorder;->audio:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->stop()V

    .line 127
    const-string v2, "finalize did stop mic"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v1, v3}, Lorg/libsdl/app/BufferedAudioRecorder;->buildInfoJSONObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 128
    const-string v2, "vesdk_event_did_stop_mic"

    invoke-static {v2, v1, v0}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    const/4 v0, 0x3

    .line 129
    iput v0, p0, Lorg/libsdl/app/BufferedAudioRecorder;->mMicState:I

    .line 131
    :cond_3c
    iget-object v0, p0, Lorg/libsdl/app/BufferedAudioRecorder;->audio:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_41} :catch_41

    :catch_41
    const/4 v0, 0x0

    .line 135
    iput-object v0, p0, Lorg/libsdl/app/BufferedAudioRecorder;->audio:Landroid/media/AudioRecord;

    const/4 v0, 0x0

    .line 136
    iput v0, p0, Lorg/libsdl/app/BufferedAudioRecorder;->mMicState:I

    .line 138
    :cond_47
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getChannelCount(I)I
    .registers 2

    const/16 p0, 0x10

    if-ne p0, p1, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x2

    return p0
.end method

.method public declared-synchronized getMicState()I
    .registers 2

    monitor-enter p0

    .line 116
    :try_start_1
    iget v0, p0, Lorg/libsdl/app/BufferedAudioRecorder;->mMicState:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public declared-synchronized init(I)V
    .registers 22

    move-object/from16 v1, p0

    move/from16 v3, p1

    monitor-enter p0

    .line 142
    :try_start_5
    const-string v0, "BufferedAudioRecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init audioSource: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iput v3, v1, Lorg/libsdl/app/BufferedAudioRecorder;->audioSource:I

    .line 144
    iget-object v0, v1, Lorg/libsdl/app/BufferedAudioRecorder;->audio:Landroid/media/AudioRecord;

    if-eqz v0, :cond_2d

    .line 145
    const-string v0, "BufferedAudioRecorder"

    const-string v2, "second time audio init(), skip"

    invoke-static {v0, v2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_2a

    .line 146
    monitor-exit p0

    return-void

    :catchall_2a
    move-exception v0

    goto/16 :goto_235

    :cond_2d
    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, -0x1

    .line 150
    :try_start_30
    sget v0, Lorg/libsdl/app/BufferedAudioRecorder;->channelConfigOffset:I

    if-eq v0, v10, :cond_8b

    sget v2, Lorg/libsdl/app/BufferedAudioRecorder;->sampleRateOffset:I

    if-eq v2, v10, :cond_8b

    .line 151
    sget-object v4, Lorg/libsdl/app/BufferedAudioRecorder;->channelConfigSuggested:[I

    aget v0, v4, v0

    iput v0, v1, Lorg/libsdl/app/BufferedAudioRecorder;->channelConfig:I

    .line 152
    sget-object v4, Lorg/libsdl/app/BufferedAudioRecorder;->sampleRateSuggested:[I

    aget v2, v4, v2

    iput v2, v1, Lorg/libsdl/app/BufferedAudioRecorder;->sampleRateInHz:I

    .line 154
    invoke-static {v2, v0, v9}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    iput v0, v1, Lorg/libsdl/app/BufferedAudioRecorder;->bufferSizeInBytes:I

    .line 158
    new-instance v2, Landroid/media/AudioRecord;

    iget v4, v1, Lorg/libsdl/app/BufferedAudioRecorder;->sampleRateInHz:I

    iget v5, v1, Lorg/libsdl/app/BufferedAudioRecorder;->channelConfig:I

    iget v7, v1, Lorg/libsdl/app/BufferedAudioRecorder;->bufferSizeInBytes:I

    const/4 v6, 0x2

    invoke-direct/range {v2 .. v7}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v2, v1, Lorg/libsdl/app/BufferedAudioRecorder;->audio:Landroid/media/AudioRecord;
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_58} :catch_59
    .catchall {:try_start_30 .. :try_end_58} :catchall_2a

    goto :goto_8b

    :catch_59
    move-exception v0

    .line 167
    :try_start_5a
    const-string v2, "BufferedAudioRecorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Use default configuration "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lorg/libsdl/app/BufferedAudioRecorder;->channelConfigOffset:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lorg/libsdl/app/BufferedAudioRecorder;->sampleRateOffset:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "Instantiation audio recorder failed, retest configuration. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iput-object v8, v1, Lorg/libsdl/app/BufferedAudioRecorder;->audio:Landroid/media/AudioRecord;

    .line 170
    iget-object v0, v1, Lorg/libsdl/app/BufferedAudioRecorder;->presenter:Lorg/libsdl/app/AudioRecorderInterfaceExt;

    invoke-interface {v0}, Lorg/libsdl/app/AudioRecorderInterface;->lackPermission()V

    .line 173
    :cond_8b
    :goto_8b
    iget-object v0, v1, Lorg/libsdl/app/BufferedAudioRecorder;->audio:Landroid/media/AudioRecord;

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-nez v0, :cond_17d

    .line 175
    sput v10, Lorg/libsdl/app/BufferedAudioRecorder;->channelConfigOffset:I

    .line 176
    sget-object v13, Lorg/libsdl/app/BufferedAudioRecorder;->channelConfigSuggested:[I

    array-length v14, v13

    move v15, v11

    move/from16 v16, v15

    :goto_99
    if-ge v15, v14, :cond_17d

    aget v0, v13, v15

    .line 178
    iput v0, v1, Lorg/libsdl/app/BufferedAudioRecorder;->channelConfig:I

    .line 179
    sget v0, Lorg/libsdl/app/BufferedAudioRecorder;->channelConfigOffset:I

    add-int/2addr v0, v12

    sput v0, Lorg/libsdl/app/BufferedAudioRecorder;->channelConfigOffset:I

    .line 181
    sput v10, Lorg/libsdl/app/BufferedAudioRecorder;->sampleRateOffset:I

    .line 183
    sget-object v2, Lorg/libsdl/app/BufferedAudioRecorder;->sampleRateSuggested:[I

    array-length v3, v2

    move v4, v11

    :goto_aa
    if-ge v4, v3, :cond_175

    aget v5, v2, v4

    .line 184
    sget v0, Lorg/libsdl/app/BufferedAudioRecorder;->sampleRateOffset:I

    add-int/2addr v0, v12

    sput v0, Lorg/libsdl/app/BufferedAudioRecorder;->sampleRateOffset:I
    :try_end_b3
    .catchall {:try_start_5a .. :try_end_b3} :catchall_2a

    .line 186
    :try_start_b3
    iget v0, v1, Lorg/libsdl/app/BufferedAudioRecorder;->channelConfig:I

    invoke-static {v5, v0, v9}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    iput v0, v1, Lorg/libsdl/app/BufferedAudioRecorder;->bufferSizeInBytes:I

    .line 189
    const-string v0, "BufferedAudioRecorder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Try hz  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lorg/libsdl/app/BufferedAudioRecorder;->channelConfig:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget v0, v1, Lorg/libsdl/app/BufferedAudioRecorder;->bufferSizeInBytes:I

    if-lez v0, :cond_134

    .line 192
    iput v5, v1, Lorg/libsdl/app/BufferedAudioRecorder;->sampleRateInHz:I
    :try_end_e9
    .catch Ljava/lang/Exception; {:try_start_b3 .. :try_end_e9} :catch_12b
    .catchall {:try_start_b3 .. :try_end_e9} :catchall_2a

    move-object v6, v2

    .line 195
    :try_start_ea
    new-instance v2, Landroid/media/AudioRecord;
    :try_end_ec
    .catch Ljava/lang/Exception; {:try_start_ea .. :try_end_ec} :catch_122
    .catchall {:try_start_ea .. :try_end_ec} :catchall_2a

    move v7, v4

    :try_start_ed
    iget v4, v1, Lorg/libsdl/app/BufferedAudioRecorder;->sampleRateInHz:I
    :try_end_ef
    .catch Ljava/lang/Exception; {:try_start_ed .. :try_end_ef} :catch_119
    .catchall {:try_start_ed .. :try_end_ef} :catchall_2a

    move/from16 v17, v5

    :try_start_f1
    iget v5, v1, Lorg/libsdl/app/BufferedAudioRecorder;->channelConfig:I
    :try_end_f3
    .catch Ljava/lang/Exception; {:try_start_f1 .. :try_end_f3} :catch_113
    .catchall {:try_start_f1 .. :try_end_f3} :catchall_2a

    move/from16 v18, v7

    :try_start_f5
    iget v7, v1, Lorg/libsdl/app/BufferedAudioRecorder;->bufferSizeInBytes:I
    :try_end_f7
    .catch Ljava/lang/Exception; {:try_start_f5 .. :try_end_f7} :catch_10b
    .catchall {:try_start_f5 .. :try_end_f7} :catchall_2a

    move-object/from16 v19, v6

    const/4 v6, 0x2

    move/from16 v9, v17

    move/from16 v17, v3

    move/from16 v3, p1

    :try_start_100
    invoke-direct/range {v2 .. v7}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v2, v1, Lorg/libsdl/app/BufferedAudioRecorder;->audio:Landroid/media/AudioRecord;

    move/from16 v16, v12

    goto/16 :goto_175

    :catch_109
    move-exception v0

    goto :goto_141

    :catch_10b
    move-exception v0

    move-object/from16 v19, v6

    :goto_10e
    move/from16 v9, v17

    move/from16 v17, v3

    goto :goto_141

    :catch_113
    move-exception v0

    move-object/from16 v19, v6

    move/from16 v18, v7

    goto :goto_10e

    :catch_119
    move-exception v0

    move/from16 v17, v3

    move v9, v5

    move-object/from16 v19, v6

    move/from16 v18, v7

    goto :goto_141

    :catch_122
    move-exception v0

    move/from16 v17, v3

    move/from16 v18, v4

    move v9, v5

    move-object/from16 v19, v6

    goto :goto_141

    :catch_12b
    move-exception v0

    move-object/from16 v19, v2

    move/from16 v17, v3

    move/from16 v18, v4

    move v9, v5

    goto :goto_141

    :cond_134
    move-object/from16 v19, v2

    move/from16 v17, v3

    move/from16 v18, v4

    move v9, v5

    .line 206
    sget v0, Lorg/libsdl/app/BufferedAudioRecorder;->sampleRateOffset:I

    add-int/2addr v0, v12

    sput v0, Lorg/libsdl/app/BufferedAudioRecorder;->sampleRateOffset:I
    :try_end_140
    .catch Ljava/lang/Exception; {:try_start_100 .. :try_end_140} :catch_109
    .catchall {:try_start_100 .. :try_end_140} :catchall_2a

    goto :goto_16c

    .line 209
    :goto_141
    :try_start_141
    iput v11, v1, Lorg/libsdl/app/BufferedAudioRecorder;->sampleRateInHz:I

    .line 210
    iput-object v8, v1, Lorg/libsdl/app/BufferedAudioRecorder;->audio:Landroid/media/AudioRecord;

    .line 211
    const-string v2, "BufferedAudioRecorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "apply audio record sample rate "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    sget v0, Lorg/libsdl/app/BufferedAudioRecorder;->sampleRateOffset:I

    add-int/2addr v0, v12

    sput v0, Lorg/libsdl/app/BufferedAudioRecorder;->sampleRateOffset:I

    :goto_16c
    add-int/lit8 v4, v18, 0x1

    move/from16 v3, v17

    move-object/from16 v2, v19

    const/4 v9, 0x2

    goto/16 :goto_aa

    :cond_175
    :goto_175
    if-eqz v16, :cond_178

    goto :goto_17d

    :cond_178
    add-int/lit8 v15, v15, 0x1

    const/4 v9, 0x2

    goto/16 :goto_99

    .line 222
    :cond_17d
    :goto_17d
    iget v3, v1, Lorg/libsdl/app/BufferedAudioRecorder;->sampleRateInHz:I

    if-gtz v3, :cond_1a6

    .line 223
    const-string v0, "BufferedAudioRecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!Init audio recorder failed, hz "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lorg/libsdl/app/BufferedAudioRecorder;->sampleRateInHz:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-object v0, v1, Lorg/libsdl/app/BufferedAudioRecorder;->audioMonitor:Lcom/ss/android/medialib/presenter/VEAudioMonitor;

    if-eqz v0, :cond_1a4

    .line 225
    iget-object v2, v1, Lorg/libsdl/app/BufferedAudioRecorder;->audio:Landroid/media/AudioRecord;

    const-string v3, "init failed, sampleRate error"

    invoke-virtual {v0, v2, v11, v10, v3}, Lcom/ss/android/medialib/presenter/VEAudioMonitor;->onInfo(Landroid/media/AudioRecord;IILjava/lang/String;)V
    :try_end_1a4
    .catchall {:try_start_141 .. :try_end_1a4} :catchall_2a

    .line 227
    :cond_1a4
    monitor-exit p0

    return-void

    .line 229
    :cond_1a6
    :try_start_1a6
    iget v0, v1, Lorg/libsdl/app/BufferedAudioRecorder;->channelConfig:I

    const/16 v2, 0x10

    if-ne v0, v2, :cond_1ae

    move v4, v12

    goto :goto_1af

    :cond_1ae
    const/4 v4, 0x2

    .line 230
    :goto_1af
    iget-object v2, v1, Lorg/libsdl/app/BufferedAudioRecorder;->presenter:Lorg/libsdl/app/AudioRecorderInterfaceExt;

    iget v5, v1, Lorg/libsdl/app/BufferedAudioRecorder;->encodeSampleRate:I

    iget v6, v1, Lorg/libsdl/app/BufferedAudioRecorder;->encodeChannels:I

    iget v7, v1, Lorg/libsdl/app/BufferedAudioRecorder;->encodeBitRate:I

    invoke-interface/range {v2 .. v7}, Lorg/libsdl/app/AudioRecorderInterfaceExt;->initAudioConfig(IIIII)I

    .line 232
    const-string v0, "BufferedAudioRecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Init audio recorder succeed, apply audio record sample rate "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lorg/libsdl/app/BufferedAudioRecorder;->sampleRateInHz:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " channels "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " buffer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lorg/libsdl/app/BufferedAudioRecorder;->bufferSizeInBytes:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    iget-object v3, v1, Lorg/libsdl/app/BufferedAudioRecorder;->audio:Landroid/media/AudioRecord;

    if-nez v3, :cond_1e8

    move v3, v10

    goto :goto_1ec

    :cond_1e8
    invoke-virtual {v3}, Landroid/media/AudioRecord;->getState()I

    move-result v3

    :goto_1ec
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " encodeSampleRate "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lorg/libsdl/app/BufferedAudioRecorder;->encodeSampleRate:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " encodeChannels "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lorg/libsdl/app/BufferedAudioRecorder;->encodeChannels:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 232
    invoke-static {v0, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iput v12, v1, Lorg/libsdl/app/BufferedAudioRecorder;->mMicState:I

    .line 239
    iget-object v0, v1, Lorg/libsdl/app/BufferedAudioRecorder;->audioMonitor:Lcom/ss/android/medialib/presenter/VEAudioMonitor;

    if-eqz v0, :cond_217

    .line 240
    iget-object v2, v1, Lorg/libsdl/app/BufferedAudioRecorder;->audio:Landroid/media/AudioRecord;

    const-string v3, "init success, audio recorder succeed"

    invoke-virtual {v0, v2, v11, v11, v3}, Lcom/ss/android/medialib/presenter/VEAudioMonitor;->onInfo(Landroid/media/AudioRecord;IILjava/lang/String;)V

    .line 243
    :cond_217
    iget-object v0, v1, Lorg/libsdl/app/BufferedAudioRecorder;->audio:Landroid/media/AudioRecord;

    if-eqz v0, :cond_233

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-nez v0, :cond_233

    .line 244
    iput-object v8, v1, Lorg/libsdl/app/BufferedAudioRecorder;->audio:Landroid/media/AudioRecord;

    .line 245
    iget-object v0, v1, Lorg/libsdl/app/BufferedAudioRecorder;->audioMonitor:Lcom/ss/android/medialib/presenter/VEAudioMonitor;

    if-eqz v0, :cond_22c

    .line 246
    const-string v2, "init failed, audio Recorder state at STATE_UNINITIALIZED"

    invoke-virtual {v0, v8, v11, v10, v2}, Lcom/ss/android/medialib/presenter/VEAudioMonitor;->onInfo(Landroid/media/AudioRecord;IILjava/lang/String;)V

    .line 248
    :cond_22c
    const-string v0, "BufferedAudioRecorder"

    const-string v2, "AudioRecord state at STATE_UNINITIALIZED! Will try init when start recording."

    invoke-static {v0, v2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_233
    .catchall {:try_start_1a6 .. :try_end_233} :catchall_2a

    .line 250
    :cond_233
    monitor-exit p0

    return-void

    :goto_235
    :try_start_235
    monitor-exit p0
    :try_end_236
    .catchall {:try_start_235 .. :try_end_236} :catchall_2a

    throw v0
.end method

.method public declared-synchronized isProcessing()Z
    .registers 2

    monitor-enter p0

    .line 640
    :try_start_1
    iget-object v0, p0, Lorg/libsdl/app/BufferedAudioRecorder;->mProcessThread:Lcom/ss/android/medialib/audio/AudioDataProcessThread;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->isProcessing()Z

    move-result v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_d

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :catchall_d
    move-exception v0

    goto :goto_12

    :cond_f
    const/4 v0, 0x0

    :goto_10
    monitor-exit p0

    return v0

    :goto_12
    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_d

    throw v0
.end method

.method public declared-synchronized isStopTimeout()Z
    .registers 2

    monitor-enter p0

    .line 644
    :try_start_1
    iget-object v0, p0, Lorg/libsdl/app/BufferedAudioRecorder;->mProcessThread:Lcom/ss/android/medialib/audio/AudioDataProcessThread;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->isStopTimeout()Z

    move-result v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_d

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :catchall_d
    move-exception v0

    goto :goto_12

    :cond_f
    const/4 v0, 0x0

    :goto_10
    monitor-exit p0

    return v0

    :goto_12
    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_d

    throw v0
.end method

.method public markRecordStop()V
    .registers 2

    .line 528
    monitor-enter p0

    const/4 v0, 0x1

    .line 529
    :try_start_2
    iput-boolean v0, p0, Lorg/libsdl/app/BufferedAudioRecorder;->isStopped:Z

    .line 530
    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public setAudioRecordStateCallack(Lcom/ss/android/medialib/presenter/MediaRecordPresenter$AudioRecordStateCallack;)V
    .registers 2

    .line 290
    iput-object p1, p0, Lorg/libsdl/app/BufferedAudioRecorder;->mStateCallback:Lcom/ss/android/medialib/presenter/MediaRecordPresenter$AudioRecordStateCallack;

    return-void
.end method

.method public startFeeding(D)Z
    .registers 7

    .line 588
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startFeeding() called with: speed = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BufferedAudioRecorder"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    iget-boolean v0, p0, Lorg/libsdl/app/BufferedAudioRecorder;->isRecording:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_44

    iget-object v0, p0, Lorg/libsdl/app/BufferedAudioRecorder;->mProcessThread:Lcom/ss/android/medialib/audio/AudioDataProcessThread;

    if-nez v0, :cond_25

    goto :goto_44

    .line 594
    :cond_25
    invoke-virtual {v0}, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->isProcessing()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_32

    .line 595
    const-string p0, "StartFeeding failed. It\'s been called once."

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 598
    :cond_32
    iput-boolean v3, p0, Lorg/libsdl/app/BufferedAudioRecorder;->isStopped:Z

    .line 599
    iput-boolean v3, p0, Lorg/libsdl/app/BufferedAudioRecorder;->isStopPCMCallback:Z

    .line 600
    iget-object v0, p0, Lorg/libsdl/app/BufferedAudioRecorder;->mProcessThread:Lcom/ss/android/medialib/audio/AudioDataProcessThread;

    iget v1, p0, Lorg/libsdl/app/BufferedAudioRecorder;->sampleRateInHz:I

    iget v3, p0, Lorg/libsdl/app/BufferedAudioRecorder;->channelConfig:I

    invoke-virtual {p0, v3}, Lorg/libsdl/app/BufferedAudioRecorder;->getChannelCount(I)I

    move-result p0

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->startFeeding(IID)V

    return v2

    .line 590
    :cond_44
    :goto_44
    const-string v0, "Start Feeding recording is not activated, start Recording will be activated first!"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    invoke-virtual {p0, p1, p2, v2}, Lorg/libsdl/app/BufferedAudioRecorder;->startRecording(DZ)V

    return v2
.end method

.method public startRecording(DZ)V
    .registers 6

    .line 299
    const-string v0, "BufferedAudioRecorder"

    const-string v1, "startRecording() called"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/libsdl/app/BufferedAudioRecorder;->mAudioRecordStartTime:J

    .line 301
    monitor-enter p0

    .line 302
    :try_start_e
    iget-boolean v0, p0, Lorg/libsdl/app/BufferedAudioRecorder;->isRecording:Z

    if-eqz v0, :cond_23

    .line 304
    const-string v0, "BufferedAudioRecorder"

    const-string v1, "recorder is started"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_21

    .line 306
    invoke-virtual {p0, p1, p2}, Lorg/libsdl/app/BufferedAudioRecorder;->startFeeding(D)Z

    goto :goto_21

    :catchall_1f
    move-exception p1

    goto :goto_92

    .line 308
    :cond_21
    :goto_21
    monitor-exit p0

    return-void

    .line 311
    :cond_23
    iget-object v0, p0, Lorg/libsdl/app/BufferedAudioRecorder;->audio:Landroid/media/AudioRecord;

    if-nez v0, :cond_39

    .line 312
    iget v0, p0, Lorg/libsdl/app/BufferedAudioRecorder;->audioSource:I

    invoke-virtual {p0, v0}, Lorg/libsdl/app/BufferedAudioRecorder;->init(I)V

    .line 313
    iget-object v0, p0, Lorg/libsdl/app/BufferedAudioRecorder;->audio:Landroid/media/AudioRecord;

    if-nez v0, :cond_39

    .line 314
    const-string p1, "BufferedAudioRecorder"

    const-string p2, "recorder is null"

    invoke-static {p1, p2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    monitor-exit p0

    return-void

    .line 320
    :cond_39
    iget-object v0, p0, Lorg/libsdl/app/BufferedAudioRecorder;->mRecordingState:Lorg/libsdl/app/BufferedAudioRecorder$RecordingState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/libsdl/app/BufferedAudioRecorder$RecordingState;->setState(Z)V

    .line 321
    monitor-exit p0
    :try_end_40
    .catchall {:try_start_e .. :try_end_40} :catchall_1f

    .line 325
    :try_start_40
    invoke-direct {p0, p1, p2, p3}, Lorg/libsdl/app/BufferedAudioRecorder;->innerStartRecording(DZ)Z

    move-result v0

    if-eqz v0, :cond_84

    .line 326
    const-string v0, "BufferedAudioRecorder"

    const-string v1, "start mic ok, ready to run AudioRecorderRunnable"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/libsdl/app/BufferedAudioRecorder$AudioRecorderRunnable;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/libsdl/app/BufferedAudioRecorder$AudioRecorderRunnable;-><init>(Lorg/libsdl/app/BufferedAudioRecorder;DZ)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_5a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_40 .. :try_end_5a} :catch_5b

    goto :goto_84

    .line 335
    :catch_5b
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    const-wide/16 v0, 0x64

    .line 339
    :try_start_64
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_67
    .catch Ljava/lang/InterruptedException; {:try_start_64 .. :try_end_67} :catch_67

    .line 342
    :catch_67
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 343
    invoke-direct {p0, p1, p2, p3}, Lorg/libsdl/app/BufferedAudioRecorder;->innerStartRecording(DZ)Z

    move-result v0

    if-eqz v0, :cond_84

    .line 344
    const-string v0, "BufferedAudioRecorder"

    const-string v1, "after gc, start mic ok, ready to run AudioRecorderRunnable"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/libsdl/app/BufferedAudioRecorder$AudioRecorderRunnable;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/libsdl/app/BufferedAudioRecorder$AudioRecorderRunnable;-><init>(Lorg/libsdl/app/BufferedAudioRecorder;DZ)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 349
    :cond_84
    :goto_84
    const-string p1, "te_record_audio_start_record_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iget-wide v0, p0, Lorg/libsdl/app/BufferedAudioRecorder;->mAudioRecordStartTime:J

    sub-long/2addr p2, v0

    const/4 p0, 0x0

    invoke-static {p0, p1, p2, p3}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    return-void

    .line 321
    :goto_92
    :try_start_92
    monitor-exit p0
    :try_end_93
    .catchall {:try_start_92 .. :try_end_93} :catchall_1f

    throw p1
.end method

.method public stopFeeding()Z
    .registers 6

    .line 609
    const-string v0, "stopFeeding() called"

    const-string v1, "BufferedAudioRecorder"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    iget-boolean v0, p0, Lorg/libsdl/app/BufferedAudioRecorder;->isRecording:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_25

    iget-object v4, p0, Lorg/libsdl/app/BufferedAudioRecorder;->audio:Landroid/media/AudioRecord;

    if-nez v4, :cond_25

    .line 611
    const-string v0, "StopFeeding: State anomaly, reset state!"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    iget-object v0, p0, Lorg/libsdl/app/BufferedAudioRecorder;->mRecordingState:Lorg/libsdl/app/BufferedAudioRecorder$RecordingState;

    invoke-virtual {v0, v3}, Lorg/libsdl/app/BufferedAudioRecorder$RecordingState;->setState(Z)V

    .line 614
    iput-boolean v2, p0, Lorg/libsdl/app/BufferedAudioRecorder;->isStopped:Z

    .line 615
    iget-object p0, p0, Lorg/libsdl/app/BufferedAudioRecorder;->mProcessThread:Lcom/ss/android/medialib/audio/AudioDataProcessThread;

    if-eqz p0, :cond_24

    .line 616
    invoke-virtual {p0}, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->stop()V

    :cond_24
    return v3

    :cond_25
    if-eqz v0, :cond_3e

    .line 620
    iget-object v0, p0, Lorg/libsdl/app/BufferedAudioRecorder;->mProcessThread:Lcom/ss/android/medialib/audio/AudioDataProcessThread;

    if-nez v0, :cond_2c

    goto :goto_3e

    .line 625
    :cond_2c
    invoke-virtual {v0}, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->isProcessing()Z

    move-result v0

    if-nez v0, :cond_38

    .line 626
    const-string p0, "Stop Feeding failed, please start Feeding and then stop Feeding."

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 630
    :cond_38
    iget-object p0, p0, Lorg/libsdl/app/BufferedAudioRecorder;->mProcessThread:Lcom/ss/android/medialib/audio/AudioDataProcessThread;

    invoke-virtual {p0}, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->stopFeeding()V

    return v2

    .line 621
    :cond_3e
    :goto_3e
    const-string p0, "Stop Feeding failed, call startRecording first!"

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method

.method public stopPCMCallback(Z)V
    .registers 2

    .line 534
    monitor-enter p0

    .line 535
    :try_start_1
    iput-boolean p1, p0, Lorg/libsdl/app/BufferedAudioRecorder;->isStopPCMCallback:Z

    .line 536
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw p1
.end method

.method public stopRecording()Z
    .registers 10

    .line 544
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 545
    monitor-enter p0

    .line 546
    :try_start_5
    const-string v2, "BufferedAudioRecorder"

    const-string v3, "stopRecording() called"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    iget-boolean v2, p0, Lorg/libsdl/app/BufferedAudioRecorder;->isRecording:Z

    const/4 v3, 0x0

    if-nez v2, :cond_16

    monitor-exit p0

    return v3

    :catchall_13
    move-exception v0

    goto/16 :goto_97

    .line 550
    :cond_16
    iget-object v2, p0, Lorg/libsdl/app/BufferedAudioRecorder;->mRecordingState:Lorg/libsdl/app/BufferedAudioRecorder$RecordingState;

    invoke-virtual {v2, v3}, Lorg/libsdl/app/BufferedAudioRecorder$RecordingState;->setState(Z)V

    .line 552
    iget-object v2, p0, Lorg/libsdl/app/BufferedAudioRecorder;->audio:Landroid/media/AudioRecord;

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_71

    .line 553
    invoke-virtual {v2}, Landroid/media/AudioRecord;->getState()I

    move-result v2

    if-eqz v2, :cond_65

    .line 554
    iget-object v2, p0, Lorg/libsdl/app/BufferedAudioRecorder;->audio:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v2

    if-eq v2, v5, :cond_65

    .line 555
    const-string v2, "stopRecording will stop mic"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-direct {p0, v2, v6, v7}, Lorg/libsdl/app/BufferedAudioRecorder;->buildInfoJSONObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 556
    const-string v6, "vesdk_event_will_stop_mic"

    const-string v7, "behavior"

    invoke-static {v6, v2, v7}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 557
    iget-object v2, p0, Lorg/libsdl/app/BufferedAudioRecorder;->audio:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->stop()V

    .line 558
    const-string v2, "stopRecording did stop mic"

    const-string v6, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v2, v6, v7}, Lorg/libsdl/app/BufferedAudioRecorder;->buildInfoJSONObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 559
    const-string v6, "vesdk_event_did_stop_mic"

    const-string v7, "behavior"

    invoke-static {v6, v2, v7}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    const/4 v2, 0x3

    .line 560
    iput v2, p0, Lorg/libsdl/app/BufferedAudioRecorder;->mMicState:I

    .line 562
    :cond_65
    iget-object v2, p0, Lorg/libsdl/app/BufferedAudioRecorder;->audioMonitor:Lcom/ss/android/medialib/presenter/VEAudioMonitor;

    if-eqz v2, :cond_84

    .line 563
    iget-object v6, p0, Lorg/libsdl/app/BufferedAudioRecorder;->audio:Landroid/media/AudioRecord;

    const-string v7, "stop success"

    invoke-virtual {v2, v6, v4, v3, v7}, Lcom/ss/android/medialib/presenter/VEAudioMonitor;->onInfo(Landroid/media/AudioRecord;IILjava/lang/String;)V

    goto :goto_84

    .line 566
    :cond_71
    const-string v2, "BufferedAudioRecorder"

    const-string v6, "The audio module is not activated but stopRecording is called!"

    invoke-static {v2, v6}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    iget-object v2, p0, Lorg/libsdl/app/BufferedAudioRecorder;->audioMonitor:Lcom/ss/android/medialib/presenter/VEAudioMonitor;

    if-eqz v2, :cond_84

    .line 568
    iget-object v6, p0, Lorg/libsdl/app/BufferedAudioRecorder;->audio:Landroid/media/AudioRecord;

    const-string v7, "stop error audio is null"

    const/4 v8, -0x1

    invoke-virtual {v2, v6, v4, v8, v7}, Lcom/ss/android/medialib/presenter/VEAudioMonitor;->onInfo(Landroid/media/AudioRecord;IILjava/lang/String;)V

    .line 572
    :cond_84
    :goto_84
    iget-object v2, p0, Lorg/libsdl/app/BufferedAudioRecorder;->mProcessThread:Lcom/ss/android/medialib/audio/AudioDataProcessThread;

    if-eqz v2, :cond_8b

    .line 573
    invoke-virtual {v2}, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->stop()V

    .line 575
    :cond_8b
    monitor-exit p0
    :try_end_8c
    .catchall {:try_start_5 .. :try_end_8c} :catchall_13

    .line 579
    const-string p0, "te_record_audio_stop_record_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-static {v3, p0, v6, v7}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    return v5

    .line 575
    :goto_97
    :try_start_97
    monitor-exit p0
    :try_end_98
    .catchall {:try_start_97 .. :try_end_98} :catchall_13

    throw v0
.end method

.method public unInit()V
    .registers 9

    .line 253
    iget-boolean v0, p0, Lorg/libsdl/app/BufferedAudioRecorder;->isRecording:Z

    if-eqz v0, :cond_7

    .line 254
    invoke-virtual {p0}, Lorg/libsdl/app/BufferedAudioRecorder;->stopRecording()Z

    .line 256
    :cond_7
    monitor-enter p0

    .line 257
    :try_start_8
    iget-object v0, p0, Lorg/libsdl/app/BufferedAudioRecorder;->audio:Landroid/media/AudioRecord;
    :try_end_a
    .catchall {:try_start_8 .. :try_end_a} :catchall_54

    const/4 v1, -0x1

    const/4 v2, 0x3

    if-eqz v0, :cond_91

    const/4 v3, 0x0

    .line 259
    :try_start_f
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-eqz v0, :cond_58

    .line 260
    iget-object v0, p0, Lorg/libsdl/app/BufferedAudioRecorder;->audio:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v0

    const/4 v4, 0x1

    if-eq v0, v4, :cond_58

    .line 261
    const-string v0, "uninit will stop mic"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-direct {p0, v0, v4, v5}, Lorg/libsdl/app/BufferedAudioRecorder;->buildInfoJSONObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 262
    const-string v4, "vesdk_event_will_stop_mic"

    const-string v5, "behavior"

    invoke-static {v4, v0, v5}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lorg/libsdl/app/BufferedAudioRecorder;->audio:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 264
    const-string v0, "uninit did stop mic"

    const-string v4, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v4, v5}, Lorg/libsdl/app/BufferedAudioRecorder;->buildInfoJSONObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 265
    const-string v4, "vesdk_event_did_stop_mic"

    const-string v5, "behavior"

    invoke-static {v4, v0, v5}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 266
    iput v2, p0, Lorg/libsdl/app/BufferedAudioRecorder;->mMicState:I

    goto :goto_58

    :catchall_54
    move-exception v0

    goto :goto_a3

    :catch_56
    move-exception v0

    goto :goto_69

    .line 268
    :cond_58
    :goto_58
    iget-object v0, p0, Lorg/libsdl/app/BufferedAudioRecorder;->audio:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 269
    iget-object v0, p0, Lorg/libsdl/app/BufferedAudioRecorder;->audioMonitor:Lcom/ss/android/medialib/presenter/VEAudioMonitor;

    if-eqz v0, :cond_8b

    .line 270
    iget-object v4, p0, Lorg/libsdl/app/BufferedAudioRecorder;->audio:Landroid/media/AudioRecord;

    const-string v5, "release success"

    invoke-virtual {v0, v4, v2, v3, v5}, Lcom/ss/android/medialib/presenter/VEAudioMonitor;->onInfo(Landroid/media/AudioRecord;IILjava/lang/String;)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_68} :catch_56
    .catchall {:try_start_f .. :try_end_68} :catchall_54

    goto :goto_8b

    .line 273
    :goto_69
    :try_start_69
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 274
    iget-object v4, p0, Lorg/libsdl/app/BufferedAudioRecorder;->audioMonitor:Lcom/ss/android/medialib/presenter/VEAudioMonitor;

    if-eqz v4, :cond_8b

    .line 275
    iget-object v5, p0, Lorg/libsdl/app/BufferedAudioRecorder;->audio:Landroid/media/AudioRecord;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "release failed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_81

    const-string v0, ""

    :cond_81
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v2, v1, v0}, Lcom/ss/android/medialib/presenter/VEAudioMonitor;->onInfo(Landroid/media/AudioRecord;IILjava/lang/String;)V

    :cond_8b
    :goto_8b
    const/4 v0, 0x0

    .line 278
    iput-object v0, p0, Lorg/libsdl/app/BufferedAudioRecorder;->audio:Landroid/media/AudioRecord;

    .line 279
    iput v3, p0, Lorg/libsdl/app/BufferedAudioRecorder;->mMicState:I

    goto :goto_9a

    .line 281
    :cond_91
    iget-object v3, p0, Lorg/libsdl/app/BufferedAudioRecorder;->audioMonitor:Lcom/ss/android/medialib/presenter/VEAudioMonitor;

    if-eqz v3, :cond_9a

    .line 282
    const-string v4, "release failed, audio is null"

    invoke-virtual {v3, v0, v2, v1, v4}, Lcom/ss/android/medialib/presenter/VEAudioMonitor;->onInfo(Landroid/media/AudioRecord;IILjava/lang/String;)V

    .line 285
    :cond_9a
    :goto_9a
    monitor-exit p0
    :try_end_9b
    .catchall {:try_start_69 .. :try_end_9b} :catchall_54

    .line 286
    const-string p0, "BufferedAudioRecorder"

    const-string v0, "unInit()"

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 285
    :goto_a3
    :try_start_a3
    monitor-exit p0
    :try_end_a4
    .catchall {:try_start_a3 .. :try_end_a4} :catchall_54

    throw v0
.end method

.method public waitUtilAudioProcessDone()V
    .registers 1

    .line 648
    iget-object p0, p0, Lorg/libsdl/app/BufferedAudioRecorder;->mProcessThread:Lcom/ss/android/medialib/audio/AudioDataProcessThread;

    if-eqz p0, :cond_7

    .line 649
    invoke-virtual {p0}, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->waitUtilAudioProcessDone()V

    :cond_7
    return-void
.end method
