.class Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI$ZoomStatusChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZoomStatusChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;)V
    .registers 2

    .line 49
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI$ZoomStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI$ZoomStatusChangeListener;-><init>(Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 49
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI$ZoomStatusChangeListener;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .line 52
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI$ZoomStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;->-$$Nest$fgetmTag(Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;)Lcom/transsion/camera/utils/debug/Log$Tag;

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

    .line 53
    const-string v0, "key_zoom_limit_monitor"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_fc

    .line 54
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_198

    :goto_39
    move v0, v3

    goto :goto_66

    :sswitch_3b
    const-string v0, "value_zoom_enable_wide"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    goto :goto_39

    :cond_44
    move v0, v1

    goto :goto_66

    :sswitch_46
    const-string v0, "value_zoom_enable_tele"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    goto :goto_39

    :cond_4f
    move v0, v2

    goto :goto_66

    :sswitch_51
    const-string v0, "value_zoom_disable_wide_from_recording"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5a

    goto :goto_39

    :cond_5a
    move v0, v4

    goto :goto_66

    :sswitch_5c
    const-string v0, "value_zoom_disable_wide"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_65

    goto :goto_39

    :cond_65
    move v0, v5

    :goto_66
    packed-switch v0, :pswitch_data_1aa

    goto/16 :goto_fc

    .line 80
    :pswitch_6b
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI$ZoomStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;->access$1200(Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setSelected(Z)V

    .line 81
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI$ZoomStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;->updateTextEntryView()V

    goto/16 :goto_fc

    .line 56
    :pswitch_7b
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI$ZoomStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;

    # setter for: Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDisableFromRecording:Z
    invoke-static {v0, v4}, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;->access$002(Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;Z)Z

    .line 58
    :pswitch_80
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI$ZoomStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;->access$100(Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v0

    if-eqz v0, :cond_fc

    .line 59
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI$ZoomStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;->access$200(Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    mul-int/lit16 v0, v0, 0x3e8

    .line 60
    iget-object v6, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI$ZoomStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;
    invoke-static {v6}, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;->access$300(Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;)Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v6

    invoke-virtual {v6}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCameraMiniZoom()I

    move-result v6

    .line 61
    iget-object v7, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI$ZoomStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDisableFromRecording:Z
    invoke-static {v7}, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;->access$400(Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;)Z

    move-result v7

    if-nez v7, :cond_b4

    iget-object v7, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI$ZoomStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsVideoStartRecording:Z
    invoke-static {v7}, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;->access$500(Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;)Z

    move-result v7

    if-eqz v7, :cond_c2

    :cond_b4
    iget-object v7, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI$ZoomStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsWideCamera:Z
    invoke-static {v7}, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;->access$600(Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;)Z

    move-result v7

    if-eqz v7, :cond_c2

    .line 62
    iget-object v7, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI$ZoomStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;

    # invokes: Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->getEquivalentZoomValue(I)I
    invoke-static {v7, v0}, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;->access$700(Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;I)I

    move-result v0

    .line 64
    :cond_c2
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->AsdSupportFiveItems()Z

    move-result v7

    if-eqz v7, :cond_e3

    iget-object v7, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI$ZoomStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mAsdMode:Z
    invoke-static {v7}, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;->access$800(Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;)Z

    move-result v7

    if-eqz v7, :cond_e3

    .line 65
    iget-object v6, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI$ZoomStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDefaultSecondValue:I
    invoke-static {v6}, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;->access$900(Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;)I

    move-result v6

    if-ge v0, v6, :cond_f7

    .line 66
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI$ZoomStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;

    invoke-static {v0, v4}, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;->-$$Nest$fputmClickFromScale(Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;Z)V

    .line 67
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI$ZoomStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;->onClickEvent()Z

    goto :goto_f7

    .line 70
    :cond_e3
    iget-object v7, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI$ZoomStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDefaultSecondValue:I
    invoke-static {v7}, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;->access$1000(Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;)I

    move-result v7

    if-lt v0, v7, :cond_ed

    if-ge v0, v6, :cond_f7

    .line 71
    :cond_ed
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI$ZoomStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;

    invoke-static {v0, v4}, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;->-$$Nest$fputmClickFromScale(Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;Z)V

    .line 72
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI$ZoomStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;->onClickEvent()Z

    .line 75
    :cond_f7
    :goto_f7
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI$ZoomStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;

    # setter for: Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDisableFromRecording:Z
    invoke-static {v0, v5}, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;->access$1102(Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;Z)Z

    .line 86
    :cond_fc
    :goto_fc
    const-string v0, "key_wide_camera_item_seleccted"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_196

    .line 87
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    sparse-switch p1, :sswitch_data_1b6

    :goto_10e
    move v1, v3

    goto :goto_139

    :sswitch_110
    const-string p1, "value_wide_camera_item_first_zoom_seleccted"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_139

    goto :goto_10e

    :sswitch_119
    const-string p1, "value_wide_camera_item_wide_cam_seleccted"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_122

    goto :goto_10e

    :cond_122
    move v1, v2

    goto :goto_139

    :sswitch_124
    const-string p1, "value_wide_camera_item_second_zoom_seleccted"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12d

    goto :goto_10e

    :cond_12d
    move v1, v4

    goto :goto_139

    :sswitch_12f
    const-string p1, "value_wide_camera_item_tele_second_zoom_selected"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_138

    goto :goto_10e

    :cond_138
    move v1, v5

    :cond_139
    :goto_139
    packed-switch v1, :pswitch_data_1c8

    goto :goto_196

    .line 103
    :pswitch_13d
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI$ZoomStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;->access$2000(Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/view/View;->setSelected(Z)V

    return-void

    .line 89
    :pswitch_147
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI$ZoomStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsSATCamera:Z
    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;->access$1300(Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;)Z

    move-result p1

    if-eqz p1, :cond_16a

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI$ZoomStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mSatSupportWide:Z
    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;->access$1400(Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;)Z

    move-result p1

    if-eqz p1, :cond_16a

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI$ZoomStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mSmoothZoomNeed:Z
    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;->access$1500(Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;)Z

    move-result p1

    if-nez p1, :cond_16a

    .line 90
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI$ZoomStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;
    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;->access$1600(Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p1

    const-string p2, "6000"

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 92
    :cond_16a
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI$ZoomStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;
    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;->access$1700(Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/View;->setSelected(Z)V

    .line 93
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI$ZoomStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;->updateTextEntryView()V

    return-void

    .line 97
    :pswitch_179
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI$ZoomStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;
    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;->access$1800(Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/View;->setSelected(Z)V

    .line 98
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI$ZoomStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;
    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;->access$1900(Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;)Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p1

    const-string p2, "value_send_current_view_status"

    .line 99
    invoke-virtual {p1, v0, p2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 100
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI$ZoomStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;->updateTextEntryView()V

    :cond_196
    :goto_196
    return-void

    nop

    :sswitch_data_198
    .sparse-switch
        0x18048b68 -> :sswitch_5c
        0x613a2953 -> :sswitch_51
        0x73b2ef88 -> :sswitch_46
        0x73b45ab1 -> :sswitch_3b
    .end sparse-switch

    :pswitch_data_1aa
    .packed-switch 0x0
        :pswitch_80
        :pswitch_7b
        :pswitch_6b
        :pswitch_6b
    .end packed-switch

    :sswitch_data_1b6
    .sparse-switch
        -0x115dc43f -> :sswitch_12f
        -0xcc955a9 -> :sswitch_124
        -0x9c5ace4 -> :sswitch_119
        0x4e25a7fb -> :sswitch_110
    .end sparse-switch

    :pswitch_data_1c8
    .packed-switch 0x0
        :pswitch_179
        :pswitch_179
        :pswitch_147
        :pswitch_13d
    .end packed-switch
.end method
