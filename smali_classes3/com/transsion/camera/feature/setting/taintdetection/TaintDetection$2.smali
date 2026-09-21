.class Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;)V
    .registers 2

    .line 504
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$2;->this$0:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewStarted()V
    .registers 4

    .line 513
    invoke-static {}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "[onPreviewStarted] ++ "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 514
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$2;->this$0:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$2;->this$0:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->-$$Nest$fgetmIsModeSupport(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 515
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$2;->this$0:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->-$$Nest$fgetmHandler(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;)Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionHandler;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 516
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$2;->this$0:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->-$$Nest$fgetmHandler(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;)Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionHandler;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 517
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$2;->this$0:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->-$$Nest$fgetmHandler(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;)Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionHandler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 518
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$2;->this$0:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->-$$Nest$fgetmHandler(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;)Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionHandler;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 519
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$2;->this$0:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    invoke-static {v0}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->access$000(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$2;->this$0:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    :cond_5f
    return-void
.end method

.method public onPreviewStopped()V
    .registers 2

    .line 507
    invoke-static {}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "[onPreviewStopped] -- "

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
