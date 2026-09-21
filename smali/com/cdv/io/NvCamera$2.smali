.class Lcom/cdv/io/NvCamera$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cdv/io/NvCamera;->open(ILandroid/content/Context;Landroid/os/Handler;)Lcom/cdv/io/NvCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$cameraId:I

.field final synthetic val$param:Lcom/cdv/io/NvCamera$CameraOpenParam;


# direct methods
.method constructor <init>(Lcom/cdv/io/NvCamera$CameraOpenParam;I)V
    .registers 3

    .line 86
    iput-object p1, p0, Lcom/cdv/io/NvCamera$2;->val$param:Lcom/cdv/io/NvCamera$CameraOpenParam;

    iput p2, p0, Lcom/cdv/io/NvCamera$2;->val$cameraId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/cdv/io/NvCamera$2;->val$param:Lcom/cdv/io/NvCamera$CameraOpenParam;

    iget v1, p0, Lcom/cdv/io/NvCamera$2;->val$cameraId:I

    invoke-static {v1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v1

    iput-object v1, v0, Lcom/cdv/io/NvCamera$CameraOpenParam;->m_cam:Landroid/hardware/Camera;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_14
    .catchall {:try_start_0 .. :try_end_a} :catchall_12

    .line 95
    :goto_a
    iget-object p0, p0, Lcom/cdv/io/NvCamera$2;->val$param:Lcom/cdv/io/NvCamera$CameraOpenParam;

    iget-object p0, p0, Lcom/cdv/io/NvCamera$CameraOpenParam;->m_semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void

    :catchall_12
    move-exception v0

    goto :goto_33

    :catch_14
    move-exception v0

    .line 92
    :try_start_15
    const-string v1, "CDV Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_32
    .catchall {:try_start_15 .. :try_end_32} :catchall_12

    goto :goto_a

    .line 95
    :goto_33
    iget-object p0, p0, Lcom/cdv/io/NvCamera$2;->val$param:Lcom/cdv/io/NvCamera$CameraOpenParam;

    iget-object p0, p0, Lcom/cdv/io/NvCamera$CameraOpenParam;->m_semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 96
    throw v0
.end method
