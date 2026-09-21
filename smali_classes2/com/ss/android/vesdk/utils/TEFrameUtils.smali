.class public Lcom/ss/android/vesdk/utils/TEFrameUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static TEFormat2ImageFormat(Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;)I
    .registers 2

    .line 14
    sget-object v0, Lcom/ss/android/vesdk/utils/TEFrameUtils$1;->$SwitchMap$com$ss$android$ttvecamera$TECameraFrame$ETEPixelFormat:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_17

    const/4 v0, 0x2

    if-eq p0, v0, :cond_15

    const/4 v0, 0x3

    if-eq p0, v0, :cond_13

    const/4 p0, -0x1

    return p0

    :cond_13
    const/4 p0, -0x2

    return p0

    :cond_15
    const/4 p0, -0x3

    return p0

    :cond_17
    return v0
.end method

.method public static TEImageFrame2ImageFrame(Lcom/ss/android/ttvecamera/TECameraFrame;)Lcom/ss/android/medialib/camera/ImageFrame;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 35
    :cond_4
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraFrame;->getPixelFormat()Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    move-result-object v1

    sget-object v2, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;->PIXEL_FORMAT_YUV420:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    if-ne v1, v2, :cond_2e

    .line 36
    new-instance v0, Lcom/ss/android/medialib/camera/ImageFrame;

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraFrame;->getPlans()Lcom/ss/android/ttvecamera/TEPlane;

    move-result-object v1

    invoke-static {v1}, Lcom/ss/android/vesdk/utils/TEPlanUtils;->convert(Lcom/ss/android/ttvecamera/TEPlane;)Lcom/ss/android/medialib/camera/Plane;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraFrame;->getPixelFormat()Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    move-result-object v2

    invoke-static {v2}, Lcom/ss/android/vesdk/utils/TEFrameUtils;->TEFormat2ImageFormat(Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;)I

    move-result v2

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraFrame;->getSize()Lcom/ss/android/ttvecamera/TEFrameSizei;

    move-result-object v3

    iget v3, v3, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraFrame;->getSize()Lcom/ss/android/ttvecamera/TEFrameSizei;

    move-result-object p0

    iget p0, p0, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/ss/android/medialib/camera/ImageFrame;-><init>(Lcom/ss/android/medialib/camera/Plane;III)V

    return-object v0

    .line 37
    :cond_2e
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraFrame;->getPixelFormat()Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    move-result-object v1

    sget-object v2, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;->PIXEL_FORMAT_JPEG:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    if-ne v1, v2, :cond_89

    .line 38
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraFrame;->getBufferData()[B

    move-result-object v0

    if-eqz v0, :cond_5a

    .line 39
    new-instance v0, Lcom/ss/android/medialib/camera/ImageFrame;

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraFrame;->getBufferData()[B

    move-result-object v1

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraFrame;->getPixelFormat()Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    move-result-object v2

    invoke-static {v2}, Lcom/ss/android/vesdk/utils/TEFrameUtils;->TEFormat2ImageFormat(Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;)I

    move-result v2

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraFrame;->getSize()Lcom/ss/android/ttvecamera/TEFrameSizei;

    move-result-object v3

    iget v3, v3, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraFrame;->getSize()Lcom/ss/android/ttvecamera/TEFrameSizei;

    move-result-object p0

    iget p0, p0, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/ss/android/medialib/camera/ImageFrame;-><init>([BIII)V

    return-object v0

    .line 41
    :cond_5a
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraFrame;->getPlans()Lcom/ss/android/ttvecamera/TEPlane;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ss/android/ttvecamera/TEPlane;->getPlaneBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 43
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    new-array v1, v1, [B

    .line 44
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 45
    new-instance v0, Lcom/ss/android/medialib/camera/ImageFrame;

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraFrame;->getPixelFormat()Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    move-result-object v2

    invoke-static {v2}, Lcom/ss/android/vesdk/utils/TEFrameUtils;->TEFormat2ImageFormat(Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;)I

    move-result v2

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraFrame;->getSize()Lcom/ss/android/ttvecamera/TEFrameSizei;

    move-result-object v3

    iget v3, v3, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraFrame;->getSize()Lcom/ss/android/ttvecamera/TEFrameSizei;

    move-result-object p0

    iget p0, p0, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/ss/android/medialib/camera/ImageFrame;-><init>([BIII)V

    return-object v0

    .line 47
    :cond_89
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraFrame;->getPixelFormat()Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    move-result-object v1

    sget-object v2, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;->PIXEL_FORMAT_NV21:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    if-ne v1, v2, :cond_ae

    .line 48
    new-instance v0, Lcom/ss/android/medialib/camera/ImageFrame;

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraFrame;->getBufferData()[B

    move-result-object v1

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraFrame;->getPixelFormat()Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    move-result-object v2

    invoke-static {v2}, Lcom/ss/android/vesdk/utils/TEFrameUtils;->TEFormat2ImageFormat(Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;)I

    move-result v2

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraFrame;->getSize()Lcom/ss/android/ttvecamera/TEFrameSizei;

    move-result-object v3

    iget v3, v3, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraFrame;->getSize()Lcom/ss/android/ttvecamera/TEFrameSizei;

    move-result-object p0

    iget p0, p0, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/ss/android/medialib/camera/ImageFrame;-><init>([BIII)V

    :cond_ae
    return-object v0
.end method

.method public static TEImageFrame2VEFrame(Lcom/ss/android/ttvecamera/TECameraFrame;)Lcom/ss/android/ttve/model/VEFrame;
    .registers 11

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 58
    :cond_4
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraFrame;->getPixelFormat()Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    move-result-object v1

    sget-object v2, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;->PIXEL_FORMAT_YUV420:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    if-ne v1, v2, :cond_34

    .line 59
    new-instance v3, Lcom/ss/android/ttve/model/TEPlane;

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraFrame;->getPlans()Lcom/ss/android/ttvecamera/TEPlane;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/ttvecamera/TEPlane;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/ss/android/ttve/model/TEPlane;-><init>([Landroid/media/Image$Plane;)V

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraFrame;->getSize()Lcom/ss/android/ttvecamera/TEFrameSizei;

    move-result-object v0

    iget v4, v0, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraFrame;->getSize()Lcom/ss/android/ttvecamera/TEFrameSizei;

    move-result-object v0

    iget v5, v0, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    .line 60
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraFrame;->getRotation()I

    move-result v6

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraFrame;->getTimeStampNS()J

    move-result-wide v7

    sget-object v9, Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;->TEPIXEL_FORMAT_YUV420:Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;

    .line 59
    invoke-static/range {v3 .. v9}, Lcom/ss/android/ttve/model/VEFrame;->createYUVPlanFrame(Lcom/ss/android/ttve/model/TEPlane;IIIJLcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;)Lcom/ss/android/ttve/model/VEFrame;

    move-result-object p0

    return-object p0

    .line 61
    :cond_34
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraFrame;->getPixelFormat()Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    move-result-object v1

    sget-object v2, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;->PIXEL_FORMAT_JPEG:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    if-ne v1, v2, :cond_91

    .line 62
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraFrame;->getBufferData()[B

    move-result-object v0

    if-eqz v0, :cond_61

    .line 63
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraFrame;->getBufferData()[B

    move-result-object v1

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraFrame;->getSize()Lcom/ss/android/ttvecamera/TEFrameSizei;

    move-result-object v0

    iget v2, v0, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraFrame;->getSize()Lcom/ss/android/ttvecamera/TEFrameSizei;

    move-result-object v0

    iget v3, v0, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    .line 64
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraFrame;->getRotation()I

    move-result v4

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraFrame;->getTimeStampNS()J

    move-result-wide v5

    sget-object v7, Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;->TEPIXEL_FORMAT_JPEG:Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;

    .line 63
    invoke-static/range {v1 .. v7}, Lcom/ss/android/ttve/model/VEFrame;->createByteArrayFrame([BIIIJLcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;)Lcom/ss/android/ttve/model/VEFrame;

    move-result-object p0

    return-object p0

    .line 66
    :cond_61
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraFrame;->getPlans()Lcom/ss/android/ttvecamera/TEPlane;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ss/android/ttvecamera/TEPlane;->getPlaneBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 68
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    new-array v2, v1, [B

    .line 69
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 70
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraFrame;->getSize()Lcom/ss/android/ttvecamera/TEFrameSizei;

    move-result-object v0

    iget v3, v0, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraFrame;->getSize()Lcom/ss/android/ttvecamera/TEFrameSizei;

    move-result-object v0

    iget v4, v0, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    .line 71
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraFrame;->getRotation()I

    move-result v5

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraFrame;->getTimeStampNS()J

    move-result-wide v6

    sget-object v8, Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;->TEPIXEL_FORMAT_JPEG:Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;

    .line 70
    invoke-static/range {v2 .. v8}, Lcom/ss/android/ttve/model/VEFrame;->createByteArrayFrame([BIIIJLcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;)Lcom/ss/android/ttve/model/VEFrame;

    move-result-object p0

    return-object p0

    .line 73
    :cond_91
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraFrame;->getPixelFormat()Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    move-result-object v1

    sget-object v2, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;->PIXEL_FORMAT_NV21:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    if-ne v1, v2, :cond_b8

    .line 74
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraFrame;->getBufferData()[B

    move-result-object v3

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraFrame;->getSize()Lcom/ss/android/ttvecamera/TEFrameSizei;

    move-result-object v0

    iget v4, v0, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraFrame;->getSize()Lcom/ss/android/ttvecamera/TEFrameSizei;

    move-result-object v0

    iget v5, v0, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    .line 75
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraFrame;->getRotation()I

    move-result v6

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraFrame;->getTimeStampNS()J

    move-result-wide v7

    sget-object v9, Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;->TEPixFmt_NV21:Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;

    .line 74
    invoke-static/range {v3 .. v9}, Lcom/ss/android/ttve/model/VEFrame;->createByteArrayFrame([BIIIJLcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;)Lcom/ss/android/ttve/model/VEFrame;

    move-result-object p0

    return-object p0

    :cond_b8
    return-object v0
.end method

.method public static VEFrame2ImageFrame(Lcom/ss/android/ttve/model/VEFrame;)Lcom/ss/android/medialib/camera/ImageFrame;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 85
    :cond_4
    invoke-virtual {p0}, Lcom/ss/android/ttve/model/VEFrame;->getFormat()Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;

    move-result-object v1

    sget-object v2, Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;->TEPIXEL_FORMAT_YUV420:Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;

    if-ne v1, v2, :cond_2a

    .line 86
    new-instance v0, Lcom/ss/android/medialib/camera/ImageFrame;

    new-instance v1, Lcom/ss/android/medialib/camera/Plane;

    invoke-virtual {p0}, Lcom/ss/android/ttve/model/VEFrame;->getFrame()Lcom/ss/android/ttve/model/VEFrame$FrameBase;

    move-result-object v2

    check-cast v2, Lcom/ss/android/ttve/model/VEFrame$YUVPlansFrame;

    invoke-virtual {v2}, Lcom/ss/android/ttve/model/VEFrame$YUVPlansFrame;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ss/android/medialib/camera/Plane;-><init>([Landroid/media/Image$Plane;)V

    invoke-virtual {p0}, Lcom/ss/android/ttve/model/VEFrame;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/ss/android/ttve/model/VEFrame;->getHeight()I

    move-result p0

    const/4 v3, -0x2

    invoke-direct {v0, v1, v3, v2, p0}, Lcom/ss/android/medialib/camera/ImageFrame;-><init>(Lcom/ss/android/medialib/camera/Plane;III)V

    return-object v0

    .line 87
    :cond_2a
    invoke-virtual {p0}, Lcom/ss/android/ttve/model/VEFrame;->getFormat()Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;

    move-result-object v1

    sget-object v2, Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;->TEPIXEL_FORMAT_JPEG:Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;

    if-ne v1, v2, :cond_53

    .line 88
    invoke-virtual {p0}, Lcom/ss/android/ttve/model/VEFrame;->getFrame()Lcom/ss/android/ttve/model/VEFrame$FrameBase;

    move-result-object v1

    instance-of v1, v1, Lcom/ss/android/ttve/model/VEFrame$ByteArrayFrame;

    if-eqz v1, :cond_7b

    .line 89
    new-instance v0, Lcom/ss/android/medialib/camera/ImageFrame;

    invoke-virtual {p0}, Lcom/ss/android/ttve/model/VEFrame;->getFrame()Lcom/ss/android/ttve/model/VEFrame$FrameBase;

    move-result-object v1

    check-cast v1, Lcom/ss/android/ttve/model/VEFrame$ByteArrayFrame;

    invoke-virtual {v1}, Lcom/ss/android/ttve/model/VEFrame$ByteArrayFrame;->getByteArray()[B

    move-result-object v1

    invoke-virtual {p0}, Lcom/ss/android/ttve/model/VEFrame;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/ss/android/ttve/model/VEFrame;->getHeight()I

    move-result p0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2, p0}, Lcom/ss/android/medialib/camera/ImageFrame;-><init>([BIII)V

    return-object v0

    .line 93
    :cond_53
    invoke-virtual {p0}, Lcom/ss/android/ttve/model/VEFrame;->getFormat()Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;

    move-result-object v1

    sget-object v2, Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;->TEPixFmt_NV21:Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;

    if-ne v1, v2, :cond_7b

    invoke-virtual {p0}, Lcom/ss/android/ttve/model/VEFrame;->getFrame()Lcom/ss/android/ttve/model/VEFrame$FrameBase;

    move-result-object v1

    instance-of v1, v1, Lcom/ss/android/ttve/model/VEFrame$ByteArrayFrame;

    if-eqz v1, :cond_7b

    .line 94
    new-instance v0, Lcom/ss/android/medialib/camera/ImageFrame;

    invoke-virtual {p0}, Lcom/ss/android/ttve/model/VEFrame;->getFrame()Lcom/ss/android/ttve/model/VEFrame$FrameBase;

    move-result-object v1

    check-cast v1, Lcom/ss/android/ttve/model/VEFrame$ByteArrayFrame;

    invoke-virtual {v1}, Lcom/ss/android/ttve/model/VEFrame$ByteArrayFrame;->getByteArray()[B

    move-result-object v1

    invoke-virtual {p0}, Lcom/ss/android/ttve/model/VEFrame;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/ss/android/ttve/model/VEFrame;->getHeight()I

    move-result p0

    const/4 v3, -0x3

    invoke-direct {v0, v1, v3, v2, p0}, Lcom/ss/android/medialib/camera/ImageFrame;-><init>([BIII)V

    :cond_7b
    return-object v0
.end method
