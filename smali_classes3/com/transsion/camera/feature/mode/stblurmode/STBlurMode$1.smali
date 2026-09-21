.class Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)V
    .registers 2

    .line 498
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$1;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewFrame(Landroid/media/Image;II)V
    .registers 10

    .line 501
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$1;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {p2}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->-$$Nest$fgetmIsPause(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)Z

    move-result p2

    if-eqz p2, :cond_9

    goto :goto_2b

    .line 506
    :cond_9
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p2

    if-nez p2, :cond_10

    goto :goto_2b

    .line 509
    :cond_10
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p2

    const/4 p3, 0x0

    aget-object p2, p2, p3

    if-nez p2, :cond_1a

    goto :goto_2b

    .line 513
    :cond_1a
    invoke-virtual {p2}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 514
    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    .line 517
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    if-nez v1, :cond_2c

    :goto_2b
    return-void

    .line 521
    :cond_2c
    invoke-virtual {v1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 522
    invoke-virtual {v3}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    .line 525
    invoke-virtual {v1}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v1

    const/4 v5, 0x1

    if-ne v2, v1, :cond_69

    add-int p1, v0, v4

    add-int/2addr p1, v5

    .line 529
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$1;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->-$$Nest$fgetmFrameData(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)[B

    move-result-object v1

    if-eqz v1, :cond_4f

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$1;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->-$$Nest$fgetmFrameData(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)[B

    move-result-object v1

    array-length v1, v1

    if-eq v1, p1, :cond_56

    .line 530
    :cond_4f
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$1;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    new-array p1, p1, [B

    invoke-static {v1, p1}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->-$$Nest$fputmFrameData(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;[B)V

    .line 533
    :cond_56
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$1;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->-$$Nest$fgetmFrameData(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)[B

    move-result-object p1

    invoke-virtual {p2, p1, p3, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 534
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$1;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->-$$Nest$fgetmFrameData(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)[B

    move-result-object p1

    invoke-virtual {v3, p1, v0, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    goto :goto_ae

    .line 538
    :cond_69
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p1

    aget-object p1, p1, v5

    .line 539
    invoke-virtual {p1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 540
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    add-int v2, v0, v1

    add-int/2addr v2, v4

    .line 543
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$1;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {v5}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->-$$Nest$fgetmFrameData(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)[B

    move-result-object v5

    if-eqz v5, :cond_8b

    iget-object v5, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$1;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {v5}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->-$$Nest$fgetmFrameData(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)[B

    move-result-object v5

    array-length v5, v5

    if-eq v5, v2, :cond_92

    .line 544
    :cond_8b
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$1;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    new-array v2, v2, [B

    invoke-static {v5, v2}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->-$$Nest$fputmFrameData(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;[B)V

    .line 547
    :cond_92
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$1;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->-$$Nest$fgetmFrameData(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)[B

    move-result-object v2

    invoke-virtual {p2, v2, p3, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 548
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$1;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {p2}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->-$$Nest$fgetmFrameData(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)[B

    move-result-object p2

    invoke-virtual {v3, p2, v0, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 549
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$1;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {p2}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->-$$Nest$fgetmFrameData(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)[B

    move-result-object p2

    add-int/2addr v0, v4

    invoke-virtual {p1, p2, v0, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 552
    :goto_ae
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$1;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->-$$Nest$fgetmModeInit(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)Z

    move-result p1

    if-nez p1, :cond_c0

    .line 553
    invoke-static {}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "onPreviewFrame mode is not initialized"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 556
    :cond_c0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$1;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->-$$Nest$fgetmSTBlurClient(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)Lcom/transsion/camera/app/common/algorithm/stblur/ISTBlurClient;

    .line 557
    invoke-static {}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "onPreviewFrame mSTBlurClient is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
