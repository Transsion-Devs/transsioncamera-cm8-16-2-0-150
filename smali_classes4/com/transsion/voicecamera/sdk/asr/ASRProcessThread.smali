.class public Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field public static final AUDIO_FRAME_TYPE_CHANGE:I = 0x1

.field public static final AUDIO_FRAME_TYPE_CUTOFF:I = 0x2

.field public static final AUDIO_FRAME_TYPE_END:I = 0x3

.field public static final AUDIO_FRAME_TYPE_START:I = 0x0

.field public static final AUDIO_FRAME_TYPE_VOICEPHONE:I = 0x4

.field private static final EVENT:Ljava/lang/String; = "voice_camera_trig"

.field private static final MAX_QUEUE_DATA:I = 0xa

.field public static final TAG:Ljava/lang/String; = "VCSDK-ASRThread"

.field private static final THREAD_STATE_CREATE:I = 0x0

.field private static final THREAD_STATE_EXIT:I = 0x4

.field private static final THREAD_STATE_RUN:I = 0x3

.field private static final THREAD_STATE_START:I = 0x1

.field private static final THREAD_STATE_WAIT:I = 0x2

.field private static final TID:J = 0x3867d23d05L

.field static final formatter:Ljava/text/SimpleDateFormat;


# instance fields
.field private asrModelResultListener:Lcom/transsion/voicecamera/sdk/asr/ASRModelResultListener;

.field private volatile asrReady:Z

.field private audioBufferQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/transsion/voicecamera/sdk/vad/VADResultFrame;",
            ">;"
        }
    .end annotation
.end field

.field private language:I

.field private mFileName:Ljava/lang/String;

.field private mThreadKeepRun:Z

.field private mThreadState:I

.field private threadLoop:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 141
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddHHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;->formatter:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 54
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput v0, p0, Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;->mThreadState:I

    .line 56
    iput-boolean v0, p0, Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;->mThreadKeepRun:Z

    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p0, Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;->threadLoop:Z

    .line 58
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;->audioBufferQueue:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method private static getNetworkState(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 146
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 147
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    if-eqz p0, :cond_29

    const/4 v0, 0x1

    .line 149
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 150
    const-string p0, "wifi"

    return-object p0

    :cond_1c
    const/4 v0, 0x0

    .line 151
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p0

    if-eqz p0, :cond_26

    .line 152
    const-string p0, "mobile"

    return-object p0

    .line 154
    :cond_26
    const-string p0, "other"

    return-object p0

    .line 157
    :cond_29
    const-string p0, "none"

    return-object p0
.end method

.method private handleAsrResult(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 301
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleAsrResult result = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VCSDK-ASRThread"

    invoke-static {v0, p0}, Lcom/transsion/voicecamera/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method private loadAsrModel()V
    .registers 9

    .line 338
    const-string v0, "asr model init"

    invoke-static {v0}, Lcom/transsion/voicecamera/sdk/utils/DebugMode;->PerfTimestampStart(Ljava/lang/String;)V

    .line 339
    sget-wide v1, Lcom/transsion/voicecamera/sdk/asr/ASRModelExecutor;->asrPointer:J

    .line 340
    invoke-static {}, Lcom/transsion/voicecamera/sdk/TransVCamera;->getConfig()Lcom/transsion/voicecamera/sdk/TransVCConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/voicecamera/sdk/TransVCConfig;->getInternalStoragePath()Ljava/lang/String;

    move-result-object v3

    .line 341
    invoke-static {}, Lcom/transsion/voicecamera/sdk/TransVCamera;->getConfig()Lcom/transsion/voicecamera/sdk/TransVCConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/voicecamera/sdk/TransVCConfig;->getResultPublishSwitch()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-static {}, Lcom/transsion/voicecamera/sdk/TransVCamera;->getConfig()Lcom/transsion/voicecamera/sdk/TransVCConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/voicecamera/sdk/TransVCConfig;->getResultPublishPath()Ljava/lang/String;

    move-result-object v4

    goto :goto_23

    :cond_22
    const/4 v4, 0x0

    :goto_23
    iget-object v5, p0, Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;->mFileName:Ljava/lang/String;

    .line 343
    invoke-static {}, Lcom/transsion/voicecamera/sdk/TransVCamera;->getSDKVersion()Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;->language:I

    .line 339
    invoke-static/range {v1 .. v7}, Lcom/transsion/voicecamera/sdk/asr/ASRModelExecutor;->asrEngineInit(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;->asrReady:Z

    .line 345
    invoke-static {v0}, Lcom/transsion/voicecamera/sdk/utils/DebugMode;->PerfTimestampEnd(Ljava/lang/String;)V

    return-void
.end method

.method private unLoadAsrModel()V
    .registers 3

    const/4 v0, 0x0

    .line 349
    iput-boolean v0, p0, Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;->asrReady:Z

    .line 350
    sget-wide v0, Lcom/transsion/voicecamera/sdk/asr/ASRModelExecutor;->asrPointer:J

    invoke-static {v0, v1}, Lcom/transsion/voicecamera/sdk/asr/ASRModelExecutor;->asrEngineDestroy(J)Z

    return-void
.end method


# virtual methods
.method public addAudioToExecuteQueue(Lcom/transsion/voicecamera/sdk/vad/VADResultFrame;)V
    .registers 4

    .line 119
    iget v0, p0, Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;->language:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1a

    .line 120
    iget-object p1, p0, Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;->audioBufferQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    const/4 p1, 0x4

    .line 121
    iput p1, p0, Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;->mThreadState:I

    .line 122
    const-string p1, "VCSDK-ASRThread"

    const-string v0, "hausa, ASRModelThread exit."

    invoke-static {p1, v0}, Lcom/transsion/voicecamera/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x9

    .line 123
    invoke-virtual {p0, p1}, Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;->onAsrError(I)V

    return-void

    .line 133
    :cond_1a
    iget-object v0, p0, Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;->audioBufferQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 134
    monitor-enter p0

    .line 135
    :try_start_20
    iget p1, p0, Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;->mThreadState:I

    if-ne p1, v1, :cond_2a

    .line 136
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    goto :goto_2a

    :catchall_28
    move-exception p1

    goto :goto_2c

    .line 138
    :cond_2a
    :goto_2a
    monitor-exit p0

    return-void

    :goto_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_20 .. :try_end_2d} :catchall_28

    throw p1
.end method

.method public deInit()V
    .registers 4

    .line 77
    monitor-enter p0

    .line 78
    :try_start_1
    iget v0, p0, Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;->mThreadState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_c

    const/4 v1, 0x3

    if-eq v0, v1, :cond_c

    const/4 v1, 0x2

    if-ne v0, v1, :cond_14

    :cond_c
    const/4 v0, 0x0

    .line 81
    iput-boolean v0, p0, Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;->mThreadKeepRun:Z

    .line 82
    iput-boolean v0, p0, Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;->threadLoop:Z

    .line 83
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 85
    :cond_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_46

    .line 87
    const-class v0, Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;

    monitor-enter v0

    .line 88
    :try_start_18
    iget v1, p0, Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;->mThreadState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2c

    iget-boolean v1, p0, Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;->asrReady:Z

    if-eqz v1, :cond_22

    goto :goto_2c

    .line 97
    :cond_22
    const-string p0, "VCSDK-ASRThread"

    const-string v1, "deInit exit after thread exit!"

    invoke-static {p0, v1}, Lcom/transsion/voicecamera/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_29
    .catchall {:try_start_18 .. :try_end_29} :catchall_2a

    goto :goto_42

    :catchall_2a
    move-exception p0

    goto :goto_44

    .line 90
    :cond_2c
    :goto_2c
    :try_start_2c
    const-string v1, "VCSDK-ASRThread"

    const-string v2, "deInit, waiting for asr thread exiting..."

    invoke-static {v1, v2}, Lcom/transsion/voicecamera/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Ljava/lang/Thread;->join()V

    .line 92
    const-string p0, "VCSDK-ASRThread"

    const-string v1, "deInit, asr thread exit!!!"

    invoke-static {p0, v1}, Lcom/transsion/voicecamera/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_3d} :catch_3e
    .catchall {:try_start_2c .. :try_end_3d} :catchall_2a

    goto :goto_42

    :catch_3e
    move-exception p0

    .line 94
    :try_start_3f
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 99
    :goto_42
    monitor-exit v0

    return-void

    :goto_44
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_3f .. :try_end_45} :catchall_2a

    throw p0

    :catchall_46
    move-exception v0

    .line 85
    :try_start_47
    monitor-exit p0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw v0
.end method

.method public init()V
    .registers 3

    .line 66
    iget v0, p0, Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;->mThreadState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1e

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "thread is in initialing state, lang:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;->language:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VCSDK-ASRThread"

    invoke-static {v0, p0}, Lcom/transsion/voicecamera/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1e
    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;->mThreadKeepRun:Z

    .line 71
    iput-boolean v1, p0, Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;->threadLoop:Z

    .line 72
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;->startThread()I

    return-void
.end method

.method public onAsrData(Lcom/transsion/voicecamera/sdk/asr/ASRResult;)V
    .registers 11

    .line 163
    iget-object v0, p0, Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;->asrModelResultListener:Lcom/transsion/voicecamera/sdk/asr/ASRModelResultListener;

    const-string v1, "VCSDK-ASRThread"

    if-eqz v0, :cond_cf

    const-wide v2, 0x3867d23d05L

    .line 164
    invoke-static {v2, v3}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;->isEnabled(J)Z

    move-result v0

    .line 165
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mIsTidEnabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/transsion/voicecamera/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v1, ""

    if-nez p1, :cond_29

    move-object v4, v1

    goto :goto_2d

    :cond_29
    invoke-virtual {p1}, Lcom/transsion/voicecamera/sdk/asr/ASRResult;->getResult()Ljava/lang/String;

    move-result-object v4

    :goto_2d
    if-nez p1, :cond_31

    const/4 v5, 0x0

    goto :goto_35

    .line 167
    :cond_31
    invoke-virtual {p1}, Lcom/transsion/voicecamera/sdk/asr/ASRResult;->getThreshold()F

    move-result v5

    :goto_35
    if-nez p1, :cond_38

    goto :goto_3c

    .line 168
    :cond_38
    invoke-virtual {p1}, Lcom/transsion/voicecamera/sdk/asr/ASRResult;->getRid()Ljava/lang/String;

    move-result-object v1

    .line 169
    :goto_3c
    sget-object p1, Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;->formatter:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 170
    new-instance v6, Lcom/google/gson/JsonObject;

    invoke-direct {v6}, Lcom/google/gson/JsonObject;-><init>()V

    .line 171
    const-string v7, "device_type"

    const-string v8, "phone"

    invoke-virtual {v6, v7, v8}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v7, "device_model"

    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-static {}, Lcom/transsion/voicecamera/sdk/TransVCamera;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;->getNetworkState(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "network"

    invoke-virtual {v6, v8, v7}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v7, "rid"

    invoke-virtual {v6, v7, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v7, "langauge"

    invoke-virtual {v6, v7, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v1, "sdk_version"

    invoke-static {}, Lcom/transsion/voicecamera/sdk/TransVCamera;->getSDKVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v1, v7}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v1, "kws_confidence"

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v6, v1, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 179
    const-string v1, "kws_result"

    invoke-virtual {v6, v1, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string v1, "local_date"

    invoke-virtual {v6, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_c5

    .line 182
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 183
    invoke-virtual {v6}, Lcom/google/gson/JsonObject;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_bf

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 184
    invoke-virtual {v6, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v1, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a7

    .line 186
    :cond_bf
    const-string v0, "voice_camera_trig"

    const/4 v1, 0x1

    invoke-static {v2, v3, v0, v1, p1}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;->serverLog(JLjava/lang/String;ILandroid/os/Bundle;)V

    .line 188
    :cond_c5
    iget-object p0, p0, Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;->asrModelResultListener:Lcom/transsion/voicecamera/sdk/asr/ASRModelResultListener;

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v4, p1}, Lcom/transsion/voicecamera/sdk/asr/ASRModelResultListener;->onAsrData(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 190
    :cond_cf
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "asrModelResultHandler is null, result:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/voicecamera/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAsrError(I)V
    .registers 4

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "asr model thread, onAsrError:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VCSDK-ASRThread"

    invoke-static {v1, v0}, Lcom/transsion/voicecamera/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object p0, p0, Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;->asrModelResultListener:Lcom/transsion/voicecamera/sdk/asr/ASRModelResultListener;

    if-eqz p0, :cond_1e

    .line 197
    invoke-interface {p0, p1}, Lcom/transsion/voicecamera/sdk/asr/ASRModelResultListener;->onError(I)V

    return-void

    .line 199
    :cond_1e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "asrModelResultHandler is null, errCode:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/voicecamera/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReady(Ljava/lang/String;)V
    .registers 4

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReady file:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VCSDK-ASRThread"

    invoke-static {v1, v0}, Lcom/transsion/voicecamera/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iput-object p1, p0, Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;->mFileName:Ljava/lang/String;

    .line 113
    iget-object p0, p0, Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;->asrModelResultListener:Lcom/transsion/voicecamera/sdk/asr/ASRModelResultListener;

    if-eqz p0, :cond_1f

    .line 114
    invoke-interface {p0, p1}, Lcom/transsion/voicecamera/sdk/asr/ASRModelResultListener;->onReady(Ljava/lang/String;)V

    :cond_1f
    return-void
.end method

.method public run()V
    .registers 9

    .line 217
    const-string v0, "VCSDK-ASRThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ASR Thread start, tid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/voicecamera/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 218
    iput v0, p0, Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;->mThreadState:I

    .line 219
    invoke-static {}, Lcom/transsion/voicecamera/sdk/utils/Utils;->getLanguage()I

    move-result v1

    iput v1, p0, Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;->language:I

    .line 223
    :cond_23
    :try_start_23
    monitor-enter p0
    :try_end_24
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_24} :catch_57

    .line 224
    :try_start_24
    iget-boolean v1, p0, Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;->threadLoop:Z

    if-nez v1, :cond_34

    .line 225
    const-string v1, "VCSDK-ASRThread"

    const-string v2, "ASRModelThread exit before wait"

    invoke-static {v1, v2}, Lcom/transsion/voicecamera/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    monitor-exit p0

    goto/16 :goto_11b

    :catchall_32
    move-exception v1

    goto :goto_55

    .line 229
    :cond_34
    iget-object v1, p0, Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;->audioBufferQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    if-eqz v1, :cond_3f

    .line 230
    iput-boolean v0, p0, Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;->mThreadKeepRun:Z

    goto :goto_42

    :cond_3f
    const/4 v1, 0x0

    .line 232
    iput-boolean v1, p0, Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;->mThreadKeepRun:Z

    .line 235
    :goto_42
    iget-boolean v1, p0, Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;->mThreadKeepRun:Z

    if-nez v1, :cond_53

    const/4 v1, 0x2

    .line 236
    iput v1, p0, Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;->mThreadState:I

    .line 237
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 238
    const-string v1, "VCSDK-ASRThread"

    const-string v2, "ASRModelThread wait for next run"

    invoke-static {v1, v2}, Lcom/transsion/voicecamera/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    :cond_53
    monitor-exit p0

    goto :goto_5b

    :goto_55
    monitor-exit p0
    :try_end_56
    .catchall {:try_start_24 .. :try_end_56} :catchall_32

    :try_start_56
    throw v1
    :try_end_57
    .catch Ljava/lang/InterruptedException; {:try_start_56 .. :try_end_57} :catch_57

    :catch_57
    move-exception v1

    .line 242
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 245
    :goto_5b
    iget-boolean v1, p0, Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;->threadLoop:Z

    if-nez v1, :cond_68

    .line 246
    const-string v0, "VCSDK-ASRThread"

    const-string v1, "ASRModelThread exit after wait"

    invoke-static {v0, v1}, Lcom/transsion/voicecamera/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_11b

    :cond_68
    const/4 v1, 0x3

    .line 250
    iput v1, p0, Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;->mThreadState:I

    .line 252
    iget-boolean v1, p0, Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;->asrReady:Z

    if-nez v1, :cond_72

    .line 253
    invoke-direct {p0}, Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;->loadAsrModel()V

    .line 256
    :cond_72
    iget-object v1, p0, Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;->audioBufferQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    if-eqz v1, :cond_117

    .line 259
    :try_start_7a
    iget-object v1, p0, Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;->audioBufferQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/voicecamera/sdk/vad/VADResultFrame;
    :try_end_82
    .catch Ljava/lang/InterruptedException; {:try_start_7a .. :try_end_82} :catch_83

    goto :goto_88

    :catch_83
    move-exception v1

    .line 261
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v1, 0x0

    .line 263
    :goto_88
    iget-boolean v2, p0, Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;->asrReady:Z

    if-eqz v2, :cond_112

    .line 264
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    if-eqz v1, :cond_10a

    .line 265
    iget-object v4, v1, Lcom/transsion/voicecamera/sdk/vad/VADResultFrame;->floatPcm:[F

    if-nez v4, :cond_97

    goto :goto_10a

    .line 268
    :cond_97
    const-string v4, "VCSDK-ASRThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Enter the asr for common: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/transsion/voicecamera/sdk/vad/VADResultFrame;->vadRes:[I

    invoke-static {v6}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/transsion/voicecamera/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    sget-wide v4, Lcom/transsion/voicecamera/sdk/asr/ASRModelExecutor;->asrPointer:J

    iget-object v6, v1, Lcom/transsion/voicecamera/sdk/vad/VADResultFrame;->floatPcm:[F

    array-length v7, v6

    iget-object v1, v1, Lcom/transsion/voicecamera/sdk/vad/VADResultFrame;->vadRes:[I

    invoke-static {v4, v5, v6, v7, v1}, Lcom/transsion/voicecamera/sdk/asr/ASRModelExecutor;->asrEngineRunFromBuffer(J[FI[I)Lcom/transsion/voicecamera/sdk/asr/ASRResult;

    move-result-object v1

    .line 271
    const-string v4, "VCSDK-ASRThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "asr result="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ",time="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/transsion/voicecamera/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_ec

    .line 272
    invoke-virtual {v1}, Lcom/transsion/voicecamera/sdk/asr/ASRResult;->getResult()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    goto :goto_ee

    :cond_ec
    const-string v2, ""

    .line 273
    :goto_ee
    const-string v3, "capture"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_106

    const-string v3, "shoot"

    .line 274
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_106

    const-string v3, "cheese"

    .line 275
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_117

    .line 276
    :cond_106
    invoke-virtual {p0, v1}, Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;->onAsrData(Lcom/transsion/voicecamera/sdk/asr/ASRResult;)V

    goto :goto_117

    .line 266
    :cond_10a
    :goto_10a
    const-string v1, "VCSDK-ASRThread"

    const-string v2, "audioFrame audio data is null, ignore.."

    invoke-static {v1, v2}, Lcom/transsion/voicecamera/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_117

    :cond_112
    const/16 v1, 0x12e

    .line 286
    invoke-virtual {p0, v1}, Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;->onAsrError(I)V

    .line 289
    :cond_117
    :goto_117
    iget-boolean v1, p0, Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;->threadLoop:Z

    if-nez v1, :cond_23

    .line 292
    :goto_11b
    iget-boolean v0, p0, Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;->asrReady:Z

    if-eqz v0, :cond_122

    .line 293
    invoke-direct {p0}, Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;->unLoadAsrModel()V

    .line 295
    :cond_122
    iget-object v0, p0, Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;->audioBufferQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    const/4 v0, 0x4

    .line 296
    iput v0, p0, Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;->mThreadState:I

    .line 297
    const-string p0, "VCSDK-ASRThread"

    const-string v0, "ASRModelThread loop exit."

    invoke-static {p0, v0}, Lcom/transsion/voicecamera/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendError(I)V
    .registers 3

    .line 204
    iget-object v0, p0, Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;->asrModelResultListener:Lcom/transsion/voicecamera/sdk/asr/ASRModelResultListener;

    if-eqz v0, :cond_7

    .line 205
    invoke-interface {v0, p1}, Lcom/transsion/voicecamera/sdk/asr/ASRModelResultListener;->onError(I)V

    :cond_7
    const/4 p1, 0x4

    .line 207
    iput p1, p0, Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;->mThreadState:I

    return-void
.end method

.method public sendExit()V
    .registers 1

    .line 211
    iget-object p0, p0, Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;->asrModelResultListener:Lcom/transsion/voicecamera/sdk/asr/ASRModelResultListener;

    if-eqz p0, :cond_7

    .line 212
    invoke-interface {p0}, Lcom/transsion/voicecamera/sdk/asr/ASRModelResultListener;->onExit()V

    :cond_7
    return-void
.end method

.method public setASRModelResultListener(Lcom/transsion/voicecamera/sdk/asr/ASRModelResultListener;)V
    .registers 2

    .line 62
    iput-object p1, p0, Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;->asrModelResultListener:Lcom/transsion/voicecamera/sdk/asr/ASRModelResultListener;

    return-void
.end method

.method public startThread()I
    .registers 2

    .line 103
    iget v0, p0, Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;->mThreadState:I

    if-nez v0, :cond_a

    const/4 v0, 0x1

    .line 104
    iput v0, p0, Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;->mThreadState:I

    .line 105
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    :cond_a
    const/4 p0, 0x0

    return p0
.end method
