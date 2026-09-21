.class public Lcom/transsion/camera/ui/setting/focalzoom/FocalZoomThirdItemUI;
.super Lcom/transsion/camera/ui/setting/zoom/BaseFocalZoomItemUI;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;Landroid/content/res/Resources;)V
    .registers 3

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/zoom/BaseFocalZoomItemUI;-><init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method protected getDefaultZoomValue()Ljava/lang/String;
    .registers 1

    .line 31
    const-string p0, "20000"

    return-object p0
.end method

.method protected getFocalZoomTitle()Ljava/lang/String;
    .registers 1

    .line 26
    const-string p0, "50"

    return-object p0
.end method

.method protected getStatusResponseKey()Ljava/lang/String;
    .registers 1

    .line 36
    const-string p0, "value_focal_camera_item_third_zoom_seleccted"

    return-object p0
.end method

.method protected updateEntryViewStatus(Ljava/lang/String;)V
    .registers 6

    .line 41
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

    .line 47
    :pswitch_53
    invoke-virtual {p0, v2}, Lcom/transsion/camera/ui/setting/zoom/BaseFocalZoomItemUI;->setSelected(Z)V

    .line 48
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseFocalZoomItemUI;->updateEntryView()V

    return-void

    .line 51
    :pswitch_5a
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/BaseFocalZoomItemUI;->setSelected(Z)V

    .line 52
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseFocalZoomItemUI;->updateEntryView()V

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p1, "key_wide_camera_item_seleccted"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string v0, "value_send_current_view_status"

    .line 54
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

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
        :pswitch_5a
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
    .end packed-switch
.end method
