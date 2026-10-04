.class public Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig$Builder;
    }
.end annotation


# instance fields
.field public final audioChannels:I

.field public final audioFormat:I

.field public final audioSource:I

.field public final bufferSize:I

.field public final maxRetry:I

.field public final retryIntervalMs:I

.field public final sampleRate:I

.field public final threadPriority:I


# direct methods
.method private constructor <init>(Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig$Builder;)V
    .registers 3

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {p1}, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig$Builder;->-$$Nest$fgetsampleRate(Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig;->sampleRate:I

    .line 26
    invoke-static {p1}, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig$Builder;->-$$Nest$fgetaudioSource(Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig;->audioSource:I

    .line 27
    invoke-static {p1}, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig$Builder;->-$$Nest$fgetaudioChannels(Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig;->audioChannels:I

    .line 28
    invoke-static {p1}, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig$Builder;->-$$Nest$fgetaudioFormat(Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig;->audioFormat:I

    .line 29
    invoke-static {p1}, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig$Builder;->-$$Nest$fgetbufferSize(Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig;->bufferSize:I

    .line 30
    invoke-static {p1}, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig$Builder;->-$$Nest$fgetmaxRetry(Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig;->maxRetry:I

    .line 31
    invoke-static {p1}, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig$Builder;->-$$Nest$fgetretryIntervalMs(Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig;->retryIntervalMs:I

    .line 32
    invoke-static {p1}, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig$Builder;->-$$Nest$fgetthreadPriority(Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig$Builder;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig;->threadPriority:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig$Builder;Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig;-><init>(Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig$Builder;)V

    return-void
.end method

.method public static builder()Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig$Builder;
    .registers 1

    .line 36
    new-instance v0, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig$Builder;

    invoke-direct {v0}, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig$Builder;-><init>()V

    return-object v0
.end method

.method public static createDefault()Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig;
    .registers 1

    .line 40
    new-instance v0, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig$Builder;

    invoke-direct {v0}, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig$Builder;->build()Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig;

    move-result-object v0

    return-object v0
.end method
