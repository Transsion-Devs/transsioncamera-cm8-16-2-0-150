.class public Lcom/transsion/voicecamera/sdk/TransVCamera;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "VCSDK-TransVCamera"

.field private static final TRANS_VC_SDK_VERSION:Ljava/lang/String; = "0.4.1"

.field private static initialized:Z

.field private static mASRInstance:Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;

.field private static mAudioInstance:Lcom/transsion/voicecamera/sdk/recorder/AudioRecordHelper;

.field private static final mConfig:Lcom/transsion/voicecamera/sdk/TransVCConfig;

.field private static mContext:Landroid/content/Context;

.field private static mPcmReader:Lcom/transsion/voicecamera/sdk/file/ReaderThread;

.field private static mVADInstance:Lcom/transsion/voicecamera/sdk/vad/VADProcessThread;

.field private static saveAudioData:Z

.field private static tvcResultListener:Lcom/transsion/voicecamera/sdk/TVCResultListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 34
    new-instance v0, Lcom/transsion/voicecamera/sdk/TransVCConfig;

    invoke-direct {v0}, Lcom/transsion/voicecamera/sdk/TransVCConfig;-><init>()V

    sput-object v0, Lcom/transsion/voicecamera/sdk/TransVCamera;->mConfig:Lcom/transsion/voicecamera/sdk/TransVCConfig;

    const/4 v0, 0x0

    .line 36
    sput-boolean v0, Lcom/transsion/voicecamera/sdk/TransVCamera;->initialized:Z

    const/4 v0, 0x0

    .line 38
    sput-object v0, Lcom/transsion/voicecamera/sdk/TransVCamera;->mAudioInstance:Lcom/transsion/voicecamera/sdk/recorder/AudioRecordHelper;

    .line 39
    sput-object v0, Lcom/transsion/voicecamera/sdk/TransVCamera;->mVADInstance:Lcom/transsion/voicecamera/sdk/vad/VADProcessThread;

    .line 40
    sput-object v0, Lcom/transsion/voicecamera/sdk/TransVCamera;->mASRInstance:Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;

    .line 41
    sput-object v0, Lcom/transsion/voicecamera/sdk/TransVCamera;->mPcmReader:Lcom/transsion/voicecamera/sdk/file/ReaderThread;

    .line 47
    const-string v0, "vcsdk_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized deInit()I
    .registers 4

    const-class v0, Lcom/transsion/voicecamera/sdk/TransVCamera;

    monitor-enter v0

    .line 148
    :try_start_3
    const-string v1, "VCSDK-TransVCamera"

    const-string v2, "TransVCamera deInit"

    invoke-static {v1, v2}, Lcom/transsion/voicecamera/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    sget-boolean v1, Lcom/transsion/voicecamera/sdk/TransVCamera;->initialized:Z

    if-nez v1, :cond_1b

    .line 150
    const-string v1, "VCSDK-TransVCamera"

    const-string v2, "not initialized, please call init first"

    invoke-static {v1, v2}, Lcom/transsion/voicecamera/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_19

    .line 151
    monitor-exit v0

    const/16 v0, 0x8

    return v0

    :catchall_19
    move-exception v1

    goto :goto_57

    .line 153
    :cond_1b
    :try_start_1b
    invoke-static {}, Lcom/transsion/voicecamera/sdk/utils/DebugModeObserver;->getInstance()Lcom/transsion/voicecamera/sdk/utils/DebugModeObserver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/voicecamera/sdk/utils/DebugModeObserver;->deInit()V

    const/4 v1, 0x0

    .line 154
    invoke-static {v1}, Lcom/transsion/voicecamera/sdk/TransVCamera;->setSaveAudioData(Z)V

    .line 158
    sget-object v2, Lcom/transsion/voicecamera/sdk/TransVCamera;->mAudioInstance:Lcom/transsion/voicecamera/sdk/recorder/AudioRecordHelper;

    const/4 v3, 0x0

    if-eqz v2, :cond_30

    .line 159
    invoke-virtual {v2}, Lcom/transsion/voicecamera/sdk/recorder/AudioRecordHelper;->releaseRecorder()V

    .line 160
    sput-object v3, Lcom/transsion/voicecamera/sdk/TransVCamera;->mAudioInstance:Lcom/transsion/voicecamera/sdk/recorder/AudioRecordHelper;

    .line 162
    :cond_30
    sget-object v2, Lcom/transsion/voicecamera/sdk/TransVCamera;->mPcmReader:Lcom/transsion/voicecamera/sdk/file/ReaderThread;

    if-eqz v2, :cond_39

    .line 163
    invoke-virtual {v2}, Lcom/transsion/voicecamera/sdk/file/ReaderThread;->deInit()V

    .line 164
    sput-object v3, Lcom/transsion/voicecamera/sdk/TransVCamera;->mPcmReader:Lcom/transsion/voicecamera/sdk/file/ReaderThread;

    .line 167
    :cond_39
    sget-object v2, Lcom/transsion/voicecamera/sdk/TransVCamera;->mVADInstance:Lcom/transsion/voicecamera/sdk/vad/VADProcessThread;

    invoke-virtual {v2}, Lcom/transsion/voicecamera/sdk/vad/VADProcessThread;->deInit()V

    .line 168
    sput-object v3, Lcom/transsion/voicecamera/sdk/TransVCamera;->mVADInstance:Lcom/transsion/voicecamera/sdk/vad/VADProcessThread;

    .line 170
    sget-object v2, Lcom/transsion/voicecamera/sdk/TransVCamera;->mASRInstance:Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;

    invoke-virtual {v2}, Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;->deInit()V

    .line 171
    sget-object v2, Lcom/transsion/voicecamera/sdk/TransVCamera;->mASRInstance:Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;

    invoke-virtual {v2, v3}, Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;->setASRModelResultListener(Lcom/transsion/voicecamera/sdk/asr/ASRModelResultListener;)V

    .line 172
    sput-object v3, Lcom/transsion/voicecamera/sdk/TransVCamera;->mASRInstance:Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;

    .line 173
    sput-object v3, Lcom/transsion/voicecamera/sdk/TransVCamera;->tvcResultListener:Lcom/transsion/voicecamera/sdk/TVCResultListener;

    .line 177
    sget-object v2, Lcom/transsion/voicecamera/sdk/TransVCamera;->mConfig:Lcom/transsion/voicecamera/sdk/TransVCConfig;

    invoke-virtual {v2}, Lcom/transsion/voicecamera/sdk/TransVCConfig;->reset()V

    .line 178
    sput-boolean v1, Lcom/transsion/voicecamera/sdk/TransVCamera;->initialized:Z
    :try_end_55
    .catchall {:try_start_1b .. :try_end_55} :catchall_19

    .line 179
    monitor-exit v0

    return v1

    :goto_57
    :try_start_57
    monitor-exit v0
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_19

    throw v1
.end method

.method public static getAudioRecordHelper()Lcom/transsion/voicecamera/sdk/recorder/AudioRecordHelper;
    .registers 1

    .line 144
    sget-object v0, Lcom/transsion/voicecamera/sdk/TransVCamera;->mAudioInstance:Lcom/transsion/voicecamera/sdk/recorder/AudioRecordHelper;

    return-object v0
.end method

.method public static getConfig()Lcom/transsion/voicecamera/sdk/TransVCConfig;
    .registers 1

    .line 136
    sget-object v0, Lcom/transsion/voicecamera/sdk/TransVCamera;->mConfig:Lcom/transsion/voicecamera/sdk/TransVCConfig;

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .registers 1

    .line 55
    sget-object v0, Lcom/transsion/voicecamera/sdk/TransVCamera;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getSDKVersion()Ljava/lang/String;
    .registers 1

    .line 51
    const-string v0, "0.4.1"

    return-object v0
.end method

.method public static getTvcResultListener()Lcom/transsion/voicecamera/sdk/TVCResultListener;
    .registers 1

    .line 140
    sget-object v0, Lcom/transsion/voicecamera/sdk/TransVCamera;->tvcResultListener:Lcom/transsion/voicecamera/sdk/TVCResultListener;

    return-object v0
.end method

.method public static declared-synchronized init(Landroid/content/Context;Lcom/transsion/voicecamera/sdk/TransVCConfig;Lcom/transsion/voicecamera/sdk/TVCResultListener;)I
    .registers 5

    const-class v0, Lcom/transsion/voicecamera/sdk/TransVCamera;

    monitor-enter v0

    const/4 v1, 0x0

    .line 59
    :try_start_4
    invoke-static {p0, v1, p1, p2}, Lcom/transsion/voicecamera/sdk/TransVCamera;->init(Landroid/content/Context;Ljava/io/File;Lcom/transsion/voicecamera/sdk/TransVCConfig;Lcom/transsion/voicecamera/sdk/TVCResultListener;)I

    move-result p0
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_a

    monitor-exit v0

    return p0

    :catchall_a
    move-exception p0

    :try_start_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw p0
.end method

.method public static declared-synchronized init(Landroid/content/Context;Ljava/io/File;Lcom/transsion/voicecamera/sdk/TransVCConfig;Lcom/transsion/voicecamera/sdk/TVCResultListener;)I
    .registers 7

    const-class v0, Lcom/transsion/voicecamera/sdk/TransVCamera;

    monitor-enter v0

    .line 63
    :try_start_3
    const-string v1, "VCSDK-TransVCamera"

    const-string v2, "TransVCamera init, version=0.4.1"

    invoke-static {v1, v2}, Lcom/transsion/voicecamera/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_22

    if-nez p0, :cond_f

    .line 65
    monitor-exit v0

    const/4 p0, 0x4

    return p0

    :cond_f
    if-nez p3, :cond_14

    .line 68
    monitor-exit v0

    const/4 p0, 0x5

    return p0

    .line 70
    :cond_14
    :try_start_14
    sget-boolean v1, Lcom/transsion/voicecamera/sdk/TransVCamera;->initialized:Z

    if-eqz v1, :cond_25

    .line 71
    const-string p0, "VCSDK-TransVCamera"

    const-string p1, "initialized, please call deInit first"

    invoke-static {p0, p1}, Lcom/transsion/voicecamera/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_14 .. :try_end_1f} :catchall_22

    .line 72
    monitor-exit v0

    const/4 p0, 0x3

    return p0

    :catchall_22
    move-exception p0

    goto/16 :goto_11a

    :cond_25
    if-eqz p2, :cond_2c

    .line 76
    :try_start_27
    sget-object v1, Lcom/transsion/voicecamera/sdk/TransVCamera;->mConfig:Lcom/transsion/voicecamera/sdk/TransVCConfig;

    invoke-virtual {v1, p2}, Lcom/transsion/voicecamera/sdk/TransVCConfig;->setConfig(Lcom/transsion/voicecamera/sdk/TransVCConfig;)V

    .line 78
    :cond_2c
    sget-object p2, Lcom/transsion/voicecamera/sdk/TransVCamera;->mConfig:Lcom/transsion/voicecamera/sdk/TransVCConfig;

    invoke-virtual {p2}, Lcom/transsion/voicecamera/sdk/TransVCConfig;->getLanguage()Lcom/transsion/voicecamera/sdk/utils/LangEnum;

    move-result-object v1

    sget-object v2, Lcom/transsion/voicecamera/sdk/utils/LangEnum;->LANG_NONE:Lcom/transsion/voicecamera/sdk/utils/LangEnum;
    :try_end_34
    .catchall {:try_start_27 .. :try_end_34} :catchall_22

    if-ne v1, v2, :cond_39

    .line 79
    monitor-exit v0

    const/4 p0, 0x6

    return p0

    .line 81
    :cond_39
    :try_start_39
    invoke-virtual {p2}, Lcom/transsion/voicecamera/sdk/TransVCConfig;->getInternalStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/aivoice"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/transsion/voicecamera/sdk/TransVCConfig;->setInternalStoragePath(Ljava/lang/String;)V

    .line 84
    :cond_5f
    invoke-virtual {p2}, Lcom/transsion/voicecamera/sdk/TransVCConfig;->getResultPublishPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_77

    .line 85
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/vendor/data_feedback"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/transsion/voicecamera/sdk/TransVCConfig;->setResultPublishPath(Ljava/lang/String;)V

    .line 92
    :cond_77
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/transsion/voicecamera/sdk/TransVCamera;->mContext:Landroid/content/Context;

    .line 93
    invoke-static {}, Lcom/transsion/voicecamera/sdk/utils/DebugModeObserver;->getInstance()Lcom/transsion/voicecamera/sdk/utils/DebugModeObserver;

    move-result-object p0

    sget-object v1, Lcom/transsion/voicecamera/sdk/TransVCamera;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/transsion/voicecamera/sdk/utils/DebugModeObserver;->init(Landroid/content/Context;)V

    .line 96
    sget-object p0, Lcom/transsion/voicecamera/sdk/TransVCamera;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/transsion/voicecamera/sdk/TransVCConfig;->getInternalStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/transsion/voicecamera/sdk/utils/FileUtil;->modelFileExists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_9b

    .line 97
    sget-object p0, Lcom/transsion/voicecamera/sdk/TransVCamera;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/transsion/voicecamera/sdk/TransVCConfig;->getInternalStoragePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/transsion/voicecamera/sdk/utils/FileUtil;->cpAssertFile2ExternalFile(Landroid/content/Context;Ljava/lang/String;)V

    .line 100
    :cond_9b
    sput-object p3, Lcom/transsion/voicecamera/sdk/TransVCamera;->tvcResultListener:Lcom/transsion/voicecamera/sdk/TVCResultListener;

    .line 104
    new-instance p0, Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;

    invoke-direct {p0}, Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;-><init>()V

    sput-object p0, Lcom/transsion/voicecamera/sdk/TransVCamera;->mASRInstance:Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;

    .line 105
    new-instance p2, Lcom/transsion/voicecamera/sdk/ASRProcessHandler;

    sget-object p3, Lcom/transsion/voicecamera/sdk/TransVCamera;->tvcResultListener:Lcom/transsion/voicecamera/sdk/TVCResultListener;

    invoke-direct {p2, p3}, Lcom/transsion/voicecamera/sdk/ASRProcessHandler;-><init>(Lcom/transsion/voicecamera/sdk/TVCResultListener;)V

    invoke-virtual {p0, p2}, Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;->setASRModelResultListener(Lcom/transsion/voicecamera/sdk/asr/ASRModelResultListener;)V

    .line 106
    sget-object p0, Lcom/transsion/voicecamera/sdk/TransVCamera;->mASRInstance:Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;

    invoke-virtual {p0}, Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;->init()V

    .line 109
    new-instance p0, Lcom/transsion/voicecamera/sdk/vad/VADProcessThread;

    invoke-direct {p0}, Lcom/transsion/voicecamera/sdk/vad/VADProcessThread;-><init>()V

    sput-object p0, Lcom/transsion/voicecamera/sdk/TransVCamera;->mVADInstance:Lcom/transsion/voicecamera/sdk/vad/VADProcessThread;

    .line 110
    new-instance p2, Lcom/transsion/voicecamera/sdk/VADProcessHandler;

    sget-object p3, Lcom/transsion/voicecamera/sdk/TransVCamera;->mASRInstance:Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;

    invoke-direct {p2, p3}, Lcom/transsion/voicecamera/sdk/VADProcessHandler;-><init>(Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;)V

    invoke-virtual {p0, p2}, Lcom/transsion/voicecamera/sdk/vad/VADProcessThread;->setVadResultListener(Lcom/transsion/voicecamera/sdk/vad/VADResultListener;)V

    .line 111
    sget-object p0, Lcom/transsion/voicecamera/sdk/TransVCamera;->mVADInstance:Lcom/transsion/voicecamera/sdk/vad/VADProcessThread;

    invoke-virtual {p0}, Lcom/transsion/voicecamera/sdk/vad/VADProcessThread;->init()V

    if-nez p1, :cond_e1

    .line 115
    invoke-static {}, Lcom/transsion/voicecamera/sdk/recorder/AudioRecordHelper;->getInstance()Lcom/transsion/voicecamera/sdk/recorder/AudioRecordHelper;

    move-result-object p0

    sput-object p0, Lcom/transsion/voicecamera/sdk/TransVCamera;->mAudioInstance:Lcom/transsion/voicecamera/sdk/recorder/AudioRecordHelper;

    .line 116
    new-instance p1, Lcom/transsion/voicecamera/sdk/AudioRecordHandler;

    sget-object p2, Lcom/transsion/voicecamera/sdk/TransVCamera;->mVADInstance:Lcom/transsion/voicecamera/sdk/vad/VADProcessThread;

    invoke-direct {p1, p2}, Lcom/transsion/voicecamera/sdk/AudioRecordHandler;-><init>(Lcom/transsion/voicecamera/sdk/vad/VADProcessThread;)V

    invoke-virtual {p0, p1}, Lcom/transsion/voicecamera/sdk/recorder/AudioRecordHelper;->registerRecordListener(Lcom/transsion/voicecamera/sdk/recorder/RecordListener;)V

    .line 119
    sget-object p0, Lcom/transsion/voicecamera/sdk/TransVCamera;->mAudioInstance:Lcom/transsion/voicecamera/sdk/recorder/AudioRecordHelper;

    invoke-virtual {p0}, Lcom/transsion/voicecamera/sdk/recorder/AudioRecordHelper;->startRecording()Z

    goto :goto_10d

    .line 121
    :cond_e1
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p2, ".wav"

    invoke-virtual {p0, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_f5

    .line 122
    new-instance p0, Lcom/transsion/voicecamera/sdk/file/WavReaderThread;

    invoke-direct {p0, p1}, Lcom/transsion/voicecamera/sdk/file/WavReaderThread;-><init>(Ljava/io/File;)V

    sput-object p0, Lcom/transsion/voicecamera/sdk/TransVCamera;->mPcmReader:Lcom/transsion/voicecamera/sdk/file/ReaderThread;

    goto :goto_fc

    .line 124
    :cond_f5
    new-instance p0, Lcom/transsion/voicecamera/sdk/file/PcmReaderThread;

    invoke-direct {p0, p1}, Lcom/transsion/voicecamera/sdk/file/PcmReaderThread;-><init>(Ljava/io/File;)V

    sput-object p0, Lcom/transsion/voicecamera/sdk/TransVCamera;->mPcmReader:Lcom/transsion/voicecamera/sdk/file/ReaderThread;

    .line 126
    :goto_fc
    sget-object p0, Lcom/transsion/voicecamera/sdk/TransVCamera;->mPcmReader:Lcom/transsion/voicecamera/sdk/file/ReaderThread;

    new-instance p1, Lcom/transsion/voicecamera/sdk/PcmReaderHandler;

    sget-object p2, Lcom/transsion/voicecamera/sdk/TransVCamera;->mVADInstance:Lcom/transsion/voicecamera/sdk/vad/VADProcessThread;

    invoke-direct {p1, p2}, Lcom/transsion/voicecamera/sdk/PcmReaderHandler;-><init>(Lcom/transsion/voicecamera/sdk/vad/VADProcessThread;)V

    invoke-virtual {p0, p1}, Lcom/transsion/voicecamera/sdk/file/ReaderThread;->setPcmReaderListener(Lcom/transsion/voicecamera/sdk/file/PcmReaderListener;)V

    .line 127
    sget-object p0, Lcom/transsion/voicecamera/sdk/TransVCamera;->mPcmReader:Lcom/transsion/voicecamera/sdk/file/ReaderThread;

    invoke-virtual {p0}, Lcom/transsion/voicecamera/sdk/file/ReaderThread;->init()V

    :goto_10d
    const/4 p0, 0x1

    .line 130
    sput-boolean p0, Lcom/transsion/voicecamera/sdk/TransVCamera;->initialized:Z

    .line 131
    const-string p0, "VCSDK-TransVCamera"

    const-string p1, "TransVCamera init done!"

    invoke-static {p0, p1}, Lcom/transsion/voicecamera/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_117
    .catchall {:try_start_39 .. :try_end_117} :catchall_22

    .line 132
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :goto_11a
    :try_start_11a
    monitor-exit v0
    :try_end_11b
    .catchall {:try_start_11a .. :try_end_11b} :catchall_22

    throw p0
.end method

.method public static isSaveAudioData()Z
    .registers 1

    .line 190
    sget-boolean v0, Lcom/transsion/voicecamera/sdk/TransVCamera;->saveAudioData:Z

    return v0
.end method

.method public static setSaveAudioData(Z)V
    .registers 1

    .line 186
    sput-boolean p0, Lcom/transsion/voicecamera/sdk/TransVCamera;->saveAudioData:Z

    return-void
.end method
