.class Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$EyeResultCallbackImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EyeResultCallbackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;)V
    .registers 2

    .line 205
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$EyeResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$EyeResultCallbackImpl;-><init>(Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;)V

    return-void
.end method


# virtual methods
.method public onDataCallback(Ljava/lang/Object;I)V
    .registers 6

    const/4 v0, 0x0

    const/16 v1, 0x66

    const/16 v2, 0x65

    if-eq p2, v2, :cond_21

    if-eq p2, v1, :cond_a

    return-void

    .line 219
    :cond_a
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$EyeResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;)Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$UIHandler;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 220
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$EyeResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;)Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$UIHandler;

    move-result-object p0

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 210
    :cond_21
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p2

    iget-boolean p2, p2, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsHumanDetectNew:Z

    if-nez p2, :cond_49

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$EyeResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->-$$Nest$fgetmIsCapturing(Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;)Z

    move-result p2

    if-nez p2, :cond_32

    goto :goto_49

    .line 214
    :cond_32
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$EyeResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;)Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$UIHandler;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 215
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$EyeResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;)Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$UIHandler;

    move-result-object p0

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 211
    :cond_49
    :goto_49
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$EyeResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;)Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$UIHandler;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 212
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$EyeResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;)Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$UIHandler;

    move-result-object p0

    invoke-virtual {p0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
