.class Lcom/transsion/camera/ui/setting/asd/AsdUI$AsdResultCallbackImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/asd/AsdUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsdResultCallbackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/asd/AsdUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/asd/AsdUI;)V
    .registers 2

    .line 213
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI$AsdResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/asd/AsdUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/asd/AsdUI;Lcom/transsion/camera/ui/setting/asd/AsdUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/asd/AsdUI$AsdResultCallbackImpl;-><init>(Lcom/transsion/camera/ui/setting/asd/AsdUI;)V

    return-void
.end method


# virtual methods
.method public onDataCallback(Ljava/lang/Object;I)V
    .registers 7

    const/4 v0, 0x0

    const/16 v1, 0x64

    if-ne p2, v1, :cond_1f

    .line 217
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI$AsdResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/asd/AsdUI;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v2, p1}, Lcom/transsion/camera/ui/setting/asd/AsdUI;->-$$Nest$fputmForceHildeUI(Lcom/transsion/camera/ui/setting/asd/AsdUI;Z)V

    .line 218
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI$AsdResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/asd/AsdUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/asd/AsdUI;->-$$Nest$fgetmForceHildeUI(Lcom/transsion/camera/ui/setting/asd/AsdUI;)Z

    move-result p1

    if-nez p1, :cond_19

    return-void

    .line 221
    :cond_19
    new-instance p1, Lcom/transsion/camera/feature/setting/asd/AsdResult;

    const/4 v2, 0x4

    invoke-direct {p1, v0, v0, v0, v2}, Lcom/transsion/camera/feature/setting/asd/AsdResult;-><init>(IIII)V

    .line 223
    :cond_1f
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI$AsdResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/asd/AsdUI;

    invoke-static {v2}, Lcom/transsion/camera/ui/setting/asd/AsdUI;->-$$Nest$fgetmForceHildeUI(Lcom/transsion/camera/ui/setting/asd/AsdUI;)Z

    move-result v3

    if-eqz v3, :cond_28

    move p2, v0

    :cond_28
    invoke-static {v2, p2}, Lcom/transsion/camera/ui/setting/asd/AsdUI;->-$$Nest$fputmState(Lcom/transsion/camera/ui/setting/asd/AsdUI;I)V

    .line 224
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI$AsdResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/asd/AsdUI;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/asd/AsdUI;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/ui/setting/asd/AsdUI;)Lcom/transsion/camera/ui/setting/asd/AsdUI$UIHandler;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 225
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI$AsdResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/asd/AsdUI;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/asd/AsdUI;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/ui/setting/asd/AsdUI;)Lcom/transsion/camera/ui/setting/asd/AsdUI$UIHandler;

    move-result-object p2

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI$AsdResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/asd/AsdUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/asd/AsdUI;->-$$Nest$fgetmState(Lcom/transsion/camera/ui/setting/asd/AsdUI;)I

    move-result v0

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI$AsdResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/asd/AsdUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/asd/AsdUI;->-$$Nest$fgetmState(Lcom/transsion/camera/ui/setting/asd/AsdUI;)I

    move-result p0

    invoke-virtual {p2, v1, v0, p0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
