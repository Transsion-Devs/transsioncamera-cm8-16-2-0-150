.class Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI$EyeResultCallbackImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EyeResultCallbackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;)V
    .registers 2

    .line 238
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI$EyeResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI$EyeResultCallbackImpl;-><init>(Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;)V

    return-void
.end method


# virtual methods
.method public onDataCallback(Ljava/lang/Object;I)V
    .registers 5

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_5e

    return-void

    .line 254
    :pswitch_5
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI$EyeResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;)Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI$UIHandler;

    move-result-object p0

    const/16 p1, 0x66

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 251
    :pswitch_15
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI$EyeResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;)Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI$UIHandler;

    move-result-object p0

    const/16 p1, 0x65

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 243
    :pswitch_25
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI$EyeResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;)Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI$UIHandler;

    move-result-object p2

    const/16 v1, 0x64

    invoke-virtual {p2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 244
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p2

    iget-boolean p2, p2, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsHumanDetectNew:Z

    if-eqz p2, :cond_46

    .line 245
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI$EyeResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;)Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI$UIHandler;

    move-result-object p0

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 247
    :cond_46
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI$EyeResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;)Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI$UIHandler;

    move-result-object p2

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI$EyeResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->-$$Nest$fgetmIsCapturing(Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;)Z

    move-result p0

    if-eqz p0, :cond_55

    move-object p1, v0

    :cond_55
    invoke-virtual {p2, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    nop

    :pswitch_data_5e
    .packed-switch 0x64
        :pswitch_25
        :pswitch_15
        :pswitch_5
    .end packed-switch
.end method
