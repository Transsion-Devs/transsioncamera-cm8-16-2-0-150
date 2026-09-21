.class public Lcom/transsion/camera/ui/setting/front/FrontRightZoomItemUI;
.super Lcom/transsion/camera/ui/setting/zoom/BaseFrontZoomItemUI;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;Landroid/content/res/Resources;)V
    .registers 3

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/zoom/BaseFrontZoomItemUI;-><init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method protected getDefaultZoomValue()Ljava/lang/String;
    .registers 1

    .line 34
    const-string p0, "200"

    return-object p0
.end method

.method protected getResponseValue()Ljava/lang/String;
    .registers 1

    .line 58
    const-string p0, "value_front_camera_item_right_zoom_seleccted"

    return-object p0
.end method

.method protected getZoomRatio()Ljava/lang/String;
    .registers 1

    .line 64
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result p0

    if-eqz p0, :cond_b

    .line 65
    const-string p0, "2x"

    return-object p0

    .line 67
    :cond_b
    const-string p0, "2"

    return-object p0
.end method

.method protected init()V
    .registers 5

    .line 24
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_INIT_VALUE:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 25
    const-string v1, "200"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 26
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setSelected(Z)V

    return-void

    .line 28
    :cond_25
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method public restoreDefaultValue()V
    .registers 3

    .line 74
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 75
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseFrontZoomItemUI;->updateTextEntryView()V

    .line 76
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_front_camera_item_update"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string v1, "value_front_camera_item_left_zoom_seleccted"

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected updateEntryViewStatus(Ljava/lang/String;)V
    .registers 7

    .line 39
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "value_front_camera_item_right_zoom_seleccted"

    const/4 v4, -0x1

    sparse-switch v0, :sswitch_data_56

    goto :goto_2e

    :sswitch_10
    const-string v0, "value_front_camera_item_midle_zoom_seleccted"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_19

    goto :goto_2e

    :cond_19
    const/4 v4, 0x2

    goto :goto_2e

    :sswitch_1b
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_22

    goto :goto_2e

    :cond_22
    move v4, v1

    goto :goto_2e

    :sswitch_24
    const-string v0, "value_front_camera_item_left_zoom_seleccted"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2d

    goto :goto_2e

    :cond_2d
    move v4, v2

    :goto_2e
    packed-switch v4, :pswitch_data_64

    return-void

    .line 41
    :pswitch_32
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/BaseFrontZoomItemUI;->setSelected(Z)V

    .line 42
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseFrontZoomItemUI;->updateTextEntryView()V

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p1, "key_front_camera_item_changed"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    invoke-virtual {p0, p1, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 47
    :pswitch_44
    invoke-virtual {p0, v2}, Lcom/transsion/camera/ui/setting/zoom/BaseFrontZoomItemUI;->setSelected(Z)V

    .line 48
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseFrontZoomItemUI;->updateTextEntryView()V

    .line 49
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p1, "key_front_camera_item_update"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    invoke-virtual {p0, p1, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :sswitch_data_56
    .sparse-switch
        -0x4c09d8a2 -> :sswitch_24
        -0x5aaaab -> :sswitch_1b
        0x36e1f710 -> :sswitch_10
    .end sparse-switch

    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_44
        :pswitch_32
        :pswitch_44
    .end packed-switch
.end method
