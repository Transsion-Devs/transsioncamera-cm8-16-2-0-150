.class Lcom/transsion/camera/app/common/isphidl/ISPHIDLController$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/isphidl/IISPHidlService$IISPHidlServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mTempFile:Ljava/io/File;

.field final synthetic this$0:Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;)V
    .registers 2

    .line 523
    iput-object p1, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController$2;->this$0:Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureAllDone()V
    .registers 2

    .line 582
    iget-object p0, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController$2;->this$0:Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;

    invoke-static {p0}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->-$$Nest$fgetmHandler(Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onCompleted(Lcom/transsion/camera/app/common/tzservice/TZEvent;)V
    .registers 3

    .line 538
    iget-object p0, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController$2;->this$0:Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;

    invoke-static {p0}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->-$$Nest$fgetmHandler(Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onServiceDied()V
    .registers 3

    .line 529
    iget-object v0, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController$2;->this$0:Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;

    invoke-static {v0}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->-$$Nest$mreleaseSurfaces(Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;)V

    .line 530
    iget-object v0, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController$2;->this$0:Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->mPostAlgoDied:Z

    .line 531
    invoke-static {}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->-$$Nest$sfgetisPostALgoShot2Shoting()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 532
    iget-object p0, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController$2;->this$0:Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;

    invoke-static {p0}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->-$$Nest$fgetmISPHidlService(Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;)Lcom/transsion/camera/app/common/isphidl/IISPHidlService;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/isphidl/IISPHidlService;->onServiceDied()V

    :cond_19
    return-void
.end method

.method public processPreview(J)Landroid/os/ParcelFileDescriptor;
    .registers 11

    .line 543
    const-string v0, " timeStamp = "

    const-string v1, "processPreview delete = "

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->-$$Nest$sfputisPostALgoBSSing(Z)V

    .line 544
    iget-object v3, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController$2;->this$0:Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;

    invoke-static {v3, p1, p2}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->-$$Nest$mfindBufferCacheItemItem(Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;J)Lcom/transsion/camera/app/common/isphidl/BufferCacheItem;

    move-result-object v3

    .line 545
    invoke-static {}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->-$$Nest$sfgetisDelaySetTZConfig()Z

    move-result v4

    if-eqz v4, :cond_21

    .line 546
    iget-object v4, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController$2;->this$0:Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;

    invoke-static {v4}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->-$$Nest$fgetmHandler(Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 547
    invoke-static {v2}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->-$$Nest$sfputisDelaySetTZConfig(Z)V

    :cond_21
    const/4 v2, 0x0

    if-eqz v3, :cond_d0

    .line 556
    :try_start_24
    const-string v4, "temp"

    new-instance v5, Ljava/io/File;

    const-string v6, "/data/vendor/cam_tzs_cap_quckjpeg/"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v2, v5}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    iput-object v4, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController$2;->mTempFile:Ljava/io/File;

    .line 557
    invoke-static {}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "findBufferCacheItemItem: timeStamp = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " BufferCacheItemItem.getTimeStamp() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    invoke-virtual {v3}, Lcom/transsion/camera/app/common/isphidl/BufferCacheItem;->getTimeStamp()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " width = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/isphidl/BufferCacheItem;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " height = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/isphidl/BufferCacheItem;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 557
    invoke-static {v4, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 559
    iget-object v4, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController$2;->mTempFile:Ljava/io/File;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/isphidl/BufferCacheItem;->getBuffer()[B

    move-result-object v3

    invoke-static {v4, v3}, Lcom/transsion/camera/utils/FileUtil;->convertBuffer2Fd(Ljava/io/File;[B)Landroid/os/ParcelFileDescriptor;

    move-result-object v3
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_79} :catch_a2
    .catchall {:try_start_24 .. :try_end_79} :catchall_a0

    .line 563
    iget-object v4, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController$2;->mTempFile:Ljava/io/File;

    if-eqz v4, :cond_9f

    .line 564
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v4

    .line 565
    invoke-static {}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 566
    iput-object v2, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController$2;->mTempFile:Ljava/io/File;

    :cond_9f
    return-object v3

    :catchall_a0
    move-exception v3

    goto :goto_a9

    :catch_a2
    move-exception v3

    .line 561
    :try_start_a3
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_a9
    .catchall {:try_start_a3 .. :try_end_a9} :catchall_a0

    .line 563
    :goto_a9
    iget-object v4, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController$2;->mTempFile:Ljava/io/File;

    if-eqz v4, :cond_cf

    .line 564
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v4

    .line 565
    invoke-static {}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 566
    iput-object v2, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController$2;->mTempFile:Ljava/io/File;

    .line 568
    :cond_cf
    throw v3

    :cond_d0
    return-object v2
.end method

.method public reConnect()V
    .registers 2

    .line 575
    iget-object v0, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController$2;->this$0:Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->isServiceSupport()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 576
    iget-object p0, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController$2;->this$0:Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;

    invoke-static {p0}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->-$$Nest$fgetmISPHidlService(Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;)Lcom/transsion/camera/app/common/isphidl/IISPHidlService;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/isphidl/IISPHidlService;->setTZCaptureCallback()V

    :cond_11
    return-void
.end method
