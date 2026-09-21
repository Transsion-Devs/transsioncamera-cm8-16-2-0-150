.class Lcom/transsion/camera/ui/setting/customized/CustomizedTeleZoomUI$TeleCameraResultCallbackImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/customized/CustomizedTeleZoomUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TeleCameraResultCallbackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/customized/CustomizedTeleZoomUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/customized/CustomizedTeleZoomUI;)V
    .registers 2

    .line 42
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/customized/CustomizedTeleZoomUI$TeleCameraResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/customized/CustomizedTeleZoomUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/customized/CustomizedTeleZoomUI;Lcom/transsion/camera/ui/setting/customized/CustomizedTeleZoomUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/customized/CustomizedTeleZoomUI$TeleCameraResultCallbackImpl;-><init>(Lcom/transsion/camera/ui/setting/customized/CustomizedTeleZoomUI;)V

    return-void
.end method


# virtual methods
.method public onDataCallback(Ljava/lang/Object;I)V
    .registers 5

    .line 45
    invoke-static {}, Lcom/transsion/camera/ui/setting/customized/CustomizedTeleZoomUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataCallback mHintControl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/customized/CustomizedTeleZoomUI$TeleCameraResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/customized/CustomizedTeleZoomUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;
    invoke-static {v1}, Lcom/transsion/camera/ui/setting/customized/CustomizedTeleZoomUI;->access$000(Lcom/transsion/camera/ui/setting/customized/CustomizedTeleZoomUI;)Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "; state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 46
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/customized/CustomizedTeleZoomUI$TeleCameraResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/customized/CustomizedTeleZoomUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;
    invoke-static {p1}, Lcom/transsion/camera/ui/setting/customized/CustomizedTeleZoomUI;->access$100(Lcom/transsion/camera/ui/setting/customized/CustomizedTeleZoomUI;)Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    move-result-object p1

    if-eqz p1, :cond_57

    if-eqz p2, :cond_44

    const/4 p1, 0x1

    if-eq p2, p1, :cond_34

    goto :goto_57

    .line 55
    :cond_34
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/customized/CustomizedTeleZoomUI$TeleCameraResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/customized/CustomizedTeleZoomUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;
    invoke-static {p1}, Lcom/transsion/camera/ui/setting/customized/CustomizedTeleZoomUI;->access$200(Lcom/transsion/camera/ui/setting/customized/CustomizedTeleZoomUI;)Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/customized/CustomizedTeleZoomUI$TeleCameraResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/customized/CustomizedTeleZoomUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/customized/CustomizedTeleZoomUI;->-$$Nest$fgetmHintInfo(Lcom/transsion/camera/ui/setting/customized/CustomizedTeleZoomUI;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void

    .line 49
    :cond_44
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/customized/CustomizedTeleZoomUI$TeleCameraResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/customized/CustomizedTeleZoomUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/customized/CustomizedTeleZoomUI;->-$$Nest$fgetmNeedShowHint(Lcom/transsion/camera/ui/setting/customized/CustomizedTeleZoomUI;)Z

    move-result p1

    if-eqz p1, :cond_57

    .line 50
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/customized/CustomizedTeleZoomUI$TeleCameraResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/customized/CustomizedTeleZoomUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/customized/CustomizedTeleZoomUI;->-$$Nest$mshowHint(Lcom/transsion/camera/ui/setting/customized/CustomizedTeleZoomUI;)V

    .line 51
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/customized/CustomizedTeleZoomUI$TeleCameraResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/customized/CustomizedTeleZoomUI;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/customized/CustomizedTeleZoomUI;->-$$Nest$fputmNeedShowHint(Lcom/transsion/camera/ui/setting/customized/CustomizedTeleZoomUI;Z)V

    :cond_57
    :goto_57
    return-void
.end method
