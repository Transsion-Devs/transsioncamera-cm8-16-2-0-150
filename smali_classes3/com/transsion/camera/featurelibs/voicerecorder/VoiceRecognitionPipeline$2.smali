.class Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/featurelibs/voicerecorder/IAudioRecordListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->runRecordingLoop()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;


# direct methods
.method constructor <init>(Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;)V
    .registers 2

    .line 211
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline$2;->this$0:Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRecordData([BI)V
    .registers 4

    .line 214
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline$2;->this$0:Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;

    invoke-static {v0}, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->-$$Nest$fgetmSessionId(Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline$2;->this$0:Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;

    invoke-static {v0}, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->-$$Nest$fgetmRecognizer(Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;)Lcom/transsion/camera/featurelibs/voicerecorder/IAudioRecognizer;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 215
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline$2;->this$0:Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;

    invoke-static {v0}, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->-$$Nest$fgetmRecognizer(Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;)Lcom/transsion/camera/featurelibs/voicerecorder/IAudioRecognizer;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline$2;->this$0:Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;

    invoke-static {p0}, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->-$$Nest$fgetmSessionId(Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1, p2}, Lcom/transsion/camera/featurelibs/voicerecorder/IAudioRecognizer;->streamAudioData(Ljava/lang/String;[BI)V

    :cond_1f
    return-void
.end method

.method public onRecordEnd()V
    .registers 2

    .line 232
    invoke-static {}, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "Record ended"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onRecordError(I)V
    .registers 5

    .line 221
    invoke-static {}, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Record error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline$2;->this$0:Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;

    invoke-static {v0}, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->-$$Nest$fgetmRecognitionCallback(Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;)Lcom/transsion/camera/featurelibs/voicerecorder/IRecognitionCallback;

    move-result-object v0

    if-eqz v0, :cond_29

    iget-object p0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline$2;->this$0:Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;

    invoke-static {p0}, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->-$$Nest$fgetmRecognitionCallback(Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;)Lcom/transsion/camera/featurelibs/voicerecorder/IRecognitionCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/camera/featurelibs/voicerecorder/IRecognitionCallback;->onError(I)V

    :cond_29
    return-void
.end method

.method public onRecordStart()V
    .registers 3

    .line 227
    invoke-static {}, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Record started in thread: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
