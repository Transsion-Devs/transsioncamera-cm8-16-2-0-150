.class public Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mBatteryManager:Landroid/os/BatteryManager;

.field private mBatteryStatus:I

.field private mContext:Landroid/content/Context;

.field private mCurrentAvg:I

.field private mCurrentNow:I

.field private mWorkFuture:Ljava/util/concurrent/ScheduledFuture;


# direct methods
.method static bridge synthetic -$$Nest$fgetmBatteryManager(Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;)Landroid/os/BatteryManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;->mBatteryManager:Landroid/os/BatteryManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmBatteryStatus(Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;->mBatteryStatus:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCurrentAvg(Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;->mCurrentAvg:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCurrentNow(Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;->mCurrentNow:I

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 17
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ElectricCurrentMonitor"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 24
    iput v0, p0, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;->mBatteryStatus:I

    return-void
.end method

.method private static batteryStatus(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x2

    if-ne p0, v0, :cond_6

    .line 76
    const-string p0, "CHARGING"

    return-object p0

    :cond_6
    const/4 v0, 0x3

    if-ne p0, v0, :cond_c

    .line 78
    const-string p0, "DISCHARGING"

    return-object p0

    :cond_c
    const/4 v0, 0x4

    if-ne p0, v0, :cond_12

    .line 80
    const-string p0, "NOT_CHARGING"

    return-object p0

    :cond_12
    const/4 v0, 0x5

    if-ne p0, v0, :cond_18

    .line 82
    const-string p0, "FULL"

    return-object p0

    .line 84
    :cond_18
    const-string p0, "UNKNOWN"

    return-object p0
.end method


# virtual methods
.method public printResult()Ljava/lang/CharSequence;
    .registers 3

    .line 64
    new-instance v0, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    invoke-direct {v0}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;-><init>()V

    .line 65
    const-string v1, " Battery: "

    invoke-virtual {v0, v1}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    .line 66
    iget v1, p0, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;->mBatteryStatus:I

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;->batteryStatus(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    .line 67
    const-string v1, "\t CURRENT NOW: "

    invoke-virtual {v0, v1}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    .line 68
    iget v1, p0, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;->mCurrentNow:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/Object;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    .line 69
    const-string v1, "\t\tAVG: "

    invoke-virtual {v0, v1}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    .line 70
    iget p0, p0, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;->mCurrentAvg:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/Object;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    return-object v0
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 2

    .line 29
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;->mContext:Landroid/content/Context;

    return-void
.end method

.method public start()V
    .registers 9

    .line 33
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;->mBatteryManager:Landroid/os/BatteryManager;

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_12

    .line 34
    const-string v1, "batterymanager"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManager;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;->mBatteryManager:Landroid/os/BatteryManager;

    .line 36
    :cond_12
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;->stop()V

    .line 37
    invoke-static {}, Lcom/transsion/camera/utils/threads/SchedThreadPools;->getInstance()Lcom/transsion/camera/utils/threads/SchedThreadPools;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor$1;

    const-string v0, "ElectricCurrentMonitor"

    invoke-direct {v2, p0, v0}, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor$1;-><init>(Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;Ljava/lang/String;)V

    const-wide/16 v5, 0x3e8

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/transsion/camera/utils/threads/SchedThreadPools;->scheduleWithFixedDelay(Lcom/transsion/camera/utils/threads/WorkTask;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;->mWorkFuture:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public stop()V
    .registers 3

    .line 51
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;->mWorkFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_b

    const/4 v1, 0x1

    .line 52
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;->mWorkFuture:Ljava/util/concurrent/ScheduledFuture;

    :cond_b
    return-void
.end method

.method public unInit()V
    .registers 2

    .line 58
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;->stop()V

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;->mBatteryManager:Landroid/os/BatteryManager;

    .line 60
    iput-object v0, p0, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;->mContext:Landroid/content/Context;

    return-void
.end method
