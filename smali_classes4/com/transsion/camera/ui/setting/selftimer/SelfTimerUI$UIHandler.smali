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

    .line 517
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

    .line 521
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3c

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2f

    const/4 v1, 0x3

    if-eq v0, v1, :cond_29

    const/4 v1, 0x5

    if-eq v0, v1, :cond_f

    goto :goto_28

    .line 535
    :cond_f
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->-$$Nest$fgetmShutterControl(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;)Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 536
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 537
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->-$$Nest$fgetmShutterControl(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;)Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->updateShutterType(I)V

    :cond_28
    :goto_28
    return-void

    .line 530
    :cond_29
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->-$$Nest$mupdateSelfTimerNum(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;)V

    return-void

    .line 526
    :cond_2f
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;

    invoke-static {p1, v1, v1}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->-$$Nest$mhideSelfTimerView(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;ZZ)V

    .line 527
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;

    const-string p1, "self_timer_idle"

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->-$$Nest$fputmSelfTimerState(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;Ljava/lang/String;)V

    return-void

    .line 523
    :cond_3c
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->-$$Nest$mshowSelfTimerView(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;)V

    return-void
.end method
