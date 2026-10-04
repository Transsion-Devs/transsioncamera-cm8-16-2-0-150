.class Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;->init(Landroid/content/Context;Landroid/os/Bundle;Lcom/transsion/camera/featurelibs/voicerecorder/IRecognitionCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;)V
    .registers 2

    .line 91
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer$1;->this$0:Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 91
    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer$1;->invoke(Landroid/os/Bundle;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public invoke(Landroid/os/Bundle;)Lkotlin/Unit;
    .registers 5

    .line 94
    invoke-static {}, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[init] invoke init result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 95
    const-string v0, "success"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 96
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer$1;->this$0:Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;

    invoke-static {v0, p1}, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;->-$$Nest$fputmInitialized(Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;Z)V

    if-eqz p1, :cond_39

    .line 97
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer$1;->this$0:Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;->-$$Nest$fgetmCallback(Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;)Lcom/transsion/camera/featurelibs/voicerecorder/IRecognitionCallback;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 98
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer$1;->this$0:Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;->-$$Nest$fgetmCallback(Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;)Lcom/transsion/camera/featurelibs/voicerecorder/IRecognitionCallback;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/transsion/camera/featurelibs/voicerecorder/IRecognitionCallback;->onReady(Ljava/lang/String;)V

    goto :goto_4d

    :cond_39
    if-nez p1, :cond_4d

    .line 99
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer$1;->this$0:Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;->-$$Nest$fgetmCallback(Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;)Lcom/transsion/camera/featurelibs/voicerecorder/IRecognitionCallback;

    move-result-object p1

    if-eqz p1, :cond_4d

    .line 100
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer$1;->this$0:Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;->-$$Nest$fgetmCallback(Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;)Lcom/transsion/camera/featurelibs/voicerecorder/IRecognitionCallback;

    move-result-object p0

    const/4 p1, -0x1

    invoke-interface {p0, p1}, Lcom/transsion/camera/featurelibs/voicerecorder/IRecognitionCallback;->onError(I)V

    .line 102
    :cond_4d
    :goto_4d
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
