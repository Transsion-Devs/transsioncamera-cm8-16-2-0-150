.class Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI$CropFovStatusChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CropFovStatusChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI;)V
    .registers 2

    .line 95
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI$CropFovStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI;Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI$CropFovStatusChangeListener;-><init>(Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 95
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI$CropFovStatusChangeListener;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 98
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "key_camera_zoom"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "key_wide_camera_item_seleccted"

    const-string v2, "off"

    if-nez v0, :cond_37

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    goto/16 :goto_95

    .line 111
    :cond_17
    const-string p1, "value_wide_camera_item_crop_fov_enable"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_95

    .line 112
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI$CropFovStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mCurrentEntryValue:Ljava/lang/String;
    invoke-static {p1}, Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI;->access$500(Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "on"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_95

    .line 113
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI$CropFovStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI;->access$600(Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p0

    invoke-interface {p0, v2}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    return-void

    .line 100
    :cond_37
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI$CropFovStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsWideCamera:Z
    invoke-static {p1}, Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI;->access$000(Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI;)Z

    move-result p1

    if-nez p1, :cond_95

    .line 101
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI$CropFovStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI;->-$$Nest$fgetmZoomThreshold(Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lt p1, v0, :cond_61

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI$CropFovStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;
    invoke-static {p1}, Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI;->access$100(Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-nez p1, :cond_61

    .line 102
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI$CropFovStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI;->-$$Nest$mupdateUI(Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI;)V

    return-void

    .line 103
    :cond_61
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI$CropFovStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI;->-$$Nest$fgetmZoomThreshold(Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    if-ge p1, p2, :cond_95

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI$CropFovStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;
    invoke-static {p1}, Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI;->access$200(Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_95

    .line 104
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI$CropFovStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;
    invoke-static {p1}, Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI;->access$300(Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p1

    invoke-interface {p1, v2}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 105
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI$CropFovStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI;->access$400(Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI;)Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string p1, "value_wide_camera_item_crop_fov_disable"

    .line 106
    invoke-virtual {p0, v1, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_95
    :goto_95
    return-void
.end method
