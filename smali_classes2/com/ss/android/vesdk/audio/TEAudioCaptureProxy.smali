.class public Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/vesdk/audio/IAudioCapture;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy$HandlerCallback;
    }
.end annotation


# static fields
.field private static final INIT_RETRY_COUNT:I = 0x3

.field private static final START_RETRY_COUNT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "TEAudioCaptureProxy"


# instance fields
.field private audioRecord:Lcom/ss/android/vesdk/audio/IAudioCaptureProxy;

.field mAudioCallback:Lcom/ss/android/vesdk/audio/TEAudioCallback;

.field private mAudioCloseBlockCondition:Landroid/os/ConditionVariable;

.field private mAudioDevice:Lcom/ss/android/vesdk/audio/VEAudioDevice;

.field private mAudioKit:Lcom/ss/android/ttve/kit/IAudioKit;

.field private mCachedStartPrivacyCert:Lcom/bytedance/bpea/basics/Cert;

.field private mCloseLock:Ljava/lang/Object;

.field private mEnableBackGroundStrategy:Z

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIsMicPendingClose:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mMicStartInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

.field private mMicState:I

.field private mOnBackGround:Z

.field private mRetryInitCount:I

.field private mRetryStartCount:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->mMicState:I

    .line 36
    iput-boolean v0, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->mOnBackGround:Z

    .line 37
    iput-boolean v0, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->mEnableBackGroundStrategy:Z

    .line 45
    new-instance v1, Landroid/os/ConditionVariable;

    invoke-direct {v1}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v1, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->mAudioCloseBlockCondition:Landroid/os/ConditionVariable;

    .line 46
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->mIsMicPendingClose:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x3

    .line 49
    iput v1, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->mRetryInitCount:I

    .line 50
    iput v1, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->mRetryStartCount:I

    const/4 v1, 0x0

    .line 51
    iput-object v1, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->mCachedStartPrivacyCert:Lcom/bytedance/bpea/basics/Cert;

    .line 52
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->mMicStartInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 53
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->mCloseLock:Ljava/lang/Object;

    .line 58
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v1

    const-string v2, "ve_enable_background_strategy"

    invoke-virtual {v1, v2, v0}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->mEnableBackGroundStrategy:Z

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KEY_ENABLE_BACKGROUND_STRATEGY : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->mEnableBackGroundStrategy:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TEAudioCaptureProxy"

    invoke-static {v0, p0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;)I
    .registers 1

    .line 30
    iget p0, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->mRetryInitCount:I

    return p0
.end method

.method static synthetic access$002(Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;I)I
    .registers 2

    .line 30
    iput p1, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->mRetryInitCount:I

    return p1
.end method

.method static synthetic access$100(Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;Lcom/ss/android/vesdk/VEAudioCaptureSettings;)I
    .registers 2

    .line 30
    invoke-direct {p0, p1}, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->realInitMic(Lcom/ss/android/vesdk/VEAudioCaptureSettings;)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;Lcom/bytedance/bpea/basics/Cert;)I
    .registers 2

    .line 30
    invoke-direct {p0, p1}, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->realStartMic(Lcom/bytedance/bpea/basics/Cert;)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;Lcom/bytedance/bpea/basics/Cert;)I
    .registers 2

    .line 30
    invoke-direct {p0, p1}, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->realStopMic(Lcom/bytedance/bpea/basics/Cert;)I

    move-result p0

    return p0
.end method

.method static synthetic access$402(Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;I)I
    .registers 2

    .line 30
    iput p1, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->mRetryStartCount:I

    return p1
.end method

.method static synthetic access$500(Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;Lcom/bytedance/bpea/basics/Cert;)V
    .registers 2

    .line 30
    invoke-direct {p0, p1}, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->realReleaseMic(Lcom/bytedance/bpea/basics/Cert;)V

    return-void
.end method

.method private collectStartMicInfo(IIJ)V
    .registers 8

    .line 91
    iget-object v0, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->mMicStartInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

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

    .line 92
    iget-object p0, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->mMicStartInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

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

.method private declared-synchronized createHandler()Landroid/os/Handler;
    .registers 5

    monitor-enter p0

    .line 375
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_d

    .line 376
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    goto :goto_d

    :catchall_9
    move-exception v0

    goto :goto_60

    :catch_b
    move-exception v0

    goto :goto_2b

    .line 378
    :cond_d
    :goto_d
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "TEAudioCaptureProxy"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->mHandlerThread:Landroid/os/HandlerThread;

    .line 379
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 380
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy$HandlerCallback;

    invoke-direct {v2, p0}, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy$HandlerCallback;-><init>(Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_29} :catch_b
    .catchall {:try_start_1 .. :try_end_29} :catchall_9

    monitor-exit p0

    return-object v0

    .line 382
    :goto_2b
    :try_start_2b
    const-string v1, "TEAudioCaptureProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CreateHandler failed!: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_52

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    goto :goto_56

    :cond_52
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    :goto_56
    new-instance v2, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy$HandlerCallback;

    invoke-direct {v2, p0}, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy$HandlerCallback;-><init>(Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V
    :try_end_5e
    .catchall {:try_start_2b .. :try_end_5e} :catchall_9

    monitor-exit p0

    return-object v0

    :goto_60
    :try_start_60
    monitor-exit p0
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_9

    throw v0
.end method

.method private declared-synchronized destroyHandler()V
    .registers 2

    monitor-enter p0

    .line 388
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_10

    .line 390
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    const/4 v0, 0x0

    .line 394
    iput-object v0, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->mHandlerThread:Landroid/os/HandlerThread;

    .line 395
    iput-object v0, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->mHandler:Landroid/os/Handler;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_e

    goto :goto_10

    :catchall_e
    move-exception v0

    goto :goto_12

    .line 397
    :cond_10
    :goto_10
    monitor-exit p0

    return-void

    :goto_12
    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_e

    throw v0
.end method

.method private realInitMic(Lcom/ss/android/vesdk/VEAudioCaptureSettings;)I
    .registers 8

    .line 116
    iget v0, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->mMicState:I

    const-string v1, "TEAudioCaptureProxy"

    if-eqz v0, :cond_1f

    .line 117
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "init in a error state: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->mMicState:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x69

    return p0

    .line 121
    :cond_1f
    iget-object v0, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->audioRecord:Lcom/ss/android/vesdk/audio/IAudioCaptureProxy;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_70

    .line 137
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v4, "ve_enable_common_earback"

    invoke-virtual {v0, v4, v3}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    iget-object v0, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->mAudioDevice:Lcom/ss/android/vesdk/audio/VEAudioDevice;

    if-eqz v0, :cond_3f

    .line 139
    invoke-virtual {v0}, Lcom/ss/android/vesdk/audio/VEAudioDevice;->getType()Lcom/ss/android/ttve/model/VEAudioDeviceType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    goto :goto_43

    :cond_3f
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TESystemUtils;->getOutputAudioDeviceType()I

    move-result v0

    .line 140
    :goto_43
    sget-object v4, Lcom/ss/android/ttve/model/VEAudioDeviceType;->BLUETOOTH:Lcom/ss/android/ttve/model/VEAudioDeviceType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-ne v0, v4, :cond_52

    .line 141
    const-string v0, "te_record_audio_earback_type"

    const-wide/16 v4, 0x4

    invoke-static {v2, v0, v4, v5}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    .line 144
    :cond_52
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEAudioCaptureSettings;->isLowLatency()Z

    .line 147
    new-instance v0, Lcom/ss/android/vesdk/audio/TEAudioRecord;

    new-instance v4, Lcom/ss/android/vesdk/audio/TEAudioRecordTimestampStrategy;

    invoke-direct {v4}, Lcom/ss/android/vesdk/audio/TEAudioRecordTimestampStrategy;-><init>()V

    invoke-direct {v0, v4}, Lcom/ss/android/vesdk/audio/TEAudioRecord;-><init>(Lcom/ss/android/vesdk/audio/TEAudioRecordTimestampStrategy;)V

    iput-object v0, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->audioRecord:Lcom/ss/android/vesdk/audio/IAudioCaptureProxy;

    .line 151
    new-instance v4, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy$1;

    invoke-direct {v4, p0}, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy$1;-><init>(Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;)V

    invoke-interface {v0, v4}, Lcom/ss/android/vesdk/audio/IAudioCaptureProxy;->setAudioCallback(Lcom/ss/android/vesdk/audio/TEAudioCallback;)V

    .line 184
    iget-object v0, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->audioRecord:Lcom/ss/android/vesdk/audio/IAudioCaptureProxy;

    iget-object v4, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v4}, Lcom/ss/android/vesdk/audio/IAudioCaptureProxy;->setHandler(Landroid/os/Handler;)V

    .line 186
    :cond_70
    iget-object v0, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->audioRecord:Lcom/ss/android/vesdk/audio/IAudioCaptureProxy;

    invoke-interface {v0, p1}, Lcom/ss/android/vesdk/audio/IAudioCapture;->init(Lcom/ss/android/vesdk/VEAudioCaptureSettings;)I

    move-result v0

    .line 187
    iput v3, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->mMicState:I

    if-eqz v0, :cond_93

    .line 190
    iget-object v4, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->mCachedStartPrivacyCert:Lcom/bytedance/bpea/basics/Cert;

    invoke-direct {p0, v4}, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->realReleaseMic(Lcom/bytedance/bpea/basics/Cert;)V

    .line 192
    iget-object v4, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->mIsMicPendingClose:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-nez v4, :cond_93

    iget v4, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->mRetryInitCount:I

    if-lez v4, :cond_93

    sub-int/2addr v4, v3

    .line 193
    iput v4, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->mRetryInitCount:I

    const-wide/16 v3, 0x1e

    .line 195
    invoke-direct {p0, v2, p1, v3, v4}, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->sendMsg(ILjava/lang/Object;J)V

    :cond_93
    if-eqz v0, :cond_99

    .line 199
    iget p1, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->mRetryInitCount:I

    if-nez p1, :cond_ae

    .line 200
    :cond_99
    iget p1, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->mRetryInitCount:I

    if-nez p1, :cond_a8

    .line 202
    iget-object p1, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->mAudioCallback:Lcom/ss/android/vesdk/audio/TEAudioCallback;

    sget v3, Lcom/ss/android/vesdk/VEInfo;->TE_INFO_RECORD_AUDIO_CAPTURE_INIT:I

    sget v4, Lcom/ss/android/vesdk/VEInfo;->TE_ERROR_RECORD_AUDIO_CAPTURE_INIT:I

    const-string v5, "use up retry init times"

    invoke-interface {p1, v3, v4, v5}, Lcom/ss/android/vesdk/audio/TEAudioCallback;->onError(IILjava/lang/String;)V

    .line 204
    :cond_a8
    const-string p1, "te_record_audio_mic_init_ret"

    int-to-long v3, v0

    invoke-static {v2, p1, v3, v4}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    .line 207
    :cond_ae
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "retry int mic times : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->mRetryInitCount:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " ret: "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private realReleaseMic(Lcom/bytedance/bpea/basics/Cert;)V
    .registers 5

    .line 244
    iget-object v0, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->mCloseLock:Ljava/lang/Object;

    monitor-enter v0

    .line 245
    :try_start_3
    iget v1, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->mMicState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_e

    .line 246
    invoke-direct {p0, p1}, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->realStopMic(Lcom/bytedance/bpea/basics/Cert;)I

    goto :goto_e

    :catchall_c
    move-exception p0

    goto :goto_30

    .line 249
    :cond_e
    :goto_e
    iget-object v1, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->mAudioKit:Lcom/ss/android/ttve/kit/IAudioKit;

    const/4 v2, 0x0

    if-eqz v1, :cond_18

    .line 250
    invoke-interface {v1}, Lcom/ss/android/ttve/kit/IAudioKit;->destroy()I

    .line 251
    iput-object v2, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->mAudioKit:Lcom/ss/android/ttve/kit/IAudioKit;

    .line 254
    :cond_18
    iget-object v1, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->audioRecord:Lcom/ss/android/vesdk/audio/IAudioCaptureProxy;

    if-eqz v1, :cond_21

    .line 255
    invoke-interface {v1, p1}, Lcom/ss/android/vesdk/audio/IAudioCapture;->release(Lcom/bytedance/bpea/basics/Cert;)V

    .line 256
    iput-object v2, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->audioRecord:Lcom/ss/android/vesdk/audio/IAudioCaptureProxy;

    .line 258
    :cond_21
    iget-object p1, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->mIsMicPendingClose:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 259
    iget-object p1, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->mAudioCloseBlockCondition:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    .line 260
    iput v1, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->mMicState:I

    .line 261
    monitor-exit v0

    return-void

    :goto_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_c

    throw p0
.end method

.method private realStartMic(Lcom/bytedance/bpea/basics/Cert;)I
    .registers 13

    .line 282
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 284
    iget v2, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->mMicState:I

    const/16 v3, -0x69

    const-string v4, "TEAudioCaptureProxy"

    const/4 v5, 0x1

    if-eq v2, v5, :cond_24

    .line 285
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "start in a error state: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->mMicState:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 289
    :cond_24
    iget-boolean v2, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->mEnableBackGroundStrategy:Z

    if-eqz v2, :cond_3e

    iget-boolean v2, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->mOnBackGround:Z

    if-eqz v2, :cond_3e

    .line 290
    const-string p1, "in background block start"

    invoke-static {v4, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iget-object v5, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->mAudioCallback:Lcom/ss/android/vesdk/audio/TEAudioCallback;

    sget v6, Lcom/ss/android/vesdk/VEInfo;->TE_INFO_RECORD_AUDIO_CAPTURE_START:I

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v7, -0x1

    invoke-interface/range {v5 .. v10}, Lcom/ss/android/vesdk/audio/TEAudioCallback;->onInfo(IIDLjava/lang/Object;)V

    const/4 p0, -0x1

    return p0

    .line 295
    :cond_3e
    iget-object v2, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->mAudioKit:Lcom/ss/android/ttve/kit/IAudioKit;

    if-eqz v2, :cond_47

    .line 296
    iget-object v6, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->mHandler:Landroid/os/Handler;

    invoke-interface {v2, v6}, Lcom/ss/android/ttve/kit/IAudioKit;->start(Landroid/os/Handler;)I

    .line 299
    :cond_47
    iget-object v2, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->audioRecord:Lcom/ss/android/vesdk/audio/IAudioCaptureProxy;

    if-nez v2, :cond_51

    .line 300
    const-string p0, "mic start error, audio record is null"

    invoke-static {v4, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 304
    :cond_51
    invoke-interface {v2, p1}, Lcom/ss/android/vesdk/audio/IAudioCapture;->start(Lcom/bytedance/bpea/basics/Cert;)I

    move-result v7

    const/4 p1, 0x2

    .line 305
    iput p1, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->mMicState:I

    const/4 p1, -0x2

    .line 306
    const-string v2, "te_record_audio_mic_start_ret"

    const/4 v3, 0x0

    if-eq v7, p1, :cond_ad

    if-nez v7, :cond_61

    goto :goto_ad

    .line 312
    :cond_61
    iget-object p1, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->mCachedStartPrivacyCert:Lcom/bytedance/bpea/basics/Cert;

    invoke-direct {p0, p1}, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->realStopMic(Lcom/bytedance/bpea/basics/Cert;)I

    .line 314
    iget-object p1, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->mIsMicPendingClose:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_9d

    iget p1, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->mRetryStartCount:I

    if-lez p1, :cond_9d

    .line 315
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "retry start mic times : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->mRetryStartCount:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ret: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    iget p1, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->mRetryStartCount:I

    sub-int/2addr p1, v5

    iput p1, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->mRetryStartCount:I

    .line 318
    iget-object p1, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->mCachedStartPrivacyCert:Lcom/bytedance/bpea/basics/Cert;

    const-wide/16 v2, 0x1e

    invoke-direct {p0, v5, p1, v2, v3}, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->sendMsg(ILjava/lang/Object;J)V

    goto :goto_bc

    .line 321
    :cond_9d
    iget-object p1, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->mAudioCallback:Lcom/ss/android/vesdk/audio/TEAudioCallback;

    sget v4, Lcom/ss/android/vesdk/VEInfo;->TE_INFO_RECORD_AUDIO_CAPTURE_INIT:I

    sget v5, Lcom/ss/android/vesdk/VEInfo;->TE_ERROR_RECORD_AUDIO_CAPTURE_START:I

    const-string v6, "use up retry start times"

    invoke-interface {p1, v4, v5, v6}, Lcom/ss/android/vesdk/audio/TEAudioCallback;->onError(IILjava/lang/String;)V

    int-to-long v4, v7

    .line 322
    invoke-static {v3, v2, v4, v5}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    goto :goto_bc

    .line 307
    :cond_ad
    :goto_ad
    iget-object v5, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->mAudioCallback:Lcom/ss/android/vesdk/audio/TEAudioCallback;

    sget v6, Lcom/ss/android/vesdk/VEInfo;->TE_INFO_RECORD_AUDIO_CAPTURE_START:I

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v5 .. v10}, Lcom/ss/android/vesdk/audio/TEAudioCallback;->onInfo(IIDLjava/lang/Object;)V

    const-wide/16 v4, 0x0

    .line 308
    invoke-static {v3, v2, v4, v5}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    .line 327
    :goto_bc
    iget p1, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->mRetryStartCount:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-direct {p0, p1, v7, v2, v3}, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->collectStartMicInfo(IIJ)V

    return v7
.end method

.method private realStopMic(Lcom/bytedance/bpea/basics/Cert;)I
    .registers 10

    .line 351
    iget-object v1, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->mCloseLock:Ljava/lang/Object;

    monitor-enter v1

    .line 352
    :try_start_3
    iget v0, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->mMicState:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_26

    .line 353
    const-string p1, "TEAudioCaptureProxy"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mic stop in error state: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->mMicState:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 354
    monitor-exit v1

    return p0

    :catchall_23
    move-exception v0

    move-object p0, v0

    goto :goto_4f

    .line 357
    :cond_26
    iget-object v0, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->mAudioKit:Lcom/ss/android/ttve/kit/IAudioKit;

    if-eqz v0, :cond_2d

    .line 358
    invoke-interface {v0}, Lcom/ss/android/ttve/kit/IAudioKit;->stop()I

    .line 361
    :cond_2d
    iget-object v0, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->audioRecord:Lcom/ss/android/vesdk/audio/IAudioCaptureProxy;

    if-nez v0, :cond_3c

    .line 362
    const-string p0, "TEAudioCaptureProxy"

    const-string p1, "mic stop error, audio record is null"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x69

    .line 363
    monitor-exit v1

    return p0

    .line 366
    :cond_3c
    invoke-interface {v0, p1}, Lcom/ss/android/vesdk/audio/IAudioCapture;->stop(Lcom/bytedance/bpea/basics/Cert;)I

    move-result v4

    .line 367
    iget-object v2, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->mAudioCallback:Lcom/ss/android/vesdk/audio/TEAudioCallback;

    sget v3, Lcom/ss/android/vesdk/VEInfo;->TE_INFO_RECORD_AUDIO_CAPTURE_STOP:I

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Lcom/ss/android/vesdk/audio/TEAudioCallback;->onInfo(IIDLjava/lang/Object;)V

    const/4 p1, 0x1

    .line 368
    iput p1, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->mMicState:I

    .line 369
    monitor-exit v1

    return v4

    :goto_4f
    monitor-exit v1
    :try_end_50
    .catchall {:try_start_3 .. :try_end_50} :catchall_23

    throw p0
.end method

.method private sendMsg(ILjava/lang/Object;)V
    .registers 5

    const-wide/16 v0, 0x0

    .line 67
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->sendMsg(ILjava/lang/Object;J)V

    return-void
.end method

.method private declared-synchronized sendMsg(ILjava/lang/Object;J)V
    .registers 6

    monitor-enter p0

    .line 71
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_10

    .line 72
    const-string p1, "TEAudioCaptureProxy"

    const-string p2, "send MSG error mHandler is null"

    invoke-static {p1, p2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 73
    monitor-exit p0

    return-void

    :catchall_e
    move-exception p1

    goto :goto_36

    .line 76
    :cond_10
    :try_start_10
    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 77
    iget-object v0, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 79
    :cond_1b
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 80
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 81
    iput p1, v0, Landroid/os/Message;->what:I

    const-wide/16 p1, 0x0

    cmp-long p1, p3, p1

    if-gtz p1, :cond_2f

    .line 83
    iget-object p1, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_34

    .line 85
    :cond_2f
    iget-object p1, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_34
    .catchall {:try_start_10 .. :try_end_34} :catchall_e

    .line 88
    :goto_34
    monitor-exit p0

    return-void

    :goto_36
    :try_start_36
    monitor-exit p0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_e

    throw p1
.end method


# virtual methods
.method public appLifeCycleChanged(Z)V
    .registers 2

    .line 459
    iput-boolean p1, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->mOnBackGround:Z

    return-void
.end method

.method public getMicState()I
    .registers 1

    .line 63
    iget p0, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->mMicState:I

    return p0
.end method

.method public declared-synchronized init(Lcom/ss/android/vesdk/VEAudioCaptureSettings;)I
    .registers 4

    monitor-enter p0

    .line 98
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->mHandler:Landroid/os/Handler;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_18

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 99
    monitor-exit p0

    return v1

    .line 102
    :cond_8
    :try_start_8
    invoke-direct {p0}, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->createHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    .line 104
    iput v0, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->mRetryInitCount:I

    .line 105
    iput v0, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->mRetryStartCount:I

    .line 106
    invoke-direct {p0, v1, p1}, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->sendMsg(ILjava/lang/Object;)V
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_18

    .line 107
    monitor-exit p0

    return v1

    :catchall_18
    move-exception p1

    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw p1
.end method

.method public release()V
    .registers 2

    const/4 v0, 0x0

    .line 213
    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->release(Lcom/bytedance/bpea/basics/Cert;)V

    return-void
.end method

.method public declared-synchronized release(Lcom/bytedance/bpea/basics/Cert;)V
    .registers 9

    monitor-enter p0

    .line 217
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_10

    .line 218
    const-string p1, "TEAudioCaptureProxy"

    const-string v0, "release, mHandler is null!"

    invoke-static {p1, v0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 219
    monitor-exit p0

    return-void

    :catchall_e
    move-exception p1

    goto :goto_6f

    .line 221
    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->mIsMicPendingClose:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 222
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 223
    iget-object v2, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->mAudioCloseBlockCondition:Landroid/os/ConditionVariable;

    invoke-virtual {v2}, Landroid/os/ConditionVariable;->close()V

    .line 224
    iget-object v2, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v2, 0x3

    .line 226
    invoke-direct {p0, v2, p1}, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->sendMsg(ILjava/lang/Object;)V

    .line 229
    iget-object v2, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->mAudioCloseBlockCondition:Landroid/os/ConditionVariable;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v2, v3, v4}, Landroid/os/ConditionVariable;->block(J)Z

    .line 230
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    .line 231
    const-string v0, "TEAudioCaptureProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mic release cost: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long v0, v5, v3

    if-ltz v0, :cond_5b

    .line 233
    const-string v0, "TEAudioCaptureProxy"

    const-string v1, "mic release timeout"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    :cond_5b
    iget-object v0, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->mIsMicPendingClose:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->audioRecord:Lcom/ss/android/vesdk/audio/IAudioCaptureProxy;

    if-eqz v0, :cond_6a

    .line 237
    invoke-direct {p0, p1}, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->realReleaseMic(Lcom/bytedance/bpea/basics/Cert;)V

    .line 239
    :cond_6a
    invoke-direct {p0}, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->destroyHandler()V
    :try_end_6d
    .catchall {:try_start_10 .. :try_end_6d} :catchall_e

    .line 240
    monitor-exit p0

    return-void

    :goto_6f
    :try_start_6f
    monitor-exit p0
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_e

    throw p1
.end method

.method public setAudioCallback(Lcom/ss/android/vesdk/audio/TEAudioCallback;)V
    .registers 2

    .line 455
    iput-object p1, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->mAudioCallback:Lcom/ss/android/vesdk/audio/TEAudioCallback;

    return-void
.end method

.method public setAudioDevice(Lcom/ss/android/vesdk/audio/VEAudioDevice;)V
    .registers 2

    .line 112
    iput-object p1, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->mAudioDevice:Lcom/ss/android/vesdk/audio/VEAudioDevice;

    return-void
.end method

.method public start()I
    .registers 2

    const/4 v0, 0x0

    .line 266
    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->start(Lcom/bytedance/bpea/basics/Cert;)I

    move-result p0

    return p0
.end method

.method public start(Lcom/bytedance/bpea/basics/Cert;)I
    .registers 3

    .line 270
    iget-object v0, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_e

    .line 271
    const-string p0, "TEAudioCaptureProxy"

    const-string p1, "start, mHandler is null!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x6c

    return p0

    .line 275
    :cond_e
    iput-object p1, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->mCachedStartPrivacyCert:Lcom/bytedance/bpea/basics/Cert;

    const/4 v0, 0x1

    .line 276
    invoke-direct {p0, v0, p1}, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->sendMsg(ILjava/lang/Object;)V

    const/4 p0, 0x0

    return p0
.end method

.method public stop()I
    .registers 2

    const/4 v0, 0x0

    .line 333
    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->stop(Lcom/bytedance/bpea/basics/Cert;)I

    move-result p0

    return p0
.end method

.method public stop(Lcom/bytedance/bpea/basics/Cert;)I
    .registers 5

    .line 337
    iget-object v0, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_e

    .line 338
    const-string p0, "TEAudioCaptureProxy"

    const-string p1, "stop, mHandler is null!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x6c

    return p0

    .line 343
    :cond_e
    iget-object v0, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->mMicStartInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "te_record_audio_mic_start_info"

    invoke-static {v1, v2, v0}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfString(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 345
    invoke-direct {p0, v0, p1}, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->sendMsg(ILjava/lang/Object;)V

    return v1
.end method
