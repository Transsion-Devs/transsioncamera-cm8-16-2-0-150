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

    .line 499
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$1;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewFrame(Landroid/media/Image;II)V
    .registers 12

    .line 502
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$1;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->-$$Nest$fgetmIsPause(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_2b

    .line 507
    :cond_9
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    if-nez v0, :cond_10

    goto :goto_2b

    .line 510
    :cond_10
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-nez v0, :cond_1a

    goto :goto_2b

    .line 514
    :cond_1a
    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 515
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    .line 518
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v3, v3, v4

    if-nez v3, :cond_2c

    :goto_2b
    return-void

    .line 522
    :cond_2c
    invoke-virtual {v3}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 523
    invoke-virtual {v5}, Ljava/nio/Buffer;->remaining()I

    move-result v6

    .line 526
    invoke-virtual {v3}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v3

    const/4 v7, 0x1

    if-ne v4, v3, :cond_6b

    add-int p1, v2, v6

    add-int/2addr p1, v7

    .line 530
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$1;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->-$$Nest$fgetmFrameData(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)[B

    move-result-object v3

    if-eqz v3, :cond_4f

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$1;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->-$$Nest$fgetmFrameData(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)[B

    move-result-object v3

    array-length v3, v3

    if-eq v3, p1, :cond_56

    .line 531
    :cond_4f
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$1;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    new-array p1, p1, [B

    invoke-static {v3, p1}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->-$$Nest$fputmFrameData(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;[B)V

    .line 534
    :cond_56
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$1;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->-$$Nest$fgetmFrameData(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)[B

    move-result-object p1

    invoke-virtual {v0, p1, v1, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 535
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$1;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->-$$Nest$fgetmFrameData(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)[B

    move-result-object p1

    invoke-virtual {v5, p1, v2, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    const/16 p1, 0x11

    goto :goto_b3

    .line 539
    :cond_6b
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p1

    aget-object p1, p1, v7

    .line 540
    invoke-virtual {p1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 541
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    add-int v4, v2, v3

    add-int/2addr v4, v6

    .line 544
    iget-object v7, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$1;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {v7}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->-$$Nest$fgetmFrameData(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)[B

    move-result-object v7

    if-eqz v7, :cond_8d

    iget-object v7, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$1;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {v7}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->-$$Nest$fgetmFrameData(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)[B

    move-result-object v7

    array-length v7, v7

    if-eq v7, v4, :cond_94

    .line 545
    :cond_8d
    iget-object v7, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$1;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    new-array v4, v4, [B

    invoke-static {v7, v4}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->-$$Nest$fputmFrameData(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;[B)V

    .line 548
    :cond_94
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$1;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {v4}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->-$$Nest$fgetmFrameData(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)[B

    move-result-object v4

    invoke-virtual {v0, v4, v1, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 549
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$1;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->-$$Nest$fgetmFrameData(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)[B

    move-result-object v0

    invoke-virtual {v5, v0, v2, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 550
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$1;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->-$$Nest$fgetmFrameData(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)[B

    move-result-object v0

    add-int/2addr v2, v6

    invoke-virtual {p1, v0, v2, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    const p1, 0x32315659

    .line 553
    :goto_b3
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$1;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->-$$Nest$fgetmModeInit(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)Z

    move-result v0

    if-nez v0, :cond_c5

    .line 554
    invoke-static {}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "onPreviewFrame mode is not initialized"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 557
    :cond_c5
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$1;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->-$$Nest$fgetmSTBlurClient(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)Lcom/transsion/camera/app/common/algorithm/stblur/ISTBlurClient;

    move-result-object v0

    if-nez v0, :cond_d7

    .line 558
    invoke-static {}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "onPreviewFrame mSTBlurClient is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 562
    :cond_d7
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$1;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->-$$Nest$fgetmSTBlurClient(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)Lcom/transsion/camera/app/common/algorithm/stblur/ISTBlurClient;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$1;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->-$$Nest$fgetmFrameData(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)[B

    move-result-object v1

    invoke-interface {v0, v1, p2, p3, p1}, Lcom/transsion/camera/app/common/algorithm/stblur/ISTBlurPreview;->processPreviewBlur([BIII)V

    .line 564
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$1;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->-$$Nest$fgetmFacelightingClient(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)Lcom/transsion/camera/app/common/algorithm/facelighting/IFacelightingClient;

    return-void
.end method
