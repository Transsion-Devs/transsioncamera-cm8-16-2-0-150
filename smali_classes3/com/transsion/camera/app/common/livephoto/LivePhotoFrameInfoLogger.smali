.class public Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

.field private mCurrentTimeStamp:J

.field private final mDataLock:Ljava/lang/Object;

.field private mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

.field private mGyroListener:Landroid/hardware/SensorEventListener;

.field private final mGyroTimeStampDataList:Ljava/util/LinkedList;

.field private final mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mLastAccelData:[F

.field private mLastGyroData:[F

.field private mLastGyroTimestamp:J

.field private mLatestExposureStartTime:J

.field private mLatestExposureTime:J

.field private mLatestRollingShutterTime:J

.field public mLivePhotoQueue:Ljava/util/Queue;

.field private mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public static synthetic $r8$lambda$WOQMIQKuZ4RR0W1yfbIgPEokzsU(Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;->lambda$registerFrameResultCallback$0(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmLastAccelData(Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;)[F
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;->mLastAccelData:[F

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastGyroData(Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;)[F
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;->mLastGyroData:[F

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastGyroTimestamp(Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;->mLastGyroTimestamp:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fputmLastAccelData(Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;[F)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;->mLastAccelData:[F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastGyroData(Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;[F)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;->mLastGyroData:[F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastGyroTimestamp(Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;->mLastGyroTimestamp:J

    return-void
.end method

.method static bridge synthetic -$$Nest$mprocessSyncedData(Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;J[F[F)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;->processSyncedData(J[F[F)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 28
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "LivePhotoFrameInfoLogger"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V
    .registers 4

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;->mDataLock:Ljava/lang/Object;

    .line 34
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;->mGyroTimeStampDataList:Ljava/util/LinkedList;

    .line 35
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v0, 0x0

    .line 40
    iput-wide v0, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;->mLastGyroTimestamp:J

    const/4 v0, 0x3

    .line 43
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;->mLastAccelData:[F

    .line 44
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;->mLastGyroData:[F

    .line 49
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x78

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;->mLivePhotoQueue:Ljava/util/Queue;

    .line 52
    iput-object p1, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    return-void
.end method

.method private synthetic lambda$registerFrameResultCallback$0(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .registers 8

    if-nez p1, :cond_3

    goto :goto_70

    .line 182
    :cond_3
    sget-object p2, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    .line 183
    sget-object p3, Landroid/hardware/camera2/CaptureResult;->SENSOR_ROLLING_SHUTTER_SKEW:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, p3}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    .line 184
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p2, :cond_70

    if-eqz p3, :cond_70

    if-eqz p1, :cond_70

    .line 186
    iget-object v0, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;->mDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 187
    :try_start_24
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;->mCurrentTimeStamp:J

    .line 188
    new-instance v1, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;

    invoke-direct {v1}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;-><init>()V

    .line 189
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;->mLatestExposureTime:J

    .line 190
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;->mLatestRollingShutterTime:J

    .line 191
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;->mLatestExposureStartTime:J

    .line 192
    iget-wide p2, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;->mLatestExposureTime:J

    invoke-virtual {v1, p2, p3}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->setExposureTime(J)V

    .line 193
    iget-wide p2, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;->mLatestRollingShutterTime:J

    invoke-virtual {v1, p2, p3}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->setRollingShutterTime(J)V

    .line 194
    iget-wide p2, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;->mLatestExposureStartTime:J

    invoke-virtual {v1, p2, p3}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->setExposureStartTime(J)V

    .line 195
    new-instance p2, Ljava/util/ArrayList;

    iget-object p3, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;->mGyroTimeStampDataList:Ljava/util/LinkedList;

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, p2}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->setGyroTimeStampValues(Ljava/util/List;)V

    .line 196
    iget-object p2, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;->mGyroTimeStampDataList:Ljava/util/LinkedList;

    invoke-virtual {p2}, Ljava/util/LinkedList;->clear()V

    .line 197
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {v1, p1, p2}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->setTimestamp(J)V

    .line 198
    iget-object p0, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;->mLivePhotoQueue:Ljava/util/Queue;

    invoke-interface {p0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 199
    monitor-exit v0

    return-void

    :catchall_6d
    move-exception p0

    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_24 .. :try_end_6f} :catchall_6d

    throw p0

    :cond_70
    :goto_70
    return-void
.end method

.method private processSyncedData(J[F[F)V
    .registers 16

    .line 140
    iget-object v1, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;->mDataLock:Ljava/lang/Object;

    monitor-enter v1

    if-eqz p3, :cond_3b

    .line 141
    :try_start_5
    array-length v0, p3

    const/4 v2, 0x3

    if-lt v0, v2, :cond_3b

    if-eqz p4, :cond_3b

    array-length v0, p4

    if-lt v0, v2, :cond_3b

    .line 143
    iget-object v0, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;->mGyroTimeStampDataList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v2, 0x64

    if-le v0, v2, :cond_21

    .line 144
    iget-object v0, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;->mGyroTimeStampDataList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_21

    :catchall_1e
    move-exception v0

    move-object p0, v0

    goto :goto_3d

    .line 146
    :cond_21
    :goto_21
    iget-object p0, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;->mGyroTimeStampDataList:Ljava/util/LinkedList;

    new-instance v2, Lcom/transsion/camera/app/common/livephoto/GyroTimeStampData;

    const/4 v0, 0x0

    aget v5, p3, v0

    const/4 v3, 0x1

    aget v6, p3, v3

    const/4 v4, 0x2

    aget v7, p3, v4

    aget v8, p4, v0

    aget v9, p4, v3

    aget v10, p4, v4

    move-wide v3, p1

    invoke-direct/range {v2 .. v10}, Lcom/transsion/camera/app/common/livephoto/GyroTimeStampData;-><init>(JFFFFFF)V

    invoke-virtual {p0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 155
    :cond_3b
    monitor-exit v1

    return-void

    :goto_3d
    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_5 .. :try_end_3e} :catchall_1e

    throw p0
.end method

.method private registerFrameResultCallback()V
    .registers 4

    .line 171
    iget-object v0, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-nez v0, :cond_c

    .line 172
    sget-object p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "registerFrameResultCallback: camera device control is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 175
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;->mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    if-eqz v0, :cond_11

    return-void

    .line 178
    :cond_11
    new-instance v0, Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;->mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    .line 203
    :try_start_18
    iget-object p0, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->registerFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1d} :catch_1e

    return-void

    :catch_1e
    move-exception p0

    .line 205
    sget-object v0, Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerFrameResultCallback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private registerGyroscopeListener()V
    .registers 6

    .line 85
    sget-object v0, Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[registerGyroscopeListener]: "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 86
    invoke-static {}, Lcom/transsion/camera/app_info/AppInfo;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_13

    .line 88
    const-string p0, "registerGyroscopeListener: context is null"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 92
    :cond_13
    :try_start_13
    const-string v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v1, :cond_25

    .line 94
    const-string p0, "registerGyroscopeListener: SensorManager is null"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_25
    const/4 v2, 0x4

    .line 97
    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    .line 98
    iget-object v2, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    if-eqz v1, :cond_53

    if-nez v2, :cond_36

    goto :goto_53

    .line 104
    :cond_36
    new-instance v0, Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger$1;-><init>(Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;->mGyroListener:Landroid/hardware/SensorEventListener;

    .line 130
    iget-object v3, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v1, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 131
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsLivePhotoAIFrameSelectionSupport:Z

    if-eqz v0, :cond_52

    .line 132
    iget-object v0, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object p0, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;->mGyroListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, p0, v2, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_52
    return-void

    .line 101
    :cond_53
    :goto_53
    const-string p0, "registerGyroscopeListener: gyroscope sensor not available"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_58} :catch_59

    return-void

    :catch_59
    move-exception p0

    .line 135
    sget-object v0, Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerGyroscopeListener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private unregisterFrameResultCallback()V
    .registers 6

    .line 210
    iget-object v0, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    const/4 v1, 0x0

    if-eqz v0, :cond_29

    iget-object v2, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;->mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    if-nez v2, :cond_a

    goto :goto_29

    .line 215
    :cond_a
    :try_start_a
    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->unRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_d} :catch_e

    goto :goto_26

    :catch_e
    move-exception v0

    .line 217
    sget-object v2, Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unregisterFrameResultCallback: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 219
    :goto_26
    iput-object v1, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;->mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    return-void

    .line 211
    :cond_29
    :goto_29
    iput-object v1, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;->mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    return-void
.end method

.method private unregisterGyroscopeListener()V
    .registers 5

    .line 159
    iget-object v0, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_24

    iget-object v1, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;->mGyroListener:Landroid/hardware/SensorEventListener;

    if-eqz v1, :cond_24

    .line 161
    :try_start_8
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_c

    goto :goto_24

    :catch_c
    move-exception v0

    .line 163
    sget-object v1, Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterGyroscopeListener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_24
    :goto_24
    const/4 v0, 0x0

    .line 166
    iput-object v0, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;->mSensorManager:Landroid/hardware/SensorManager;

    .line 167
    iput-object v0, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;->mGyroListener:Landroid/hardware/SensorEventListener;

    return-void
.end method


# virtual methods
.method public getCurrentTimeStamp()J
    .registers 3

    .line 238
    iget-wide v0, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;->mCurrentTimeStamp:J

    return-wide v0
.end method

.method public getLivePhotoQueue()Ljava/util/Queue;
    .registers 2

    .line 232
    iget-object v0, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;->mDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 233
    :try_start_3
    iget-object p0, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;->mLivePhotoQueue:Ljava/util/Queue;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 234
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public start()V
    .registers 4

    .line 59
    iget-object v0, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 62
    :cond_b
    invoke-direct {p0}, Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;->registerGyroscopeListener()V

    .line 63
    invoke-direct {p0}, Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;->registerFrameResultCallback()V

    return-void
.end method

.method public stop()V
    .registers 4

    .line 70
    iget-object v0, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 73
    :cond_b
    invoke-direct {p0}, Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;->unregisterGyroscopeListener()V

    .line 74
    invoke-direct {p0}, Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;->unregisterFrameResultCallback()V

    .line 75
    iget-object v0, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;->mDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 76
    :try_start_14
    iget-object v1, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;->mGyroTimeStampDataList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    const-wide/16 v1, 0x0

    .line 77
    iput-wide v1, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;->mLatestExposureTime:J

    .line 78
    iput-wide v1, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;->mLatestRollingShutterTime:J

    .line 79
    iput-wide v1, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;->mLatestExposureStartTime:J

    .line 80
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_14 .. :try_end_22} :catchall_28

    .line 81
    iget-object p0, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;->mLivePhotoQueue:Ljava/util/Queue;

    invoke-interface {p0}, Ljava/util/Collection;->clear()V

    return-void

    :catchall_28
    move-exception p0

    .line 80
    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw p0
.end method
