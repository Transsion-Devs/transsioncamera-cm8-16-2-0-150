.class Lcom/transsion/camera/app/ui/manager/PopSettingUIManager$mStatusChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "mStatusChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;)V
    .registers 2

    .line 1001
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager$mStatusChangeListener;->this$0:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;Lcom/transsion/camera/app/ui/manager/PopSettingUIManager-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager$mStatusChangeListener;-><init>(Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 1001
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager$mStatusChangeListener;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1004
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager$mStatusChangeListener;->this$0:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->-$$Nest$fgetmPopSettingUI(Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;)Lcom/transsion/camera/app/ui/PopSettingUI;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_40

    .line 1007
    :cond_9
    const-string v0, "key_wide_camera_touch_event"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    const-string v0, "key_zoom_ui_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_2e

    .line 1013
    :cond_1a
    const-string v0, "key_quick_video_action"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_40

    .line 1014
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager$mStatusChangeListener;->this$0:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    const-string p1, "key_quick_video_start"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->-$$Nest$fputmIsVideoRecording(Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;Z)V

    return-void

    .line 1008
    :cond_2e
    :goto_2e
    const-string/jumbo p1, "value_wide_camera_touch_up"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_41

    const-string p1, "slip_stop"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_40

    goto :goto_41

    :cond_40
    :goto_40
    return-void

    .line 1009
    :cond_41
    :goto_41
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager$mStatusChangeListener;->this$0:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->-$$Nest$fgetmPopSettingUI(Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;)Lcom/transsion/camera/app/ui/PopSettingUI;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/PopSettingUI;->isZoomStart(Z)V

    .line 1010
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager$mStatusChangeListener;->this$0:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->-$$Nest$fgetmPopSettingUI(Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;)Lcom/transsion/camera/app/ui/PopSettingUI;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/PopSettingUI;->setEnable(Z)V

    .line 1011
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager$mStatusChangeListener;->this$0:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    invoke-static {p0, p2}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->-$$Nest$fputmEnable(Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;Z)V

    return-void
.end method
