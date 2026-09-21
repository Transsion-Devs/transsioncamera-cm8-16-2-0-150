.class Lcom/transsion/camera/app/common/thermal/ThermalThrottle$WorkerHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/thermal/ThermalThrottle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/thermal/ThermalThrottle;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/common/thermal/ThermalThrottle;Landroid/os/Looper;)V
    .registers 3

    .line 128
    iput-object p1, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle$WorkerHandler;->this$0:Lcom/transsion/camera/app/common/thermal/ThermalThrottle;

    .line 129
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 134
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_5

    return-void

    .line 136
    :cond_5
    iget-object p1, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle$WorkerHandler;->this$0:Lcom/transsion/camera/app/common/thermal/ThermalThrottle;

    invoke-static {p1}, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->-$$Nest$fgetmThermalStatus(Lcom/transsion/camera/app/common/thermal/ThermalThrottle;)I

    move-result p1

    .line 137
    iget-object v0, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle$WorkerHandler;->this$0:Lcom/transsion/camera/app/common/thermal/ThermalThrottle;

    invoke-virtual {v0}, Lcom/transsion/camera/thermal/PlatformThermal;->getTemperStatus()I

    move-result v1

    invoke-static {v0, v1}, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->-$$Nest$fputmThermalStatus(Lcom/transsion/camera/app/common/thermal/ThermalThrottle;I)V

    .line 139
    iget-object v0, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle$WorkerHandler;->this$0:Lcom/transsion/camera/app/common/thermal/ThermalThrottle;

    invoke-static {v0}, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->-$$Nest$fgetmThermalThrottleListeners(Lcom/transsion/camera/app/common/thermal/ThermalThrottle;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/thermal/IThermalThrottleListener;

    .line 140
    iget-object v2, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle$WorkerHandler;->this$0:Lcom/transsion/camera/app/common/thermal/ThermalThrottle;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->getCurrentTemperature()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/thermal/IThermalThrottleListener;->onThermalChanged(I)V

    goto :goto_1e

    .line 143
    :cond_34
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle$WorkerHandler;->this$0:Lcom/transsion/camera/app/common/thermal/ThermalThrottle;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->getCurrentTemperature()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->updateTemperatureValue(I)V

    .line 145
    iget-object v0, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle$WorkerHandler;->this$0:Lcom/transsion/camera/app/common/thermal/ThermalThrottle;

    invoke-static {v0}, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->-$$Nest$fgetmThermalStatus(Lcom/transsion/camera/app/common/thermal/ThermalThrottle;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, p1, :cond_b3

    iget-object v0, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle$WorkerHandler;->this$0:Lcom/transsion/camera/app/common/thermal/ThermalThrottle;

    invoke-static {v0}, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->-$$Nest$fgetmThermalStatus(Lcom/transsion/camera/app/common/thermal/ThermalThrottle;)I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_6d

    iget-object v0, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle$WorkerHandler;->this$0:Lcom/transsion/camera/app/common/thermal/ThermalThrottle;

    invoke-static {v0}, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->-$$Nest$fgetmThermalStatus(Lcom/transsion/camera/app/common/thermal/ThermalThrottle;)I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_6d

    iget-object v0, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle$WorkerHandler;->this$0:Lcom/transsion/camera/app/common/thermal/ThermalThrottle;

    invoke-static {v0}, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->-$$Nest$fgetmThermalStatus(Lcom/transsion/camera/app/common/thermal/ThermalThrottle;)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_6d

    iget-object v0, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle$WorkerHandler;->this$0:Lcom/transsion/camera/app/common/thermal/ThermalThrottle;

    invoke-static {v0}, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->-$$Nest$fgetmThermalStatus(Lcom/transsion/camera/app/common/thermal/ThermalThrottle;)I

    move-result v0

    if-ne v0, v1, :cond_b3

    .line 149
    :cond_6d
    invoke-static {}, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "oldStatue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", onThermalThrottleChanged: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle$WorkerHandler;->this$0:Lcom/transsion/camera/app/common/thermal/ThermalThrottle;

    invoke-static {p1}, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->-$$Nest$fgetmThermalStatus(Lcom/transsion/camera/app/common/thermal/ThermalThrottle;)I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 151
    iget-object p1, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle$WorkerHandler;->this$0:Lcom/transsion/camera/app/common/thermal/ThermalThrottle;

    invoke-static {p1}, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->-$$Nest$fgetmThermalThrottleListeners(Lcom/transsion/camera/app/common/thermal/ThermalThrottle;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/thermal/IThermalThrottleListener;

    .line 152
    iget-object v2, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle$WorkerHandler;->this$0:Lcom/transsion/camera/app/common/thermal/ThermalThrottle;

    invoke-static {v2}, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->-$$Nest$fgetmThermalStatus(Lcom/transsion/camera/app/common/thermal/ThermalThrottle;)I

    move-result v2

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/thermal/IThermalThrottleListener;->onThermalThrottleChanged(I)V

    goto :goto_9d

    .line 156
    :cond_b3
    iget-object p1, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle$WorkerHandler;->this$0:Lcom/transsion/camera/app/common/thermal/ThermalThrottle;

    invoke-static {p1}, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->-$$Nest$fgetmThermalStatus(Lcom/transsion/camera/app/common/thermal/ThermalThrottle;)I

    move-result p1

    const/4 v0, 0x0

    if-ne p1, v1, :cond_c8

    .line 157
    iget-object p0, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle$WorkerHandler;->this$0:Lcom/transsion/camera/app/common/thermal/ThermalThrottle;

    invoke-static {p0}, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->-$$Nest$fgetmWorkerHandler(Lcom/transsion/camera/app/common/thermal/ThermalThrottle;)Lcom/transsion/camera/app/common/thermal/ThermalThrottle$WorkerHandler;

    move-result-object p0

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 159
    :cond_c8
    iget-object p1, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle$WorkerHandler;->this$0:Lcom/transsion/camera/app/common/thermal/ThermalThrottle;

    invoke-static {p1}, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->-$$Nest$fgetmWorkerHandler(Lcom/transsion/camera/app/common/thermal/ThermalThrottle;)Lcom/transsion/camera/app/common/thermal/ThermalThrottle$WorkerHandler;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle$WorkerHandler;->this$0:Lcom/transsion/camera/app/common/thermal/ThermalThrottle;

    invoke-static {p0}, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->-$$Nest$fgetmThermalDuration(Lcom/transsion/camera/app/common/thermal/ThermalThrottle;)J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
