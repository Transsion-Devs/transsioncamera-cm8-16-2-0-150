.class Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI$BaseFlipStatusChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BaseFlipStatusChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;)V
    .registers 2

    .line 61
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI$BaseFlipStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI$BaseFlipStatusChangeListener;-><init>(Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 61
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI$BaseFlipStatusChangeListener;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 65
    const-string v0, "key_zoom_limit_monitor"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_b5

    .line 66
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, -0x1

    sparse-switch p1, :sswitch_data_b6

    goto :goto_4c

    :sswitch_16
    const-string p1, "value_zoom_enable_wide"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1f

    goto :goto_4c

    :cond_1f
    const/4 v2, 0x4

    goto :goto_4c

    :sswitch_21
    const-string p1, "value_zoom_disable_wide_from_recording"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2a

    goto :goto_4c

    :cond_2a
    const/4 v2, 0x3

    goto :goto_4c

    :sswitch_2c
    const-string p1, "value_scale_end"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_35

    goto :goto_4c

    :cond_35
    const/4 v2, 0x2

    goto :goto_4c

    :sswitch_37
    const-string p1, "value_zoom_disable_wide"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_40

    goto :goto_4c

    :cond_40
    move v2, v1

    goto :goto_4c

    :sswitch_42
    const-string p1, "value_scale_begin"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4b

    goto :goto_4c

    :cond_4b
    move v2, v0

    :goto_4c
    packed-switch v2, :pswitch_data_cc

    goto :goto_b5

    .line 79
    :pswitch_50
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI$BaseFlipStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;

    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/CameraRepository;->getBackWideCamera()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->-$$Nest$fputmNextCameraId(Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;Ljava/lang/String;)V

    .line 80
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI$BaseFlipStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;

    invoke-static {p1, v1}, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->-$$Nest$fputmClickFromScale(Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;Z)V

    .line 81
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI$BaseFlipStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->-$$Nest$mswitchWideCamera(Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;)V

    return-void

    .line 87
    :pswitch_68
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI$BaseFlipStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;

    invoke-static {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->-$$Nest$fputmIsScaling(Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;Z)V

    return-void

    .line 69
    :pswitch_6e
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI$BaseFlipStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;

    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/CameraRepository;->getMainBackCamera()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->-$$Nest$fputmNextCameraId(Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;Ljava/lang/String;)V

    .line 70
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI$BaseFlipStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;

    invoke-static {p1, v1}, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->-$$Nest$fputmClickFromScale(Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;Z)V

    .line 71
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI$BaseFlipStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;
    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->access$000(Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 72
    const-string p2, "100"

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    const-string v0, "120"

    if-lt p1, p2, :cond_a4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    if-ge p1, p2, :cond_a4

    .line 73
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI$BaseFlipStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->-$$Nest$mswitchBaseFirstCamera(Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;)V

    return-void

    .line 74
    :cond_a4
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    if-le p1, p2, :cond_b5

    .line 75
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI$BaseFlipStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->-$$Nest$mswitchBaseSecondCamera(Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;)V

    return-void

    .line 84
    :pswitch_b0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI$BaseFlipStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;

    invoke-static {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->-$$Nest$fputmIsScaling(Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;Z)V

    :cond_b5
    :goto_b5
    return-void

    :sswitch_data_b6
    .sparse-switch
        -0x5f4c6c5a -> :sswitch_42
        0x18048b68 -> :sswitch_37
        0x19353f18 -> :sswitch_2c
        0x613a2953 -> :sswitch_21
        0x73b45ab1 -> :sswitch_16
    .end sparse-switch

    :pswitch_data_cc
    .packed-switch 0x0
        :pswitch_b0
        :pswitch_6e
        :pswitch_68
        :pswitch_6e
        :pswitch_50
    .end packed-switch
.end method
