.class public Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private audioChannels:I

.field private audioFormat:I

.field private audioSource:I

.field private bufferSize:I

.field private maxRetry:I

.field private retryIntervalMs:I

.field private sampleRate:I

.field private threadPriority:I


# direct methods
.method static bridge synthetic -$$Nest$fgetaudioChannels(Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig$Builder;->audioChannels:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetaudioFormat(Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig$Builder;->audioFormat:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetaudioSource(Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig$Builder;->audioSource:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetbufferSize(Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig$Builder;->bufferSize:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmaxRetry(Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig$Builder;->maxRetry:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetretryIntervalMs(Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig$Builder;->retryIntervalMs:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsampleRate(Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig$Builder;->sampleRate:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetthreadPriority(Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig$Builder;->threadPriority:I

    return p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e80

    .line 44
    iput v0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig$Builder;->sampleRate:I

    const/4 v0, 0x1

    .line 45
    iput v0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig$Builder;->audioSource:I

    const/16 v0, 0x10

    .line 46
    iput v0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig$Builder;->audioChannels:I

    const/4 v0, 0x2

    .line 47
    iput v0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig$Builder;->audioFormat:I

    const/16 v0, 0x1180

    .line 48
    iput v0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig$Builder;->bufferSize:I

    const/4 v0, 0x5

    .line 49
    iput v0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig$Builder;->maxRetry:I

    const/16 v0, 0x64

    .line 50
    iput v0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig$Builder;->retryIntervalMs:I

    const/16 v0, 0xa

    .line 51
    iput v0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig$Builder;->threadPriority:I

    return-void
.end method


# virtual methods
.method public audioChannels(I)Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig$Builder;
    .registers 2

    .line 64
    iput p1, p0, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig$Builder;->audioChannels:I

    return-object p0
.end method

.method public audioFormat(I)Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig$Builder;
    .registers 2

    .line 69
    iput p1, p0, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig$Builder;->audioFormat:I

    return-object p0
.end method

.method public audioSource(I)Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig$Builder;
    .registers 2

    .line 59
    iput p1, p0, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig$Builder;->audioSource:I

    return-object p0
.end method

.method public bufferSize(I)Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig$Builder;
    .registers 2

    .line 74
    iput p1, p0, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig$Builder;->bufferSize:I

    return-object p0
.end method

.method public build()Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig;
    .registers 3

    .line 94
    new-instance v0, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig;-><init>(Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig$Builder;Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig-IA;)V

    return-object v0
.end method

.method public maxRetry(I)Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig$Builder;
    .registers 2

    .line 79
    iput p1, p0, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig$Builder;->maxRetry:I

    return-object p0
.end method

.method public retryIntervalMs(I)Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig$Builder;
    .registers 2

    .line 84
    iput p1, p0, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig$Builder;->retryIntervalMs:I

    return-object p0
.end method

.method public sampleRate(I)Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig$Builder;
    .registers 2

    .line 54
    iput p1, p0, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig$Builder;->sampleRate:I

    return-object p0
.end method

.method public threadPriority(I)Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig$Builder;
    .registers 2

    .line 89
    iput p1, p0, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig$Builder;->threadPriority:I

    return-object p0
.end method
