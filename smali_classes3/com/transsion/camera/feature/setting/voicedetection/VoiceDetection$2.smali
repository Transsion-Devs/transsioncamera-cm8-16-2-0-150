.class Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;


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

    .line 315
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$2;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewStarted()V
    .registers 5

    .line 325
    sget-object v0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreviewStarted:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$2;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$2;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->-$$Nest$fputmIsPreview(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;Z)V

    .line 327
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$2;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->-$$Nest$fgetmRestored(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 328
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$2;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->-$$Nest$fgetmIsModeSupportOriginal(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Z

    move-result v2

    invoke-static {v0, v2}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->-$$Nest$fputmIsModeSupport(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;Z)V

    .line 329
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$2;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->-$$Nest$msyncRemoteCaptureFragment(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)V

    .line 331
    :cond_38
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$2;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v2, "on"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 332
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$2;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->-$$Nest$fgetmIsModeSupport(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 333
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$2;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    invoke-static {v0}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->access$100(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$2;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$2;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->-$$Nest$fgetmHandler(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 335
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$2;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->-$$Nest$fgetmHandler(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x66

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 336
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$2;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->-$$Nest$fgetmHandler(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Landroid/os/Handler;

    move-result-object v0

    iget-object v3, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$2;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    invoke-static {v3}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->-$$Nest$fgetmContext(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/transsion/camera/utils/CameraUtil;->hasVisibleFragment(Landroid/content/Context;)Z

    move-result v3

    xor-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 337
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$2;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->-$$Nest$fgetmHandler(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 338
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$2;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->-$$Nest$fgetmHandler(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Landroid/os/Handler;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_ad
    return-void
.end method

.method public onPreviewStopped()V
    .registers 3

    .line 319
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$2;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->-$$Nest$fputmIsPreview(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;Z)V

    .line 320
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$2;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    invoke-static {v0}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->access$000(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$2;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    return-void
.end method
