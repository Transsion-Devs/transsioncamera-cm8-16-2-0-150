.class Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;


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

    .line 254
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$1;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

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
    .registers 4

    .line 265
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/16 v0, 0x6a

    .line 266
    iput v0, p1, Landroid/os/Message;->what:I

    .line 267
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 268
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$1;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->-$$Nest$fgetmHandler(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 269
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$1;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->-$$Nest$fgetmHandler(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public takePictureStart()V
    .registers 3

    .line 257
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$1;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->-$$Nest$fgetmHandler(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)Landroid/os/Handler;

    move-result-object p0

    const/16 v0, 0x6a

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
