.class Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/featurelibs/voicerecorder/IRecognitionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->initRecognizerAndWait()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;

.field final synthetic val$initSuccess:[Z

.field final synthetic val$stateWait:Lcom/transsion/camera/utils/StateWait;


# direct methods
.method constructor <init>(Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;[ZLcom/transsion/camera/utils/StateWait;)V
    .registers 4

    .line 139
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline$1;->this$0:Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;

    iput-object p2, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline$1;->val$initSuccess:[Z

    iput-object p3, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline$1;->val$stateWait:Lcom/transsion/camera/utils/StateWait;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .registers 3

    .line 152
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline$1;->val$stateWait:Lcom/transsion/camera/utils/StateWait;

    invoke-virtual {v0}, Lcom/transsion/camera/utils/StateWait;->notifyState()V

    .line 153
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline$1;->this$0:Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;

    invoke-static {v0}, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->-$$Nest$fgetmRecognitionCallback(Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;)Lcom/transsion/camera/featurelibs/voicerecorder/IRecognitionCallback;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 154
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline$1;->this$0:Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;

    invoke-static {p0}, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->-$$Nest$fgetmRecognitionCallback(Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;)Lcom/transsion/camera/featurelibs/voicerecorder/IRecognitionCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/camera/featurelibs/voicerecorder/IRecognitionCallback;->onError(I)V

    :cond_16
    return-void
.end method

.method public onExit()V
    .registers 2

    .line 167
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline$1;->this$0:Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;

    invoke-static {v0}, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->-$$Nest$fgetmRecognitionCallback(Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;)Lcom/transsion/camera/featurelibs/voicerecorder/IRecognitionCallback;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 168
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline$1;->this$0:Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;

    invoke-static {p0}, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->-$$Nest$fgetmRecognitionCallback(Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;)Lcom/transsion/camera/featurelibs/voicerecorder/IRecognitionCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/featurelibs/voicerecorder/IRecognitionCallback;->onExit()V

    :cond_11
    return-void
.end method

.method public onReady(Ljava/lang/String;)V
    .registers 5

    .line 142
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline$1;->val$initSuccess:[Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 143
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline$1;->this$0:Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;

    invoke-static {v0, v2}, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->-$$Nest$fputmRecognizerInitialized(Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;Z)V

    .line 144
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline$1;->val$stateWait:Lcom/transsion/camera/utils/StateWait;

    invoke-virtual {v0}, Lcom/transsion/camera/utils/StateWait;->notifyState()V

    .line 145
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline$1;->this$0:Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;

    invoke-static {v0}, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->-$$Nest$fgetmRecognitionCallback(Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;)Lcom/transsion/camera/featurelibs/voicerecorder/IRecognitionCallback;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 146
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline$1;->this$0:Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;

    invoke-static {p0}, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->-$$Nest$fgetmRecognitionCallback(Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;)Lcom/transsion/camera/featurelibs/voicerecorder/IRecognitionCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/camera/featurelibs/voicerecorder/IRecognitionCallback;->onReady(Ljava/lang/String;)V

    :cond_21
    return-void
.end method

.method public onResult(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 160
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline$1;->this$0:Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;

    invoke-static {v0}, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->-$$Nest$fgetmRecognitionCallback(Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;)Lcom/transsion/camera/featurelibs/voicerecorder/IRecognitionCallback;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 161
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline$1;->this$0:Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;

    invoke-static {p0}, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->-$$Nest$fgetmRecognitionCallback(Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;)Lcom/transsion/camera/featurelibs/voicerecorder/IRecognitionCallback;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/featurelibs/voicerecorder/IRecognitionCallback;->onResult(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    return-void
.end method
