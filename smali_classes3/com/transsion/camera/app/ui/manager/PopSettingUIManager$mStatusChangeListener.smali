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
.method public static synthetic $r8$lambda$EhKAMxJsQtNJ61iAk8jRSjcfB5k(Lcom/transsion/camera/app/ui/manager/PopSettingUIManager$mStatusChangeListener;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager$mStatusChangeListener;->lambda$onStatusChanged$0()V

    return-void
.end method

.method private constructor <init>(Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;)V
    .registers 2

    .line 1008
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

.method private synthetic lambda$onStatusChanged$0()V
    .registers 2

    .line 1016
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1017
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager$mStatusChangeListener;->this$0:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->hidePopSettingUI()V

    :cond_b
    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 1008
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager$mStatusChangeListener;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1011
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager$mStatusChangeListener;->this$0:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->-$$Nest$fgetmPopSettingUI(Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;)Lcom/transsion/camera/app/ui/PopSettingUI;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_5a

    .line 1014
    :cond_9
    const-string v0, "key_camera_click_zoom"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1015
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager$mStatusChangeListener$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager$mStatusChangeListener$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/manager/PopSettingUIManager$mStatusChangeListener;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 1020
    :cond_23
    const-string v0, "key_wide_camera_touch_event"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    const-string v0, "key_zoom_ui_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    goto :goto_48

    .line 1026
    :cond_34
    const-string v0, "key_quick_video_action"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5a

    .line 1027
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager$mStatusChangeListener;->this$0:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    const-string p1, "key_quick_video_start"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->-$$Nest$fputmIsVideoRecording(Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;Z)V

    return-void

    .line 1021
    :cond_48
    :goto_48
    const-string/jumbo p1, "value_wide_camera_touch_up"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5b

    const-string p1, "slip_stop"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5a

    goto :goto_5b

    :cond_5a
    :goto_5a
    return-void

    .line 1022
    :cond_5b
    :goto_5b
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager$mStatusChangeListener;->this$0:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->-$$Nest$fgetmPopSettingUI(Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;)Lcom/transsion/camera/app/ui/PopSettingUI;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/PopSettingUI;->isZoomStart(Z)V

    .line 1023
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager$mStatusChangeListener;->this$0:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->-$$Nest$fgetmPopSettingUI(Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;)Lcom/transsion/camera/app/ui/PopSettingUI;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/PopSettingUI;->setEnable(Z)V

    .line 1024
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager$mStatusChangeListener;->this$0:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    invoke-static {p0, p2}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->-$$Nest$fputmEnable(Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;Z)V

    return-void
.end method
