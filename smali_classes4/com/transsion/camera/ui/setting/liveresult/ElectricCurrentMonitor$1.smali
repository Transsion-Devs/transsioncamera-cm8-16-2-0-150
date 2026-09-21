.class Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor$1;
.super Lcom/transsion/camera/utils/threads/WorkTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;Ljava/lang/String;)V
    .registers 3

    .line 37
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor$1;->this$0:Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;

    invoke-direct {p0, p2}, Lcom/transsion/camera/utils/threads/WorkTask;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public doProcess()V
    .registers 4

    .line 40
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor$1;->this$0:Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;->-$$Nest$fgetmBatteryManager(Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;)Landroid/os/BatteryManager;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 42
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor$1;->this$0:Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;->-$$Nest$fputmCurrentNow(Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;I)V

    .line 43
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor$1;->this$0:Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;->-$$Nest$fputmCurrentAvg(Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;I)V

    .line 44
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor$1;->this$0:Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v0

    invoke-static {p0, v0}, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;->-$$Nest$fputmBatteryStatus(Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;I)V

    :cond_26
    return-void
.end method
