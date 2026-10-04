.class public final Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor$start$2;
.super Lcom/transsion/camera/utils/threads/WorkTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;)V
    .registers 2

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor$start$2;->this$0:Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;

    .line 59
    const-string p1, "ElectricCurrentMonitor"

    invoke-direct {p0, p1}, Lcom/transsion/camera/utils/threads/WorkTask;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public doProcess()V
    .registers 3

    .line 61
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor$start$2;->this$0:Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;

    # getter for: Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;->mBatteryManager:Landroid/os/BatteryManager;
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;->access$getMBatteryManager$p(Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;)Landroid/os/BatteryManager;

    move-result-object v0

    if-eqz v0, :cond_22

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor$start$2;->this$0:Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;

    const/4 v1, 0x2

    .line 62
    invoke-virtual {v0, v1}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v1

    invoke-static {p0, v1}, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;->access$setMCurrentNow$p(Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;I)V

    const/4 v1, 0x3

    .line 63
    invoke-virtual {v0, v1}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v1

    invoke-static {p0, v1}, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;->access$setMCurrentAvg$p(Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;I)V

    const/4 v1, 0x6

    .line 64
    invoke-virtual {v0, v1}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v0

    invoke-static {p0, v0}, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;->access$setMBatteryStatus$p(Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;I)V

    :cond_22
    return-void
.end method
