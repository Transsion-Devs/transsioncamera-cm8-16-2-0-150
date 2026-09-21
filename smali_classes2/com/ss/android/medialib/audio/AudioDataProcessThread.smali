.class public Lcom/ss/android/medialib/audio/AudioDataProcessThread;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/medialib/audio/AudioDataProcessThread$ProcessHandler;,
        Lcom/ss/android/medialib/audio/AudioDataProcessThread$OnProcessDataListener;
    }
.end annotation


# static fields
.field private static final MSG_FEED:I = 0x3

.field private static final MSG_START_FEEDING:I = 0x0

.field private static final MSG_STOP:I = 0x2

.field private static final MSG_STOP_FEEDING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AudioDataProcessThread"


# instance fields
.field private mBufferCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mDiscard:Z

.field private volatile mHandler:Lcom/ss/android/medialib/audio/AudioDataProcessThread$ProcessHandler;

.field private mIsStopTimeoutState:Z

.field private mListener:Lcom/ss/android/medialib/audio/AudioDataProcessThread$OnProcessDataListener;

.field private final mLock:Ljava/lang/Object;

.field private mReady:Z

.field private final mReadyFence:Ljava/lang/Object;

.field private mRecorderInterface:Lorg/libsdl/app/AudioRecorderInterface;

.field private mRunning:Z

.field private mStopped:Z

.field private mTimeQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/libsdl/app/AudioRecorderInterface;Lcom/ss/android/medialib/audio/AudioDataProcessThread$OnProcessDataListener;)V
    .registers 5

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mReadyFence:Ljava/lang/Object;

    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mBufferCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 50
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mTimeQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 52
    iput-boolean v1, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mDiscard:Z

    const/4 v0, 0x1

    .line 54
    iput-boolean v0, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mStopped:Z

    .line 55
    iput-boolean v1, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mIsStopTimeoutState:Z

    if-eqz p1, :cond_24

    move-object v0, p1

    goto :goto_29

    .line 61
    :cond_24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    :goto_29
    iput-object v0, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mLock:Ljava/lang/Object;

    .line 62
    iput-object p1, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mRecorderInterface:Lorg/libsdl/app/AudioRecorderInterface;

    .line 63
    iput-object p2, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mListener:Lcom/ss/android/medialib/audio/AudioDataProcessThread$OnProcessDataListener;

    return-void
.end method

.method static synthetic access$000(Lcom/ss/android/medialib/audio/AudioDataProcessThread;IID)V
    .registers 5

    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->handleStartFeeding(IID)V

    return-void
.end method

.method static synthetic access$100(Lcom/ss/android/medialib/audio/AudioDataProcessThread;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mTimeQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ss/android/medialib/audio/AudioDataProcessThread;)V
    .registers 1

    .line 35
    invoke-direct {p0}, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->handleStopFeeding()V

    return-void
.end method

.method static synthetic access$300(Lcom/ss/android/medialib/audio/AudioDataProcessThread;)Z
    .registers 1

    .line 35
    iget-boolean p0, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mStopped:Z

    return p0
.end method

.method static synthetic access$400(Lcom/ss/android/medialib/audio/AudioDataProcessThread;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mBufferCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic access$500(Lcom/ss/android/medialib/audio/AudioDataProcessThread;)Lcom/ss/android/medialib/audio/AudioDataProcessThread$OnProcessDataListener;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mListener:Lcom/ss/android/medialib/audio/AudioDataProcessThread$OnProcessDataListener;

    return-object p0
.end method

.method private handleStartFeeding(IID)V
    .registers 7

    .line 300
    iget-object v0, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mRecorderInterface:Lorg/libsdl/app/AudioRecorderInterface;

    if-eqz v0, :cond_40

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleStartFeeding() called with: sampleRateInHz = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], channels = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], speed = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioDataProcessThread"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mRecorderInterface:Lorg/libsdl/app/AudioRecorderInterface;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/libsdl/app/AudioRecorderInterface;->initWavFile(IID)I

    move-result p1

    if-eqz p1, :cond_3d

    .line 304
    const-string p0, "init wav file failed"

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3d
    const/4 p1, 0x0

    .line 307
    iput-boolean p1, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mStopped:Z

    :cond_40
    return-void
.end method

.method private handleStopFeeding()V
    .registers 4

    .line 282
    iget-object v0, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 283
    :try_start_3
    const-string v1, "AudioDataProcessThread"

    const-string v2, "handleStopFeeding() called"

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    iget-boolean v1, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mStopped:Z

    if-eqz v1, :cond_12

    .line 285
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    goto :goto_30

    .line 287
    :cond_12
    iget-object v1, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mRecorderInterface:Lorg/libsdl/app/AudioRecorderInterface;

    if-eqz v1, :cond_1c

    .line 288
    iget-boolean v2, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mDiscard:Z

    invoke-interface {v1, v2}, Lorg/libsdl/app/AudioRecorderInterface;->closeWavFile(Z)I

    goto :goto_23

    .line 290
    :cond_1c
    const-string v1, "AudioDataProcessThread"

    const-string v2, "handleStop: Discard wav file"

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_23
    const/4 v1, 0x1

    .line 292
    iput-boolean v1, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mStopped:Z

    const/4 v1, 0x0

    .line 294
    iput-boolean v1, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mDiscard:Z

    .line 295
    iget-object p0, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 296
    monitor-exit v0

    return-void

    :goto_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_10

    throw p0
.end method


# virtual methods
.method public discard()V
    .registers 3

    .line 174
    iget-object v0, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mReadyFence:Ljava/lang/Object;

    monitor-enter v0

    .line 175
    :try_start_3
    iget-boolean v1, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mReady:Z

    if-nez v1, :cond_b

    .line 176
    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    goto :goto_10

    .line 178
    :cond_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_9

    const/4 v0, 0x1

    .line 179
    iput-boolean v0, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mDiscard:Z

    return-void

    .line 178
    :goto_10
    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_9

    throw p0
.end method

.method public feed([BIJ)V
    .registers 7

    .line 188
    iget-object v0, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mReadyFence:Ljava/lang/Object;

    monitor-enter v0

    .line 189
    :try_start_3
    iget-boolean v1, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mReady:Z

    if-nez v1, :cond_b

    .line 190
    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    goto :goto_33

    .line 192
    :cond_b
    iget-object v1, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mBufferCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 193
    iget-object v1, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mTimeQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 194
    iget-object p3, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mHandler:Lcom/ss/android/medialib/audio/AudioDataProcessThread$ProcessHandler;

    iget-object p0, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mHandler:Lcom/ss/android/medialib/audio/AudioDataProcessThread$ProcessHandler;

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    const/4 p4, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, p4, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 195
    const-string p0, "AudioDataProcessThread"

    const-string p1, "feed audioData"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    monitor-exit v0

    return-void

    :goto_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_9

    throw p0
.end method

.method public isProcessing()Z
    .registers 4

    .line 124
    iget-object v0, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mReadyFence:Ljava/lang/Object;

    monitor-enter v0

    .line 125
    :try_start_3
    iget-boolean v1, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mReady:Z

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 126
    monitor-exit v0

    return v2

    :catchall_a
    move-exception p0

    goto :goto_20

    .line 128
    :cond_c
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_a

    .line 129
    iget-object v1, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 130
    :try_start_10
    iget-boolean v0, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mRunning:Z

    if-eqz v0, :cond_1c

    iget-boolean p0, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mStopped:Z

    if-nez p0, :cond_1c

    const/4 v2, 0x1

    goto :goto_1c

    :catchall_1a
    move-exception p0

    goto :goto_1e

    :cond_1c
    :goto_1c
    monitor-exit v1

    return v2

    .line 131
    :goto_1e
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_10 .. :try_end_1f} :catchall_1a

    throw p0

    .line 128
    :goto_20
    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_a

    throw p0
.end method

.method public isStopTimeout()Z
    .registers 3

    .line 160
    iget-object v0, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mReadyFence:Ljava/lang/Object;

    monitor-enter v0

    .line 161
    :try_start_3
    iget-boolean v1, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mReady:Z

    if-nez v1, :cond_c

    const/4 p0, 0x0

    .line 162
    monitor-exit v0

    return p0

    :catchall_a
    move-exception p0

    goto :goto_17

    .line 164
    :cond_c
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_a

    .line 165
    iget-object v1, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 166
    :try_start_10
    iget-boolean p0, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mIsStopTimeoutState:Z

    monitor-exit v1

    return p0

    :catchall_14
    move-exception p0

    .line 167
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_14

    throw p0

    .line 164
    :goto_17
    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_a

    throw p0
.end method

.method public run()V
    .registers 3

    .line 213
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 214
    iget-object v0, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mReadyFence:Ljava/lang/Object;

    monitor-enter v0

    .line 215
    :try_start_6
    new-instance v1, Lcom/ss/android/medialib/audio/AudioDataProcessThread$ProcessHandler;

    invoke-direct {v1, p0}, Lcom/ss/android/medialib/audio/AudioDataProcessThread$ProcessHandler;-><init>(Lcom/ss/android/medialib/audio/AudioDataProcessThread;)V

    iput-object v1, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mHandler:Lcom/ss/android/medialib/audio/AudioDataProcessThread$ProcessHandler;

    const/4 v1, 0x1

    .line 216
    iput-boolean v1, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mReady:Z

    .line 217
    iget-object v1, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mReadyFence:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 218
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_30

    .line 220
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 222
    const-string v0, "AudioDataProcessThread"

    const-string v1, "Encoder thread exiting"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-object v1, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mReadyFence:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    .line 224
    :try_start_24
    iput-boolean v0, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mRunning:Z

    iput-boolean v0, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mReady:Z

    const/4 v0, 0x0

    .line 225
    iput-object v0, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mHandler:Lcom/ss/android/medialib/audio/AudioDataProcessThread$ProcessHandler;

    .line 226
    monitor-exit v1

    return-void

    :catchall_2d
    move-exception p0

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_24 .. :try_end_2f} :catchall_2d

    throw p0

    :catchall_30
    move-exception p0

    .line 218
    :try_start_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw p0
.end method

.method public start()V
    .registers 4

    .line 70
    const-string v0, "AudioDataProcessThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ss/android/vesdk/VELogUtil;->__FILE__()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ss/android/vesdk/VELogUtil;->__FUNCTION__()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mReadyFence:Ljava/lang/Object;

    monitor-enter v0

    .line 72
    :try_start_24
    iget-boolean v1, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mRunning:Z

    if-eqz v1, :cond_33

    .line 73
    const-string p0, "AudioDataProcessThread"

    const-string v1, "thread already running"

    invoke-static {p0, v1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    monitor-exit v0

    return-void

    :catchall_31
    move-exception p0

    goto :goto_4c

    :cond_33
    const/4 v1, 0x1

    .line 76
    iput-boolean v1, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mRunning:Z

    .line 77
    new-instance v1, Ljava/lang/Thread;

    const-string v2, "AudioDataProcessThread"

    invoke-direct {v1, p0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 78
    :catch_40
    :goto_40
    iget-boolean v1, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mReady:Z
    :try_end_42
    .catchall {:try_start_24 .. :try_end_42} :catchall_31

    if-nez v1, :cond_4a

    .line 80
    :try_start_44
    iget-object v1, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mReadyFence:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_49
    .catch Ljava/lang/InterruptedException; {:try_start_44 .. :try_end_49} :catch_40
    .catchall {:try_start_44 .. :try_end_49} :catchall_31

    goto :goto_40

    .line 85
    :cond_4a
    :try_start_4a
    monitor-exit v0

    return-void

    :goto_4c
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_31

    throw p0
.end method

.method public startFeeding(IID)V
    .registers 8

    .line 95
    const-string v0, "AudioDataProcessThread"

    const-string v1, "startFeeding"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mReadyFence:Ljava/lang/Object;

    monitor-enter v0

    .line 97
    :try_start_a
    iget-boolean v1, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mReady:Z

    if-nez v1, :cond_19

    .line 98
    const-string p0, "AudioDataProcessThread"

    const-string p1, "startFeeding not ready"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    monitor-exit v0

    return-void

    :catchall_17
    move-exception p0

    goto :goto_37

    .line 101
    :cond_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_a .. :try_end_1a} :catchall_17

    .line 102
    iget-object v0, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mBufferCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 103
    iget-object v0, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mTimeQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 104
    iget-object v0, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mHandler:Lcom/ss/android/medialib/audio/AudioDataProcessThread$ProcessHandler;

    iget-object v2, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mHandler:Lcom/ss/android/medialib/audio/AudioDataProcessThread$ProcessHandler;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    invoke-virtual {v2, v1, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 105
    iput-boolean v1, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mIsStopTimeoutState:Z

    return-void

    .line 101
    :goto_37
    :try_start_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_17

    throw p0
.end method

.method public stop()V
    .registers 4

    .line 201
    iget-object v0, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mReadyFence:Ljava/lang/Object;

    monitor-enter v0

    .line 202
    :try_start_3
    iget-boolean v1, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mReady:Z

    if-nez v1, :cond_b

    .line 203
    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    goto :goto_20

    .line 205
    :cond_b
    iget-object v1, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mHandler:Lcom/ss/android/medialib/audio/AudioDataProcessThread$ProcessHandler;

    iget-object p0, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mHandler:Lcom/ss/android/medialib/audio/AudioDataProcessThread$ProcessHandler;

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 206
    const-string p0, "AudioDataProcessThread"

    const-string v1, "stop()"

    invoke-static {p0, v1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    monitor-exit v0

    return-void

    :goto_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_9

    throw p0
.end method

.method public stopFeeding()V
    .registers 3

    .line 113
    const-string v0, "AudioDataProcessThread"

    const-string v1, "stopFeeding"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mReadyFence:Ljava/lang/Object;

    monitor-enter v0

    .line 115
    :try_start_a
    iget-boolean v1, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mReady:Z

    if-nez v1, :cond_19

    .line 116
    const-string p0, "AudioDataProcessThread"

    const-string v1, "startFeeding not ready"

    invoke-static {p0, v1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    monitor-exit v0

    return-void

    :catchall_17
    move-exception p0

    goto :goto_27

    .line 119
    :cond_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_a .. :try_end_1a} :catchall_17

    .line 120
    iget-object v0, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mHandler:Lcom/ss/android/medialib/audio/AudioDataProcessThread$ProcessHandler;

    iget-object p0, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mHandler:Lcom/ss/android/medialib/audio/AudioDataProcessThread$ProcessHandler;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 119
    :goto_27
    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_17

    throw p0
.end method

.method public waitUtilAudioProcessDone()V
    .registers 9

    .line 137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 138
    iput-boolean v2, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mIsStopTimeoutState:Z

    .line 139
    iget-object v2, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 140
    :try_start_a
    iget-object v3, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mReadyFence:Ljava/lang/Object;

    monitor-enter v3
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_1e

    .line 141
    :try_start_d
    iget-object v4, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mHandler:Lcom/ss/android/medialib/audio/AudioDataProcessThread$ProcessHandler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    .line 142
    monitor-exit v3
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_45

    const-wide/16 v6, 0x1388

    if-nez v4, :cond_20

    .line 143
    :try_start_19
    iget-boolean v3, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mStopped:Z

    if-nez v3, :cond_38

    goto :goto_20

    :catchall_1e
    move-exception p0

    goto :goto_48

    .line 144
    :cond_20
    :goto_20
    const-string v3, "AudioDataProcessThread"

    const-string v4, "waiting audio process start"

    invoke-static {v3, v4}, Lcom/ss/android/medialib/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_19 .. :try_end_27} :catchall_1e

    .line 146
    :try_start_27
    iget-object v3, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mLock:Ljava/lang/Object;

    invoke-virtual {v3, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_2c
    .catch Ljava/lang/InterruptedException; {:try_start_27 .. :try_end_2c} :catch_2d
    .catchall {:try_start_27 .. :try_end_2c} :catchall_1e

    goto :goto_31

    :catch_2d
    move-exception v3

    .line 148
    :try_start_2e
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 150
    :goto_31
    const-string v3, "AudioDataProcessThread"

    const-string v4, "waiting audio process done"

    invoke-static {v3, v4}, Lcom/ss/android/medialib/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_38
    monitor-exit v2
    :try_end_39
    .catchall {:try_start_2e .. :try_end_39} :catchall_1e

    .line 153
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    cmp-long v0, v2, v6

    if-ltz v0, :cond_44

    .line 155
    iput-boolean v5, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mIsStopTimeoutState:Z

    :cond_44
    return-void

    :catchall_45
    move-exception p0

    .line 142
    :try_start_46
    monitor-exit v3
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    :try_start_47
    throw p0

    .line 152
    :goto_48
    monitor-exit v2
    :try_end_49
    .catchall {:try_start_47 .. :try_end_49} :catchall_1e

    throw p0
.end method
