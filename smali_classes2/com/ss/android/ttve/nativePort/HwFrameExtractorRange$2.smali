.class Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->start()V
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

.field final synthetic this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;


# direct methods
.method constructor <init>(Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;)V
    .registers 2

    .line 240
    iput-object p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange$2;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 241
    iput p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange$2;->imageIndex:I

    .line 242
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange$2;->imageTs:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .registers 12

    .line 246
    :try_start_0
    iget-object v1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange$2;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;

    monitor-enter v1
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_3} :catch_126
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_123

    .line 247
    :try_start_3
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object p1

    .line 248
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange$2;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;

    iget-object v0, v0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->frameAvailable:Lcom/ss/android/vesdk/VEFrameAvailableListener;

    if-eqz v0, :cond_117

    .line 250
    invoke-virtual {p1}, Landroid/media/Image;->getFormat()I

    move-result v0

    const/16 v2, 0x23

    if-ne v0, v2, :cond_ea

    .line 251
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    if-eqz v0, :cond_92

    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v0

    if-le v0, v2, :cond_92

    .line 252
    new-instance v3, Lcom/ss/android/ttve/model/TEPlane;

    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/ss/android/ttve/model/TEPlane;-><init>([Landroid/media/Image$Plane;)V

    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange$2;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;

    # getter for: Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->mSrcWidth:I
    invoke-static {v0}, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->access$300(Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;)I

    move-result v4

    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange$2;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;

    # getter for: Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->mSrcHeight:I
    invoke-static {v0}, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->access$400(Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;)I

    move-result v5

    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange$2;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;

    iget v6, v0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->mRotation:I

    sget-object v9, Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;->TEPixFmt_NV12:Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;

    const-wide/16 v7, 0x0

    invoke-static/range {v3 .. v9}, Lcom/ss/android/ttve/model/VEFrame;->createYUVPlanFrame(Lcom/ss/android/ttve/model/TEPlane;IIIJLcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;)Lcom/ss/android/ttve/model/VEFrame;

    move-result-object v0

    .line 253
    iget-object v2, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange$2;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;

    iget-object v3, v2, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->mConvertFrame:Lcom/ss/android/ttve/model/VEFrame;

    if-nez v3, :cond_84

    .line 254
    # getter for: Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->mSrcWidth:I
    invoke-static {v2}, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->access$300(Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;)I

    move-result v2

    iget-object v3, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange$2;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;

    # getter for: Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->mSrcHeight:I
    invoke-static {v3}, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->access$400(Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;)I

    move-result v3

    mul-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 255
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 256
    iget-object v2, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange$2;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;

    # getter for: Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->mSrcWidth:I
    invoke-static {v2}, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->access$300(Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;)I

    move-result v4

    iget-object v5, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange$2;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;

    # getter for: Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->mSrcHeight:I
    invoke-static {v5}, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->access$400(Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;)I

    move-result v5

    iget-object v6, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange$2;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;

    iget v6, v6, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->mRotation:I

    sget-object v9, Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;->TEPixFmt_YUV420P:Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;

    const-wide/16 v7, 0x0

    invoke-static/range {v3 .. v9}, Lcom/ss/android/ttve/model/VEFrame;->createByteBufferFrame(Ljava/nio/ByteBuffer;IIIJLcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;)Lcom/ss/android/ttve/model/VEFrame;

    move-result-object v3

    iput-object v3, v2, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->mConvertFrame:Lcom/ss/android/ttve/model/VEFrame;

    goto :goto_84

    :catchall_80
    move-exception v0

    move-object p1, v0

    goto/16 :goto_121

    .line 258
    :cond_84
    :goto_84
    iget-object v2, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange$2;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;

    iget-object v2, v2, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->mConvertFrame:Lcom/ss/android/ttve/model/VEFrame;

    sget-object v3, Lcom/ss/android/ttve/model/VEFrame$Operation;->OP_CONVERT:Lcom/ss/android/ttve/model/VEFrame$Operation;

    invoke-static {v0, v2, v3}, Lcom/ss/android/ttve/common/TEImageUtils;->convertFrame(Lcom/ss/android/ttve/model/VEFrame;Lcom/ss/android/ttve/model/VEFrame;Lcom/ss/android/ttve/model/VEFrame$Operation;)I

    .line 259
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange$2;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;

    iget-object v0, v0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->mConvertFrame:Lcom/ss/android/ttve/model/VEFrame;

    goto :goto_b3

    .line 261
    :cond_92
    new-instance v2, Lcom/ss/android/ttve/model/TEPlane;

    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/ss/android/ttve/model/TEPlane;-><init>([Landroid/media/Image$Plane;)V

    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange$2;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;

    # getter for: Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->mSrcWidth:I
    invoke-static {v0}, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->access$300(Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;)I

    move-result v3

    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange$2;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;

    # getter for: Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->mSrcHeight:I
    invoke-static {v0}, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->access$400(Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;)I

    move-result v4

    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange$2;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;

    iget v5, v0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->mRotation:I

    sget-object v8, Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;->TEPixFmt_YUV420P:Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;

    const-wide/16 v6, 0x0

    invoke-static/range {v2 .. v8}, Lcom/ss/android/ttve/model/VEFrame;->createYUVPlanFrame(Lcom/ss/android/ttve/model/TEPlane;IIIJLcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;)Lcom/ss/android/ttve/model/VEFrame;

    move-result-object v0

    .line 264
    :goto_b3
    iget-object v2, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange$2;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;

    iget-object v2, v2, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->mScaleFrame:Lcom/ss/android/ttve/model/VEFrame;

    if-eqz v2, :cond_be

    .line 265
    sget-object v3, Lcom/ss/android/ttve/model/VEFrame$Operation;->OP_SCALE:Lcom/ss/android/ttve/model/VEFrame$Operation;

    invoke-static {v0, v2, v3}, Lcom/ss/android/ttve/common/TEImageUtils;->convertFrame(Lcom/ss/android/ttve/model/VEFrame;Lcom/ss/android/ttve/model/VEFrame;Lcom/ss/android/ttve/model/VEFrame$Operation;)I

    .line 269
    :cond_be
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange$2;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;

    iget v2, v0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->mRotation:I

    if-eqz v2, :cond_ce

    .line 270
    iget-object v2, v0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->mRotatedFrame:Lcom/ss/android/ttve/model/VEFrame;

    .line 271
    iget-object v0, v0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->mScaleFrame:Lcom/ss/android/ttve/model/VEFrame;

    sget-object v3, Lcom/ss/android/ttve/model/VEFrame$Operation;->OP_ROTATION:Lcom/ss/android/ttve/model/VEFrame$Operation;

    invoke-static {v0, v2, v3}, Lcom/ss/android/ttve/common/TEImageUtils;->convertFrame(Lcom/ss/android/ttve/model/VEFrame;Lcom/ss/android/ttve/model/VEFrame;Lcom/ss/android/ttve/model/VEFrame$Operation;)I

    goto :goto_d0

    .line 273
    :cond_ce
    iget-object v2, v0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->mScaleFrame:Lcom/ss/android/ttve/model/VEFrame;

    .line 275
    :goto_d0
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange$2;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;

    iget-object v0, v0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->mRGBAFrame:Lcom/ss/android/ttve/model/VEFrame;

    sget-object v3, Lcom/ss/android/ttve/model/VEFrame$Operation;->OP_CONVERT:Lcom/ss/android/ttve/model/VEFrame$Operation;

    invoke-static {v2, v0, v3}, Lcom/ss/android/ttve/common/TEImageUtils;->convertFrame(Lcom/ss/android/ttve/model/VEFrame;Lcom/ss/android/ttve/model/VEFrame;Lcom/ss/android/ttve/model/VEFrame$Operation;)I

    .line 277
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange$2;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;

    iget-object v0, v0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->mRGBAFrame:Lcom/ss/android/ttve/model/VEFrame;

    invoke-virtual {v0}, Lcom/ss/android/ttve/model/VEFrame;->getFrame()Lcom/ss/android/ttve/model/VEFrame$FrameBase;

    move-result-object v0

    check-cast v0, Lcom/ss/android/ttve/model/VEFrame$ByteBufferFrame;

    invoke-virtual {v0}, Lcom/ss/android/ttve/model/VEFrame$ByteBufferFrame;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 280
    :cond_ea
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange$2;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;

    iget-object v2, v0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->mRGBAFrame:Lcom/ss/android/ttve/model/VEFrame;

    invoke-virtual {v2}, Lcom/ss/android/ttve/model/VEFrame;->getFrame()Lcom/ss/android/ttve/model/VEFrame$FrameBase;

    move-result-object v2

    check-cast v2, Lcom/ss/android/ttve/model/VEFrame$ByteBufferFrame;

    invoke-virtual {v2}, Lcom/ss/android/ttve/model/VEFrame$ByteBufferFrame;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange$2;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;

    iget-object v3, v3, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->mRGBAFrame:Lcom/ss/android/ttve/model/VEFrame;

    invoke-virtual {v3}, Lcom/ss/android/ttve/model/VEFrame;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange$2;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;

    iget-object v4, v4, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->mRGBAFrame:Lcom/ss/android/ttve/model/VEFrame;

    invoke-virtual {v4}, Lcom/ss/android/ttve/model/VEFrame;->getHeight()I

    move-result v4

    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v5

    long-to-double v5, v5

    const-wide v7, 0x412e848000000000L    # 1000000.0

    div-double/2addr v5, v7

    double-to-int v5, v5

    # invokes: Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->processFrame(Ljava/nio/ByteBuffer;III)V
    invoke-static {v0, v2, v3, v4, v5}, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->access$500(Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;Ljava/nio/ByteBuffer;III)V

    .line 283
    :cond_117
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange$2;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 285
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    .line 286
    monitor-exit v1

    return-void

    :goto_121
    monitor-exit v1
    :try_end_122
    .catchall {:try_start_3 .. :try_end_122} :catchall_80

    :try_start_122
    throw p1
    :try_end_123
    .catch Ljava/lang/OutOfMemoryError; {:try_start_122 .. :try_end_123} :catch_126
    .catch Ljava/lang/Exception; {:try_start_122 .. :try_end_123} :catch_123

    :catch_123
    move-exception v0

    move-object p1, v0

    goto :goto_129

    :catch_126
    move-exception v0

    move-object p1, v0

    goto :goto_146

    .line 294
    :goto_129
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange$2;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;

    # getter for: Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->access$000(Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange$2;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;

    # invokes: Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->processFrameLast()V
    invoke-static {p1}, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->access$100(Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;)V

    .line 296
    iget-object p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange$2;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 297
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange$2;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;

    # invokes: Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->stopInternal()V
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->access$200(Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;)V

    goto :goto_169

    .line 288
    :goto_146
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 289
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange$2;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;

    # getter for: Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->access$000(Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange$2;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;

    # invokes: Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->processFrameLast()V
    invoke-static {p1}, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->access$100(Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;)V

    .line 291
    iget-object p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange$2;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 292
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange$2;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;

    # invokes: Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->stopInternal()V
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->access$200(Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;)V

    :goto_169
    return-void
.end method
