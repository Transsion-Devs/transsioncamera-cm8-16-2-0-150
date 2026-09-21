.class public abstract Lcom/transsion/camera/adapter/CameraAgent$Customer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraAgent$DeviceStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/adapter/CameraAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Customer"
.end annotation


# static fields
.field private static gCurrent:J


# instance fields
.field private mCameraId:Ljava/lang/String;

.field private mDynamicPriority:J

.field private final mId:J


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(J)V
    .registers 3

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-wide p1, p0, Lcom/transsion/camera/adapter/CameraAgent$Customer;->mId:J

    return-void
.end method


# virtual methods
.method public getCameraId()Ljava/lang/String;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraAgent$Customer;->mCameraId:Ljava/lang/String;

    return-object p0
.end method

.method public getDynamicPriority()J
    .registers 3

    .line 70
    iget-wide v0, p0, Lcom/transsion/camera/adapter/CameraAgent$Customer;->mDynamicPriority:J

    return-wide v0
.end method

.method public isPriority(Lcom/transsion/camera/adapter/CameraAgent$Customer;)Z
    .registers 5

    .line 74
    const-class v0, Lcom/transsion/camera/adapter/CameraAgent$Customer;

    monitor-enter v0

    .line 75
    :try_start_3
    iget-wide v1, p0, Lcom/transsion/camera/adapter/CameraAgent$Customer;->mDynamicPriority:J

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraAgent$Customer;->getDynamicPriority()J

    move-result-wide p0

    cmp-long p0, v1, p0

    if-lez p0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    monitor-exit v0

    return p0

    :catchall_12
    move-exception p0

    .line 76
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public setCameraId(Ljava/lang/String;)V
    .registers 2

    .line 56
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent$Customer;->mCameraId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Customer{mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/camera/adapter/CameraAgent$Customer;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mCameraId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraAgent$Customer;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mDynamicPriority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/camera/adapter/CameraAgent$Customer;->mDynamicPriority:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "} @"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateDynamicPriority()V
    .registers 6

    .line 64
    const-class v0, Lcom/transsion/camera/adapter/CameraAgent$Customer;

    monitor-enter v0

    .line 65
    :try_start_3
    sget-wide v1, Lcom/transsion/camera/adapter/CameraAgent$Customer;->gCurrent:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    sput-wide v3, Lcom/transsion/camera/adapter/CameraAgent$Customer;->gCurrent:J

    iput-wide v1, p0, Lcom/transsion/camera/adapter/CameraAgent$Customer;->mDynamicPriority:J

    .line 66
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method
