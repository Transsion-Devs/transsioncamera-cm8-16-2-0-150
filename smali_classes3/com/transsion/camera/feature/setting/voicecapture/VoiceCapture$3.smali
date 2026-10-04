.class Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;)V
    .registers 2

    .line 331
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture$3;->this$0:Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewStarted()V
    .registers 4

    .line 340
    invoke-static {}, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreviewStarted:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture$3;->this$0:Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture$3;->this$0:Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 342
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture$3;->this$0:Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->-$$Nest$fgetmIsModeSupport(Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;)Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 343
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture$3;->this$0:Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    invoke-static {v0}, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->access$100(Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture$3;->this$0:Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture$3;->this$0:Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->-$$Nest$minitRecognitionPipeline(Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;)V

    .line 345
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture$3;->this$0:Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->-$$Nest$fgetmHandler(Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 346
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture$3;->this$0:Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->-$$Nest$fgetmHandler(Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture$3;->this$0:Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;

    invoke-static {v2}, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->-$$Nest$fgetmContext(Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/camera/utils/CameraUtil;->hasVisibleFragment(Landroid/content/Context;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 347
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture$3;->this$0:Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->-$$Nest$fgetmHandler(Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 348
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture$3;->this$0:Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->-$$Nest$fgetmHandler(Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;)Landroid/os/Handler;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_8a
    return-void
.end method

.method public onPreviewStopped()V
    .registers 2

    .line 335
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture$3;->this$0:Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    invoke-static {v0}, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->access$000(Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture$3;->this$0:Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    return-void
.end method
