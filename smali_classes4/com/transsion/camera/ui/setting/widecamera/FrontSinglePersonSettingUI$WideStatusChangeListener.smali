.class Lcom/transsion/camera/ui/setting/widecamera/FrontSinglePersonSettingUI$WideStatusChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/widecamera/FrontSinglePersonSettingUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WideStatusChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/widecamera/FrontSinglePersonSettingUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/widecamera/FrontSinglePersonSettingUI;)V
    .registers 2

    .line 35
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/widecamera/FrontSinglePersonSettingUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/FrontSinglePersonSettingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/widecamera/FrontSinglePersonSettingUI;Lcom/transsion/camera/ui/setting/widecamera/FrontSinglePersonSettingUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/widecamera/FrontSinglePersonSettingUI$WideStatusChangeListener;-><init>(Lcom/transsion/camera/ui/setting/widecamera/FrontSinglePersonSettingUI;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 35
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/widecamera/FrontSinglePersonSettingUI$WideStatusChangeListener;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 39
    invoke-static {}, Lcom/transsion/camera/ui/setting/widecamera/FrontSinglePersonSettingUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

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

    .line 40
    const-string v0, "key_zoom_limit_monitor"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/FrontSinglePersonSettingUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/FrontSinglePersonSettingUI;

    # invokes: Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->isFacingBack()Z
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/widecamera/FrontSinglePersonSettingUI;->access$000(Lcom/transsion/camera/ui/setting/widecamera/FrontSinglePersonSettingUI;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 41
    const-string v0, "value_zoom_disable_wide"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 42
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/FrontSinglePersonSettingUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/FrontSinglePersonSettingUI;

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/widecamera/FrontSinglePersonSettingUI;->onClickEvent()Z

    .line 46
    :cond_3d
    const-string v0, "front_wide_camera"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 47
    const-string v0, "off"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_64

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/FrontSinglePersonSettingUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/FrontSinglePersonSettingUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/widecamera/FrontSinglePersonSettingUI;->access$100(Lcom/transsion/camera/ui/setting/widecamera/FrontSinglePersonSettingUI;)Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    move-result-object v0

    if-eqz v0, :cond_64

    .line 48
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/FrontSinglePersonSettingUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/FrontSinglePersonSettingUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/widecamera/FrontSinglePersonSettingUI;->access$200(Lcom/transsion/camera/ui/setting/widecamera/FrontSinglePersonSettingUI;)Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/widecamera/FrontSinglePersonSettingUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/FrontSinglePersonSettingUI;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/widecamera/FrontSinglePersonSettingUI;->-$$Nest$fgetmHintInfo(Lcom/transsion/camera/ui/setting/widecamera/FrontSinglePersonSettingUI;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 52
    :cond_64
    const-string v0, "key_ai_group_photo_camera_id"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_79

    .line 53
    const-string p1, "value_ai_group_photo_id_single"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_79

    .line 54
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/widecamera/FrontSinglePersonSettingUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/FrontSinglePersonSettingUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/widecamera/FrontSinglePersonSettingUI;->-$$Nest$mopenSinglePerson(Lcom/transsion/camera/ui/setting/widecamera/FrontSinglePersonSettingUI;)V

    :cond_79
    return-void
.end method
