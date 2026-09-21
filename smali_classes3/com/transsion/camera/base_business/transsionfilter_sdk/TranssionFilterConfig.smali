.class public Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static Brightness:I = 0x64

.field private static TransformMatrixHorizontalMirror:Z = false

.field private static TransformMatrixVerticalMirror:Z = false

.field private static sBufferCount:I = 0x0

.field private static sCameraId:I = 0x0

.field private static sIsFlashFired:Z = false


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bufferCountAdd()V
    .registers 1

    .line 49
    sget v0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterConfig;->sBufferCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterConfig;->sBufferCount:I

    return-void
.end method

.method public static bufferCountRemove()V
    .registers 1

    .line 53
    sget v0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterConfig;->sBufferCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterConfig;->sBufferCount:I

    return-void
.end method

.method public static getBrightness()I
    .registers 1

    .line 18
    sget v0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterConfig;->Brightness:I

    return v0
.end method

.method public static getBufferCount()I
    .registers 1

    .line 45
    sget v0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterConfig;->sBufferCount:I

    return v0
.end method

.method public static getCameraId()I
    .registers 1

    .line 58
    sget v0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterConfig;->sCameraId:I

    return v0
.end method

.method public static isFlashFired()Z
    .registers 1

    .line 23
    sget-boolean v0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterConfig;->sIsFlashFired:Z

    return v0
.end method

.method public static declared-synchronized isTransformMatrixHorizontalMirror()Z
    .registers 2

    const-class v0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterConfig;

    monitor-enter v0

    .line 36
    :try_start_3
    sget-boolean v1, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterConfig;->TransformMatrixHorizontalMirror:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    :try_start_8
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public static declared-synchronized isTransformMatrixVerticalMirror()Z
    .registers 2

    const-class v0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterConfig;

    monitor-enter v0

    .line 28
    :try_start_3
    sget-boolean v1, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterConfig;->TransformMatrixVerticalMirror:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    :try_start_8
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public static setCameraId(I)V
    .registers 1

    .line 62
    sput p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterConfig;->sCameraId:I

    return-void
.end method

.method public static declared-synchronized setTransformMatrixHorizontalMirror(Z)V
    .registers 2

    const-class v0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterConfig;

    monitor-enter v0

    .line 40
    :try_start_3
    sput-boolean p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterConfig;->TransformMatrixHorizontalMirror:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    .line 41
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    :try_start_8
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public static declared-synchronized setTransformMatrixVerticalMirror(Z)V
    .registers 2

    const-class v0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterConfig;

    monitor-enter v0

    .line 32
    :try_start_3
    sput-boolean p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterConfig;->TransformMatrixVerticalMirror:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    .line 33
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    :try_start_8
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_7

    throw p0
.end method
