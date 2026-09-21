.class Lcom/transsion/camera/app/common/battery/BatteryMonitor$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/battery/BatteryMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/battery/BatteryMonitor;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/battery/BatteryMonitor;)V
    .registers 2

    .line 118
    iput-object p1, p0, Lcom/transsion/camera/app/common/battery/BatteryMonitor$1;->this$0:Lcom/transsion/camera/app/common/battery/BatteryMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11

    .line 121
    invoke-static {}, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BatteryReceiver.onReceive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_20

    goto/16 :goto_ef

    .line 127
    :cond_20
    const-string p1, "status"

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 129
    const-string v1, "level"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 130
    const-string v3, "scale"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 131
    iget-object v4, p0, Lcom/transsion/camera/app/common/battery/BatteryMonitor$1;->this$0:Lcom/transsion/camera/app/common/battery/BatteryMonitor;

    int-to-float v5, v1

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float/2addr v5, v6

    int-to-float v6, v3

    div-float/2addr v5, v6

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v6, v5

    float-to-int v6, v6

    invoke-static {v4, v6}, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->-$$Nest$mupdateBatteryLevel(Lcom/transsion/camera/app/common/battery/BatteryMonitor;I)V

    .line 132
    const-string v4, "temperature"

    invoke-virtual {p2, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 135
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->getMarket()Ljava/lang/String;

    move-result-object v4

    .line 136
    const-string v6, "ru"

    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v6, 0x0

    if-eqz v4, :cond_5a

    if-gtz p2, :cond_5a

    move p2, v0

    goto :goto_5b

    :cond_5a
    move p2, v6

    :goto_5b
    const/4 v4, 0x2

    if-eq p1, v4, :cond_70

    const/4 v7, 0x5

    if-ne p1, v7, :cond_62

    goto :goto_70

    :cond_62
    if-eq v1, v2, :cond_ef

    if-ne v3, v2, :cond_68

    goto/16 :goto_ef

    :cond_68
    const p1, 0x3e19b3d0    # 0.1501f

    cmpg-float p1, v5, p1

    if-gtz p1, :cond_70

    move v0, v4

    .line 156
    :cond_70
    :goto_70
    iget-object p1, p0, Lcom/transsion/camera/app/common/battery/BatteryMonitor$1;->this$0:Lcom/transsion/camera/app/common/battery/BatteryMonitor;

    invoke-static {p1}, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->-$$Nest$fgetmCurrentStatus(Lcom/transsion/camera/app/common/battery/BatteryMonitor;)I

    move-result p1

    if-ne p1, v0, :cond_80

    iget-object p1, p0, Lcom/transsion/camera/app/common/battery/BatteryMonitor$1;->this$0:Lcom/transsion/camera/app/common/battery/BatteryMonitor;

    invoke-static {p1}, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->-$$Nest$fgetmCurrentTemperatureStatus(Lcom/transsion/camera/app/common/battery/BatteryMonitor;)I

    move-result p1

    if-eq p1, p2, :cond_ef

    .line 157
    :cond_80
    invoke-static {}, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BatteryStatusChanged: level: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", scale: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/battery/BatteryMonitor$1;->this$0:Lcom/transsion/camera/app/common/battery/BatteryMonitor;

    invoke-static {v1}, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->-$$Nest$fgetmCurrentStatus(Lcom/transsion/camera/app/common/battery/BatteryMonitor;)I

    move-result v1

    .line 158
    invoke-static {v1}, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->-$$Nest$smstatusToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->-$$Nest$smstatusToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mCurrentTemperatureStatus = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/battery/BatteryMonitor$1;->this$0:Lcom/transsion/camera/app/common/battery/BatteryMonitor;

    invoke-static {v1}, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->-$$Nest$fgetmCurrentTemperatureStatus(Lcom/transsion/camera/app/common/battery/BatteryMonitor;)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " temperatureStatus = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 157
    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 160
    iget-object p1, p0, Lcom/transsion/camera/app/common/battery/BatteryMonitor$1;->this$0:Lcom/transsion/camera/app/common/battery/BatteryMonitor;

    invoke-static {p1, v0}, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->-$$Nest$fputmCurrentStatus(Lcom/transsion/camera/app/common/battery/BatteryMonitor;I)V

    .line 161
    iget-object p1, p0, Lcom/transsion/camera/app/common/battery/BatteryMonitor$1;->this$0:Lcom/transsion/camera/app/common/battery/BatteryMonitor;

    invoke-static {p1, p2}, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->-$$Nest$fputmCurrentTemperatureStatus(Lcom/transsion/camera/app/common/battery/BatteryMonitor;I)V

    .line 162
    iget-object p1, p0, Lcom/transsion/camera/app/common/battery/BatteryMonitor$1;->this$0:Lcom/transsion/camera/app/common/battery/BatteryMonitor;

    invoke-static {p1}, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->-$$Nest$fgetmBatteryListener(Lcom/transsion/camera/app/common/battery/BatteryMonitor;)Lcom/transsion/camera/app/common/battery/IBatteryListener;

    move-result-object p1

    if-eqz p1, :cond_ef

    .line 163
    iget-object p0, p0, Lcom/transsion/camera/app/common/battery/BatteryMonitor$1;->this$0:Lcom/transsion/camera/app/common/battery/BatteryMonitor;

    invoke-static {p0}, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->-$$Nest$fgetmBatteryListener(Lcom/transsion/camera/app/common/battery/BatteryMonitor;)Lcom/transsion/camera/app/common/battery/IBatteryListener;

    move-result-object p0

    invoke-interface {p0, v6, v0, p2}, Lcom/transsion/camera/app/common/battery/IBatteryListener;->onBatteryStatusChanged(ZII)V

    :cond_ef
    :goto_ef
    return-void
.end method
