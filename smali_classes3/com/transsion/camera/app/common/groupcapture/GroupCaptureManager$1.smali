.class Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;)V
    .registers 2

    .line 97
    iput-object p1, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$1;->this$0:Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    .line 100
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "capture_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    const-string v0, "key_group_capture_scene_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14

    goto :goto_3b

    .line 102
    :cond_14
    iget-object p1, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$1;->this$0:Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;

    const-string v0, "on"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->-$$Nest$fputmIsGroupScene(Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;Z)V

    .line 103
    iget-object p1, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$1;->this$0:Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;

    invoke-static {p1}, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->-$$Nest$fgetmIsGroupScene(Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;)Z

    move-result p1

    if-nez p1, :cond_3b

    .line 104
    iget-object p1, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$1;->this$0:Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;

    invoke-static {p1}, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->-$$Nest$fgetmCameraDeviceControl(Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->setCaptureTag(I)V

    .line 105
    iget-object p0, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$1;->this$0:Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->-$$Nest$fgetmCameraDeviceControl(Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->setCaptureZSLTimestamps([J)V

    :cond_3b
    :goto_3b
    return-void

    .line 109
    :cond_3c
    const-string p1, "capture_started"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_69

    iget-object p1, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$1;->this$0:Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;

    .line 110
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->isCapturing()Z

    move-result p1

    if-nez p1, :cond_69

    iget-object p1, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$1;->this$0:Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;

    invoke-static {p1}, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->-$$Nest$misFaceBeautyOn(Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;)Z

    move-result p1

    if-eqz p1, :cond_69

    iget-object p1, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$1;->this$0:Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;

    invoke-static {p1}, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->-$$Nest$fgetmTimeConsumingCaptureInfo(Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    .line 111
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_69

    .line 112
    iget-object p1, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$1;->this$0:Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;

    invoke-static {p1}, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->-$$Nest$fgetmTimeConsumingCountOfNoneGroupCapture(Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 114
    :cond_69
    invoke-static {}, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleCaptureStateChange,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", isCapturing: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$1;->this$0:Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;

    .line 115
    invoke-virtual {p2}, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->isCapturing()Z

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", isFaceBeautyOn: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$1;->this$0:Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;

    .line 116
    invoke-static {p2}, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->-$$Nest$misFaceBeautyOn(Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;)Z

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", mTimeConsumingCountOfNoneGroupCapture: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$1;->this$0:Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->-$$Nest$fgetmTimeConsumingCountOfNoneGroupCapture(Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p0

    .line 118
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 114
    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
