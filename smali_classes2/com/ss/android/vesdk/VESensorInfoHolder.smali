.class public Lcom/ss/android/vesdk/VESensorInfoHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static DEFAULT_FOV:[F

.field private static DEFAULT_QUATERNION:[F

.field private static volatile instance:Lcom/ss/android/vesdk/VESensorInfoHolder;


# instance fields
.field private fov:[F

.field private isSensorMode:Z

.field private quaternion:[F

.field private sensorTimestamp:D


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x4

    .line 9
    new-array v0, v0, [F

    fill-array-data v0, :array_12

    sput-object v0, Lcom/ss/android/vesdk/VESensorInfoHolder;->DEFAULT_QUATERNION:[F

    const/4 v0, 0x2

    .line 10
    new-array v0, v0, [F

    fill-array-data v0, :array_1e

    sput-object v0, Lcom/ss/android/vesdk/VESensorInfoHolder;->DEFAULT_FOV:[F

    return-void

    nop

    :array_12
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1e
    .array-data 4
        -0x40000000    # -2.0f
        -0x40000000    # -2.0f
    .end array-data
.end method

.method private constructor <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    sget-object v0, Lcom/ss/android/vesdk/VESensorInfoHolder;->DEFAULT_QUATERNION:[F

    iput-object v0, p0, Lcom/ss/android/vesdk/VESensorInfoHolder;->quaternion:[F

    .line 14
    sget-object v0, Lcom/ss/android/vesdk/VESensorInfoHolder;->DEFAULT_FOV:[F

    iput-object v0, p0, Lcom/ss/android/vesdk/VESensorInfoHolder;->fov:[F

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VESensorInfoHolder;->isSensorMode:Z

    return-void
.end method

.method public static getInstance()Lcom/ss/android/vesdk/VESensorInfoHolder;
    .registers 2

    .line 27
    sget-object v0, Lcom/ss/android/vesdk/VESensorInfoHolder;->instance:Lcom/ss/android/vesdk/VESensorInfoHolder;

    if-nez v0, :cond_19

    .line 28
    const-class v0, Lcom/ss/android/vesdk/VESensorInfoHolder;

    monitor-enter v0

    .line 29
    :try_start_7
    sget-object v1, Lcom/ss/android/vesdk/VESensorInfoHolder;->instance:Lcom/ss/android/vesdk/VESensorInfoHolder;

    if-nez v1, :cond_15

    .line 30
    new-instance v1, Lcom/ss/android/vesdk/VESensorInfoHolder;

    invoke-direct {v1}, Lcom/ss/android/vesdk/VESensorInfoHolder;-><init>()V

    sput-object v1, Lcom/ss/android/vesdk/VESensorInfoHolder;->instance:Lcom/ss/android/vesdk/VESensorInfoHolder;

    goto :goto_15

    :catchall_13
    move-exception v1

    goto :goto_17

    .line 32
    :cond_15
    :goto_15
    monitor-exit v0

    goto :goto_19

    :goto_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_13

    throw v1

    .line 34
    :cond_19
    :goto_19
    sget-object v0, Lcom/ss/android/vesdk/VESensorInfoHolder;->instance:Lcom/ss/android/vesdk/VESensorInfoHolder;

    return-object v0
.end method

.method private setQuaternion([F)V
    .registers 4

    if-eqz p1, :cond_a

    .line 60
    array-length v0, p1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_7

    goto :goto_a

    .line 64
    :cond_7
    iput-object p1, p0, Lcom/ss/android/vesdk/VESensorInfoHolder;->quaternion:[F

    return-void

    .line 61
    :cond_a
    :goto_a
    sget-object p1, Lcom/ss/android/vesdk/VESensorInfoHolder;->DEFAULT_QUATERNION:[F

    iput-object p1, p0, Lcom/ss/android/vesdk/VESensorInfoHolder;->quaternion:[F

    return-void
.end method

.method private setRotationSensorTimestamp(D)V
    .registers 3

    .line 52
    iput-wide p1, p0, Lcom/ss/android/vesdk/VESensorInfoHolder;->sensorTimestamp:D

    return-void
.end method


# virtual methods
.method getFov()[F
    .registers 1

    .line 76
    iget-object p0, p0, Lcom/ss/android/vesdk/VESensorInfoHolder;->fov:[F

    return-object p0
.end method

.method getQuaternion()[F
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/ss/android/vesdk/VESensorInfoHolder;->quaternion:[F

    return-object p0
.end method

.method getRotationSensorTimestamp()D
    .registers 3

    .line 48
    iget-wide v0, p0, Lcom/ss/android/vesdk/VESensorInfoHolder;->sensorTimestamp:D

    return-wide v0
.end method

.method public isSensorMode()Z
    .registers 1

    .line 68
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VESensorInfoHolder;->isSensorMode:Z

    return p0
.end method

.method public setFov([F)V
    .registers 2

    .line 80
    iput-object p1, p0, Lcom/ss/android/vesdk/VESensorInfoHolder;->fov:[F

    return-void
.end method

.method public setRotationSensorInfo([FD)V
    .registers 4

    .line 43
    invoke-direct {p0, p1}, Lcom/ss/android/vesdk/VESensorInfoHolder;->setQuaternion([F)V

    .line 44
    invoke-direct {p0, p2, p3}, Lcom/ss/android/vesdk/VESensorInfoHolder;->setRotationSensorTimestamp(D)V

    return-void
.end method

.method public setSensorMode(Z)V
    .registers 2

    .line 72
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VESensorInfoHolder;->isSensorMode:Z

    return-void
.end method
