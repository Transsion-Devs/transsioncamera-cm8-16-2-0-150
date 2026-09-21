.class public Lcom/transsion/camera/app/common/thermal/ThermalThrottle;
.super Lcom/transsion/camera/thermal/PlatformThermal;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/thermal/ThermalThrottle$WorkerHandler;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static volatile sThermalThrottle:Lcom/transsion/camera/app/common/thermal/ThermalThrottle;


# instance fields
.field private mCurrentTemperature:I

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mThermalDuration:J

.field private mThermalStatus:I

.field private final mThermalThrottleListeners:Ljava/util/List;

.field private mWorkerHandler:Lcom/transsion/camera/app/common/thermal/ThermalThrottle$WorkerHandler;


# direct methods
.method static bridge synthetic -$$Nest$fgetmThermalDuration(Lcom/transsion/camera/app/common/thermal/ThermalThrottle;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->mThermalDuration:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmThermalStatus(Lcom/transsion/camera/app/common/thermal/ThermalThrottle;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->mThermalStatus:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmThermalThrottleListeners(Lcom/transsion/camera/app/common/thermal/ThermalThrottle;)Ljava/util/List;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->mThermalThrottleListeners:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWorkerHandler(Lcom/transsion/camera/app/common/thermal/ThermalThrottle;)Lcom/transsion/camera/app/common/thermal/ThermalThrottle$WorkerHandler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->mWorkerHandler:Lcom/transsion/camera/app/common/thermal/ThermalThrottle$WorkerHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmThermalStatus(Lcom/transsion/camera/app/common/thermal/ThermalThrottle;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->mThermalStatus:I

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 29
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ThermalThrottle"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 8

    .line 64
    invoke-direct {p0}, Lcom/transsion/camera/thermal/PlatformThermal;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput v0, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->mThermalStatus:I

    .line 48
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->mThermalThrottleListeners:Ljava/util/List;

    .line 49
    iput v0, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->mCurrentTemperature:I

    const-wide/16 v1, 0x1388

    .line 50
    iput-wide v1, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->mThermalDuration:J

    .line 65
    const-string v1, "debug.thermal.throttle.support"

    const-string/jumbo v2, "yes"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getThermalDuration()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->mThermalDuration:J

    .line 67
    sget-object v3, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ThermalThrottle support: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " mThermalDuration:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->mThermalDuration:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 68
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 69
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "ThermalThrottle-thread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->mHandlerThread:Landroid/os/HandlerThread;

    .line 70
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 71
    new-instance v1, Lcom/transsion/camera/app/common/thermal/ThermalThrottle$WorkerHandler;

    iget-object v2, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/common/thermal/ThermalThrottle$WorkerHandler;-><init>(Lcom/transsion/camera/app/common/thermal/ThermalThrottle;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->mWorkerHandler:Lcom/transsion/camera/app/common/thermal/ThermalThrottle$WorkerHandler;

    .line 72
    iget-wide v2, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->mThermalDuration:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_6e
    return-void
.end method

.method public static getInstance()Lcom/transsion/camera/app/common/thermal/ThermalThrottle;
    .registers 2

    .line 53
    sget-object v0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->sThermalThrottle:Lcom/transsion/camera/app/common/thermal/ThermalThrottle;

    if-nez v0, :cond_19

    .line 54
    const-class v0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;

    monitor-enter v0

    .line 55
    :try_start_7
    sget-object v1, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->sThermalThrottle:Lcom/transsion/camera/app/common/thermal/ThermalThrottle;

    if-nez v1, :cond_15

    .line 56
    new-instance v1, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;

    invoke-direct {v1}, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;-><init>()V

    sput-object v1, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->sThermalThrottle:Lcom/transsion/camera/app/common/thermal/ThermalThrottle;

    goto :goto_15

    :catchall_13
    move-exception v1

    goto :goto_17

    .line 58
    :cond_15
    :goto_15
    monitor-exit v0

    goto :goto_19

    :goto_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_13

    throw v1

    .line 60
    :cond_19
    :goto_19
    sget-object v0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->sThermalThrottle:Lcom/transsion/camera/app/common/thermal/ThermalThrottle;

    return-object v0
.end method


# virtual methods
.method public addThermalThrottleChangeListener(Lcom/transsion/camera/app/common/thermal/IThermalThrottleListener;)V
    .registers 2

    if-eqz p1, :cond_7

    .line 79
    iget-object p0, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->mThermalThrottleListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method public destroy()V
    .registers 3

    .line 107
    sget-object v0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[destroy]..."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->mWorkerHandler:Lcom/transsion/camera/app/common/thermal/ThermalThrottle$WorkerHandler;

    if-eqz v0, :cond_12

    .line 109
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 112
    :cond_12
    iget-object p0, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz p0, :cond_19

    .line 113
    invoke-virtual {p0}, Landroid/os/HandlerThread;->quit()Z

    :cond_19
    const/4 p0, 0x0

    .line 115
    sput-object p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->sThermalThrottle:Lcom/transsion/camera/app/common/thermal/ThermalThrottle;

    return-void
.end method

.method public getCurrentTemperature()I
    .registers 1

    .line 207
    iget p0, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->mCurrentTemperature:I

    return p0
.end method

.method public getTemper(Ljava/lang/String;)I
    .registers 6

    const/4 v0, 0x0

    .line 173
    :try_start_1
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_6} :catch_22
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_20

    .line 174
    :try_start_6
    new-instance p1, Ljava/io/BufferedReader;

    invoke-direct {p1, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_24

    .line 175
    :try_start_b
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_19

    .line 177
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_17

    float-to-int v0, v0

    goto :goto_19

    :catchall_17
    move-exception v2

    goto :goto_26

    .line 179
    :cond_19
    :goto_19
    :try_start_19
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_24

    :try_start_1c
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_1f
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_1f} :catch_22
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_20

    goto :goto_68

    :catch_20
    move-exception p1

    goto :goto_38

    :catch_22
    move-exception p1

    goto :goto_3c

    :catchall_24
    move-exception p1

    goto :goto_2f

    .line 173
    :goto_26
    :try_start_26
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_2a

    goto :goto_2e

    :catchall_2a
    move-exception p1

    :try_start_2b
    invoke-virtual {v2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2e
    throw v2
    :try_end_2f
    .catchall {:try_start_2b .. :try_end_2f} :catchall_24

    :goto_2f
    :try_start_2f
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_33

    goto :goto_37

    :catchall_33
    move-exception v1

    :try_start_34
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_37
    throw p1
    :try_end_38
    .catch Ljava/io/FileNotFoundException; {:try_start_34 .. :try_end_38} :catch_22
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_38} :catch_20

    .line 188
    :goto_38
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_68

    .line 180
    :goto_3c
    sget-object v1, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTemper err: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 181
    iget-object p1, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->mWorkerHandler:Lcom/transsion/camera/app/common/thermal/ThermalThrottle$WorkerHandler;

    if-eqz p1, :cond_61

    .line 182
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->quit()V

    .line 184
    :cond_61
    iget-object p1, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz p1, :cond_68

    .line 185
    invoke-virtual {p1}, Landroid/os/HandlerThread;->quit()Z

    .line 191
    :cond_68
    :goto_68
    div-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->mCurrentTemperature:I

    return v0
.end method

.method public pause()V
    .registers 3

    .line 98
    sget-object v0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[pause]..."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 99
    iput v0, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->mThermalStatus:I

    .line 101
    iget-object p0, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->mWorkerHandler:Lcom/transsion/camera/app/common/thermal/ThermalThrottle$WorkerHandler;

    if-eqz p0, :cond_12

    const/4 v0, 0x0

    .line 102
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_12
    return-void
.end method

.method public queryTemperaturePathFailed()V
    .registers 3

    .line 197
    sget-object v0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "queryMainboardTemperaturePathFailed, quit looper"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->mWorkerHandler:Lcom/transsion/camera/app/common/thermal/ThermalThrottle$WorkerHandler;

    if-eqz v0, :cond_12

    .line 199
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 201
    :cond_12
    iget-object p0, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz p0, :cond_19

    .line 202
    invoke-virtual {p0}, Landroid/os/HandlerThread;->quit()Z

    :cond_19
    return-void
.end method

.method public removeAllListeners()V
    .registers 2

    .line 122
    iget-object v0, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->mThermalThrottleListeners:Ljava/util/List;

    if-eqz v0, :cond_f

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_f

    .line 123
    iget-object p0, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->mThermalThrottleListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_f
    return-void
.end method

.method public removeThermalThrottleChangeListener(Lcom/transsion/camera/app/common/thermal/IThermalThrottleListener;)V
    .registers 2

    if-eqz p1, :cond_7

    .line 85
    iget-object p0, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->mThermalThrottleListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method public resume()V
    .registers 5

    .line 90
    sget-object v0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[resume]..."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->mWorkerHandler:Lcom/transsion/camera/app/common/thermal/ThermalThrottle$WorkerHandler;

    if-eqz v0, :cond_16

    const/4 v1, 0x0

    .line 92
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 93
    iget-object v0, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->mWorkerHandler:Lcom/transsion/camera/app/common/thermal/ThermalThrottle$WorkerHandler;

    iget-wide v2, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->mThermalDuration:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_16
    return-void
.end method
