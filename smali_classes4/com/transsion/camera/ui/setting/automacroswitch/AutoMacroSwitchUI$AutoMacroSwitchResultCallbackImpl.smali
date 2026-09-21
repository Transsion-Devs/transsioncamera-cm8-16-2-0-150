.class Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI$AutoMacroSwitchResultCallbackImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoMacroSwitchResultCallbackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;)V
    .registers 2

    .line 98
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI$AutoMacroSwitchResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI$AutoMacroSwitchResultCallbackImpl;-><init>(Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;)V

    return-void
.end method


# virtual methods
.method public onDataCallback(Ljava/lang/Object;I)V
    .registers 4

    .line 101
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI$AutoMacroSwitchResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;)Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI$UIHandler;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_3e

    return-void

    .line 110
    :pswitch_e
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI$AutoMacroSwitchResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;)Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI$UIHandler;

    move-result-object p0

    const/16 p1, 0x67

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 107
    :pswitch_1e
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI$AutoMacroSwitchResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;)Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI$UIHandler;

    move-result-object p0

    const/16 p1, 0x66

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 104
    :pswitch_2e
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI$AutoMacroSwitchResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;)Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI$UIHandler;

    move-result-object p0

    const/16 p2, 0x65

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :pswitch_data_3e
    .packed-switch 0x65
        :pswitch_2e
        :pswitch_1e
        :pswitch_e
    .end packed-switch
.end method
