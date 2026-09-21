.class Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;)V
    .registers 2

    .line 400
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI$1;->this$0:Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 400
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI$1;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 403
    const-string v0, "key_focus_state"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "key_gesture_state"

    if-eqz v0, :cond_32

    .line 404
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI$1;->this$0:Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->-$$Nest$fgetmDeviceSetting(Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p1

    if-eqz p1, :cond_c0

    .line 405
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI$1;->this$0:Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;

    const-string v0, "key_touch_capture"

    invoke-static {p1, v0}, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->-$$Nest$mquerySettingValue(Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 406
    const-string v0, "on"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_c0

    const-string p1, "ACTIVE_SCAN"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_c0

    .line 407
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI$1;->this$0:Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;

    const-string p1, "gesture_invalid_state"

    invoke-static {p0, v1, p1}, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->-$$Nest$mnotifyStatusChanged(Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 410
    :cond_32
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_c0

    .line 411
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI$1;->this$0:Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->-$$Nest$fgetmIsTakePicture(Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;)Z

    move-result p1

    if-nez p1, :cond_96

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI$1;->this$0:Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->-$$Nest$fgetmTurnOnSwitch(Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;)Z

    move-result p1

    if-nez p1, :cond_49

    goto :goto_96

    .line 415
    :cond_49
    const-string p1, "gesture_capture_state"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_c0

    .line 416
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI$1;->this$0:Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->-$$Nest$fgetmSettingStatusListener(Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    move-result-object p1

    if-eqz p1, :cond_64

    .line 417
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI$1;->this$0:Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->-$$Nest$fgetmSettingStatusListener(Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    move-result-object p1

    sget-object p2, Lcom/transsion/camera/app/common/IApp$State;->STATE_IDLE:Lcom/transsion/camera/app/common/IApp$State;

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;->onStatusChanged(Lcom/transsion/camera/app/common/IApp$State;)V

    .line 419
    :cond_64
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI$1;->this$0:Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;

    const-string p2, "key_self_timer"

    invoke-static {p1, p2}, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->-$$Nest$mquerySettingValue(Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "off"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7e

    .line 420
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI$1;->this$0:Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;

    const-string p1, "key_start_gesture_self_timer"

    const-string p2, "3"

    invoke-static {p0, p1, p2}, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->-$$Nest$mnotifyStatusChanged(Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 423
    :cond_7e
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI$1;->this$0:Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;)Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI$UIHandler;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 424
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI$1;->this$0:Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;)Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI$UIHandler;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 412
    :cond_96
    :goto_96
    sget-object p1, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "abort capture when doing shot or cancel by isTakePicture: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI$1;->this$0:Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->-$$Nest$fgetmIsTakePicture(Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", turnOnSwitch: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI$1;->this$0:Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->-$$Nest$fgetmTurnOnSwitch(Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;)Z

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_c0
    return-void
.end method
