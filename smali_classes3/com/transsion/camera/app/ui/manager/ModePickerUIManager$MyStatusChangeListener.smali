.class Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$MyStatusChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyStatusChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)V
    .registers 2

    .line 1206
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$MyStatusChangeListener;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Lcom/transsion/camera/app/ui/manager/ModePickerUIManager-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$MyStatusChangeListener;-><init>(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 1206
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$MyStatusChangeListener;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1209
    const-string v0, "key_wide_camera_item_seleccted"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4e

    .line 1210
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/4 v0, -0x1

    sparse-switch p1, :sswitch_data_b0

    :goto_15
    move v1, v0

    goto :goto_38

    :sswitch_17
    const-string/jumbo p1, "value_wide_camera_item_first_zoom_seleccted"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_21

    goto :goto_15

    :cond_21
    const/4 v1, 0x2

    goto :goto_38

    :sswitch_23
    const-string/jumbo p1, "value_wide_camera_item_wide_cam_seleccted"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_38

    goto :goto_15

    :sswitch_2d
    const-string/jumbo p1, "value_wide_camera_item_second_zoom_seleccted"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_37

    goto :goto_15

    :cond_37
    move v1, v2

    :cond_38
    :goto_38
    packed-switch v1, :pswitch_data_be

    goto :goto_af

    .line 1214
    :pswitch_3c
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$MyStatusChangeListener;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fgetmIsShowingGuide(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Z

    move-result p1

    if-nez p1, :cond_af

    .line 1215
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$MyStatusChangeListener;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fgetmModePanelUI(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/ui/IModePanelUI;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IModePanelUI;->hide()V

    return-void

    .line 1221
    :cond_4e
    const-string v0, "key_restore_settings_notify_ui"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 1222
    const-string p1, "end"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_af

    .line 1223
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$MyStatusChangeListener;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fgetmModePanelUI(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/ui/IModePanelUI;

    move-result-object p1

    if-eqz p1, :cond_af

    .line 1224
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$MyStatusChangeListener;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fgetmModePanelUI(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/ui/IModePanelUI;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IModePanelUI;->restoreView()V

    return-void

    .line 1227
    :cond_70
    const-string v0, "key_instant_zoom_ui_state"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_af

    .line 1228
    const-string/jumbo p1, "value_instant_zoom_show"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_87

    .line 1229
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$MyStatusChangeListener;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {p1, v1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fputmInstantZoomShow(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Z)V

    goto :goto_8c

    .line 1231
    :cond_87
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$MyStatusChangeListener;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {p1, v2}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fputmInstantZoomShow(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Z)V

    .line 1233
    :goto_8c
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$MyStatusChangeListener;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fgetmCurrentModeName(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.transsion.camera.feature.mode.professional.ProfessionalModeEntry"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_af

    .line 1234
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$MyStatusChangeListener;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fgetmModePickerUI(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/ui/ModePickerUI;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$MyStatusChangeListener;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fgetmInstantZoomShow(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Z

    move-result p2

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$MyStatusChangeListener;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fgetmIsZoomScaling(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Z

    move-result p0

    invoke-virtual {p1, p2, p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->setInstantZoomShow(ZZ)V

    :cond_af
    :goto_af
    return-void

    :sswitch_data_b0
    .sparse-switch
        -0xcc955a9 -> :sswitch_2d
        -0x9c5ace4 -> :sswitch_23
        0x4e25a7fb -> :sswitch_17
    .end sparse-switch

    :pswitch_data_be
    .packed-switch 0x0
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
    .end packed-switch
.end method
