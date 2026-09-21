.class Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI$3;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->registerReceiver(Lcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView$OnCountDownListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

.field final synthetic val$countDownListener:Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView$OnCountDownListener;

.field final synthetic val$drainageSoundCallback:Lcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView$OnCountDownListener;Lcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;)V
    .registers 4

    .line 363
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI$3;->this$0:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI$3;->val$countDownListener:Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView$OnCountDownListener;

    iput-object p3, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI$3;->val$drainageSoundCallback:Lcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    .line 366
    const-string p1, "key_cam_is_power_down"

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 368
    invoke-static {}, Lcom/transsion/camera/utils/UnderwaterUtils;->isUnderwater()Z

    move-result v1

    .line 369
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    .line 370
    invoke-static {}, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive: mLongPressedPowerReceiver mLongPressedPower = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI$3;->this$0:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    invoke-static {v4}, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->-$$Nest$fgetmPowerLongPressed(Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isPowerKeyDown = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isUnderwater = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p2, :cond_a6

    .line 376
    const-string v2, "com.transsion.camera.LONG_PRESSED_POWER_ACTION"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7e

    const-string p1, "com.transsion.camera.UNDERWATER_STATUS_CHANGED_ACTION"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_58

    goto :goto_a6

    .line 393
    :cond_58
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI$3;->this$0:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->-$$Nest$fgetmLongPressedPowerReceiver(Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;)Landroid/content/BroadcastReceiver;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/BroadcastReceiver;->abortBroadcast()V

    if-eqz v1, :cond_78

    .line 395
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI$3;->this$0:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->stopCountDown(Z)Z

    move-result p1

    if-eqz p1, :cond_70

    .line 396
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI$3;->this$0:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->showDrainageLimit(Z)V

    .line 398
    :cond_70
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI$3;->this$0:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI$3;->val$drainageSoundCallback:Lcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;

    invoke-virtual {p1, p0, v0}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->stopDrainageSound(Lcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;Z)Z

    return-void

    .line 400
    :cond_78
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI$3;->this$0:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->hideDrainageLimit()V

    return-void

    .line 378
    :cond_7e
    iget-object p2, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI$3;->this$0:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->-$$Nest$fgetmPowerLongPressed(Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;)Z

    move-result p2

    if-eqz p2, :cond_87

    goto :goto_a6

    :cond_87
    if-eqz p1, :cond_93

    if-nez v1, :cond_93

    .line 382
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI$3;->this$0:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI$3;->val$countDownListener:Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView$OnCountDownListener;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->startCountDown(Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView$OnCountDownListener;)V

    return-void

    .line 384
    :cond_93
    iget-object p2, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI$3;->this$0:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->stopCountDown(Z)Z

    if-eqz p1, :cond_a1

    .line 386
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI$3;->this$0:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->showDrainageLimit(Z)V

    return-void

    .line 388
    :cond_a1
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI$3;->this$0:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->hideDrainageLimit()V

    :cond_a6
    :goto_a6
    return-void
.end method
