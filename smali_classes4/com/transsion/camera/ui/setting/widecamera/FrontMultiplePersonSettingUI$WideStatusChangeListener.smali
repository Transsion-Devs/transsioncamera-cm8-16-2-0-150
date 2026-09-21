.class Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI$WideStatusChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WideStatusChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI;)V
    .registers 2

    .line 80
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI;Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI$WideStatusChangeListener;-><init>(Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 80
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI$WideStatusChangeListener;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 84
    invoke-static {}, Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStatusChanged key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 85
    const-string v0, "key_zoom_limit_monitor"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI;

    # invokes: Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->isFacingBack()Z
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI;->access$200(Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 86
    const-string v0, "value_zoom_enable_wide"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 87
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI;

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI;->onClickEvent()Z

    .line 91
    :cond_3d
    const-string v0, "front_wide_camera"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "off"

    if-eqz v0, :cond_64

    .line 92
    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_64

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI;->access$300(Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI;)Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    move-result-object v0

    if-eqz v0, :cond_64

    .line 93
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI;->access$400(Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI;)Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI;

    invoke-static {v2}, Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI;->-$$Nest$fgetmHintInfo(Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 97
    :cond_64
    const-string v0, "key_ai_group_photo_camera_id"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 98
    const-string v0, "value_ai_group_photo_id_multiple"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 99
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI;->-$$Nest$mopenMultiplePerson(Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI;)V

    goto :goto_a8

    .line 100
    :cond_7a
    const-string v0, "value_normal_wide_id_multiple"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a8

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI;

    .line 101
    # getter for: Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI;->access$500(Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI;

    invoke-static {v2}, Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI;->-$$Nest$fgetmResources(Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI;)Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/R$string;->ai_group_photo_tip:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 102
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI;)Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI$UIHandler;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 106
    :cond_a8
    :goto_a8
    const-string v0, "key_wide_camera_item_seleccted"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_cf

    .line 107
    const-string p1, "value_wide_camera_item_crop_fov_enable"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_cf

    .line 108
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mCurrentEntryValue:Ljava/lang/String;
    invoke-static {p1}, Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI;->access$600(Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "on"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_cf

    .line 109
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI;->access$700(Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_cf
    return-void
.end method
