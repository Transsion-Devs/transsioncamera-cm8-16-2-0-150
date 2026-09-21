.class public Lcom/transsion/camera/ui/setting/focalzoom/FocalZoomForthItemUI;
.super Lcom/transsion/camera/ui/setting/zoom/BaseFocalZoomItemUI;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;Landroid/content/res/Resources;)V
    .registers 3

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/zoom/BaseFocalZoomItemUI;-><init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method protected getDefaultZoomValue()Ljava/lang/String;
    .registers 1

    .line 83
    const-string p0, "10000"

    return-object p0
.end method

.method protected getFocalZoomTitle()Ljava/lang/String;
    .registers 1

    .line 78
    const-string p0, "70"

    return-object p0
.end method

.method protected getStatusResponseKey()Ljava/lang/String;
    .registers 1

    .line 88
    const-string p0, "value_wide_camera_item_second_zoom_seleccted"

    return-object p0
.end method

.method protected init()V
    .registers 4

    .line 33
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_7

    return-void

    .line 36
    :cond_7
    iget-boolean v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIs2XBlurCamera:Z

    const/4 v2, 0x0

    if-nez v1, :cond_17

    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsTeleCamera:Z

    if-eqz p0, :cond_11

    goto :goto_17

    .line 39
    :cond_11
    check-cast v0, Lcom/transsion/camera/app/ui/widget/FocalItemView;

    invoke-virtual {v0, v2, v2}, Lcom/transsion/camera/app/ui/widget/FocalItemView;->setSelected(ZZ)V

    return-void

    .line 37
    :cond_17
    :goto_17
    check-cast v0, Lcom/transsion/camera/app/ui/widget/FocalItemView;

    const/4 p0, 0x1

    invoke-virtual {v0, p0, v2}, Lcom/transsion/camera/app/ui/widget/FocalItemView;->setSelected(ZZ)V

    return-void
.end method

.method protected onClickEvent()Z
    .registers 4

    .line 45
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->getEntryView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_c

    return v1

    .line 48
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_15

    return v1

    .line 51
    :cond_15
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    check-cast v0, Lcom/transsion/camera/app/ui/widget/FocalItemView;

    invoke-virtual {v0, v1, v1}, Lcom/transsion/camera/app/ui/widget/FocalItemView;->setSelected(ZZ)V

    .line 52
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsBlurCamera:Z

    if-nez v0, :cond_24

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsBackCamera:Z

    if-eqz v0, :cond_54

    .line 53
    :cond_24
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBack2XBlurCamera()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string v2, "key_mu_stereo"

    .line 54
    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "f0.0"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_46

    .line 55
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    const-string v2, "2x_dual_exchange"

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_4d

    .line 57
    :cond_46
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    const-string v2, "tele_exchange"

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 59
    :goto_4d
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mOverrideClickListener:Landroid/view/View$OnClickListener;

    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    invoke-interface {v0, v2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 61
    :cond_54
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/focalzoom/FocalZoomForthItemUI;->getDefaultZoomValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v2, "key_wide_camera_item_seleccted"

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    .line 63
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/focalzoom/FocalZoomForthItemUI;->getStatusResponseKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return v1
.end method

.method public updateEntryValue(Ljava/lang/String;)V
    .registers 3

    .line 69
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIs2XBlurCamera:Z

    const/4 v0, 0x0

    if-nez p1, :cond_12

    iget-boolean p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsTeleCamera:Z

    if-eqz p1, :cond_a

    goto :goto_12

    .line 72
    :cond_a
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    check-cast p0, Lcom/transsion/camera/app/ui/widget/FocalItemView;

    invoke-virtual {p0, v0, v0}, Lcom/transsion/camera/app/ui/widget/FocalItemView;->setSelected(ZZ)V

    return-void

    .line 70
    :cond_12
    :goto_12
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    check-cast p0, Lcom/transsion/camera/app/ui/widget/FocalItemView;

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/ui/widget/FocalItemView;->setSelected(ZZ)V

    return-void
.end method

.method protected updateEntryViewStatus(Ljava/lang/String;)V
    .registers 6

    .line 93
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_6e

    goto :goto_4f

    :sswitch_e
    const-string v0, "value_macro_camera_item_zoom_seleccted"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    goto :goto_4f

    :cond_17
    const/4 v3, 0x5

    goto :goto_4f

    :sswitch_19
    const-string v0, "value_macro_camera_item_street_photo_second_zoom_seleccted"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_22

    goto :goto_4f

    :cond_22
    const/4 v3, 0x4

    goto :goto_4f

    :sswitch_24
    const-string v0, "value_macro_camera_item_second_zoom_seleccted"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2d

    goto :goto_4f

    :cond_2d
    const/4 v3, 0x3

    goto :goto_4f

    :sswitch_2f
    const-string v0, "value_macro_camera_item_street_photo_first_zoom_seleccted"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_38

    goto :goto_4f

    :cond_38
    const/4 v3, 0x2

    goto :goto_4f

    :sswitch_3a
    const-string v0, "value_wide_camera_item_second_zoom_seleccted"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_43

    goto :goto_4f

    :cond_43
    move v3, v1

    goto :goto_4f

    :sswitch_45
    const-string v0, "value_focal_camera_item_third_zoom_seleccted"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4e

    goto :goto_4f

    :cond_4e
    move v3, v2

    :goto_4f
    packed-switch v3, :pswitch_data_88

    return-void

    .line 103
    :pswitch_53
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/BaseFocalZoomItemUI;->setSelected(Z)V

    .line 104
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseFocalZoomItemUI;->updateEntryView()V

    .line 105
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p1, "key_wide_camera_item_seleccted"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string v0, "value_send_current_view_status"

    .line 106
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 99
    :pswitch_67
    invoke-virtual {p0, v2}, Lcom/transsion/camera/ui/setting/zoom/BaseFocalZoomItemUI;->setSelected(Z)V

    .line 100
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseFocalZoomItemUI;->updateEntryView()V

    return-void

    :sswitch_data_6e
    .sparse-switch
        -0x3806ca12 -> :sswitch_45
        -0xcc955a9 -> :sswitch_3a
        0x4c9ca21 -> :sswitch_2f
        0xe85a5b4 -> :sswitch_24
        0x1116ccf1 -> :sswitch_19
        0x1c5669cf -> :sswitch_e
    .end sparse-switch

    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_67
        :pswitch_53
        :pswitch_67
        :pswitch_67
        :pswitch_67
        :pswitch_67
    .end packed-switch
.end method
