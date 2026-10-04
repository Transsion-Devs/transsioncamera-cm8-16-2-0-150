.class public final Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor$Companion;

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mBatteryManager:Landroid/os/BatteryManager;

.field private mBatteryStatus:I

.field private mContext:Landroid/content/Context;

.field private mCurrentAvg:I

.field private mCurrentNow:I

.field private mWorkFuture:Ljava/util/concurrent/ScheduledFuture;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;->Companion:Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor$Companion;

    .line 20
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ElectricCurrentMonitor"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 43
    iput v0, p0, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;->mBatteryStatus:I

    return-void
.end method

.method public static final synthetic access$getMBatteryManager$p(Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;)Landroid/os/BatteryManager;
    .registers 1

    .line 18
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;->mBatteryManager:Landroid/os/BatteryManager;

    return-object p0
.end method

.method public static final synthetic access$setMBatteryStatus$p(Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;I)V
    .registers 2

    .line 18
    iput p1, p0, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;->mBatteryStatus:I

    return-void
.end method

.method public static final synthetic access$setMCurrentAvg$p(Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;I)V
    .registers 2

    .line 18
    iput p1, p0, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;->mCurrentAvg:I

    return-void
.end method

.method public static final synthetic access$setMCurrentNow$p(Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;I)V
    .registers 2

    .line 18
    iput p1, p0, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;->mCurrentNow:I

    return-void
.end method

.method private final batteryStatus(I)Ljava/lang/String;
    .registers 2

    const/4 p0, 0x2

    if-eq p1, p0, :cond_18

    const/4 p0, 0x3

    if-eq p1, p0, :cond_15

    const/4 p0, 0x4

    if-eq p1, p0, :cond_12

    const/4 p0, 0x5

    if-eq p1, p0, :cond_f

    .line 107
    const-string p0, "UNKNOWN"

    return-object p0

    .line 104
    :cond_f
    const-string p0, "FULL"

    return-object p0

    .line 101
    :cond_12
    const-string p0, "NOT_CHARGING"

    return-object p0

    .line 98
    :cond_15
    const-string p0, "DISCHARGING"

    return-object p0

    .line 95
    :cond_18
    const-string p0, "CHARGING"

    return-object p0
.end method


# virtual methods
.method public final printResult()Ljava/lang/CharSequence;
    .registers 3

    .line 82
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 83
    const-string v1, " Battery: "

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 84
    iget v1, p0, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;->mBatteryStatus:I

    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;->batteryStatus(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 85
    const-string v1, "\t CURRENT NOW: "

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 86
    iget v1, p0, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;->mCurrentNow:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/SpannableStringBuilderExtKt;->append(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)Landroid/text/SpannableStringBuilder;

    .line 87
    const-string v1, "\t\tAVG: "

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 88
    iget p0, p0, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;->mCurrentAvg:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/SpannableStringBuilderExtKt;->append(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)Landroid/text/SpannableStringBuilder;

    return-object v0
.end method

.method public final setContext(Landroid/content/Context;)V
    .registers 2

    .line 48
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;->mContext:Landroid/content/Context;

    return-void
.end method

.method public final start()V
    .registers 9

    .line 52
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;->mBatteryManager:Landroid/os/BatteryManager;

    if-nez v0, :cond_17

    .line 53
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_17

    .line 54
    const-string v1, "batterymanager"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.os.BatteryManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/os/BatteryManager;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;->mBatteryManager:Landroid/os/BatteryManager;

    .line 57
    :cond_17
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;->stop()V

    .line 58
    invoke-static {}, Lcom/transsion/camera/utils/threads/SchedThreadPools;->getInstance()Lcom/transsion/camera/utils/threads/SchedThreadPools;

    move-result-object v1

    .line 59
    new-instance v2, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor$start$2;

    invoke-direct {v2, p0}, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor$start$2;-><init>(Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;)V

    const-wide/16 v5, 0x3e8

    .line 67
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x0

    .line 59
    invoke-virtual/range {v1 .. v7}, Lcom/transsion/camera/utils/threads/SchedThreadPools;->scheduleWithFixedDelay(Lcom/transsion/camera/utils/threads/WorkTask;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    .line 58
    iput-object v0, p0, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;->mWorkFuture:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public final stop()V
    .registers 3

    .line 71
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;->mWorkFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_8
    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;->mWorkFuture:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public final unInit()V
    .registers 2

    .line 76
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;->stop()V

    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;->mBatteryManager:Landroid/os/BatteryManager;

    .line 78
    iput-object v0, p0, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;->mContext:Landroid/content/Context;

    return-void
.end method
