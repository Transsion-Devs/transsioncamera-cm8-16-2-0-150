.class Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager$YUVCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "YUVCallback"
.end annotation


# instance fields
.field private mFrameData:[B

.field final synthetic this$0:Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;)V
    .registers 2

    .line 515
    iput-object p1, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager$YUVCallback;->this$0:Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager$YUVCallback;-><init>(Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;)V

    return-void
.end method


# virtual methods
.method public onPreviewFrame(Landroid/media/Image;II)V
    .registers 12

    .line 519
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager$YUVCallback;->this$0:Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;

    invoke-static {v0}, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->-$$Nest$fgetmSupportPostAlgoDeferRequest(Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 520
    invoke-static {p1}, Lcom/transsion/camera/utils/CameraUtil;->getNV21Buffer(Landroid/media/Image;)[B

    move-result-object v2

    .line 521
    invoke-static {}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->getInstance()Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;

    move-result-object v1

    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v5

    const/4 v7, 0x0

    move v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v7}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->cacheBuffer([BIIJZ)V

    goto :goto_1d

    :cond_1b
    move v3, p2

    move v4, p3

    .line 523
    :goto_1d
    iget-object p2, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager$YUVCallback;->this$0:Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;

    invoke-static {p2}, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->-$$Nest$mneedPreviewFrame(Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;)Z

    move-result p2

    if-nez p2, :cond_27

    goto/16 :goto_b2

    .line 529
    :cond_27
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p2

    const/4 p3, 0x0

    aget-object p2, p2, p3

    .line 530
    invoke-virtual {p2}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 531
    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    .line 534
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    .line 535
    invoke-virtual {v1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 536
    invoke-virtual {v5}, Ljava/nio/Buffer;->remaining()I

    move-result v6

    .line 539
    invoke-virtual {v1}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v1

    const/4 v7, 0x1

    if-ne v2, v1, :cond_67

    add-int p1, v0, v6

    add-int/2addr p1, v7

    .line 543
    iget-object v1, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager$YUVCallback;->mFrameData:[B

    if-eqz v1, :cond_56

    array-length v1, v1

    if-eq v1, p1, :cond_5a

    .line 544
    :cond_56
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager$YUVCallback;->mFrameData:[B

    .line 547
    :cond_5a
    iget-object p1, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager$YUVCallback;->mFrameData:[B

    invoke-virtual {p2, p1, p3, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 548
    iget-object p1, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager$YUVCallback;->mFrameData:[B

    invoke-virtual {v5, p1, v0, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    const/16 p1, 0x11

    goto :goto_96

    .line 552
    :cond_67
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p1

    aget-object p1, p1, v7

    .line 553
    invoke-virtual {p1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 554
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    add-int v2, v0, v1

    add-int/2addr v2, v6

    .line 557
    iget-object v7, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager$YUVCallback;->mFrameData:[B

    if-eqz v7, :cond_7f

    array-length v7, v7

    if-eq v7, v2, :cond_83

    .line 558
    :cond_7f
    new-array v2, v2, [B

    iput-object v2, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager$YUVCallback;->mFrameData:[B

    .line 561
    :cond_83
    iget-object v2, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager$YUVCallback;->mFrameData:[B

    invoke-virtual {p2, v2, p3, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 562
    iget-object p2, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager$YUVCallback;->mFrameData:[B

    invoke-virtual {v5, p2, v0, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 563
    iget-object p2, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager$YUVCallback;->mFrameData:[B

    add-int/2addr v0, v6

    invoke-virtual {p1, p2, v0, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    const p1, 0x32315659

    .line 566
    :goto_96
    iget-object p2, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager$YUVCallback;->this$0:Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;

    invoke-static {p2}, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->-$$Nest$fgetmGpuProcessers(Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_a0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_b2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/transsion/camera/app/common/preview/algorithm/IGpuProcessor;

    .line 567
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager$YUVCallback;->mFrameData:[B

    invoke-interface {p3, v0, v3, v4, p1}, Lcom/transsion/camera/app/common/preview/algorithm/IGpuProcessor;->onPreviewFrame([BIII)V

    goto :goto_a0

    :cond_b2
    :goto_b2
    return-void
.end method
