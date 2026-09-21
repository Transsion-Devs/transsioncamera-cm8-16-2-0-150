.class public Lcom/effecttaint/labcv/core/util/timer_record/LogTimerRecord;
.super Lcom/effecttaint/labcv/core/util/timer_record/TimerRecord;
.source "SourceFile"


# static fields
.field private static volatile sInstance:Lcom/effecttaint/labcv/core/util/timer_record/LogTimerRecord;


# direct methods
.method public constructor <init>(IZZ)V
    .registers 4

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/effecttaint/labcv/core/util/timer_record/TimerRecord;-><init>(IZZ)V

    return-void
.end method

.method public static RECORD(Ljava/lang/String;)V
    .registers 2

    .line 20
    invoke-static {}, Lcom/effecttaint/labcv/core/util/timer_record/LogTimerRecord;->getInstance()Lcom/effecttaint/labcv/core/util/timer_record/LogTimerRecord;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/effecttaint/labcv/core/util/timer_record/TimerRecord;->record(Ljava/lang/String;)V

    return-void
.end method

.method public static STOP(Ljava/lang/String;)V
    .registers 2

    .line 24
    invoke-static {}, Lcom/effecttaint/labcv/core/util/timer_record/LogTimerRecord;->getInstance()Lcom/effecttaint/labcv/core/util/timer_record/LogTimerRecord;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/effecttaint/labcv/core/util/timer_record/TimerRecord;->stop(Ljava/lang/String;)V

    return-void
.end method

.method private static getInstance()Lcom/effecttaint/labcv/core/util/timer_record/LogTimerRecord;
    .registers 5

    .line 9
    sget-object v0, Lcom/effecttaint/labcv/core/util/timer_record/LogTimerRecord;->sInstance:Lcom/effecttaint/labcv/core/util/timer_record/LogTimerRecord;

    if-nez v0, :cond_1d

    .line 10
    const-class v0, Lcom/effecttaint/labcv/core/util/timer_record/LogTimerRecord;

    monitor-enter v0

    .line 11
    :try_start_7
    sget-object v1, Lcom/effecttaint/labcv/core/util/timer_record/LogTimerRecord;->sInstance:Lcom/effecttaint/labcv/core/util/timer_record/LogTimerRecord;

    if-nez v1, :cond_19

    .line 12
    new-instance v1, Lcom/effecttaint/labcv/core/util/timer_record/LogTimerRecord;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x3e8

    invoke-direct {v1, v4, v2, v3}, Lcom/effecttaint/labcv/core/util/timer_record/LogTimerRecord;-><init>(IZZ)V

    sput-object v1, Lcom/effecttaint/labcv/core/util/timer_record/LogTimerRecord;->sInstance:Lcom/effecttaint/labcv/core/util/timer_record/LogTimerRecord;

    goto :goto_19

    :catchall_17
    move-exception v1

    goto :goto_1b

    .line 14
    :cond_19
    :goto_19
    monitor-exit v0

    goto :goto_1d

    :goto_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_17

    throw v1

    .line 16
    :cond_1d
    :goto_1d
    sget-object v0, Lcom/effecttaint/labcv/core/util/timer_record/LogTimerRecord;->sInstance:Lcom/effecttaint/labcv/core/util/timer_record/LogTimerRecord;

    return-object v0
.end method


# virtual methods
.method protected recordAverage(Ljava/lang/String;DI)V
    .registers 7

    const-wide v0, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    mul-double/2addr p2, v0

    .line 42
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p0, p2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%s average time is %f ms in %d round"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "TimerRecord"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected recordOnce(Ljava/lang/String;J)V
    .registers 6

    long-to-double p2, p2

    const-wide v0, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    mul-double/2addr p2, v0

    .line 37
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%s %f"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "TimerRecord"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
