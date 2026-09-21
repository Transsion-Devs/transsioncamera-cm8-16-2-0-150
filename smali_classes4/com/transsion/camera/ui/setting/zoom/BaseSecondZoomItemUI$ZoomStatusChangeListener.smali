.class Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI$ZoomStatusChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZoomStatusChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;)V
    .registers 2

    .line 56
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI$ZoomStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI$ZoomStatusChangeListener;-><init>(Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 56
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI$ZoomStatusChangeListener;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 59
    const-string v0, "key_zoom_limit_monitor"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_75

    .line 60
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "value_zoom_disable_wide"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "value_zoom_disable_wide_from_recording"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto :goto_75

    .line 62
    :cond_1e
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI$ZoomStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;

    invoke-static {v0, v1}, Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;->-$$Nest$fputmDisableFromRecording(Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;Z)V

    .line 64
    :cond_23
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI$ZoomStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;->access$000(Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v0

    if-eqz v0, :cond_70

    .line 65
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI$ZoomStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;->access$100(Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI$ZoomStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDefaultSecondValue:I
    invoke-static {v4}, Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;->access$200(Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;)I

    move-result v4

    if-lt v3, v4, :cond_70

    .line 67
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->AsdSupportFiveItems()Z

    move-result v3

    if-eqz v3, :cond_66

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI$ZoomStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mAsdMode:Z
    invoke-static {v3}, Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;->access$300(Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;)Z

    move-result v3

    if-eqz v3, :cond_66

    .line 68
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI$ZoomStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;

    # invokes: Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->getLongFocusZoomValue()I
    invoke-static {v3}, Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;->access$400(Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;)I

    move-result v3

    if-ge v0, v3, :cond_70

    .line 69
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI$ZoomStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;

    invoke-static {v0, v1}, Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;->-$$Nest$fputmClickFromScale(Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;Z)V

    .line 70
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI$ZoomStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;->onClickEvent()Z

    goto :goto_70

    .line 73
    :cond_66
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI$ZoomStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;

    invoke-static {v0, v1}, Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;->-$$Nest$fputmClickFromScale(Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;Z)V

    .line 74
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI$ZoomStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;->onClickEvent()Z

    .line 78
    :cond_70
    :goto_70
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI$ZoomStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;

    invoke-static {v0, v2}, Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;->-$$Nest$fputmDisableFromRecording(Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;Z)V

    .line 84
    :cond_75
    :goto_75
    const-string v0, "key_wide_camera_item_seleccted"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_11a

    .line 85
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/4 v3, -0x1

    sparse-switch p1, :sswitch_data_11c

    :goto_88
    move v1, v3

    goto :goto_b3

    :sswitch_8a
    const-string p1, "value_wide_camera_item_first_zoom_seleccted"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_93

    goto :goto_88

    :cond_93
    const/4 v1, 0x3

    goto :goto_b3

    :sswitch_95
    const-string p1, "value_wide_camera_item_wide_cam_seleccted"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9e

    goto :goto_88

    :cond_9e
    const/4 v1, 0x2

    goto :goto_b3

    :sswitch_a0
    const-string p1, "value_wide_camera_item_tele_second_zoom_selected"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b3

    goto :goto_88

    :sswitch_a9
    const-string p1, "value_wide_camera_item_tele_zoom_selected"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b2

    goto :goto_88

    :cond_b2
    move v1, v2

    :cond_b3
    :goto_b3
    const-string p1, "value_send_current_view_status"

    packed-switch v1, :pswitch_data_12e

    goto :goto_11a

    .line 88
    :pswitch_b9
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI$ZoomStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;
    invoke-static {p2}, Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;->access$500(Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/view/View;->setSelected(Z)V

    .line 89
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI$ZoomStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;
    invoke-static {p2}, Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;->access$600(Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;)Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p2

    .line 90
    invoke-virtual {p2, v0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 91
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI$ZoomStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;->-$$Nest$fgetmInitValue(Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;->-$$Nest$fputmShowingZoom(Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;Ljava/lang/String;)V

    .line 92
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI$ZoomStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;

    invoke-static {p1, v2}, Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;->-$$Nest$fputmIsSelected(Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;Z)V

    .line 93
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI$ZoomStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;->updateTextEntryView()V

    return-void

    .line 97
    :pswitch_e3
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->AsdSupportFiveItems()Z

    move-result p2

    if-eqz p2, :cond_11a

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI$ZoomStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mAsdMode:Z
    invoke-static {p2}, Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;->access$700(Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;)Z

    move-result p2

    if-eqz p2, :cond_11a

    .line 98
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI$ZoomStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;
    invoke-static {p2}, Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;->access$800(Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/view/View;->setSelected(Z)V

    .line 99
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI$ZoomStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;
    invoke-static {p2}, Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;->access$900(Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;)Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p2

    .line 100
    invoke-virtual {p2, v0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 101
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI$ZoomStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;->-$$Nest$fgetmInitValue(Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;->-$$Nest$fputmShowingZoom(Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;Ljava/lang/String;)V

    .line 102
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI$ZoomStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;

    invoke-static {p1, v2}, Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;->-$$Nest$fputmIsSelected(Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;Z)V

    .line 103
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI$ZoomStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;->updateTextEntryView()V

    :cond_11a
    :goto_11a
    return-void

    nop

    :sswitch_data_11c
    .sparse-switch
        -0x7b8f619e -> :sswitch_a9
        -0x115dc43f -> :sswitch_a0
        -0x9c5ace4 -> :sswitch_95
        0x4e25a7fb -> :sswitch_8a
    .end sparse-switch

    :pswitch_data_12e
    .packed-switch 0x0
        :pswitch_e3
        :pswitch_e3
        :pswitch_b9
        :pswitch_b9
    .end packed-switch
.end method
