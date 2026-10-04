.class public Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/featurelibs/voicerecorder/IAudioRecognizer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mBuilderCallback:Lcom/transsion/camera/featurelibs/voicerecorder/IRecognitionCallback;

.field private mBuilderContext:Landroid/content/Context;

.field private mCallback:Lcom/transsion/camera/featurelibs/voicerecorder/IRecognitionCallback;

.field private mContext:Landroid/content/Context;

.field private mFlowCallback:Lcom/transsion/aicore/nexusflow/FlowCallback;

.field private mInitLanguage:Ljava/lang/String;

.field private mInitialized:Z

.field private mIsStreaming:Z

.field private mNexusFlow:Lcom/transsion/aicore/nexusflow/NexusFlow;

.field private mSessionId:Ljava/lang/String;

.field private mSessionLanguage:Ljava/lang/String;

.field private mStreamer:Lcom/transsion/aicore/nexusflow/utils/Streamer;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCallback(Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;)Lcom/transsion/camera/featurelibs/voicerecorder/IRecognitionCallback;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;->mCallback:Lcom/transsion/camera/featurelibs/voicerecorder/IRecognitionCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmInitialized(Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;->mInitialized:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 33
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "NexusFlowAR"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;->mInitialized:Z

    .line 38
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;->mIsStreaming:Z

    .line 41
    const-string v0, "ENGLISH"

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;->mInitLanguage:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;->mSessionLanguage:Ljava/lang/String;

    .line 201
    new-instance v0, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer$2;-><init>(Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;->mFlowCallback:Lcom/transsion/aicore/nexusflow/FlowCallback;

    return-void
.end method

.method private constructor <init>(Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer$Builder;)V
    .registers 3

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;->mInitialized:Z

    .line 38
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;->mIsStreaming:Z

    .line 41
    const-string v0, "ENGLISH"

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;->mInitLanguage:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;->mSessionLanguage:Ljava/lang/String;

    .line 201
    new-instance v0, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer$2;-><init>(Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;->mFlowCallback:Lcom/transsion/aicore/nexusflow/FlowCallback;

    .line 46
    invoke-static {p1}, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer$Builder;->-$$Nest$fgetinitLanguage(Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;->mInitLanguage:Ljava/lang/String;

    .line 47
    invoke-static {p1}, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer$Builder;->-$$Nest$fgetsessionLanguage(Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;->mSessionLanguage:Ljava/lang/String;

    .line 48
    invoke-static {p1}, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer$Builder;->-$$Nest$fgetcontext(Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer$Builder;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;->mBuilderContext:Landroid/content/Context;

    .line 49
    invoke-static {p1}, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer$Builder;->-$$Nest$fgetcallback(Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer$Builder;)Lcom/transsion/camera/featurelibs/voicerecorder/IRecognitionCallback;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;->mBuilderCallback:Lcom/transsion/camera/featurelibs/voicerecorder/IRecognitionCallback;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer$Builder;Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;-><init>(Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer$Builder;)V

    return-void
.end method

.method public static builder()Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer$Builder;
    .registers 1

    .line 57
    new-instance v0, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer$Builder;

    invoke-direct {v0}, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public deInit()V
    .registers 5

    .line 111
    sget-object v0, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "deInit"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;->mSessionId:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 113
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;->stopSession(Ljava/lang/String;)V

    .line 115
    :cond_e
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;->mStreamer:Lcom/transsion/aicore/nexusflow/utils/Streamer;

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    .line 117
    :try_start_13
    invoke-virtual {v0}, Lcom/transsion/aicore/nexusflow/utils/Streamer;->close()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_16} :catch_17

    goto :goto_1f

    :catch_17
    move-exception v0

    .line 119
    sget-object v2, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "Error closing streamer"

    invoke-static {v2, v3, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 121
    :goto_1f
    iput-object v1, p0, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;->mStreamer:Lcom/transsion/aicore/nexusflow/utils/Streamer;

    .line 123
    :cond_21
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;->mNexusFlow:Lcom/transsion/aicore/nexusflow/NexusFlow;

    if-eqz v0, :cond_2f

    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;->mInitialized:Z

    if-eqz v2, :cond_2f

    .line 124
    invoke-virtual {v0}, Lcom/transsion/aicore/nexusflow/NexusFlow;->deInit()V

    const/4 v0, 0x0

    .line 125
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;->mInitialized:Z

    .line 127
    :cond_2f
    iput-object v1, p0, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;->mNexusFlow:Lcom/transsion/aicore/nexusflow/NexusFlow;

    .line 128
    iput-object v1, p0, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;->mCallback:Lcom/transsion/camera/featurelibs/voicerecorder/IRecognitionCallback;

    .line 129
    iput-object v1, p0, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;->mSessionId:Ljava/lang/String;

    return-void
.end method

.method public init(Landroid/content/Context;Landroid/os/Bundle;Lcom/transsion/camera/featurelibs/voicerecorder/IRecognitionCallback;)Z
    .registers 8

    .line 62
    sget-object v0, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[init] init start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 63
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;->mInitialized:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_12

    .line 64
    const-string p0, "[init] already initialized"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v2

    .line 67
    :cond_12
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;->mBuilderContext:Landroid/content/Context;

    const/4 v3, 0x0

    if-eqz v1, :cond_1e

    .line 68
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;->mContext:Landroid/content/Context;

    goto :goto_26

    :cond_1e
    if-eqz p1, :cond_73

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;->mContext:Landroid/content/Context;

    .line 75
    :goto_26
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;->mBuilderCallback:Lcom/transsion/camera/featurelibs/voicerecorder/IRecognitionCallback;

    if-eqz p1, :cond_2d

    .line 76
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;->mCallback:Lcom/transsion/camera/featurelibs/voicerecorder/IRecognitionCallback;

    goto :goto_31

    :cond_2d
    if-eqz p3, :cond_6d

    .line 78
    iput-object p3, p0, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;->mCallback:Lcom/transsion/camera/featurelibs/voicerecorder/IRecognitionCallback;

    .line 83
    :goto_31
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;->mNexusFlow:Lcom/transsion/aicore/nexusflow/NexusFlow;

    if-nez p1, :cond_3e

    .line 84
    new-instance p1, Lcom/transsion/aicore/nexusflow/NexusFlow;

    iget-object p3, p0, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;->mContext:Landroid/content/Context;

    invoke-direct {p1, p3}, Lcom/transsion/aicore/nexusflow/NexusFlow;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;->mNexusFlow:Lcom/transsion/aicore/nexusflow/NexusFlow;

    :cond_3e
    if-eqz p2, :cond_41

    goto :goto_46

    .line 86
    :cond_41
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 87
    :goto_46
    const-string p1, "clientLanguage"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_53

    .line 88
    iget-object p3, p0, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;->mInitLanguage:Ljava/lang/String;

    invoke-virtual {p2, p1, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_53
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;->mNexusFlow:Lcom/transsion/aicore/nexusflow/NexusFlow;

    const-string p3, "VOICE_CAMERA"

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    new-instance v1, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer$1;-><init>(Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;)V

    invoke-virtual {p1, p3, p2, v1}, Lcom/transsion/aicore/nexusflow/NexusFlow;->init(Ljava/util/List;Landroid/os/Bundle;Lkotlin/jvm/functions/Function1;)V

    .line 105
    const-string p0, "[init] init end"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v2

    .line 80
    :cond_6d
    const-string p0, "[init] IRecognitionCallback is required for initialization"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v3

    .line 72
    :cond_73
    const-string p0, "[init] Context is required for initialization"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v3
.end method

.method public startSession(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 5

    .line 134
    sget-object v0, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "startSession"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 135
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;->mInitialized:Z

    if-eqz v1, :cond_7d

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;->mNexusFlow:Lcom/transsion/aicore/nexusflow/NexusFlow;

    if-nez v1, :cond_10

    goto :goto_7d

    .line 139
    :cond_10
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;->mSessionId:Ljava/lang/String;

    if-eqz v1, :cond_17

    .line 140
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;->stopSession(Ljava/lang/String;)V

    :cond_17
    if-eqz p1, :cond_1a

    goto :goto_1f

    .line 142
    :cond_1a
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 143
    :goto_1f
    const-string v1, "language"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2c

    .line 144
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;->mSessionLanguage:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :cond_2c
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;->mNexusFlow:Lcom/transsion/aicore/nexusflow/NexusFlow;

    invoke-virtual {v1}, Lcom/transsion/aicore/nexusflow/NexusFlow;->builder()Lcom/transsion/aicore/nexusflow/FlowBuilder;

    move-result-object v1

    const/4 v2, 0x0

    .line 148
    invoke-virtual {v1, v2}, Lcom/transsion/aicore/nexusflow/FlowBuilder;->execType(Z)Lcom/transsion/aicore/nexusflow/FlowBuilder;

    move-result-object v1

    const-string v2, "VOICE_CAMERA"

    .line 149
    invoke-virtual {v1, v2}, Lcom/transsion/aicore/nexusflow/FlowBuilder;->setMethod(Ljava/lang/String;)Lcom/transsion/aicore/nexusflow/FlowBuilder;

    move-result-object v1

    .line 150
    invoke-virtual {v1, p1}, Lcom/transsion/aicore/nexusflow/FlowBuilder;->param(Landroid/os/Bundle;)Lcom/transsion/aicore/nexusflow/FlowBuilder;

    move-result-object p1

    .line 151
    invoke-virtual {p1}, Lcom/transsion/aicore/nexusflow/FlowBuilder;->streaming()Lcom/transsion/aicore/nexusflow/FlowBuilder;

    move-result-object p1

    const/4 v1, 0x1

    .line 152
    invoke-virtual {p1, v1}, Lcom/transsion/aicore/nexusflow/FlowBuilder;->disableTimeout(Z)Lcom/transsion/aicore/nexusflow/FlowBuilder;

    move-result-object p1

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;->mFlowCallback:Lcom/transsion/aicore/nexusflow/FlowCallback;

    .line 153
    invoke-virtual {p1, v2}, Lcom/transsion/aicore/nexusflow/FlowBuilder;->callback(Lcom/transsion/aicore/nexusflow/FlowCallback;)Lcom/transsion/aicore/nexusflow/FlowBuilder;

    move-result-object p1

    .line 154
    invoke-virtual {p1}, Lcom/transsion/aicore/nexusflow/FlowBuilder;->build()Lcom/transsion/aicore/nexusflow/FlowConfig;

    move-result-object p1

    .line 156
    invoke-virtual {p1}, Lcom/transsion/aicore/nexusflow/FlowConfig;->getFlowId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;->mSessionId:Ljava/lang/String;

    .line 157
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;->mNexusFlow:Lcom/transsion/aicore/nexusflow/NexusFlow;

    invoke-virtual {v2, p1}, Lcom/transsion/aicore/nexusflow/NexusFlow;->startStreaming(Lcom/transsion/aicore/nexusflow/FlowConfig;)Lcom/transsion/aicore/nexusflow/utils/Streamer;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;->mStreamer:Lcom/transsion/aicore/nexusflow/utils/Streamer;

    .line 158
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;->mIsStreaming:Z

    .line 159
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startSession, sessionId: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;->mSessionId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 160
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;->mSessionId:Ljava/lang/String;

    return-object p0

    .line 136
    :cond_7d
    :goto_7d
    const-string p0, "not initialized"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public stopSession(Ljava/lang/String;)V
    .registers 6

    .line 165
    sget-object v0, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopSession: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 166
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;->mIsStreaming:Z

    .line 167
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;->mStreamer:Lcom/transsion/aicore/nexusflow/utils/Streamer;

    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    .line 169
    :try_start_1e
    invoke-virtual {v0}, Lcom/transsion/aicore/nexusflow/utils/Streamer;->close()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_21} :catch_22

    goto :goto_2a

    :catch_22
    move-exception v0

    .line 171
    sget-object v2, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "Error closing streamer"

    invoke-static {v2, v3, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 173
    :goto_2a
    iput-object v1, p0, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;->mStreamer:Lcom/transsion/aicore/nexusflow/utils/Streamer;

    .line 175
    :cond_2c
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;->mNexusFlow:Lcom/transsion/aicore/nexusflow/NexusFlow;

    if-eqz v0, :cond_35

    if-eqz p1, :cond_35

    .line 176
    invoke-virtual {v0, p1}, Lcom/transsion/aicore/nexusflow/NexusFlow;->stop(Ljava/lang/String;)Z

    .line 178
    :cond_35
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;->mSessionId:Ljava/lang/String;

    if-eqz v0, :cond_41

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_41

    .line 179
    iput-object v1, p0, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;->mSessionId:Ljava/lang/String;

    :cond_41
    return-void
.end method

.method public streamAudioData(Ljava/lang/String;[BI)V
    .registers 5

    .line 185
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;->mIsStreaming:Z

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;->mStreamer:Lcom/transsion/aicore/nexusflow/utils/Streamer;

    if-eqz v0, :cond_46

    if-nez p1, :cond_b

    goto :goto_46

    .line 188
    :cond_b
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;->mSessionId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 189
    sget-object p2, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "streamAudioData: sessionId mismatch, expected: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;->mSessionId:Ljava/lang/String;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", got: "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_34
    if-eqz p2, :cond_46

    if-lez p3, :cond_46

    .line 194
    :try_start_38
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;->mStreamer:Lcom/transsion/aicore/nexusflow/utils/Streamer;

    invoke-virtual {p0, p2}, Lcom/transsion/aicore/nexusflow/utils/Streamer;->write([B)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3d} :catch_3e

    return-void

    :catch_3e
    move-exception p0

    .line 197
    sget-object p1, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "streamAudioData error"

    invoke-static {p1, p2, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_46
    :goto_46
    return-void
.end method
