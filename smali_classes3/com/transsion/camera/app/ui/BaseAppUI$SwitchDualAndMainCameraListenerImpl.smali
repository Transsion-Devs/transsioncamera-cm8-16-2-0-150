.class Lcom/transsion/camera/app/ui/BaseAppUI$SwitchDualAndMainCameraListenerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualAndMainCameraListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/BaseAppUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SwitchDualAndMainCameraListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/BaseAppUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/BaseAppUI;)V
    .registers 2

    .line 4142
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI$SwitchDualAndMainCameraListenerImpl;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/BaseAppUI;Lcom/transsion/camera/app/ui/BaseAppUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI$SwitchDualAndMainCameraListenerImpl;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;)V

    return-void
.end method


# virtual methods
.method public onSwitchDualAndMainCamera(Ljava/lang/String;)V
    .registers 4

    .line 4145
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$SwitchDualAndMainCameraListenerImpl;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/camera/app/ui/BaseAppUI;->-$$Nest$fputmSpecialCameraChange(Lcom/transsion/camera/app/ui/BaseAppUI;Z)V

    .line 4146
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$SwitchDualAndMainCameraListenerImpl;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->-$$Nest$fgetmSwitchDualAndMainCameraListener(Lcom/transsion/camera/app/ui/BaseAppUI;)Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualAndMainCameraListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualAndMainCameraListener;->onSwitchDualAndMainCamera(Ljava/lang/String;)V

    .line 4147
    invoke-static {}, Lcom/transsion/camera/app/ui/BaseAppUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSwitchDualAndMainCamera,mSpecialCameraChange: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$SwitchDualAndMainCameraListenerImpl;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->-$$Nest$fgetmSpecialCameraChange(Lcom/transsion/camera/app/ui/BaseAppUI;)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
