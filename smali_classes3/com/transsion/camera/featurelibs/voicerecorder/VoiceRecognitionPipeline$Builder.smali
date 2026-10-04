.class public Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private initConfig:Landroid/os/Bundle;

.field private recognitionCallback:Lcom/transsion/camera/featurelibs/voicerecorder/IRecognitionCallback;

.field private recognizer:Lcom/transsion/camera/featurelibs/voicerecorder/IAudioRecognizer;

.field private recordConfig:Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig;

.field private recordManager:Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordManager;

.field private sessionParams:Landroid/os/Bundle;


# direct methods
.method static bridge synthetic -$$Nest$fgetcontext(Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline$Builder;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline$Builder;->context:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetinitConfig(Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline$Builder;)Landroid/os/Bundle;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline$Builder;->initConfig:Landroid/os/Bundle;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrecognitionCallback(Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline$Builder;)Lcom/transsion/camera/featurelibs/voicerecorder/IRecognitionCallback;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline$Builder;->recognitionCallback:Lcom/transsion/camera/featurelibs/voicerecorder/IRecognitionCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrecognizer(Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline$Builder;)Lcom/transsion/camera/featurelibs/voicerecorder/IAudioRecognizer;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline$Builder;->recognizer:Lcom/transsion/camera/featurelibs/voicerecorder/IAudioRecognizer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrecordConfig(Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline$Builder;)Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline$Builder;->recordConfig:Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrecordManager(Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline$Builder;)Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline$Builder;->recordManager:Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsessionParams(Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline$Builder;)Landroid/os/Bundle;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline$Builder;->sessionParams:Landroid/os/Bundle;

    return-object p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline$Builder;->initConfig:Landroid/os/Bundle;

    .line 291
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline$Builder;->sessionParams:Landroid/os/Bundle;

    return-void
.end method

.method private static ensureByteArrayConfig(Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig;)Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig;
    .registers 4

    if-nez p0, :cond_6

    .line 325
    invoke-static {}, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig;->createDefault()Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig;

    move-result-object p0

    .line 327
    :cond_6
    iget v0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig;->audioFormat:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_44

    const/4 v2, 0x3

    if-eq v0, v2, :cond_44

    .line 329
    invoke-static {}, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig;->builder()Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig$Builder;

    move-result-object v0

    iget v2, p0, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig;->sampleRate:I

    .line 330
    invoke-virtual {v0, v2}, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig$Builder;->sampleRate(I)Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig$Builder;

    move-result-object v0

    iget v2, p0, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig;->audioSource:I

    .line 331
    invoke-virtual {v0, v2}, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig$Builder;->audioSource(I)Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig$Builder;

    move-result-object v0

    iget v2, p0, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig;->audioChannels:I

    .line 332
    invoke-virtual {v0, v2}, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig$Builder;->audioChannels(I)Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig$Builder;

    move-result-object v0

    .line 333
    invoke-virtual {v0, v1}, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig$Builder;->audioFormat(I)Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig$Builder;

    move-result-object v0

    iget v1, p0, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig;->bufferSize:I

    .line 334
    invoke-virtual {v0, v1}, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig$Builder;->bufferSize(I)Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig$Builder;

    move-result-object v0

    iget v1, p0, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig;->maxRetry:I

    .line 335
    invoke-virtual {v0, v1}, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig$Builder;->maxRetry(I)Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig$Builder;

    move-result-object v0

    iget v1, p0, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig;->retryIntervalMs:I

    .line 336
    invoke-virtual {v0, v1}, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig$Builder;->retryIntervalMs(I)Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig$Builder;

    move-result-object v0

    iget p0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig;->threadPriority:I

    .line 337
    invoke-virtual {v0, p0}, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig$Builder;->threadPriority(I)Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig$Builder;

    move-result-object p0

    .line 338
    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig$Builder;->build()Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig;

    move-result-object p0

    :cond_44
    return-object p0
.end method


# virtual methods
.method public build()Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;
    .registers 3

    .line 344
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline$Builder;->recognizer:Lcom/transsion/camera/featurelibs/voicerecorder/IAudioRecognizer;

    if-eqz v0, :cond_27

    .line 347
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline$Builder;->context:Landroid/content/Context;

    if-nez v0, :cond_11

    .line 348
    invoke-static {}, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "Context is null"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 350
    :cond_11
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline$Builder;->recordConfig:Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig;

    invoke-static {v0}, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline$Builder;->ensureByteArrayConfig(Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig;)Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline$Builder;->recordConfig:Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig;

    .line 351
    new-instance v0, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordManager;

    invoke-direct {v0}, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordManager;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline$Builder;->recordManager:Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordManager;

    .line 352
    new-instance v0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;-><init>(Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline$Builder;Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline-IA;)V

    return-object v0

    .line 345
    :cond_27
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Recognizer is required"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setRecognitionCallback(Lcom/transsion/camera/featurelibs/voicerecorder/IRecognitionCallback;)Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline$Builder;
    .registers 2

    .line 304
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline$Builder;->recognitionCallback:Lcom/transsion/camera/featurelibs/voicerecorder/IRecognitionCallback;

    return-object p0
.end method

.method public setRecognizer(Lcom/transsion/camera/featurelibs/voicerecorder/IAudioRecognizer;)Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline$Builder;
    .registers 2

    .line 299
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline$Builder;->recognizer:Lcom/transsion/camera/featurelibs/voicerecorder/IAudioRecognizer;

    return-object p0
.end method

.method public setRecordConfig(Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig;)Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline$Builder;
    .registers 2

    .line 309
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline$Builder;->recordConfig:Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig;

    return-object p0
.end method
