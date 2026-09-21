.class Lcom/transsion/camera/app/ui/AbstractHintUI$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/AbstractHintUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;


# direct methods
.method public static synthetic $r8$lambda$aXxRGmRbNkwAoLc1D_AscMJY1dc(Lcom/transsion/camera/app/ui/AbstractHintUI$5;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI$5;->lambda$onStatusChanged$0()V

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/app/ui/AbstractHintUI;)V
    .registers 2

    .line 2073
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$5;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onStatusChanged$0()V
    .registers 4

    .line 2093
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$5;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->-$$Nest$fgetmScreenFormType(Lcom/transsion/camera/app/ui/AbstractHintUI;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_12

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$5;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->-$$Nest$fgetmScreenFormType(Lcom/transsion/camera/app/ui/AbstractHintUI;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_17

    .line 2095
    :cond_12
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$5;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->-$$Nest$mrunHintRootAnimator(Lcom/transsion/camera/app/ui/AbstractHintUI;)V

    .line 2097
    :cond_17
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$5;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->-$$Nest$fgetmCurrentAutoHideInfo(Lcom/transsion/camera/app/ui/AbstractHintUI;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/ui/AbstractHintUI;->updateLayout(Lcom/transsion/camera/app/common/ui/HintInfo;Z)V

    .line 2098
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$5;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->-$$Nest$fgetmScreenFormType(Lcom/transsion/camera/app/ui/AbstractHintUI;)I

    move-result v1

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$5;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->-$$Nest$fgetmCurrentOrientation(Lcom/transsion/camera/app/ui/AbstractHintUI;)I

    move-result p0

    invoke-virtual {v0, v1, v2, p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->updateProgressBarLayout(IZI)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 2073
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractHintUI$5;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 2077
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_13e

    goto :goto_2e

    :sswitch_e
    const-string v0, "key_sat_stream_id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    goto :goto_2e

    :cond_17
    const/4 v3, 0x2

    goto :goto_2e

    :sswitch_19
    const-string v0, "key_fold_switch_preview"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_22

    goto :goto_2e

    :cond_22
    move v3, v1

    goto :goto_2e

    :sswitch_24
    const-string v0, "key_camera_zoom"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2d

    goto :goto_2e

    :cond_2d
    move v3, v2

    :goto_2e
    packed-switch v3, :pswitch_data_14c

    .line 2123
    sget-object p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, " ignore the unneeded Key directly"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 2117
    :pswitch_39
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$5;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->-$$Nest$fgetmCurrentStreamId(Lcom/transsion/camera/app/ui/AbstractHintUI;)I

    move-result p1

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eq p1, v0, :cond_4a

    .line 2118
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$5;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-static {p1, v2}, Lcom/transsion/camera/app/ui/AbstractHintUI;->-$$Nest$mremoveTwinkleGuideMessages(Lcom/transsion/camera/app/ui/AbstractHintUI;Z)V

    .line 2120
    :cond_4a
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$5;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->-$$Nest$fputmCurrentStreamId(Lcom/transsion/camera/app/ui/AbstractHintUI;I)V

    return-void

    .line 2079
    :pswitch_54
    sget-object p1, Lcom/transsion/camera/app/ui/AbstractHintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KEY_FOLD_SWITCH_PREVIEW, value:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mScreenFormType:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$5;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-static {v2}, Lcom/transsion/camera/app/ui/AbstractHintUI;->-$$Nest$fgetmScreenFormType(Lcom/transsion/camera/app/ui/AbstractHintUI;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2080
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$5;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-static {p1, p2}, Lcom/transsion/camera/app/ui/AbstractHintUI;->-$$Nest$fputmSwitchPreviewValue(Lcom/transsion/camera/app/ui/AbstractHintUI;Ljava/lang/String;)V

    .line 2081
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$5;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->-$$Nest$fgetmScreenFormType(Lcom/transsion/camera/app/ui/AbstractHintUI;)I

    move-result p1

    const/4 p2, 0x5

    const/4 v0, 0x4

    if-eq p1, v0, :cond_98

    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$5;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->-$$Nest$fgetmScreenFormType(Lcom/transsion/camera/app/ui/AbstractHintUI;)I

    move-result p1

    if-eq p1, p2, :cond_98

    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$5;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->-$$Nest$fgetmScreenFormType(Lcom/transsion/camera/app/ui/AbstractHintUI;)I

    move-result p1

    const/4 v2, 0x3

    if-ne p1, v2, :cond_13d

    .line 2084
    :cond_98
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne p1, v2, :cond_d0

    .line 2085
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$5;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->-$$Nest$fgetmScreenFormType(Lcom/transsion/camera/app/ui/AbstractHintUI;)I

    move-result p1

    if-eq p1, v0, :cond_b2

    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$5;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->-$$Nest$fgetmScreenFormType(Lcom/transsion/camera/app/ui/AbstractHintUI;)I

    move-result p1

    if-ne p1, p2, :cond_b7

    .line 2087
    :cond_b2
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$5;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->-$$Nest$mrunHintRootAnimator(Lcom/transsion/camera/app/ui/AbstractHintUI;)V

    .line 2089
    :cond_b7
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$5;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->-$$Nest$fgetmCurrentAutoHideInfo(Lcom/transsion/camera/app/ui/AbstractHintUI;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->updateLayout(Lcom/transsion/camera/app/common/ui/HintInfo;Z)V

    .line 2090
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$5;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->-$$Nest$fgetmScreenFormType(Lcom/transsion/camera/app/ui/AbstractHintUI;)I

    move-result p2

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$5;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->-$$Nest$fgetmCurrentOrientation(Lcom/transsion/camera/app/ui/AbstractHintUI;)I

    move-result p0

    invoke-virtual {p1, p2, v1, p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->updateProgressBarLayout(IZI)V

    return-void

    .line 2092
    :cond_d0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$5;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/app/ui/AbstractHintUI;)Lcom/transsion/camera/app/ui/AbstractHintUI$UIHandler;

    move-result-object p1

    new-instance p2, Lcom/transsion/camera/app/ui/AbstractHintUI$5$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/ui/AbstractHintUI$5$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/AbstractHintUI$5;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 2105
    :pswitch_df
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$5;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/transsion/camera/app/ui/AbstractHintUI;->-$$Nest$fputmZoomValue(Lcom/transsion/camera/app/ui/AbstractHintUI;I)V

    .line 2106
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$5;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/AbstractHintUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getSettingController()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object p1

    if-eqz p1, :cond_105

    .line 2107
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$5;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/AbstractHintUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p2

    invoke-interface {p2}, Lcom/transsion/camera/app/common/IAppUI;->getSettingController()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object p2

    invoke-interface {p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/app/ui/AbstractHintUI;->-$$Nest$fputmCurrentCameraId(Lcom/transsion/camera/app/ui/AbstractHintUI;Ljava/lang/String;)V

    .line 2109
    :cond_105
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$5;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->-$$Nest$fgetmCurrentCameraId(Lcom/transsion/camera/app/ui/AbstractHintUI;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCamera()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_12c

    .line 2110
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$5;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p2

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$5;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->-$$Nest$fgetmZoomValue(Lcom/transsion/camera/app/ui/AbstractHintUI;)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCameraZoom(I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/transsion/camera/app/ui/AbstractHintUI;->-$$Nest$fputmZoomValue(Lcom/transsion/camera/app/ui/AbstractHintUI;I)V

    .line 2112
    :cond_12c
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$5;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->-$$Nest$fgetmZoomValue(Lcom/transsion/camera/app/ui/AbstractHintUI;)I

    move-result p1

    invoke-static {}, Lcom/transsion/camera/app/ui/AbstractHintUI;->-$$Nest$sfgetLIMIT_ZOOM_VALUE()I

    move-result p2

    if-lt p1, p2, :cond_13d

    .line 2113
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$5;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-static {p0, v2}, Lcom/transsion/camera/app/ui/AbstractHintUI;->-$$Nest$mremoveTwinkleGuideMessages(Lcom/transsion/camera/app/ui/AbstractHintUI;Z)V

    :cond_13d
    return-void

    :sswitch_data_13e
    .sparse-switch
        -0x43305133 -> :sswitch_24
        -0x341f2c25 -> :sswitch_19
        0x1accdf41 -> :sswitch_e
    .end sparse-switch

    :pswitch_data_14c
    .packed-switch 0x0
        :pswitch_df
        :pswitch_54
        :pswitch_39
    .end packed-switch
.end method
