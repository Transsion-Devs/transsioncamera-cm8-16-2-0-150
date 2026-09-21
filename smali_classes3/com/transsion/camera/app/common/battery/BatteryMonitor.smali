.class public Lcom/transsion/camera/app/common/battery/BatteryMonitor;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mBatteryLevel:I

.field private mBatteryLevelListener:Lcom/transsion/camera/app/common/battery/IBatteryLevelListener;

.field private mBatteryListener:Lcom/transsion/camera/app/common/battery/IBatteryListener;

.field private final mBatteryReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mCurrentStatus:I

.field private mCurrentTemperatureStatus:I

.field private mIsReceiverRegistered:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmBatteryListener(Lcom/transsion/camera/app/common/battery/BatteryMonitor;)Lcom/transsion/camera/app/common/battery/IBatteryListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->mBatteryListener:Lcom/transsion/camera/app/common/battery/IBatteryListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentStatus(Lcom/transsion/camera/app/common/battery/BatteryMonitor;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->mCurrentStatus:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentTemperatureStatus(Lcom/transsion/camera/app/common/battery/BatteryMonitor;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->mCurrentTemperatureStatus:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmCurrentStatus(Lcom/transsion/camera/app/common/battery/BatteryMonitor;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->mCurrentStatus:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCurrentTemperatureStatus(Lcom/transsion/camera/app/common/battery/BatteryMonitor;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->mCurrentTemperatureStatus:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateBatteryLevel(Lcom/transsion/camera/app/common/battery/BatteryMonitor;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->updateBatteryLevel(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smstatusToString(I)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->statusToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 32
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "BatteryMonitor"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->mIsReceiverRegistered:Z

    const/4 v1, -0x1

    .line 41
    iput v1, p0, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->mBatteryLevel:I

    .line 42
    iput v0, p0, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->mCurrentStatus:I

    .line 43
    iput v0, p0, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->mCurrentTemperatureStatus:I

    .line 46
    new-instance v0, Lcom/transsion/camera/app/common/battery/SimpleBatteryLevelListener;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/battery/SimpleBatteryLevelListener;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->mBatteryLevelListener:Lcom/transsion/camera/app/common/battery/IBatteryLevelListener;

    .line 118
    new-instance v0, Lcom/transsion/camera/app/common/battery/BatteryMonitor$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/battery/BatteryMonitor$1;-><init>(Lcom/transsion/camera/app/common/battery/BatteryMonitor;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    .line 50
    iput-object p1, p0, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->mContext:Landroid/content/Context;

    return-void
.end method

.method private static statusToString(I)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_25

    const/4 v0, 0x1

    if-eq p0, v0, :cond_22

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1f

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN BATTERY STATE ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 176
    :cond_1f
    const-string p0, "low_power"

    return-object p0

    .line 174
    :cond_22
    const-string p0, "idle"

    return-object p0

    .line 172
    :cond_25
    const-string/jumbo p0, "unknown"

    return-object p0
.end method

.method private updateBatteryLevel(I)V
    .registers 3

    .line 113
    iget v0, p0, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->mBatteryLevel:I

    if-ne v0, p1, :cond_5

    return-void

    .line 114
    :cond_5
    iput p1, p0, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->mBatteryLevel:I

    .line 115
    iget-object p0, p0, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->mBatteryLevelListener:Lcom/transsion/camera/app/common/battery/IBatteryLevelListener;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/battery/IBatteryLevelListener;->onBatteryLevelChanged(I)V

    return-void
.end method

.method private updateCurrentBatteryIsLow()V
    .registers 7

    .line 100
    iget-object v0, p0, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->mContext:Landroid/content/Context;

    const-string v1, "batterymanager"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManager;

    const/4 v1, 0x4

    .line 101
    invoke-virtual {v0, v1}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v1

    const/4 v2, 0x6

    .line 102
    invoke-virtual {v0, v2}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v0

    .line 103
    sget-object v2, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Battery Capacity = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", batteryStatus = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    int-to-float v3, v1

    const v4, 0x417028f5    # 15.009999f

    cmpg-float v3, v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-gez v3, :cond_40

    if-eq v0, v4, :cond_40

    const/4 v0, 0x1

    goto :goto_41

    :cond_40
    move v0, v5

    .line 105
    :goto_41
    iget-object v3, p0, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->mBatteryListener:Lcom/transsion/camera/app/common/battery/IBatteryListener;

    if-eqz v3, :cond_51

    if-eqz v0, :cond_51

    .line 106
    const-string v0, "Battery Capacity is Low "

    invoke-static {v2, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->mBatteryListener:Lcom/transsion/camera/app/common/battery/IBatteryListener;

    invoke-interface {v0, v5, v4, v5}, Lcom/transsion/camera/app/common/battery/IBatteryListener;->onBatteryStatusChanged(ZII)V

    .line 109
    :cond_51
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->updateBatteryLevel(I)V

    return-void
.end method


# virtual methods
.method public init()V
    .registers 1

    .line 54
    invoke-direct {p0}, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->updateCurrentBatteryIsLow()V

    return-void
.end method

.method public setBatteryListener(Lcom/transsion/camera/app/common/battery/IBatteryListener;)V
    .registers 2

    .line 92
    iput-object p1, p0, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->mBatteryListener:Lcom/transsion/camera/app/common/battery/IBatteryListener;

    return-void
.end method

.method public start()V
    .registers 5

    .line 58
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->mIsReceiverRegistered:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    .line 61
    iput v0, p0, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->mCurrentTemperatureStatus:I

    .line 62
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 63
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 64
    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 65
    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 66
    iget-object v1, p0, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 67
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->mIsReceiverRegistered:Z

    return-void
.end method

.method public stop()V
    .registers 2

    .line 72
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->mIsReceiverRegistered:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->mIsReceiverRegistered:Z

    .line 74
    iget-object v0, p0, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_e
    return-void
.end method

.method public unInit()V
    .registers 3

    .line 80
    iget-object v0, p0, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->mBatteryListener:Lcom/transsion/camera/app/common/battery/IBatteryListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 81
    invoke-interface {v0, v1, v1, v1}, Lcom/transsion/camera/app/common/battery/IBatteryListener;->onBatteryStatusChanged(ZII)V

    .line 84
    :cond_8
    iput v1, p0, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->mCurrentStatus:I

    return-void
.end method
