.class Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI$StatusChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatusChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;)V
    .registers 2

    .line 281
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI$StatusChangeListener;-><init>(Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 281
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI$StatusChangeListener;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 285
    invoke-static {}, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StatusChangeListener : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 286
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "ACTIVE_UNFOCUSED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    const-string v0, "ACTIVE_FOCUSED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    goto :goto_48

    .line 289
    :cond_34
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->-$$Nest$fgetmHandler(Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;)Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI$UIHandler;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 290
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->-$$Nest$fgetmHandler(Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;)Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI$UIHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 293
    :goto_48
    const-string v0, "key_ui_state_action"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_58

    const-string v0, "key_shutter_guide_layout_action"

    .line 294
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_77

    .line 295
    :cond_58
    const-string p1, "value_state_process"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_78

    const-string p1, "shutter_guide_layout_show"

    .line 296
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6a

    goto :goto_78

    .line 299
    :cond_6a
    const-string p1, "value_state_idle"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_77

    .line 300
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;

    invoke-static {p0, v0}, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->-$$Nest$fputmShutterUIProcessing(Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;Z)V

    :cond_77
    return-void

    .line 297
    :cond_78
    :goto_78
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->-$$Nest$fputmShutterUIProcessing(Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;Z)V

    .line 298
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;

    invoke-static {p0, v0}, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->-$$Nest$fputmTriggerTouchCapture(Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;Z)V

    return-void
.end method
