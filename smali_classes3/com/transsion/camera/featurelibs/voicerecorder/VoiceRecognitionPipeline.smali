.class public Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mInitConfig:Landroid/os/Bundle;

.field private volatile mInitializing:Z

.field private final mRecognitionCallback:Lcom/transsion/camera/featurelibs/voicerecorder/IRecognitionCallback;

.field private final mRecognizer:Lcom/transsion/camera/featurelibs/voicerecorder/IAudioRecognizer;

.field private volatile mRecognizerInitialized:Z

.field private final mRecordConfig:Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig;

.field private final mRecordManager:Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordManager;

.field private volatile mRunning:Z

.field private volatile mSessionId:Ljava/lang/String;

.field private final mSessionParams:Landroid/os/Bundle;

.field private final mWorkHandler:Landroid/os/Handler;

.field private final mWorkThread:Landroid/os/HandlerThread;


# direct methods
.method public static synthetic $r8$lambda$6X5Fw3U0Z8S895ix_vKTrYiKsyE(Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;Landroid/os/Message;)Z
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->handleWorkMessage(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$vzZLIsS8uE6kOHmlEBL8jas1Mq0(Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->lambda$runRecordingLoop$0()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRecognitionCallback(Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;)Lcom/transsion/camera/featurelibs/voicerecorder/IRecognitionCallback;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->mRecognitionCallback:Lcom/transsion/camera/featurelibs/voicerecorder/IRecognitionCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRecognizer(Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;)Lcom/transsion/camera/featurelibs/voicerecorder/IAudioRecognizer;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->mRecognizer:Lcom/transsion/camera/featurelibs/voicerecorder/IAudioRecognizer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSessionId(Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->mSessionId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmRecognizerInitialized(Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->mRecognizerInitialized:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 23
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "VRPipe"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method private constructor <init>(Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline$Builder;)V
    .registers 4

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->mRunning:Z

    .line 44
    iput-boolean v0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->mRecognizerInitialized:Z

    .line 45
    iput-boolean v0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->mInitializing:Z

    .line 48
    invoke-static {p1}, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline$Builder;->-$$Nest$fgetcontext(Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline$Builder;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->mContext:Landroid/content/Context;

    .line 49
    invoke-static {p1}, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline$Builder;->-$$Nest$fgetrecordManager(Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline$Builder;)Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->mRecordManager:Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordManager;

    .line 50
    invoke-static {p1}, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline$Builder;->-$$Nest$fgetrecordConfig(Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline$Builder;)Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->mRecordConfig:Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig;

    .line 51
    invoke-static {p1}, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline$Builder;->-$$Nest$fgetrecognizer(Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline$Builder;)Lcom/transsion/camera/featurelibs/voicerecorder/IAudioRecognizer;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->mRecognizer:Lcom/transsion/camera/featurelibs/voicerecorder/IAudioRecognizer;

    .line 52
    invoke-static {p1}, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline$Builder;->-$$Nest$fgetrecognitionCallback(Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline$Builder;)Lcom/transsion/camera/featurelibs/voicerecorder/IRecognitionCallback;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->mRecognitionCallback:Lcom/transsion/camera/featurelibs/voicerecorder/IRecognitionCallback;

    .line 53
    invoke-static {p1}, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline$Builder;->-$$Nest$fgetinitConfig(Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline$Builder;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->mInitConfig:Landroid/os/Bundle;

    .line 54
    invoke-static {p1}, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline$Builder;->-$$Nest$fgetsessionParams(Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline$Builder;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->mSessionParams:Landroid/os/Bundle;

    .line 56
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "VRPipe-Work"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->mWorkThread:Landroid/os/HandlerThread;

    .line 57
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    new-instance v1, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;)V

    invoke-direct {v0, p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->mWorkHandler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline$Builder;Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;-><init>(Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline$Builder;)V

    return-void
.end method

.method private handleDeInitRecognizer()V
    .registers 3

    .line 120
    sget-object v0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "handleDeInitRecognizer: Work thread handleDeInitRecognizer"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->mRecognizer:Lcom/transsion/camera/featurelibs/voicerecorder/IAudioRecognizer;

    if-eqz v0, :cond_e

    invoke-interface {v0}, Lcom/transsion/camera/featurelibs/voicerecorder/IAudioRecognizer;->deInit()V

    :cond_e
    const/4 v0, 0x0

    .line 122
    iput-boolean v0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->mRecognizerInitialized:Z

    .line 123
    iput-boolean v0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->mInitializing:Z

    .line 124
    iput-boolean v0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->mRunning:Z

    .line 125
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->mWorkThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 126
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->quitSafely()V

    :cond_28
    return-void
.end method

.method private handleInitRecognizer()V
    .registers 4

    const/4 v0, 0x1

    .line 82
    iput-boolean v0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->mInitializing:Z

    .line 83
    iput-boolean v0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->mRunning:Z

    .line 84
    sget-object v0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleInitRecognizer: Work thread handleInitRecognizer, thread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 85
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->initRecognizerAndWait()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_38

    iget-boolean v0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->mRunning:Z

    if-nez v0, :cond_2f

    goto :goto_38

    .line 90
    :cond_2f
    iput-boolean v1, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->mInitializing:Z

    .line 91
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->mWorkHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 86
    :cond_38
    :goto_38
    iput-boolean v1, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->mInitializing:Z

    .line 87
    iput-boolean v1, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->mRunning:Z

    return-void
.end method

.method private handleStartSession()V
    .registers 5

    const/4 v0, 0x1

    .line 95
    iput-boolean v0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->mRunning:Z

    .line 96
    sget-object v0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "handleStartSession: Work thread handleStartSession"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 97
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->startRecognitionSession()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-eqz v1, :cond_2f

    iget-boolean v1, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->mRunning:Z

    if-nez v1, :cond_17

    goto :goto_2f

    .line 104
    :cond_17
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->runRecordingLoop()Z

    .line 105
    iget-object v1, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->mRecordManager:Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordManager;

    invoke-virtual {v1}, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordManager;->release()V

    .line 106
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->stopSessionIfNeeded()V

    .line 107
    iget-object v1, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 108
    iput-boolean v2, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->mRunning:Z

    .line 109
    const-string p0, "handleStartSession: Work loop end"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 98
    :cond_2f
    :goto_2f
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->mRecordManager:Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordManager;

    invoke-virtual {v0}, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordManager;->release()V

    .line 99
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->stopSessionIfNeeded()V

    .line 100
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 101
    iput-boolean v2, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->mRunning:Z

    return-void
.end method

.method private handleStopSession()V
    .registers 3

    .line 113
    sget-object v0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "handleStopSession: Work thread handleStopSession"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->mRecordManager:Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordManager;

    invoke-virtual {v0}, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordManager;->release()V

    .line 115
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->stopSessionIfNeeded()V

    .line 116
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->mWorkHandler:Landroid/os/Handler;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private handleWorkMessage(Landroid/os/Message;)Z
    .registers 4

    .line 62
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1b

    const/4 v1, 0x2

    if-eq p1, v1, :cond_17

    const/4 v1, 0x3

    if-eq p1, v1, :cond_13

    const/4 v1, 0x4

    if-eq p1, v1, :cond_f

    goto :goto_1e

    .line 73
    :cond_f
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->handleDeInitRecognizer()V

    goto :goto_1e

    .line 70
    :cond_13
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->handleStopSession()V

    goto :goto_1e

    .line 67
    :cond_17
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->handleStartSession()V

    goto :goto_1e

    .line 64
    :cond_1b
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->handleInitRecognizer()V

    :goto_1e
    return v0
.end method

.method private initRecognizerAndWait()Z
    .registers 10

    .line 131
    sget-object v0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "initRecognizerAndWait: start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 132
    iget-boolean v1, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->mRecognizerInitialized:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_d

    return v2

    .line 135
    :cond_d
    new-instance v1, Lcom/transsion/camera/utils/StateWait;

    invoke-direct {v1}, Lcom/transsion/camera/utils/StateWait;-><init>()V

    .line 136
    invoke-virtual {v1}, Lcom/transsion/camera/utils/StateWait;->resetState()V

    .line 137
    new-array v3, v2, [Z

    .line 139
    new-instance v4, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline$1;

    invoke-direct {v4, p0, v3, v1}, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline$1;-><init>(Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;[ZLcom/transsion/camera/utils/StateWait;)V

    const/4 v5, 0x0

    .line 174
    :try_start_1d
    iget-object v6, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->mContext:Landroid/content/Context;

    .line 175
    iget-object v7, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->mInitConfig:Landroid/os/Bundle;

    if-eqz v7, :cond_2c

    invoke-virtual {v7}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2c

    iget-object v7, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->mInitConfig:Landroid/os/Bundle;

    goto :goto_2d

    :cond_2c
    const/4 v7, 0x0

    .line 176
    :goto_2d
    iget-object v8, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->mRecognizer:Lcom/transsion/camera/featurelibs/voicerecorder/IAudioRecognizer;

    invoke-interface {v8, v6, v7, v4}, Lcom/transsion/camera/featurelibs/voicerecorder/IAudioRecognizer;->init(Landroid/content/Context;Landroid/os/Bundle;Lcom/transsion/camera/featurelibs/voicerecorder/IRecognitionCallback;)Z

    move-result v4

    if-nez v4, :cond_3b

    .line 177
    const-string p0, "initRecognizerAndWait: Recognizer init returned false"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v5

    :cond_3b
    const-wide/16 v6, 0x2710

    .line 180
    invoke-virtual {v1, v6, v7}, Lcom/transsion/camera/utils/StateWait;->waitState(J)V

    .line 181
    aget-boolean v1, v3, v5

    if-eqz v1, :cond_4a

    iget-boolean p0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->mRecognizerInitialized:Z

    if-nez p0, :cond_49

    goto :goto_4a

    :cond_49
    return v2

    .line 182
    :cond_4a
    :goto_4a
    const-string p0, "initRecognizerAndWait: Recognizer init timeout or failed"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_4f
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_4f} :catch_50

    return v5

    .line 187
    :catch_50
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    return v5
.end method

.method private synthetic lambda$runRecordingLoop$0()Z
    .registers 1

    .line 244
    iget-boolean p0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->mRunning:Z

    return p0
.end method

.method private runRecordingLoop()Z
    .registers 4

    .line 211
    new-instance v0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline$2;-><init>(Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;)V

    .line 235
    iget-object v1, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->mRecordManager:Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordManager;

    iget-object v2, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->mRecordConfig:Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordManager;->prepare(Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_18

    .line 236
    sget-object p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "runRecordingLoop: RecordManager prepare failed"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v2

    .line 239
    :cond_18
    iget-object v1, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->mRecordManager:Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordManager;

    invoke-virtual {v1}, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordManager;->startRecording()Z

    move-result v1

    if-nez v1, :cond_2d

    .line 240
    sget-object v0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "runRecordingLoop: RecordManager startRecording failed"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 241
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->mRecordManager:Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordManager;

    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordManager;->release()V

    return v2

    .line 244
    :cond_2d
    iget-object v1, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->mRecordManager:Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordManager;

    new-instance v2, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;)V

    invoke-virtual {v1, v0, v2}, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordManager;->runReadLoop(Lcom/transsion/camera/featurelibs/voicerecorder/IAudioRecordListener;Ljava/util/function/BooleanSupplier;)V

    const/4 p0, 0x1

    return p0
.end method

.method private startRecognitionSession()Z
    .registers 4

    .line 193
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->mSessionParams:Landroid/os/Bundle;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->mSessionParams:Landroid/os/Bundle;

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    .line 194
    :goto_e
    iget-object v1, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->mRecognizer:Lcom/transsion/camera/featurelibs/voicerecorder/IAudioRecognizer;

    invoke-interface {v1, v0}, Lcom/transsion/camera/featurelibs/voicerecorder/IAudioRecognizer;->startSession(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->mSessionId:Ljava/lang/String;

    .line 195
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->mSessionId:Ljava/lang/String;

    if-nez v0, :cond_23

    .line 196
    sget-object p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "startRecognitionSession: Failed to start recognition session"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 199
    :cond_23
    sget-object v0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startRecognitionSession: Recognition session started, sessionId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->mSessionId:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method private stopSessionIfNeeded()V
    .registers 3

    .line 204
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->mSessionId:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 205
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->mRecognizer:Lcom/transsion/camera/featurelibs/voicerecorder/IAudioRecognizer;

    iget-object v1, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->mSessionId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/transsion/camera/featurelibs/voicerecorder/IAudioRecognizer;->stopSession(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 206
    iput-object v0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->mSessionId:Ljava/lang/String;

    :cond_e
    return-void
.end method


# virtual methods
.method public isRunning()Z
    .registers 1

    .line 277
    iget-boolean p0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->mRunning:Z

    return p0
.end method

.method public declared-synchronized start()Z
    .registers 5

    monitor-enter p0

    .line 249
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->mWorkHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 250
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->mWorkHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 251
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->mWorkHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 252
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->mWorkHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 254
    sget-object v0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "start: Starting voice recognition pipeline"

    invoke-static {v0, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 256
    iget-boolean v3, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->mRecognizerInitialized:Z

    if-eqz v3, :cond_2c

    .line 257
    iget-object v3, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_35

    :catchall_2a
    move-exception v0

    goto :goto_3c

    .line 258
    :cond_2c
    iget-boolean v2, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->mInitializing:Z

    if-nez v2, :cond_35

    .line 260
    iget-object v2, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 262
    :cond_35
    :goto_35
    const-string v2, "start: Pipeline start posted to work thread"

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_3a
    .catchall {:try_start_1 .. :try_end_3a} :catchall_2a

    .line 263
    monitor-exit p0

    return v1

    :goto_3c
    :try_start_3c
    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_2a

    throw v0
.end method

.method public declared-synchronized stop()V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 267
    :try_start_2
    iput-boolean v0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->mRunning:Z

    .line 268
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 269
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->mWorkHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 270
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->mWorkHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 272
    sget-object v0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "stop: Stopping voice recognition pipeline"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->mWorkHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_22
    .catchall {:try_start_2 .. :try_end_22} :catchall_24

    .line 274
    monitor-exit p0

    return-void

    :catchall_24
    move-exception v0

    :try_start_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v0
.end method
