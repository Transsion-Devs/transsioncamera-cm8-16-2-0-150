.class Lcom/transsion/camera/adapter/CameraProxy2Impl$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/adapter/CameraProxy2Impl;->closeSession()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;


# direct methods
.method constructor <init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;)V
    .registers 2

    .line 4415
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$13;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 4418
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$13;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmPreviewYUVReaderLock(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4420
    :try_start_9
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$13;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmPreviewYUVReader(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Landroid/media/ImageReader;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 4421
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$13;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmPreviewYUVReader(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Landroid/media/ImageReader;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 4422
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$13;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fputmPreviewYUVReader(Lcom/transsion/camera/adapter/CameraProxy2Impl;Landroid/media/ImageReader;)V
    :try_end_20
    .catchall {:try_start_9 .. :try_end_20} :catchall_21

    goto :goto_23

    :catchall_21
    move-exception v0

    goto :goto_2d

    .line 4425
    :cond_23
    :goto_23
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$13;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmPreviewYUVReaderLock(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :goto_2d
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$13;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmPreviewYUVReaderLock(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 4426
    throw v0
.end method
