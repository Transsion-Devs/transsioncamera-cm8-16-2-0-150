.class Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field imageIndex:I

.field imageTs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;

.field final synthetic val$sensArray:[Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;[Ljava/util/List;)V
    .registers 3

    .line 406
    iput-object p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$2;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;

    iput-object p2, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$2;->val$sensArray:[Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 407
    iput p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$2;->imageIndex:I

    .line 408
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$2;->imageTs:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .registers 15

    .line 412
    :try_start_0
    iget-object v1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$2;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;

    monitor-enter v1
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_3} :catch_15e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_15b

    .line 413
    :try_start_3
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object p1

    .line 414
    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 415
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$2;->val$sensArray:[Ljava/util/List;

    iget v4, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$2;->imageIndex:I

    aget-object v0, v0, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_154

    .line 416
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$2;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;

    iget-object v0, v0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->frameAvailable:Lcom/ss/android/vesdk/VEFrameAvailableListener;

    const/4 v4, 0x1

    if-eqz v0, :cond_12e

    .line 418
    invoke-virtual {p1}, Landroid/media/Image;->getFormat()I

    move-result v0

    const/16 v5, 0x23

    if-ne v0, v5, :cond_101

    .line 419
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    if-eqz v0, :cond_a9

    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v0

    if-le v0, v4, :cond_a9

    .line 420
    new-instance v5, Lcom/ss/android/ttve/model/TEPlane;

    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/ss/android/ttve/model/TEPlane;-><init>([Landroid/media/Image$Plane;)V

    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$2;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;

    # getter for: Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->mSrcWidth:I
    invoke-static {v0}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->access$500(Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;)I

    move-result v6

    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$2;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;

    # getter for: Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->mSrcHeight:I
    invoke-static {v0}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->access$600(Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;)I

    move-result v7

    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$2;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;

    iget v8, v0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->mRotation:I

    sget-object v11, Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;->TEPixFmt_NV12:Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;

    const-wide/16 v9, 0x0

    invoke-static/range {v5 .. v11}, Lcom/ss/android/ttve/model/VEFrame;->createYUVPlanFrame(Lcom/ss/android/ttve/model/TEPlane;IIIJLcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;)Lcom/ss/android/ttve/model/VEFrame;

    move-result-object v0

    .line 421
    iget-object v5, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$2;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;

    iget-object v6, v5, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->mConvertFrame:Lcom/ss/android/ttve/model/VEFrame;

    if-nez v6, :cond_9b

    .line 422
    # getter for: Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->mSrcWidth:I
    invoke-static {v5}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->access$500(Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;)I

    move-result v5

    iget-object v6, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$2;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;

    # getter for: Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->mSrcHeight:I
    invoke-static {v6}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->access$600(Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;)I

    move-result v6

    mul-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0x3

    div-int/lit8 v5, v5, 0x2

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 423
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 424
    iget-object v5, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$2;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;

    # getter for: Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->mSrcWidth:I
    invoke-static {v5}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->access$500(Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;)I

    move-result v7

    iget-object v8, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$2;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;

    # getter for: Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->mSrcHeight:I
    invoke-static {v8}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->access$600(Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;)I

    move-result v8

    iget-object v9, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$2;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;

    iget v9, v9, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->mRotation:I

    sget-object v12, Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;->TEPixFmt_YUV420P:Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;

    const-wide/16 v10, 0x0

    invoke-static/range {v6 .. v12}, Lcom/ss/android/ttve/model/VEFrame;->createByteBufferFrame(Ljava/nio/ByteBuffer;IIIJLcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;)Lcom/ss/android/ttve/model/VEFrame;

    move-result-object v6

    iput-object v6, v5, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->mConvertFrame:Lcom/ss/android/ttve/model/VEFrame;

    goto :goto_9b

    :catchall_97
    move-exception v0

    move-object p1, v0

    goto/16 :goto_159

    .line 426
    :cond_9b
    :goto_9b
    iget-object v5, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$2;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;

    iget-object v5, v5, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->mConvertFrame:Lcom/ss/android/ttve/model/VEFrame;

    sget-object v6, Lcom/ss/android/ttve/model/VEFrame$Operation;->OP_CONVERT:Lcom/ss/android/ttve/model/VEFrame$Operation;

    invoke-static {v0, v5, v6}, Lcom/ss/android/ttve/common/TEImageUtils;->convertFrame(Lcom/ss/android/ttve/model/VEFrame;Lcom/ss/android/ttve/model/VEFrame;Lcom/ss/android/ttve/model/VEFrame$Operation;)I

    .line 427
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$2;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;

    iget-object v0, v0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->mConvertFrame:Lcom/ss/android/ttve/model/VEFrame;

    goto :goto_ca

    .line 429
    :cond_a9
    new-instance v5, Lcom/ss/android/ttve/model/TEPlane;

    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/ss/android/ttve/model/TEPlane;-><init>([Landroid/media/Image$Plane;)V

    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$2;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;

    # getter for: Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->mSrcWidth:I
    invoke-static {v0}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->access$500(Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;)I

    move-result v6

    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$2;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;

    # getter for: Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->mSrcHeight:I
    invoke-static {v0}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->access$600(Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;)I

    move-result v7

    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$2;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;

    iget v8, v0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->mRotation:I

    sget-object v11, Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;->TEPixFmt_YUV420P:Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;

    const-wide/16 v9, 0x0

    invoke-static/range {v5 .. v11}, Lcom/ss/android/ttve/model/VEFrame;->createYUVPlanFrame(Lcom/ss/android/ttve/model/TEPlane;IIIJLcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;)Lcom/ss/android/ttve/model/VEFrame;

    move-result-object v0

    .line 432
    :goto_ca
    iget-object v5, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$2;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;

    iget-object v5, v5, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->mScaleFrame:Lcom/ss/android/ttve/model/VEFrame;

    if-eqz v5, :cond_d5

    .line 433
    sget-object v6, Lcom/ss/android/ttve/model/VEFrame$Operation;->OP_SCALE:Lcom/ss/android/ttve/model/VEFrame$Operation;

    invoke-static {v0, v5, v6}, Lcom/ss/android/ttve/common/TEImageUtils;->convertFrame(Lcom/ss/android/ttve/model/VEFrame;Lcom/ss/android/ttve/model/VEFrame;Lcom/ss/android/ttve/model/VEFrame$Operation;)I

    .line 437
    :cond_d5
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$2;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;

    iget v5, v0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->mRotation:I

    if-eqz v5, :cond_e5

    .line 438
    iget-object v5, v0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->mRotatedFrame:Lcom/ss/android/ttve/model/VEFrame;

    .line 439
    iget-object v0, v0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->mScaleFrame:Lcom/ss/android/ttve/model/VEFrame;

    sget-object v6, Lcom/ss/android/ttve/model/VEFrame$Operation;->OP_ROTATION:Lcom/ss/android/ttve/model/VEFrame$Operation;

    invoke-static {v0, v5, v6}, Lcom/ss/android/ttve/common/TEImageUtils;->convertFrame(Lcom/ss/android/ttve/model/VEFrame;Lcom/ss/android/ttve/model/VEFrame;Lcom/ss/android/ttve/model/VEFrame$Operation;)I

    goto :goto_e7

    .line 441
    :cond_e5
    iget-object v5, v0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->mScaleFrame:Lcom/ss/android/ttve/model/VEFrame;

    .line 443
    :goto_e7
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$2;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;

    iget-object v0, v0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->mRGBAFrame:Lcom/ss/android/ttve/model/VEFrame;

    sget-object v6, Lcom/ss/android/ttve/model/VEFrame$Operation;->OP_CONVERT:Lcom/ss/android/ttve/model/VEFrame$Operation;

    invoke-static {v5, v0, v6}, Lcom/ss/android/ttve/common/TEImageUtils;->convertFrame(Lcom/ss/android/ttve/model/VEFrame;Lcom/ss/android/ttve/model/VEFrame;Lcom/ss/android/ttve/model/VEFrame$Operation;)I

    .line 445
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$2;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;

    iget-object v0, v0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->mRGBAFrame:Lcom/ss/android/ttve/model/VEFrame;

    invoke-virtual {v0}, Lcom/ss/android/ttve/model/VEFrame;->getFrame()Lcom/ss/android/ttve/model/VEFrame$FrameBase;

    move-result-object v0

    check-cast v0, Lcom/ss/android/ttve/model/VEFrame$ByteBufferFrame;

    invoke-virtual {v0}, Lcom/ss/android/ttve/model/VEFrame$ByteBufferFrame;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 448
    :cond_101
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$2;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;

    iget-object v5, v0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->mRGBAFrame:Lcom/ss/android/ttve/model/VEFrame;

    invoke-virtual {v5}, Lcom/ss/android/ttve/model/VEFrame;->getFrame()Lcom/ss/android/ttve/model/VEFrame$FrameBase;

    move-result-object v5

    check-cast v5, Lcom/ss/android/ttve/model/VEFrame$ByteBufferFrame;

    invoke-virtual {v5}, Lcom/ss/android/ttve/model/VEFrame$ByteBufferFrame;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    iget-object v6, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$2;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;

    iget-object v6, v6, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->mRGBAFrame:Lcom/ss/android/ttve/model/VEFrame;

    invoke-virtual {v6}, Lcom/ss/android/ttve/model/VEFrame;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$2;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;

    iget-object v7, v7, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->mRGBAFrame:Lcom/ss/android/ttve/model/VEFrame;

    invoke-virtual {v7}, Lcom/ss/android/ttve/model/VEFrame;->getHeight()I

    move-result v7

    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v8

    long-to-double v8, v8

    const-wide v10, 0x412e848000000000L    # 1000000.0

    div-double/2addr v8, v10

    double-to-int v8, v8

    # invokes: Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->processFrame(Ljava/nio/ByteBuffer;III)V
    invoke-static {v0, v5, v6, v7, v8}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->access$700(Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;Ljava/nio/ByteBuffer;III)V

    .line 450
    :cond_12e
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$2;->imageTs:Ljava/util/List;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 451
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$2;->imageTs:Ljava/util/List;

    iget-object v2, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$2;->val$sensArray:[Ljava/util/List;

    iget v3, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$2;->imageIndex:I

    aget-object v2, v2, v3

    invoke-interface {v0, v2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_14f

    .line 452
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$2;->imageTs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 453
    iget v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$2;->imageIndex:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$2;->imageIndex:I

    .line 456
    :cond_14f
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$2;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 458
    :cond_154
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    .line 459
    monitor-exit v1

    return-void

    :goto_159
    monitor-exit v1
    :try_end_15a
    .catchall {:try_start_3 .. :try_end_15a} :catchall_97

    :try_start_15a
    throw p1
    :try_end_15b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_15a .. :try_end_15b} :catch_15e
    .catch Ljava/lang/Exception; {:try_start_15a .. :try_end_15b} :catch_15b

    :catch_15b
    move-exception v0

    move-object p1, v0

    goto :goto_161

    :catch_15e
    move-exception v0

    move-object p1, v0

    goto :goto_17e

    .line 467
    :goto_161
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$2;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;

    # getter for: Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->access$000(Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget-object p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$2;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;

    # invokes: Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->processFrameLast()V
    invoke-static {p1}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->access$300(Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;)V

    .line 469
    iget-object p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$2;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 470
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$2;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;

    # invokes: Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->stopInternal()V
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->access$400(Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;)V

    goto :goto_1a1

    .line 461
    :goto_17e
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 462
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$2;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;

    # getter for: Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->access$000(Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    iget-object p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$2;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;

    # invokes: Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->processFrameLast()V
    invoke-static {p1}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->access$300(Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;)V

    .line 464
    iget-object p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$2;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 465
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$2;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;

    # invokes: Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->stopInternal()V
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->access$400(Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;)V

    :goto_1a1
    return-void
.end method
