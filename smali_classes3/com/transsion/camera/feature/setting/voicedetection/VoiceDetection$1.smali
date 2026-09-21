.class Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)V
    .registers 2

    .line 276
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCaptureEnd()V
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;->onCaptureEnd()V

    return-void
.end method

.method public onCaptureStart()V
    .registers 1

    return-void
.end method

.method public takePictureEnd(Z)V
    .registers 3

    .line 288
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->-$$Nest$fgetmHandler(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x69

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 289
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->-$$Nest$fgetmHandler(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Landroid/os/Handler;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public takePictureStart()V
    .registers 3

    .line 279
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->-$$Nest$fgetmHandler(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Landroid/os/Handler;

    move-result-object p0

    const/16 v0, 0x69

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
