.class Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)V
    .registers 2

    .line 306
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$2;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewStarted()V
    .registers 5

    .line 315
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$2;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_65

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$2;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->-$$Nest$fgetmIsModeSupport(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 316
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$2;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    invoke-static {v0}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->access$000(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$2;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    .line 317
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x67

    .line 318
    iput v1, v0, Landroid/os/Message;->what:I

    .line 319
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$2;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    invoke-static {v2}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->-$$Nest$fgetmContext(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/camera/utils/CameraUtil;->hasVisibleFragment(Landroid/content/Context;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 320
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$2;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    invoke-static {v2}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->-$$Nest$fgetmHandler(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 321
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$2;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->-$$Nest$fgetmHandler(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 322
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$2;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->-$$Nest$fgetmHandler(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)Landroid/os/Handler;

    move-result-object p0

    const/16 v0, 0x6a

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_65
    return-void
.end method

.method public onPreviewStopped()V
    .registers 2

    .line 309
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$2;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->-$$Nest$fgetmHandler(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)Landroid/os/Handler;

    move-result-object p0

    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
