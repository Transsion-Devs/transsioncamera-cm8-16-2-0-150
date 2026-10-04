.class public Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private callback:Lcom/transsion/camera/featurelibs/voicerecorder/IRecognitionCallback;

.field private context:Landroid/content/Context;

.field private initLanguage:Ljava/lang/String;

.field private sessionLanguage:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetcallback(Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer$Builder;)Lcom/transsion/camera/featurelibs/voicerecorder/IRecognitionCallback;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer$Builder;->callback:Lcom/transsion/camera/featurelibs/voicerecorder/IRecognitionCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcontext(Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer$Builder;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer$Builder;->context:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetinitLanguage(Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer$Builder;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer$Builder;->initLanguage:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsessionLanguage(Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer$Builder;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer$Builder;->sessionLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    const-string v0, "ENGLISH"

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer$Builder;->initLanguage:Ljava/lang/String;

    .line 241
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer$Builder;->sessionLanguage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;
    .registers 3

    .line 266
    new-instance v0, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;-><init>(Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer$Builder;Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer-IA;)V

    return-object v0
.end method

.method public setCallback(Lcom/transsion/camera/featurelibs/voicerecorder/IRecognitionCallback;)Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer$Builder;
    .registers 2

    .line 261
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer$Builder;->callback:Lcom/transsion/camera/featurelibs/voicerecorder/IRecognitionCallback;

    return-object p0
.end method

.method public setContext(Landroid/content/Context;)Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer$Builder;
    .registers 2

    .line 256
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer$Builder;->context:Landroid/content/Context;

    return-object p0
.end method

.method public setInitLanguage(Ljava/lang/String;)Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer$Builder;
    .registers 2

    if-eqz p1, :cond_3

    goto :goto_5

    .line 246
    :cond_3
    const-string p1, "ENGLISH"

    :goto_5
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer$Builder;->initLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public setSessionLanguage(Ljava/lang/String;)Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer$Builder;
    .registers 2

    if-eqz p1, :cond_3

    goto :goto_5

    .line 251
    :cond_3
    const-string p1, "ENGLISH"

    :goto_5
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer$Builder;->sessionLanguage:Ljava/lang/String;

    return-object p0
.end method
