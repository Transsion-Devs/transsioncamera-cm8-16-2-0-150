.class Lcom/transsion/camera/app/ui/ThermalThrottleUI$MainHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/ThermalThrottleUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/ThermalThrottleUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/ThermalThrottleUI;)V
    .registers 2

    .line 59
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ThermalThrottleUI$MainHandler;->this$0:Lcom/transsion/camera/app/ui/ThermalThrottleUI;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 62
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_23

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1d

    const/4 v1, 0x2

    if-eq v0, v1, :cond_17

    const/4 v1, 0x3

    if-eq v0, v1, :cond_11

    const/4 v1, 0x5

    if-eq v0, v1, :cond_23

    return-void

    .line 74
    :cond_11
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ThermalThrottleUI$MainHandler;->this$0:Lcom/transsion/camera/app/ui/ThermalThrottleUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/ThermalThrottleUI;->-$$Nest$mdoUninitView(Lcom/transsion/camera/app/ui/ThermalThrottleUI;)V

    return-void

    .line 71
    :cond_17
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ThermalThrottleUI$MainHandler;->this$0:Lcom/transsion/camera/app/ui/ThermalThrottleUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/ThermalThrottleUI;->-$$Nest$mdoInitView(Lcom/transsion/camera/app/ui/ThermalThrottleUI;)V

    return-void

    .line 68
    :cond_1d
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ThermalThrottleUI$MainHandler;->this$0:Lcom/transsion/camera/app/ui/ThermalThrottleUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/ThermalThrottleUI;->-$$Nest$mdoHide(Lcom/transsion/camera/app/ui/ThermalThrottleUI;)V

    return-void

    .line 65
    :cond_23
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ThermalThrottleUI$MainHandler;->this$0:Lcom/transsion/camera/app/ui/ThermalThrottleUI;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/ThermalThrottleUI;->-$$Nest$mdoShow(Lcom/transsion/camera/app/ui/ThermalThrottleUI;I)V

    return-void
.end method
