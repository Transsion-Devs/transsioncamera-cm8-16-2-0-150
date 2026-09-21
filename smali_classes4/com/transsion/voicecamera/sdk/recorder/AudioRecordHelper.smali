.class public Lcom/transsion/voicecamera/sdk/recorder/AudioRecordHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "VCSDK-AudioRecordHelper"

.field public static final USE_CHANNEL_IN_MONO:I = 0x1

.field public static final USE_CHANNEL_IN_STEREO:I = 0x2

.field public static final USE_CHANNEL_IN_STEREO_BARGEIN:I = 0x3

.field private static volatile sInstance:Lcom/transsion/voicecamera/sdk/recorder/AudioRecordHelper;


# instance fields
.field private mRecorder:Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    :try_start_3
    new-instance v0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;

    invoke-direct {v0}, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;-><init>()V

    iput-object v0, p0, Lcom/transsion/voicecamera/sdk/recorder/AudioRecordHelper;->mRecorder:Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception p0

    .line 30
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    :try_start_3
    new-instance v0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;

    invoke-direct {v0, p1}, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/voicecamera/sdk/recorder/AudioRecordHelper;->mRecorder:Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception p0

    .line 38
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static getInstance()Lcom/transsion/voicecamera/sdk/recorder/AudioRecordHelper;
    .registers 2

    .line 16
    sget-object v0, Lcom/transsion/voicecamera/sdk/recorder/AudioRecordHelper;->sInstance:Lcom/transsion/voicecamera/sdk/recorder/AudioRecordHelper;

    if-nez v0, :cond_19

    .line 17
    const-class v0, Lcom/transsion/voicecamera/sdk/recorder/AudioRecordHelper;

    monitor-enter v0

    .line 18
    :try_start_7
    sget-object v1, Lcom/transsion/voicecamera/sdk/recorder/AudioRecordHelper;->sInstance:Lcom/transsion/voicecamera/sdk/recorder/AudioRecordHelper;

    if-nez v1, :cond_15

    .line 19
    new-instance v1, Lcom/transsion/voicecamera/sdk/recorder/AudioRecordHelper;

    invoke-direct {v1}, Lcom/transsion/voicecamera/sdk/recorder/AudioRecordHelper;-><init>()V

    sput-object v1, Lcom/transsion/voicecamera/sdk/recorder/AudioRecordHelper;->sInstance:Lcom/transsion/voicecamera/sdk/recorder/AudioRecordHelper;

    goto :goto_15

    :catchall_13
    move-exception v1

    goto :goto_17

    .line 21
    :cond_15
    :goto_15
    monitor-exit v0

    goto :goto_19

    :goto_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_13

    throw v1

    .line 23
    :cond_19
    :goto_19
    sget-object v0, Lcom/transsion/voicecamera/sdk/recorder/AudioRecordHelper;->sInstance:Lcom/transsion/voicecamera/sdk/recorder/AudioRecordHelper;

    return-object v0
.end method


# virtual methods
.method public registerRecordListener(Lcom/transsion/voicecamera/sdk/recorder/RecordListener;)V
    .registers 2

    .line 43
    iget-object p0, p0, Lcom/transsion/voicecamera/sdk/recorder/AudioRecordHelper;->mRecorder:Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;

    if-eqz p0, :cond_7

    .line 44
    invoke-virtual {p0, p1}, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;->setRecordListener(Lcom/transsion/voicecamera/sdk/recorder/RecordListener;)V

    :cond_7
    return-void
.end method

.method public releaseRecorder()V
    .registers 3

    .line 80
    iget-object v0, p0, Lcom/transsion/voicecamera/sdk/recorder/AudioRecordHelper;->mRecorder:Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;

    if-eqz v0, :cond_10

    .line 81
    const-string v0, "VCSDK-AudioRecordHelper"

    const-string v1, "release recorder"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object p0, p0, Lcom/transsion/voicecamera/sdk/recorder/AudioRecordHelper;->mRecorder:Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;

    invoke-virtual {p0}, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;->releaseRecorder()V

    :cond_10
    return-void
.end method

.method public startRecording()Z
    .registers 4

    .line 55
    iget-object v0, p0, Lcom/transsion/voicecamera/sdk/recorder/AudioRecordHelper;->mRecorder:Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;

    const/4 v1, 0x0

    const-string v2, "VCSDK-AudioRecordHelper"

    if-nez v0, :cond_d

    .line 56
    const-string p0, "failed to start recording, recorder is null"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 61
    :cond_d
    :try_start_d
    invoke-virtual {v0}, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;->isRecording()Z

    move-result v0

    if-nez v0, :cond_24

    .line 62
    const-string v0, "start record "

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object p0, p0, Lcom/transsion/voicecamera/sdk/recorder/AudioRecordHelper;->mRecorder:Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;

    invoke-virtual {p0}, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;->startRecording()V
    :try_end_1d
    .catchall {:try_start_d .. :try_end_1d} :catchall_1f

    const/4 p0, 0x1

    return p0

    .line 67
    :catchall_1f
    const-string p0, "start record error"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    return v1
.end method

.method public stopRecording()V
    .registers 3

    .line 73
    iget-object v0, p0, Lcom/transsion/voicecamera/sdk/recorder/AudioRecordHelper;->mRecorder:Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;

    if-eqz v0, :cond_10

    .line 74
    const-string v0, "VCSDK-AudioRecordHelper"

    const-string v1, "stop record "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object p0, p0, Lcom/transsion/voicecamera/sdk/recorder/AudioRecordHelper;->mRecorder:Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;

    invoke-virtual {p0}, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;->stopRecording()V

    :cond_10
    return-void
.end method

.method public unregisterRecordListener()V
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/transsion/voicecamera/sdk/recorder/AudioRecordHelper;->mRecorder:Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;

    if-eqz p0, :cond_7

    .line 50
    invoke-virtual {p0}, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;->removeRecordListener()V

    :cond_7
    return-void
.end method
