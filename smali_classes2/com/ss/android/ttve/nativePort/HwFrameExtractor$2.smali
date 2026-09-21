.class Lcom/ss/android/ttve/nativePort/HwFrameExtractor$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->start()V
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

.field final synthetic this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor;

.field final synthetic val$sensArray:[Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/ss/android/ttve/nativePort/HwFrameExtractor;[Ljava/util/List;)V
    .registers 3

    .line 345
    iput-object p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$2;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor;

    iput-object p2, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$2;->val$sensArray:[Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 346
    iput p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$2;->imageIndex:I

    .line 347
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$2;->imageTs:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .registers 15

    .line 351
    :try_start_0
    iget-object v1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$2;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor;

    monitor-enter v1
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_3} :catch_15d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_15a

    .line 352
    :try_start_3
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object p1

    .line 353
    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 354
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$2;->val$sensArray:[Ljava/util/List;

    iget v4, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$2;->imageIndex:I

    aget-object v0, v0, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_153

    .line 355
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$2;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor;

    iget-object v0, v0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->frameAvailable:Lcom/ss/android/vesdk/VEFrameAvailableListener;

    const/4 v4, 0x1

    if-eqz v0, :cond_12d

    .line 357
    invoke-virtual {p1}, Landroid/media/Image;->getFormat()I

    move-result v0

    const/16 v5, 0x23

    if-ne v0, v5, :cond_100

    .line 358
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    if-eqz v0, :cond_a8

    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v0

    if-le v0, v4, :cond_a8

    .line 359
    new-instance v5, Lcom/ss/android/ttve/model/TEPlane;

    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/ss/android/ttve/model/TEPlane;-><init>([Landroid/media/Image$Plane;)V

    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$2;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor;

    # getter for: Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->mSrcWidth:I
    invoke-static {v0}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->access$200(Lcom/ss/android/ttve/nativePort/HwFrameExtractor;)I

    move-result v6

    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$2;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor;

    # getter for: Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->mSrcHeight:I
    invoke-static {v0}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->access$300(Lcom/ss/android/ttve/nativePort/HwFrameExtractor;)I

    move-result v7

    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$2;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor;

    iget v8, v0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->mRotation:I

    sget-object v11, Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;->TEPixFmt_NV12:Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;

    const-wide/16 v9, 0x0

    invoke-static/range {v5 .. v11}, Lcom/ss/android/ttve/model/VEFrame;->createYUVPlanFrame(Lcom/ss/android/ttve/model/TEPlane;IIIJLcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;)Lcom/ss/android/ttve/model/VEFrame;

    move-result-object v0

    .line 360
    iget-object v5, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$2;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor;

    iget-object v6, v5, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->mConvertFrame:Lcom/ss/android/ttve/model/VEFrame;

    if-nez v6, :cond_c9

    .line 361
    # getter for: Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->mSrcWidth:I
    invoke-static {v5}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->access$200(Lcom/ss/android/ttve/nativePort/HwFrameExtractor;)I

    move-result v5

    iget-object v6, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$2;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor;

    # getter for: Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->mSrcHeight:I
    invoke-static {v6}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->access$300(Lcom/ss/android/ttve/nativePort/HwFrameExtractor;)I

    move-result v6

    mul-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0x3

    div-int/lit8 v5, v5, 0x2

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 362
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 363
    iget-object v5, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$2;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor;

    # getter for: Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->mSrcWidth:I
    invoke-static {v5}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->access$200(Lcom/ss/android/ttve/nativePort/HwFrameExtractor;)I

    move-result v7

    iget-object v8, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$2;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor;

    # getter for: Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->mSrcHeight:I
    invoke-static {v8}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->access$300(Lcom/ss/android/ttve/nativePort/HwFrameExtractor;)I

    move-result v8

    iget-object v9, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$2;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor;

    iget v9, v9, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->mRotation:I

    sget-object v12, Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;->TEPixFmt_YUV420P:Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;

    const-wide/16 v10, 0x0

    invoke-static/range {v6 .. v12}, Lcom/ss/android/ttve/model/VEFrame;->createByteBufferFrame(Ljava/nio/ByteBuffer;IIIJLcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;)Lcom/ss/android/ttve/model/VEFrame;

    move-result-object v6

    iput-object v6, v5, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->mConvertFrame:Lcom/ss/android/ttve/model/VEFrame;

    .line 364
    iget-object v5, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$2;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor;

    iget-object v5, v5, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->mConvertFrame:Lcom/ss/android/ttve/model/VEFrame;

    sget-object v6, Lcom/ss/android/ttve/model/VEFrame$Operation;->OP_CONVERT:Lcom/ss/android/ttve/model/VEFrame$Operation;

    invoke-static {v0, v5, v6}, Lcom/ss/android/ttve/common/TEImageUtils;->convertFrame(Lcom/ss/android/ttve/model/VEFrame;Lcom/ss/android/ttve/model/VEFrame;Lcom/ss/android/ttve/model/VEFrame$Operation;)I

    .line 365
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$2;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor;

    iget-object v0, v0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->mConvertFrame:Lcom/ss/android/ttve/model/VEFrame;

    goto :goto_c9

    :catchall_a4
    move-exception v0

    move-object p1, v0

    goto/16 :goto_158

    .line 368
    :cond_a8
    new-instance v5, Lcom/ss/android/ttve/model/TEPlane;

    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/ss/android/ttve/model/TEPlane;-><init>([Landroid/media/Image$Plane;)V

    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$2;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor;

    # getter for: Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->mSrcWidth:I
    invoke-static {v0}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->access$200(Lcom/ss/android/ttve/nativePort/HwFrameExtractor;)I

    move-result v6

    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$2;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor;

    # getter for: Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->mSrcHeight:I
    invoke-static {v0}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->access$300(Lcom/ss/android/ttve/nativePort/HwFrameExtractor;)I

    move-result v7

    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$2;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor;

    iget v8, v0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->mRotation:I

    sget-object v11, Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;->TEPixFmt_YUV420P:Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;

    const-wide/16 v9, 0x0

    invoke-static/range {v5 .. v11}, Lcom/ss/android/ttve/model/VEFrame;->createYUVPlanFrame(Lcom/ss/android/ttve/model/TEPlane;IIIJLcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;)Lcom/ss/android/ttve/model/VEFrame;

    move-result-object v0

    .line 371
    :cond_c9
    :goto_c9
    iget-object v5, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$2;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor;

    iget-object v5, v5, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->mScaleFrame:Lcom/ss/android/ttve/model/VEFrame;

    if-eqz v5, :cond_d4

    .line 372
    sget-object v6, Lcom/ss/android/ttve/model/VEFrame$Operation;->OP_SCALE:Lcom/ss/android/ttve/model/VEFrame$Operation;

    invoke-static {v0, v5, v6}, Lcom/ss/android/ttve/common/TEImageUtils;->convertFrame(Lcom/ss/android/ttve/model/VEFrame;Lcom/ss/android/ttve/model/VEFrame;Lcom/ss/android/ttve/model/VEFrame$Operation;)I

    .line 376
    :cond_d4
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$2;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor;

    iget v5, v0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->mRotation:I

    if-eqz v5, :cond_e4

    .line 377
    iget-object v5, v0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->mRotatedFrame:Lcom/ss/android/ttve/model/VEFrame;

    .line 378
    iget-object v0, v0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->mScaleFrame:Lcom/ss/android/ttve/model/VEFrame;

    sget-object v6, Lcom/ss/android/ttve/model/VEFrame$Operation;->OP_ROTATION:Lcom/ss/android/ttve/model/VEFrame$Operation;

    invoke-static {v0, v5, v6}, Lcom/ss/android/ttve/common/TEImageUtils;->convertFrame(Lcom/ss/android/ttve/model/VEFrame;Lcom/ss/android/ttve/model/VEFrame;Lcom/ss/android/ttve/model/VEFrame$Operation;)I

    goto :goto_e6

    .line 380
    :cond_e4
    iget-object v5, v0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->mScaleFrame:Lcom/ss/android/ttve/model/VEFrame;

    .line 382
    :goto_e6
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$2;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor;

    iget-object v0, v0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->mRGBAFrame:Lcom/ss/android/ttve/model/VEFrame;

    sget-object v6, Lcom/ss/android/ttve/model/VEFrame$Operation;->OP_CONVERT:Lcom/ss/android/ttve/model/VEFrame$Operation;

    invoke-static {v5, v0, v6}, Lcom/ss/android/ttve/common/TEImageUtils;->convertFrame(Lcom/ss/android/ttve/model/VEFrame;Lcom/ss/android/ttve/model/VEFrame;Lcom/ss/android/ttve/model/VEFrame$Operation;)I

    .line 384
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$2;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor;

    iget-object v0, v0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->mRGBAFrame:Lcom/ss/android/ttve/model/VEFrame;

    invoke-virtual {v0}, Lcom/ss/android/ttve/model/VEFrame;->getFrame()Lcom/ss/android/ttve/model/VEFrame$FrameBase;

    move-result-object v0

    check-cast v0, Lcom/ss/android/ttve/model/VEFrame$ByteBufferFrame;

    invoke-virtual {v0}, Lcom/ss/android/ttve/model/VEFrame$ByteBufferFrame;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 387
    :cond_100
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$2;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor;

    iget-object v5, v0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->mRGBAFrame:Lcom/ss/android/ttve/model/VEFrame;

    invoke-virtual {v5}, Lcom/ss/android/ttve/model/VEFrame;->getFrame()Lcom/ss/android/ttve/model/VEFrame$FrameBase;

    move-result-object v5

    check-cast v5, Lcom/ss/android/ttve/model/VEFrame$ByteBufferFrame;

    invoke-virtual {v5}, Lcom/ss/android/ttve/model/VEFrame$ByteBufferFrame;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    iget-object v6, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$2;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor;

    iget-object v6, v6, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->mRGBAFrame:Lcom/ss/android/ttve/model/VEFrame;

    invoke-virtual {v6}, Lcom/ss/android/ttve/model/VEFrame;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$2;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor;

    iget-object v7, v7, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->mRGBAFrame:Lcom/ss/android/ttve/model/VEFrame;

    invoke-virtual {v7}, Lcom/ss/android/ttve/model/VEFrame;->getHeight()I

    move-result v7

    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v8

    long-to-double v8, v8

    const-wide v10, 0x412e848000000000L    # 1000000.0

    div-double/2addr v8, v10

    double-to-int v8, v8

    # invokes: Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->processFrame(Ljava/nio/ByteBuffer;III)V
    invoke-static {v0, v5, v6, v7, v8}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->access$400(Lcom/ss/android/ttve/nativePort/HwFrameExtractor;Ljava/nio/ByteBuffer;III)V

    .line 389
    :cond_12d
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$2;->imageTs:Ljava/util/List;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$2;->imageTs:Ljava/util/List;

    iget-object v2, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$2;->val$sensArray:[Ljava/util/List;

    iget v3, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$2;->imageIndex:I

    aget-object v2, v2, v3

    invoke-interface {v0, v2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_14e

    .line 391
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$2;->imageTs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 392
    iget v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$2;->imageIndex:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$2;->imageIndex:I

    .line 395
    :cond_14e
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$2;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 397
    :cond_153
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    .line 398
    monitor-exit v1

    return-void

    :goto_158
    monitor-exit v1
    :try_end_159
    .catchall {:try_start_3 .. :try_end_159} :catchall_a4

    :try_start_159
    throw p1
    :try_end_15a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_159 .. :try_end_15a} :catch_15d
    .catch Ljava/lang/Exception; {:try_start_159 .. :try_end_15a} :catch_15a

    :catch_15a
    move-exception v0

    move-object p1, v0

    goto :goto_160

    :catch_15d
    move-exception v0

    move-object p1, v0

    goto :goto_17d

    .line 406
    :goto_160
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$2;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor;

    # getter for: Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->access$000(Lcom/ss/android/ttve/nativePort/HwFrameExtractor;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$2;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor;

    # invokes: Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->processFrameLast()V
    invoke-static {p1}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->access$100(Lcom/ss/android/ttve/nativePort/HwFrameExtractor;)V

    .line 408
    iget-object p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$2;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor;

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 409
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$2;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor;

    invoke-virtual {p0}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->stop()V

    goto :goto_1a0

    .line 400
    :goto_17d
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 401
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$2;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor;

    # getter for: Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->access$000(Lcom/ss/android/ttve/nativePort/HwFrameExtractor;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget-object p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$2;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor;

    # invokes: Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->processFrameLast()V
    invoke-static {p1}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->access$100(Lcom/ss/android/ttve/nativePort/HwFrameExtractor;)V

    .line 403
    iget-object p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$2;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor;

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 404
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$2;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor;

    invoke-virtual {p0}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->stop()V

    :goto_1a0
    return-void
.end method
