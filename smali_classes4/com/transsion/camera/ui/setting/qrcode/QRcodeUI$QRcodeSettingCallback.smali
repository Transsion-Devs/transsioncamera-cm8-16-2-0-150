.class Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QRcodeSettingCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QRcodeSettingCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;)V
    .registers 2

    .line 202
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QRcodeSettingCallback;->this$0:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QRcodeSettingCallback;-><init>(Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;)V

    return-void
.end method


# virtual methods
.method public onDataCallback(Ljava/lang/Object;I)V
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_c8

    if-eq p2, v1, :cond_8

    goto/16 :goto_121

    :cond_8
    if-eqz p1, :cond_121

    .line 209
    invoke-static {}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataCallback mAllowUpdateResult = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QRcodeSettingCallback;->this$0:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;

    invoke-static {v2}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->-$$Nest$fgetmAllowUpdateResult(Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " currentLockState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QRcodeSettingCallback;->this$0:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;

    invoke-static {v2}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->-$$Nest$fgetmAeAfLock(Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;)Lcom/transsion/camera/app/common/mode/IAeAfLock;

    move-result-object v2

    .line 210
    invoke-interface {v2}, Lcom/transsion/camera/app/common/mode/IAeAfLock;->currentLockState()Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 209
    invoke-static {p2, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 211
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QRcodeSettingCallback;->this$0:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;)Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$UIHandler;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 212
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QRcodeSettingCallback;->this$0:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->-$$Nest$fgetmAllowUpdateResult(Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;)Z

    move-result p2

    if-eqz p2, :cond_121

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QRcodeSettingCallback;->this$0:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->-$$Nest$fgetmIsPopSettingOrZoomBarShow(Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;)Z

    move-result p2

    if-nez p2, :cond_121

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QRcodeSettingCallback;->this$0:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->-$$Nest$fgetmIsFilterUIShow(Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;)Z

    move-result p2

    if-nez p2, :cond_121

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QRcodeSettingCallback;->this$0:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->-$$Nest$fgetmIsImageStyleUIShow(Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;)Z

    move-result p2

    if-nez p2, :cond_121

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QRcodeSettingCallback;->this$0:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->-$$Nest$fgetmIsCelebritySceneUIShow(Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;)Z

    move-result p2

    if-nez p2, :cond_121

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QRcodeSettingCallback;->this$0:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->-$$Nest$fgetmAeAfLock(Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;)Lcom/transsion/camera/app/common/mode/IAeAfLock;

    move-result-object p2

    .line 213
    invoke-interface {p2}, Lcom/transsion/camera/app/common/mode/IAeAfLock;->currentLockState()Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    move-result-object p2

    sget-object v1, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->AE_AF_LOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    if-ne p2, v1, :cond_7c

    goto/16 :goto_121

    .line 216
    :cond_7c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QRcodeSettingCallback;->this$0:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->-$$Nest$fgetmCLickToastTime(Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x2710

    cmp-long p2, v1, v3

    if-gtz p2, :cond_b3

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QRcodeSettingCallback;->this$0:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->-$$Nest$fgetmIsClickToast(Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;)Z

    move-result p2

    if-eqz p2, :cond_b3

    .line 217
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QRcodeSettingCallback;->this$0:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->-$$Nest$mhideToast(Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;)V

    .line 218
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QRcodeSettingCallback;->this$0:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->-$$Nest$mhideBoxView(Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;)V

    .line 219
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QRcodeSettingCallback;->this$0:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->-$$Nest$mresetBoxViewRect(Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;)V

    .line 220
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QRcodeSettingCallback;->this$0:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->-$$Nest$mresetLastQrcodeInfo(Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;)V

    .line 221
    invoke-static {}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "onDataCallBack interval time < 10s return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 224
    :cond_b3
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QRcodeSettingCallback;->this$0:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;

    invoke-static {p2, v0}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->-$$Nest$fputmIsInitialLocation(Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;Z)V

    .line 225
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QRcodeSettingCallback;->this$0:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;)Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$UIHandler;

    move-result-object p0

    const/16 p2, 0x65

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 229
    :cond_c8
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QRcodeSettingCallback;->this$0:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->-$$Nest$fgetmIsShowBoxView(Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;)Z

    move-result p1

    if-eqz p1, :cond_e8

    .line 230
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QRcodeSettingCallback;->this$0:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;)Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$UIHandler;

    move-result-object p1

    const/16 p2, 0x69

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 231
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QRcodeSettingCallback;->this$0:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;)Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$UIHandler;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 233
    :cond_e8
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QRcodeSettingCallback;->this$0:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;

    invoke-static {p1, v0}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->-$$Nest$fputmIsClickToast(Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;Z)V

    .line 234
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QRcodeSettingCallback;->this$0:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->-$$Nest$mresetLastQrcodeInfo(Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;)V

    .line 235
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QRcodeSettingCallback;->this$0:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->-$$Nest$fgetmIsInitialLocation(Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;)Z

    move-result p1

    if-nez p1, :cond_121

    .line 236
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QRcodeSettingCallback;->this$0:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;

    invoke-static {p1, v1}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->-$$Nest$fputmIsInitialLocation(Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;Z)V

    .line 237
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QRcodeSettingCallback;->this$0:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;)Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$UIHandler;

    move-result-object p1

    const/16 p2, 0x67

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 238
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QRcodeSettingCallback;->this$0:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->-$$Nest$fgetmPopupWindow(Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-nez p1, :cond_121

    .line 239
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QRcodeSettingCallback;->this$0:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;)Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$UIHandler;

    move-result-object p0

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_121
    :goto_121
    return-void
.end method
