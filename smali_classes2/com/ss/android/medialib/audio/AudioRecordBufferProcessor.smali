.class public Lcom/ss/android/medialib/audio/AudioRecordBufferProcessor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/medialib/audio/IDataFeed;


# static fields
.field private static final TAG:Ljava/lang/String; = "AudioRecordBufferProcessor"


# instance fields
.field private mHandThread:Landroid/os/HandlerThread;

.field private mHandler:Landroid/os/Handler;

.field private volatile mIsRunning:Z

.field private mRecorderInterface:Lorg/libsdl/app/AudioRecorderInterface;

.field private final mWavFileLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lorg/libsdl/app/AudioRecorderInterface;)V
    .registers 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ss/android/medialib/audio/AudioRecordBufferProcessor;->mWavFileLock:Ljava/lang/Object;

    .line 22
    iput-object p1, p0, Lcom/ss/android/medialib/audio/AudioRecordBufferProcessor;->mRecorderInterface:Lorg/libsdl/app/AudioRecorderInterface;

    return-void
.end method

.method static synthetic access$000(Lcom/ss/android/medialib/audio/AudioRecordBufferProcessor;)Z
    .registers 1

    .line 11
    iget-boolean p0, p0, Lcom/ss/android/medialib/audio/AudioRecordBufferProcessor;->mIsRunning:Z

    return p0
.end method

.method static synthetic access$100(Lcom/ss/android/medialib/audio/AudioRecordBufferProcessor;)Ljava/lang/Object;
    .registers 1

    .line 11
    iget-object p0, p0, Lcom/ss/android/medialib/audio/AudioRecordBufferProcessor;->mWavFileLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ss/android/medialib/audio/AudioRecordBufferProcessor;)Lorg/libsdl/app/AudioRecorderInterface;
    .registers 1

    .line 11
    iget-object p0, p0, Lcom/ss/android/medialib/audio/AudioRecordBufferProcessor;->mRecorderInterface:Lorg/libsdl/app/AudioRecorderInterface;

    return-object p0
.end method


# virtual methods
.method public feed([BIJ)I
    .registers 12

    .line 83
    monitor-enter p0

    .line 84
    :try_start_1
    iget-boolean v0, p0, Lcom/ss/android/medialib/audio/AudioRecordBufferProcessor;->mIsRunning:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_21

    if-nez v0, :cond_d

    const/16 p1, -0x6c

    :try_start_7
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_7 .. :try_end_8} :catchall_9

    return p1

    :catchall_9
    move-exception v0

    move-object p1, v0

    move-object v2, p0

    goto :goto_28

    .line 85
    :cond_d
    :try_start_d
    iget-object v0, p0, Lcom/ss/android/medialib/audio/AudioRecordBufferProcessor;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_24

    .line 86
    new-instance v1, Lcom/ss/android/medialib/audio/AudioRecordBufferProcessor$1;
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_21

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    :try_start_17
    invoke-direct/range {v1 .. v6}, Lcom/ss/android/medialib/audio/AudioRecordBufferProcessor$1;-><init>(Lcom/ss/android/medialib/audio/AudioRecordBufferProcessor;[BIJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_25

    :catchall_1e
    move-exception v0

    :goto_1f
    move-object p1, v0

    goto :goto_28

    :catchall_21
    move-exception v0

    move-object v2, p0

    goto :goto_1f

    :cond_24
    move-object v2, p0

    .line 100
    :goto_25
    monitor-exit v2

    const/4 p0, 0x0

    return p0

    :goto_28
    monitor-exit v2
    :try_end_29
    .catchall {:try_start_17 .. :try_end_29} :catchall_1e

    throw p1
.end method

.method public declared-synchronized isRunning()Z
    .registers 2

    monitor-enter p0

    .line 106
    :try_start_1
    iget-boolean v0, p0, Lcom/ss/android/medialib/audio/AudioRecordBufferProcessor;->mIsRunning:Z
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

.method public start(IID)I
    .registers 7

    .line 26
    monitor-enter p0

    .line 28
    :try_start_1
    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lcom/ss/android/medialib/audio/AudioRecordBufferProcessor;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ss/android/medialib/audio/AudioRecordBufferProcessor;->mHandThread:Landroid/os/HandlerThread;

    .line 29
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 30
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/ss/android/medialib/audio/AudioRecordBufferProcessor;->mHandThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ss/android/medialib/audio/AudioRecordBufferProcessor;->mHandler:Landroid/os/Handler;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1a} :catch_1d
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1b

    goto :goto_22

    :catchall_1b
    move-exception p1

    goto :goto_4b

    :catch_1d
    const/4 v0, 0x0

    .line 32
    :try_start_1e
    iput-object v0, p0, Lcom/ss/android/medialib/audio/AudioRecordBufferProcessor;->mHandler:Landroid/os/Handler;

    .line 33
    iput-object v0, p0, Lcom/ss/android/medialib/audio/AudioRecordBufferProcessor;->mHandThread:Landroid/os/HandlerThread;

    .line 35
    :goto_22
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_1b

    .line 36
    iget-object v0, p0, Lcom/ss/android/medialib/audio/AudioRecordBufferProcessor;->mWavFileLock:Ljava/lang/Object;

    monitor-enter v0

    .line 37
    :try_start_26
    iget-object v1, p0, Lcom/ss/android/medialib/audio/AudioRecordBufferProcessor;->mRecorderInterface:Lorg/libsdl/app/AudioRecorderInterface;

    if-eqz v1, :cond_46

    .line 38
    invoke-interface {v1, p1, p2, p3, p4}, Lorg/libsdl/app/AudioRecorderInterface;->initWavFile(IID)I

    move-result p1

    if-eqz p1, :cond_3a

    .line 40
    sget-object p2, Lcom/ss/android/medialib/audio/AudioRecordBufferProcessor;->TAG:Ljava/lang/String;

    const-string p3, "init wav file failed"

    invoke-static {p2, p3}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_41

    :catchall_38
    move-exception p0

    goto :goto_49

    .line 42
    :cond_3a
    sget-object p2, Lcom/ss/android/medialib/audio/AudioRecordBufferProcessor;->TAG:Ljava/lang/String;

    const-string p3, "init wav file ok"

    invoke-static {p2, p3}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_41
    const/4 p2, 0x1

    .line 44
    iput-boolean p2, p0, Lcom/ss/android/medialib/audio/AudioRecordBufferProcessor;->mIsRunning:Z

    .line 45
    monitor-exit v0

    return p1

    .line 47
    :cond_46
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :goto_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_26 .. :try_end_4a} :catchall_38

    throw p0

    .line 35
    :goto_4b
    :try_start_4b
    monitor-exit p0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_1b

    throw p1
.end method

.method public stop()I
    .registers 4

    .line 52
    monitor-enter p0

    .line 53
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/medialib/audio/AudioRecordBufferProcessor;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 54
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_c

    :catchall_a
    move-exception v0

    goto :goto_3f

    .line 56
    :cond_c
    :goto_c
    iget-object v0, p0, Lcom/ss/android/medialib/audio/AudioRecordBufferProcessor;->mHandThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_17

    .line 58
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 62
    iput-object v1, p0, Lcom/ss/android/medialib/audio/AudioRecordBufferProcessor;->mHandThread:Landroid/os/HandlerThread;

    .line 63
    iput-object v1, p0, Lcom/ss/android/medialib/audio/AudioRecordBufferProcessor;->mHandler:Landroid/os/Handler;

    .line 65
    :cond_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_a

    .line 66
    iget-object v0, p0, Lcom/ss/android/medialib/audio/AudioRecordBufferProcessor;->mWavFileLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 67
    :try_start_1c
    iput-boolean v1, p0, Lcom/ss/android/medialib/audio/AudioRecordBufferProcessor;->mIsRunning:Z

    .line 68
    iget-object p0, p0, Lcom/ss/android/medialib/audio/AudioRecordBufferProcessor;->mRecorderInterface:Lorg/libsdl/app/AudioRecorderInterface;

    if-eqz p0, :cond_3b

    .line 69
    invoke-interface {p0, v1}, Lorg/libsdl/app/AudioRecorderInterface;->closeWavFile(Z)I

    move-result p0

    if-eqz p0, :cond_32

    .line 71
    sget-object v1, Lcom/ss/android/medialib/audio/AudioRecordBufferProcessor;->TAG:Ljava/lang/String;

    const-string v2, "close wav file failed"

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_39

    :catchall_30
    move-exception p0

    goto :goto_3d

    .line 73
    :cond_32
    sget-object v1, Lcom/ss/android/medialib/audio/AudioRecordBufferProcessor;->TAG:Ljava/lang/String;

    const-string v2, "close wav file ok"

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :goto_39
    monitor-exit v0

    return p0

    .line 77
    :cond_3b
    monitor-exit v0

    return v1

    :goto_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_1c .. :try_end_3e} :catchall_30

    throw p0

    .line 65
    :goto_3f
    :try_start_3f
    monitor-exit p0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_a

    throw v0
.end method
