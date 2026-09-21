.class Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI$HumanResultCallbackImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HumanResultCallbackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;)V
    .registers 2

    .line 214
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI$HumanResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI$HumanResultCallbackImpl;-><init>(Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;)V

    return-void
.end method


# virtual methods
.method public onDataCallback(Ljava/lang/Object;I)V
    .registers 4

    .line 217
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI$HumanResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;)Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI$UIHandler;

    move-result-object p2

    const/16 v0, 0x6e

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 218
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p2

    iget-boolean p2, p2, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsHumanDetectNew:Z

    if-nez p2, :cond_2a

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI$HumanResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->-$$Nest$fgetmIsCapturing(Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;)Z

    move-result p2

    if-eqz p2, :cond_2a

    .line 219
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI$HumanResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;)Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI$UIHandler;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 221
    :cond_2a
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI$HumanResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;)Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI$UIHandler;

    move-result-object p0

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
