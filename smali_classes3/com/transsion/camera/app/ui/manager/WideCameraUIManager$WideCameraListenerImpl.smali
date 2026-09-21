.class Lcom/transsion/camera/app/ui/manager/WideCameraUIManager$WideCameraListenerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WideCameraListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;)V
    .registers 2

    .line 335
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager$WideCameraListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;Lcom/transsion/camera/app/ui/manager/WideCameraUIManager-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager$WideCameraListenerImpl;-><init>(Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 338
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager$WideCameraListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->-$$Nest$fgetmSwitchWideCameraListener(Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;)Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;

    move-result-object v0

    if-eqz v0, :cond_9d

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_9d

    .line 339
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 340
    const-string/jumbo v0, "wide_macro_exchange"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 341
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager$WideCameraListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->-$$Nest$fgetmSwitchWideCameraListener(Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;)Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;->onExchangeWideAndMacro()V

    return-void

    .line 342
    :cond_29
    const-string v0, "tele_exchange"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "on"

    if-eqz v0, :cond_68

    .line 344
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p1

    .line 345
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager$WideCameraListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->-$$Nest$fgetmCurrentModeName(Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 346
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager$WideCameraListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    .line 347
    # getter for: Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->access$000(Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object v0

    const-string v2, "key_video_preisp"

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 346
    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/CameraRepository;->getLongFocusIdOrFakeId(Z)Ljava/lang/String;

    move-result-object p1

    goto :goto_5e

    .line 349
    :cond_5a
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCamera()Ljava/lang/String;

    move-result-object p1

    .line 351
    :goto_5e
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager$WideCameraListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->-$$Nest$fgetmSwitchWideCameraListener(Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;)Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;->onSwitchOpticalZoomCamera(Ljava/lang/String;)V

    return-void

    .line 352
    :cond_68
    const-string v0, "1x_dual_exchange"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 353
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager$WideCameraListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->-$$Nest$fgetmSwitchWideCameraListener(Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;)Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;

    move-result-object p0

    const-string p1, "off"

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;->onSwitchLogicalCamera(Ljava/lang/String;)V

    return-void

    .line 354
    :cond_7c
    const-string v0, "2x_dual_exchange"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 355
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager$WideCameraListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->-$$Nest$fgetmSwitchWideCameraListener(Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;)Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;->onSwitchLogicalCamera(Ljava/lang/String;)V

    return-void

    .line 357
    :cond_8e
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager$WideCameraListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->-$$Nest$fgetmSwitchWideCameraListener(Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;)Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager$WideCameraListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->-$$Nest$fgetmIsWideAndMainCam(Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;)Z

    move-result p0

    invoke-interface {v0, p1, p0}, Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;->onSwitchWideCamera(Ljava/lang/String;Z)V

    :cond_9d
    return-void
.end method
