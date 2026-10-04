.class Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/aicore/nexusflow/FlowCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;)V
    .registers 2

    .line 201
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer$2;->this$0:Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComponentResult(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 7

    .line 209
    invoke-static {}, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onComponentResult id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", name: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 210
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer$2;->this$0:Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;->-$$Nest$fgetmCallback(Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;)Lcom/transsion/camera/featurelibs/voicerecorder/IRecognitionCallback;

    move-result-object p1

    if-eqz p1, :cond_58

    const-string p1, "ASR"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_58

    .line 211
    const-string p1, "asr_result"

    invoke-virtual {p3, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 212
    invoke-static {}, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onComponentResult detect result: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 213
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer$2;->this$0:Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;->-$$Nest$fgetmCallback(Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;)Lcom/transsion/camera/featurelibs/voicerecorder/IRecognitionCallback;

    move-result-object p0

    const/4 p2, 0x0

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/featurelibs/voicerecorder/IRecognitionCallback;->onResult(Ljava/lang/String;Ljava/lang/String;)V

    :cond_58
    return-void
.end method

.method public onComponentTrickle(Ljava/lang/String;Landroid/os/Bundle;[B)V
    .registers 4

    return-void
.end method

.method public onFlowComplete(Ljava/lang/String;Lcom/transsion/aicore/nexusflow/FlowResult;)V
    .registers 6

    .line 224
    invoke-static {}, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFlowComplete id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", result: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/transsion/aicore/nexusflow/FlowResult;->getResult()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 225
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer$2;->this$0:Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;->-$$Nest$fgetmCallback(Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;)Lcom/transsion/camera/featurelibs/voicerecorder/IRecognitionCallback;

    move-result-object p1

    if-eqz p1, :cond_35

    .line 226
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer$2;->this$0:Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;->-$$Nest$fgetmCallback(Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;)Lcom/transsion/camera/featurelibs/voicerecorder/IRecognitionCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/featurelibs/voicerecorder/IRecognitionCallback;->onExit()V

    :cond_35
    return-void
.end method

.method public onFlowError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 232
    invoke-static {}, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFlowError id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", errorMsg: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 233
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer$2;->this$0:Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;->-$$Nest$fgetmCallback(Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;)Lcom/transsion/camera/featurelibs/voicerecorder/IRecognitionCallback;

    move-result-object p1

    if-eqz p1, :cond_32

    .line 234
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer$2;->this$0:Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;->-$$Nest$fgetmCallback(Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;)Lcom/transsion/camera/featurelibs/voicerecorder/IRecognitionCallback;

    move-result-object p0

    const/4 p1, -0x1

    invoke-interface {p0, p1}, Lcom/transsion/camera/featurelibs/voicerecorder/IRecognitionCallback;->onError(I)V

    :cond_32
    return-void
.end method

.method public onFlowStart(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 204
    invoke-static {}, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFlowStart id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", name: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
