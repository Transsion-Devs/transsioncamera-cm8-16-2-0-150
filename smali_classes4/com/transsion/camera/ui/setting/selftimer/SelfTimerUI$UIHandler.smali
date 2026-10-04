.class Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$UIHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;)V
    .registers 2

    .line 520
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$UIHandler;-><init>(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 524
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_51

    const/4 v2, 0x2

    if-eq v0, v2, :cond_44

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3e

    const/4 v1, 0x5

    if-eq v0, v1, :cond_24

    const/4 v1, 0x6

    if-eq v0, v1, :cond_12

    goto :goto_3d

    .line 544
    :cond_12
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/transsion/camera/utils/CameraUtil;->stopTranLightScene(I)V

    .line 545
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->-$$Nest$fputmLastScene(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;I)V

    return-void

    .line 538
    :cond_24
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->-$$Nest$fgetmShutterControl(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;)Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 539
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 540
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->-$$Nest$fgetmShutterControl(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;)Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->updateShutterType(I)V

    :cond_3d
    :goto_3d
    return-void

    .line 533
    :cond_3e
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->-$$Nest$mupdateSelfTimerNum(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;)V

    return-void

    .line 529
    :cond_44
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;

    invoke-static {p1, v1, v1}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->-$$Nest$mhideSelfTimerView(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;ZZ)V

    .line 530
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;

    const-string p1, "self_timer_idle"

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->-$$Nest$fputmSelfTimerState(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;Ljava/lang/String;)V

    return-void

    .line 526
    :cond_51
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->-$$Nest$mshowSelfTimerView(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;)V

    return-void
.end method
