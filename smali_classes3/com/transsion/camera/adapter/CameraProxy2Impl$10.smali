.class Lcom/transsion/camera/adapter/CameraProxy2Impl$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/adapter/CameraProxy2Impl;
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

    .line 4191
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$10;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .registers 9

    .line 4194
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$10;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmPreviewYUVReaderLock(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_d2

    .line 4196
    :try_start_c
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v0

    .line 4197
    invoke-static {}, Lcom/transsion/camera/utils/MonkeyUtils;->isUserAMonkey()Z

    move-result v1

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$10;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {v1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmReleased(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 4198
    invoke-static {}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v1, "Monkey is running and mReleased is true."

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v0, :cond_30

    .line 4200
    invoke-virtual {v0}, Landroid/media/Image;->close()V
    :try_end_2c
    .catchall {:try_start_c .. :try_end_2c} :catchall_2d

    goto :goto_30

    :catchall_2d
    move-exception p1

    goto/16 :goto_c8

    .line 4229
    :cond_30
    :goto_30
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$10;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmPreviewYUVReaderLock(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 4205
    :cond_3a
    :try_start_3a
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$10;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {v1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmIsSettingPreviewUse(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Z

    move-result v1
    :try_end_40
    .catchall {:try_start_3a .. :try_end_40} :catchall_2d

    const-string v2, "Image is null or closed."

    if-nez v1, :cond_90

    :try_start_44
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$10;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {v1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmSettingPreviewDataCallBacks(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_90

    .line 4206
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$10;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {v1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmSettingPreviewDataCallBacks(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_89

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;

    if-eqz v0, :cond_81

    .line 4207
    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$10;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {v4, v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$misImageClosed(Lcom/transsion/camera/adapter/CameraProxy2Impl;Landroid/media/Image;)Z

    move-result v4

    if-eqz v4, :cond_71

    goto :goto_81

    .line 4212
    :cond_71
    invoke-virtual {p1}, Landroid/media/ImageReader;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/media/ImageReader;->getHeight()I

    move-result v5

    invoke-virtual {v0}, Landroid/media/Image;->getFormat()I

    move-result v6

    .line 4211
    invoke-interface {v3, v0, v4, v5, v6}, Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;->onPreviewFrame(Landroid/media/Image;III)V

    goto :goto_5a

    .line 4208
    :cond_81
    :goto_81
    invoke-static {}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_30

    .line 4214
    :cond_89
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$10;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fputmIsSettingPreviewUse(Lcom/transsion/camera/adapter/CameraProxy2Impl;Z)V

    goto :goto_96

    .line 4216
    :cond_90
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$10;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fputmIsSettingPreviewUse(Lcom/transsion/camera/adapter/CameraProxy2Impl;Z)V

    :goto_96
    if-eqz v0, :cond_bf

    .line 4218
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$10;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {v1, v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$misImageClosed(Lcom/transsion/camera/adapter/CameraProxy2Impl;Landroid/media/Image;)Z

    move-result v1

    if-eqz v1, :cond_a1

    goto :goto_bf

    .line 4223
    :cond_a1
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$10;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {v1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmPreviewDataCallBack(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;

    if-eqz v1, :cond_ba

    .line 4225
    invoke-virtual {p1}, Landroid/media/ImageReader;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/media/ImageReader;->getHeight()I

    move-result p1

    invoke-interface {v1, v0, v2, p1}, Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;->onPreviewFrame(Landroid/media/Image;II)V

    .line 4227
    :cond_ba
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    goto/16 :goto_30

    .line 4219
    :cond_bf
    :goto_bf
    invoke-static {}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_c6
    .catchall {:try_start_44 .. :try_end_c6} :catchall_2d

    goto/16 :goto_30

    .line 4229
    :goto_c8
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$10;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmPreviewYUVReaderLock(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 4230
    throw p1

    :cond_d2
    return-void
.end method
