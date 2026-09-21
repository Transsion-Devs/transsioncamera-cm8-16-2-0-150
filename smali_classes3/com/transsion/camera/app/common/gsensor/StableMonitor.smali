.class public Lcom/transsion/camera/app/common/gsensor/StableMonitor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/gsensor/IStableMonitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/gsensor/StableMonitor$MyHandler;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static sStableThresholdX:D

.field private static sStableThresholdY:D

.field private static sStableThresholdZ:D


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mGyroDataList:Ljava/util/LinkedList;

.field private mHandler:Landroid/os/Handler;

.field private mIsSensorListenerRegistered:Z

.field private mLastStatus:I

.field private final mLock:Ljava/lang/Object;

.field private mSensorEventIndex:I

.field private final mSensorEventListener:Landroid/hardware/SensorEventListener;

.field private mStartDetectionTimestamp:J

.field private mStartRecordTimestamp:J

.field private mStatusCallback:Lcom/transsion/camera/app/common/gsensor/IStableMonitor$IStatusCallback;


# direct methods
.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/transsion/camera/app/common/gsensor/StableMonitor;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/gsensor/StableMonitor;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/transsion/camera/app/common/gsensor/StableMonitor;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/gsensor/StableMonitor;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mdoCheckValue(Lcom/transsion/camera/app/common/gsensor/StableMonitor;Lcom/transsion/camera/app/common/gsensor/GyroData;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/gsensor/StableMonitor;->doCheckValue(Lcom/transsion/camera/app/common/gsensor/GyroData;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoResetValue(Lcom/transsion/camera/app/common/gsensor/StableMonitor;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/gsensor/StableMonitor;->doResetValue()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 36
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/common/gsensor/StableMonitor;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/gsensor/StableMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-wide v0, 0x3f80624dd2f1a9fcL    # 0.008

    .line 45
    sput-wide v0, Lcom/transsion/camera/app/common/gsensor/StableMonitor;->sStableThresholdX:D

    .line 46
    sput-wide v0, Lcom/transsion/camera/app/common/gsensor/StableMonitor;->sStableThresholdY:D

    .line 47
    sput-wide v0, Lcom/transsion/camera/app/common/gsensor/StableMonitor;->sStableThresholdZ:D

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/gsensor/StableMonitor;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 61
    iput v0, p0, Lcom/transsion/camera/app/common/gsensor/StableMonitor;->mSensorEventIndex:I

    const-wide/16 v1, 0x0

    .line 62
    iput-wide v1, p0, Lcom/transsion/camera/app/common/gsensor/StableMonitor;->mStartRecordTimestamp:J

    .line 63
    iput-wide v1, p0, Lcom/transsion/camera/app/common/gsensor/StableMonitor;->mStartDetectionTimestamp:J

    .line 64
    iput v0, p0, Lcom/transsion/camera/app/common/gsensor/StableMonitor;->mLastStatus:I

    .line 65
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/gsensor/StableMonitor;->mIsSensorListenerRegistered:Z

    .line 69
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/gsensor/StableMonitor;->mGyroDataList:Ljava/util/LinkedList;

    .line 181
    new-instance v0, Lcom/transsion/camera/app/common/gsensor/StableMonitor$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/gsensor/StableMonitor$1;-><init>(Lcom/transsion/camera/app/common/gsensor/StableMonitor;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/gsensor/StableMonitor;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 72
    iput-object p1, p0, Lcom/transsion/camera/app/common/gsensor/StableMonitor;->mContext:Landroid/content/Context;

    return-void
.end method

.method private doCheckValue(Lcom/transsion/camera/app/common/gsensor/GyroData;)V
    .registers 10

    .line 237
    iget-wide v0, p0, Lcom/transsion/camera/app/common/gsensor/StableMonitor;->mStartRecordTimestamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    .line 238
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/app/common/gsensor/StableMonitor;->mStartRecordTimestamp:J

    .line 240
    :cond_e
    iget v0, p0, Lcom/transsion/camera/app/common/gsensor/StableMonitor;->mSensorEventIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/transsion/camera/app/common/gsensor/StableMonitor;->mSensorEventIndex:I

    int-to-long v0, v0

    const-wide/16 v4, 0x3

    rem-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1d

    goto :goto_68

    .line 243
    :cond_1d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 245
    iget-wide v4, p0, Lcom/transsion/camera/app/common/gsensor/StableMonitor;->mStartRecordTimestamp:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x7d0

    cmp-long v4, v4, v6

    if-gez v4, :cond_32

    .line 247
    iget-object v0, p0, Lcom/transsion/camera/app/common/gsensor/StableMonitor;->mGyroDataList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    const/4 p1, 0x0

    goto :goto_5b

    .line 249
    :cond_32
    iget-object v4, p0, Lcom/transsion/camera/app/common/gsensor/StableMonitor;->mGyroDataList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->pollFirst()Ljava/lang/Object;

    .line 250
    iget-object v4, p0, Lcom/transsion/camera/app/common/gsensor/StableMonitor;->mGyroDataList:Ljava/util/LinkedList;

    invoke-virtual {v4, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 252
    iget-wide v4, p0, Lcom/transsion/camera/app/common/gsensor/StableMonitor;->mStartDetectionTimestamp:J

    cmp-long p1, v4, v2

    if-eqz p1, :cond_4e

    sub-long v2, v0, v4

    const-wide/16 v4, 0xc8

    cmp-long p1, v2, v4

    if-lez p1, :cond_4b

    goto :goto_4e

    .line 262
    :cond_4b
    iget p1, p0, Lcom/transsion/camera/app/common/gsensor/StableMonitor;->mLastStatus:I

    goto :goto_5b

    .line 254
    :cond_4e
    :goto_4e
    iput-wide v0, p0, Lcom/transsion/camera/app/common/gsensor/StableMonitor;->mStartDetectionTimestamp:J

    .line 255
    iget-object p1, p0, Lcom/transsion/camera/app/common/gsensor/StableMonitor;->mGyroDataList:Ljava/util/LinkedList;

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/gsensor/StableMonitor;->isStable(Ljava/util/LinkedList;)Z

    move-result p1

    if-eqz p1, :cond_5a

    const/4 p1, 0x2

    goto :goto_5b

    :cond_5a
    const/4 p1, 0x1

    .line 266
    :goto_5b
    iget v0, p0, Lcom/transsion/camera/app/common/gsensor/StableMonitor;->mLastStatus:I

    if-eq v0, p1, :cond_68

    .line 267
    iput p1, p0, Lcom/transsion/camera/app/common/gsensor/StableMonitor;->mLastStatus:I

    .line 268
    iget-object p0, p0, Lcom/transsion/camera/app/common/gsensor/StableMonitor;->mStatusCallback:Lcom/transsion/camera/app/common/gsensor/IStableMonitor$IStatusCallback;

    if-eqz p0, :cond_68

    .line 270
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/gsensor/IStableMonitor$IStatusCallback;->onStatusUpdate(I)V

    :cond_68
    :goto_68
    return-void
.end method

.method private doResetValue()V
    .registers 3

    .line 276
    sget-object v0, Lcom/transsion/camera/app/common/gsensor/StableMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "StableMonitor doResetValue."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 277
    iput-wide v0, p0, Lcom/transsion/camera/app/common/gsensor/StableMonitor;->mStartRecordTimestamp:J

    .line 278
    iput-wide v0, p0, Lcom/transsion/camera/app/common/gsensor/StableMonitor;->mStartDetectionTimestamp:J

    const/4 v0, 0x0

    .line 279
    iput v0, p0, Lcom/transsion/camera/app/common/gsensor/StableMonitor;->mSensorEventIndex:I

    .line 280
    iget-object v1, p0, Lcom/transsion/camera/app/common/gsensor/StableMonitor;->mGyroDataList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 281
    iput v0, p0, Lcom/transsion/camera/app/common/gsensor/StableMonitor;->mLastStatus:I

    return-void
.end method

.method private isStable(Ljava/util/LinkedList;)Z
    .registers 9

    .line 286
    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/transsion/camera/app/common/gsensor/StableMonitor$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/gsensor/StableMonitor$$ExternalSyntheticLambda0;-><init>()V

    .line 287
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/transsion/camera/app/common/gsensor/StableMonitor$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/gsensor/StableMonitor$$ExternalSyntheticLambda1;-><init>()V

    .line 288
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->mapToDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/stream/DoubleStream;

    move-result-object p0

    .line 289
    invoke-interface {p0}, Ljava/util/stream/DoubleStream;->average()Ljava/util/OptionalDouble;

    move-result-object p0

    .line 290
    invoke-virtual {p0}, Ljava/util/OptionalDouble;->isPresent()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_27

    .line 291
    invoke-virtual {p0}, Ljava/util/OptionalDouble;->getAsDouble()D

    move-result-wide v3

    goto :goto_28

    :cond_27
    move-wide v3, v1

    .line 295
    :goto_28
    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/transsion/camera/app/common/gsensor/StableMonitor$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/gsensor/StableMonitor$$ExternalSyntheticLambda0;-><init>()V

    .line 296
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/transsion/camera/app/common/gsensor/StableMonitor$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/gsensor/StableMonitor$$ExternalSyntheticLambda2;-><init>()V

    .line 297
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->mapToDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/stream/DoubleStream;

    move-result-object p0

    .line 298
    invoke-interface {p0}, Ljava/util/stream/DoubleStream;->average()Ljava/util/OptionalDouble;

    move-result-object p0

    .line 299
    invoke-virtual {p0}, Ljava/util/OptionalDouble;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 300
    invoke-virtual {p0}, Ljava/util/OptionalDouble;->getAsDouble()D

    move-result-wide v5

    goto :goto_4e

    :cond_4d
    move-wide v5, v1

    .line 304
    :goto_4e
    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/transsion/camera/app/common/gsensor/StableMonitor$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/transsion/camera/app/common/gsensor/StableMonitor$$ExternalSyntheticLambda0;-><init>()V

    .line 305
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/transsion/camera/app/common/gsensor/StableMonitor$$ExternalSyntheticLambda3;

    invoke-direct {p1}, Lcom/transsion/camera/app/common/gsensor/StableMonitor$$ExternalSyntheticLambda3;-><init>()V

    .line 306
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->mapToDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/stream/DoubleStream;

    move-result-object p0

    .line 307
    invoke-interface {p0}, Ljava/util/stream/DoubleStream;->average()Ljava/util/OptionalDouble;

    move-result-object p0

    .line 308
    invoke-virtual {p0}, Ljava/util/OptionalDouble;->isPresent()Z

    move-result p1

    if-eqz p1, :cond_72

    .line 309
    invoke-virtual {p0}, Ljava/util/OptionalDouble;->getAsDouble()D

    move-result-wide v1

    .line 312
    :cond_72
    sget-wide p0, Lcom/transsion/camera/app/common/gsensor/StableMonitor;->sStableThresholdX:D

    cmpl-double p0, v3, p0

    if-gtz p0, :cond_86

    sget-wide p0, Lcom/transsion/camera/app/common/gsensor/StableMonitor;->sStableThresholdY:D

    cmpl-double p0, v5, p0

    if-gtz p0, :cond_86

    sget-wide p0, Lcom/transsion/camera/app/common/gsensor/StableMonitor;->sStableThresholdZ:D

    cmpl-double p0, v1, p0

    if-gtz p0, :cond_86

    const/4 p0, 0x1

    return p0

    :cond_86
    const/4 p0, 0x0

    return p0
.end method

.method private declared-synchronized registerSensorListeners()V
    .registers 6

    monitor-enter p0

    .line 151
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/gsensor/StableMonitor;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2d

    .line 152
    iget-boolean v1, p0, Lcom/transsion/camera/app/common/gsensor/StableMonitor;->mIsSensorListenerRegistered:Z

    if-nez v1, :cond_2d

    .line 153
    const-string v1, "sensor"

    .line 154
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    if-eqz v0, :cond_2b

    const/4 v2, 0x4

    .line 156
    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    .line 157
    iget-object v3, p0, Lcom/transsion/camera/app/common/gsensor/StableMonitor;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    const/4 v4, 0x2

    invoke-virtual {v0, v3, v2, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 159
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    .line 160
    iget-object v3, p0, Lcom/transsion/camera/app/common/gsensor/StableMonitor;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v3, v2, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_2b

    :catchall_29
    move-exception v0

    goto :goto_2f

    .line 163
    :cond_2b
    :goto_2b
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/gsensor/StableMonitor;->mIsSensorListenerRegistered:Z
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_29

    .line 166
    :cond_2d
    monitor-exit p0

    return-void

    :goto_2f
    :try_start_2f
    monitor-exit p0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_29

    throw v0
.end method

.method private declared-synchronized unRegisterSensorListeners()V
    .registers 3

    monitor-enter p0

    .line 169
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/gsensor/StableMonitor;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1e

    .line 170
    iget-boolean v1, p0, Lcom/transsion/camera/app/common/gsensor/StableMonitor;->mIsSensorListenerRegistered:Z

    if-eqz v1, :cond_1e

    .line 171
    const-string v1, "sensor"

    .line 172
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    if-eqz v0, :cond_1b

    .line 174
    iget-object v1, p0, Lcom/transsion/camera/app/common/gsensor/StableMonitor;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_1b

    :catchall_19
    move-exception v0

    goto :goto_20

    :cond_1b
    :goto_1b
    const/4 v0, 0x0

    .line 176
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/gsensor/StableMonitor;->mIsSensorListenerRegistered:Z
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_19

    .line 179
    :cond_1e
    monitor-exit p0

    return-void

    :goto_20
    :try_start_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_19

    throw v0
.end method


# virtual methods
.method public getLastStatus()I
    .registers 1

    .line 147
    iget p0, p0, Lcom/transsion/camera/app/common/gsensor/StableMonitor;->mLastStatus:I

    return p0
.end method

.method public init()V
    .registers 6

    .line 77
    const-string v0, "debug.stablethreshold"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_16

    int-to-double v1, v0

    const-wide v3, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double/2addr v1, v3

    .line 80
    sput-wide v1, Lcom/transsion/camera/app/common/gsensor/StableMonitor;->sStableThresholdX:D

    .line 81
    sput-wide v1, Lcom/transsion/camera/app/common/gsensor/StableMonitor;->sStableThresholdY:D

    .line 82
    sput-wide v1, Lcom/transsion/camera/app/common/gsensor/StableMonitor;->sStableThresholdZ:D

    .line 85
    :cond_16
    sget-object v1, Lcom/transsion/camera/app/common/gsensor/StableMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StableMonitor init. StableThreshold debug: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 87
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CAM_StableMonitor"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 89
    new-instance v1, Lcom/transsion/camera/app/common/gsensor/StableMonitor$MyHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lcom/transsion/camera/app/common/gsensor/StableMonitor$MyHandler;-><init>(Landroid/os/Looper;Lcom/transsion/camera/app/common/gsensor/StableMonitor;)V

    iput-object v1, p0, Lcom/transsion/camera/app/common/gsensor/StableMonitor;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public declared-synchronized pause()V
    .registers 3

    monitor-enter p0

    .line 114
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/gsensor/StableMonitor;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_c

    const/4 v1, 0x0

    .line 115
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_a

    goto :goto_c

    :catchall_a
    move-exception v0

    goto :goto_e

    .line 117
    :cond_c
    :goto_c
    monitor-exit p0

    return-void

    :goto_e
    :try_start_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_a

    throw v0
.end method

.method public declared-synchronized resume()V
    .registers 3

    monitor-enter p0

    .line 121
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/gsensor/StableMonitor;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_c

    const/4 v1, 0x0

    .line 122
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_a

    goto :goto_c

    :catchall_a
    move-exception v0

    goto :goto_e

    .line 124
    :cond_c
    :goto_c
    monitor-exit p0

    return-void

    :goto_e
    :try_start_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_a

    throw v0
.end method

.method public setStatusCallback(Lcom/transsion/camera/app/common/gsensor/IStableMonitor$IStatusCallback;)V
    .registers 2

    .line 138
    iput-object p1, p0, Lcom/transsion/camera/app/common/gsensor/StableMonitor;->mStatusCallback:Lcom/transsion/camera/app/common/gsensor/IStableMonitor$IStatusCallback;

    if-eqz p1, :cond_9

    .line 141
    iget p0, p0, Lcom/transsion/camera/app/common/gsensor/StableMonitor;->mLastStatus:I

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/gsensor/IStableMonitor$IStatusCallback;->onStatusUpdate(I)V

    :cond_9
    return-void
.end method

.method public declared-synchronized start()V
    .registers 3

    monitor-enter p0

    .line 94
    :try_start_1
    sget-object v0, Lcom/transsion/camera/app/common/gsensor/StableMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "StableMonitor start."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/gsensor/StableMonitor;->resume()V

    .line 96
    invoke-direct {p0}, Lcom/transsion/camera/app/common/gsensor/StableMonitor;->registerSensorListeners()V

    .line 97
    iget-object v0, p0, Lcom/transsion/camera/app/common/gsensor/StableMonitor;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1a

    const/16 v1, 0x66

    .line 98
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_18

    goto :goto_1a

    :catchall_18
    move-exception v0

    goto :goto_1c

    .line 100
    :cond_1a
    :goto_1a
    monitor-exit p0

    return-void

    :goto_1c
    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_18

    throw v0
.end method

.method public declared-synchronized stop()V
    .registers 3

    monitor-enter p0

    .line 104
    :try_start_1
    sget-object v0, Lcom/transsion/camera/app/common/gsensor/StableMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "StableMonitor stop."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 105
    invoke-direct {p0}, Lcom/transsion/camera/app/common/gsensor/StableMonitor;->unRegisterSensorListeners()V

    .line 106
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/gsensor/StableMonitor;->pause()V

    .line 107
    iget-object v0, p0, Lcom/transsion/camera/app/common/gsensor/StableMonitor;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1a

    const/16 v1, 0x66

    .line 108
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_18

    goto :goto_1a

    :catchall_18
    move-exception v0

    goto :goto_1c

    .line 110
    :cond_1a
    :goto_1a
    monitor-exit p0

    return-void

    :goto_1c
    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_18

    throw v0
.end method

.method public unInit()V
    .registers 3

    .line 128
    invoke-direct {p0}, Lcom/transsion/camera/app/common/gsensor/StableMonitor;->unRegisterSensorListeners()V

    .line 129
    iget-object v0, p0, Lcom/transsion/camera/app/common/gsensor/StableMonitor;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1b

    const/4 v1, 0x0

    .line 130
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 131
    iget-object v0, p0, Lcom/transsion/camera/app/common/gsensor/StableMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 132
    iget-object p0, p0, Lcom/transsion/camera/app/common/gsensor/StableMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->quitSafely()V

    :cond_1b
    return-void
.end method
