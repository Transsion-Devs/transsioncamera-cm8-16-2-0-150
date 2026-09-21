.class Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WideStatusChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;)V
    .registers 2

    .line 69
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener;-><init>(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 69
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 73
    invoke-static {}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStatusChanged key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 74
    const-string v0, "key_zoom_limit_monitor"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "off"

    if-eqz v0, :cond_62

    .line 75
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "value_zoom_enable_tele"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    const-string v0, "value_zoom_enable_wide"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    goto :goto_62

    .line 77
    :cond_40
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;

    invoke-static {v0, v1}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->-$$Nest$fputmClickFromScale(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;Z)V

    .line 78
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->onClickEvent()Z

    goto :goto_62

    .line 81
    :cond_4b
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->access$000(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 82
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->updateTextEntryView()V

    .line 83
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->access$100(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 89
    :cond_62
    :goto_62
    const-string v0, "key_wide_camera_item_seleccted"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e0

    .line 90
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v4, -0x1

    sparse-switch v0, :sswitch_data_106

    :goto_75
    move v1, v4

    goto :goto_95

    :sswitch_77
    const-string v0, "value_wide_camera_item_multiple_cam_seleccted"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_80

    goto :goto_75

    :cond_80
    const/4 v1, 0x2

    goto :goto_95

    :sswitch_82
    const-string v0, "value_wide_camera_item_first_zoom_seleccted"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_95

    goto :goto_75

    :sswitch_8b
    const-string v0, "value_wide_camera_item_second_zoom_seleccted"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_94

    goto :goto_75

    :cond_94
    move v1, v2

    :cond_95
    :goto_95
    packed-switch v1, :pswitch_data_114

    goto :goto_e0

    .line 101
    :pswitch_99
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsWideCamera:Z
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->access$600(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;)Z

    move-result v0

    if-eqz v0, :cond_e0

    .line 102
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->access$700(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v0

    const-string v1, "on"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->-$$Nest$mshowWideHint(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;)V

    goto :goto_e0

    .line 93
    :pswitch_b2
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->access$200(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 94
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->access$300(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->updateTextEntryView()V

    .line 96
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->access$400(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;)Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    move-result-object v0

    if-eqz v0, :cond_e0

    .line 97
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->access$500(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;)Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->-$$Nest$fgetmHintInfo(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 109
    :cond_e0
    :goto_e0
    const-string v0, "wide_camera"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_105

    .line 110
    invoke-static {p2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_105

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;
    invoke-static {p1}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->access$800(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;)Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    move-result-object p1

    if-eqz p1, :cond_105

    .line 111
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;
    invoke-static {p1}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->access$900(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;)Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->-$$Nest$fgetmHintInfo(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_105
    return-void

    :sswitch_data_106
    .sparse-switch
        -0xcc955a9 -> :sswitch_8b
        0x4e25a7fb -> :sswitch_82
        0x66498399 -> :sswitch_77
    .end sparse-switch

    :pswitch_data_114
    .packed-switch 0x0
        :pswitch_b2
        :pswitch_b2
        :pswitch_99
    .end packed-switch
.end method
