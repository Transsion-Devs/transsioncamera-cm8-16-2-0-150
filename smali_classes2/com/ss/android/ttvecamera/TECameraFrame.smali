.class public Lcom/ss/android/ttvecamera/TECameraFrame;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/ttvecamera/TECameraFrame$Metadata;,
        Lcom/ss/android/ttvecamera/TECameraFrame$RawFrame;,
        Lcom/ss/android/ttvecamera/TECameraFrame$TextureFrame;,
        Lcom/ss/android/ttvecamera/TECameraFrame$YUVBytesFrame;,
        Lcom/ss/android/ttvecamera/TECameraFrame$YUVPlansFrame;,
        Lcom/ss/android/ttvecamera/TECameraFrame$BufferFrame;,
        Lcom/ss/android/ttvecamera/TECameraFrame$CameraFrameBase;,
        Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;
    }
.end annotation


# static fields
.field public static final FRAME_TYPE_BUFFER:I = 0x2

.field public static final FRAME_TYPE_DEFAULT:I = 0x0

.field public static final FRAME_TYPE_RAW:I = 0x4

.field public static final FRAME_TYPE_TEXTURE:I = 0x1

.field public static final FRAME_TYPE_YUV_PLANS:I = 0x3

.field public static final TAG:Ljava/lang/String; = "TECameraFrame"


# instance fields
.field private mCameraFrameBase:Lcom/ss/android/ttvecamera/TECameraFrame$CameraFrameBase;

.field private mHeight:I

.field private mMetadata:Lcom/ss/android/ttvecamera/TECameraFrame$Metadata;

.field private mWidth:I

.field public mfTimestampNS:J


# direct methods
.method public constructor <init>(IIJ)V
    .registers 9

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    new-instance v0, Lcom/ss/android/ttvecamera/TECameraFrame$CameraFrameBase;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v1, v2, v3}, Lcom/ss/android/ttvecamera/TECameraFrame$CameraFrameBase;-><init>(IIJ)V

    iput-object v0, p0, Lcom/ss/android/ttvecamera/TECameraFrame;->mCameraFrameBase:Lcom/ss/android/ttvecamera/TECameraFrame$CameraFrameBase;

    .line 143
    iput p1, p0, Lcom/ss/android/ttvecamera/TECameraFrame;->mWidth:I

    .line 144
    iput p2, p0, Lcom/ss/android/ttvecamera/TECameraFrame;->mHeight:I

    .line 145
    iput-wide p3, p0, Lcom/ss/android/ttvecamera/TECameraFrame;->mfTimestampNS:J

    return-void
.end method

.method public constructor <init>(Lcom/ss/android/ttvecamera/TEPlane;Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;III)V
    .registers 8

    const-wide/16 v0, 0x0

    .line 170
    invoke-direct {p0, p3, p4, v0, v1}, Lcom/ss/android/ttvecamera/TECameraFrame;-><init>(IIJ)V

    const/4 p3, 0x0

    .line 171
    invoke-virtual {p0, p1, p5, p2, p3}, Lcom/ss/android/ttvecamera/TECameraFrame;->initYUVPlans(Lcom/ss/android/ttvecamera/TEPlane;ILcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;I)V

    return-void
.end method

.method public constructor <init>(Lcom/ss/android/ttvecamera/TEPlane;Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;IIILandroid/hardware/camera2/DngCreator;)V
    .registers 9

    const-wide/16 v0, 0x0

    .line 175
    invoke-direct {p0, p3, p4, v0, v1}, Lcom/ss/android/ttvecamera/TECameraFrame;-><init>(IIJ)V

    const/4 p4, 0x0

    move-object p3, p2

    move p2, p5

    move-object p5, p6

    .line 176
    invoke-virtual/range {p0 .. p5}, Lcom/ss/android/ttvecamera/TECameraFrame;->initRawPlans(Lcom/ss/android/ttvecamera/TEPlane;ILcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;ILandroid/hardware/camera2/DngCreator;)V

    return-void
.end method

.method public constructor <init>([BLcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;III)V
    .registers 8

    const-wide/16 v0, 0x0

    .line 165
    invoke-direct {p0, p3, p4, v0, v1}, Lcom/ss/android/ttvecamera/TECameraFrame;-><init>(IIJ)V

    const/4 p3, 0x0

    .line 166
    invoke-virtual {p0, p1, p5, p2, p3}, Lcom/ss/android/ttvecamera/TECameraFrame;->initBufferFrame([BILcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;I)V

    return-void
.end method

.method public static imageFormat2PixelFormat(II)Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;
    .registers 5

    const/4 v0, 0x2

    if-ne p1, v0, :cond_6

    .line 100
    sget-object p0, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;->PIXEL_FORMAT_OpenGL_OES:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    return-object p0

    :cond_6
    const/4 v0, 0x1

    const/16 v1, 0x2a

    const/16 v2, 0x29

    if-ne p1, v0, :cond_1a

    if-ne p0, v2, :cond_12

    .line 103
    sget-object p0, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;->PIXEL_FORMAT_OpenGL_RGB8:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    return-object p0

    :cond_12
    if-ne p0, v1, :cond_17

    .line 105
    sget-object p0, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;->PIXEL_FORMAT_OpenGL_RGBA8:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    return-object p0

    .line 131
    :cond_17
    sget-object p0, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;->PIXEL_FORMAT_Count:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    return-object p0

    :cond_1a
    if-nez p1, :cond_45

    const/16 p1, 0x11

    if-eq p0, p1, :cond_42

    const/16 p1, 0x23

    if-eq p0, p1, :cond_3f

    const/16 p1, 0x27

    if-eq p0, p1, :cond_3c

    const/16 p1, 0x100

    if-eq p0, p1, :cond_39

    if-eq p0, v2, :cond_36

    if-eq p0, v1, :cond_33

    .line 125
    sget-object p0, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;->PIXEL_FORMAT_Count:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    return-object p0

    .line 111
    :cond_33
    sget-object p0, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;->PIXEL_FORMAT_RGBA8:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    return-object p0

    .line 109
    :cond_36
    sget-object p0, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;->PIXEL_FORMAT_RGB8:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    return-object p0

    .line 121
    :cond_39
    sget-object p0, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;->PIXEL_FORMAT_JPEG:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    return-object p0

    .line 117
    :cond_3c
    sget-object p0, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;->PIXEL_FORMAT_YUV422P:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    return-object p0

    .line 115
    :cond_3f
    sget-object p0, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;->PIXEL_FORMAT_YUV420P:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    return-object p0

    .line 113
    :cond_42
    sget-object p0, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;->PIXEL_FORMAT_NV21:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    return-object p0

    .line 128
    :cond_45
    sget-object p0, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;->PIXEL_FORMAT_Count:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    return-object p0
.end method

.method public static pixelFormat2ImageFormat(Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;)I
    .registers 2

    .line 59
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraFrame$1;->$SwitchMap$com$ss$android$ttvecamera$TECameraFrame$ETEPixelFormat:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_26

    const/4 p0, 0x0

    return p0

    :pswitch_d
    const/16 p0, 0x100

    return p0

    :pswitch_10
    const/16 p0, 0x2a

    return p0

    :pswitch_13
    const/16 p0, 0x29

    return p0

    :pswitch_16
    const/16 p0, 0x27

    return p0

    :pswitch_19
    const/16 p0, 0x10

    return p0

    :pswitch_1c
    const/16 p0, 0x11

    return p0

    :pswitch_1f
    const p0, 0x32315659

    return p0

    :pswitch_23
    const/16 p0, 0x23

    return p0

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_23
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_d
    .end packed-switch
.end method


# virtual methods
.method public dumpImageToPath(Ljava/lang/String;)V
    .registers 8

    .line 541
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraFrame;->mCameraFrameBase:Lcom/ss/android/ttvecamera/TECameraFrame$CameraFrameBase;

    const-string v1, "TECameraFrame"

    if-nez v0, :cond_c

    .line 542
    const-string p0, "frame is null, dump failed!"

    invoke-static {v1, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 547
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraFrame;->getSize()Lcom/ss/android/ttvecamera/TEFrameSizei;

    move-result-object v3

    iget v3, v3, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraFrame;->getSize()Lcom/ss/android/ttvecamera/TEFrameSizei;

    move-result-object v3

    iget v3, v3, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 548
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 550
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_TECameraFrame"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 552
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraFrame$1;->$SwitchMap$com$ss$android$ttvecamera$TECameraFrame$ETEPixelFormat:[I

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraFrame;->getPixelFormat()Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    const-string v3, "Start to dump TECameraFrame to "

    if-eq v0, v2, :cond_b4

    const/16 v2, 0x9

    if-eq v0, v2, :cond_89

    .line 568
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unexpected dump image format: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraFrame;->getPixelFormat()Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 563
    :cond_89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_JPEG.jpeg"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 564
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraFrame;->getJpegData()[B

    move-result-object p0

    invoke-static {p0, p1}, Lcom/ss/android/ttvecamera/TECameraUtils;->saveJPEGToPath([BLjava/lang/String;)V

    return-void

    .line 554
    :cond_b4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_YUV420.yuv"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraFrame;->getPlans()Lcom/ss/android/ttvecamera/TEPlane;

    move-result-object v0

    if-eqz v0, :cond_f5

    .line 557
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraFrame;->getPlans()Lcom/ss/android/ttvecamera/TEPlane;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/ttvecamera/TEPlane;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraFrame;->getSize()Lcom/ss/android/ttvecamera/TEFrameSizei;

    move-result-object v1

    iget v1, v1, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraFrame;->getSize()Lcom/ss/android/ttvecamera/TEFrameSizei;

    move-result-object p0

    iget p0, p0, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    invoke-static {v0, v1, p0, p1}, Lcom/ss/android/ttvecamera/TECameraUtils;->saveYUVToPath([Landroid/media/Image$Plane;IILjava/lang/String;)V

    return-void

    .line 559
    :cond_f5
    const-string p0, "plane is null, dump failed!"

    invoke-static {v1, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getBufferData()[B
    .registers 2

    .line 208
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraFrame;->mCameraFrameBase:Lcom/ss/android/ttvecamera/TECameraFrame$CameraFrameBase;

    instance-of v0, p0, Lcom/ss/android/ttvecamera/TECameraFrame$BufferFrame;

    if-eqz v0, :cond_d

    .line 209
    check-cast p0, Lcom/ss/android/ttvecamera/TECameraFrame$BufferFrame;

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraFrame$BufferFrame;->getBufferData()[B

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public getBufferSize()I
    .registers 2

    .line 200
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraFrame;->mCameraFrameBase:Lcom/ss/android/ttvecamera/TECameraFrame$CameraFrameBase;

    instance-of v0, p0, Lcom/ss/android/ttvecamera/TECameraFrame$BufferFrame;

    if-eqz v0, :cond_d

    .line 201
    check-cast p0, Lcom/ss/android/ttvecamera/TECameraFrame$BufferFrame;

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraFrame$BufferFrame;->getBufferSize()I

    move-result p0

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public getFacing()I
    .registers 1

    .line 265
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraFrame;->mCameraFrameBase:Lcom/ss/android/ttvecamera/TECameraFrame$CameraFrameBase;

    iget p0, p0, Lcom/ss/android/ttvecamera/TECameraFrame$CameraFrameBase;->mFacing:I

    return p0
.end method

.method public getJpegData()[B
    .registers 5

    .line 521
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraFrame;->getPixelFormat()Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    move-result-object v0

    sget-object v1, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;->PIXEL_FORMAT_JPEG:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    const-string v2, "TECameraFrame"

    const/4 v3, 0x0

    if-eq v0, v1, :cond_29

    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current format is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraFrame;->getPixelFormat()Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", could not get jpeg data!"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 526
    :cond_29
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraFrame;->mCameraFrameBase:Lcom/ss/android/ttvecamera/TECameraFrame$CameraFrameBase;

    instance-of v0, p0, Lcom/ss/android/ttvecamera/TECameraFrame$BufferFrame;

    if-eqz v0, :cond_36

    .line 527
    check-cast p0, Lcom/ss/android/ttvecamera/TECameraFrame$BufferFrame;

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraFrame$BufferFrame;->getBufferData()[B

    move-result-object p0

    return-object p0

    .line 528
    :cond_36
    instance-of v0, p0, Lcom/ss/android/ttvecamera/TECameraFrame$YUVPlansFrame;

    if-eqz v0, :cond_52

    .line 529
    check-cast p0, Lcom/ss/android/ttvecamera/TECameraFrame$YUVPlansFrame;

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraFrame$YUVPlansFrame;->getPlane()Lcom/ss/android/ttvecamera/TEPlane;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ss/android/ttvecamera/TEPlane;->getPlaneBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 530
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 531
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    .line 532
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object v0

    .line 534
    :cond_52
    const-string p0, "Unexpected frame instance! Failed to get jpeg data."

    invoke-static {v2, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method public getMVPMatrix()[F
    .registers 2

    .line 241
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraFrame;->mCameraFrameBase:Lcom/ss/android/ttvecamera/TECameraFrame$CameraFrameBase;

    instance-of v0, p0, Lcom/ss/android/ttvecamera/TECameraFrame$TextureFrame;

    if-eqz v0, :cond_d

    .line 242
    check-cast p0, Lcom/ss/android/ttvecamera/TECameraFrame$TextureFrame;

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraFrame$TextureFrame;->getMVPMatrix()[F

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMetadata()Lcom/ss/android/ttvecamera/TECameraFrame$Metadata;
    .registers 1

    .line 153
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraFrame;->mMetadata:Lcom/ss/android/ttvecamera/TECameraFrame$Metadata;

    return-object p0
.end method

.method public getPixelFormat()Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;
    .registers 1

    .line 253
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraFrame;->mCameraFrameBase:Lcom/ss/android/ttvecamera/TECameraFrame$CameraFrameBase;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraFrame$CameraFrameBase;->mPixelFormat:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    return-object p0
.end method

.method public getPlans()Lcom/ss/android/ttvecamera/TEPlane;
    .registers 2

    .line 230
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraFrame;->mCameraFrameBase:Lcom/ss/android/ttvecamera/TECameraFrame$CameraFrameBase;

    instance-of v0, p0, Lcom/ss/android/ttvecamera/TECameraFrame$YUVPlansFrame;

    if-eqz v0, :cond_d

    .line 231
    check-cast p0, Lcom/ss/android/ttvecamera/TECameraFrame$YUVPlansFrame;

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraFrame$YUVPlansFrame;->getPlane()Lcom/ss/android/ttvecamera/TEPlane;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRotation()I
    .registers 1

    .line 237
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraFrame;->mCameraFrameBase:Lcom/ss/android/ttvecamera/TECameraFrame$CameraFrameBase;

    iget p0, p0, Lcom/ss/android/ttvecamera/TECameraFrame$CameraFrameBase;->mRotationRad:I

    return p0
.end method

.method public getSize()Lcom/ss/android/ttvecamera/TEFrameSizei;
    .registers 1

    .line 249
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraFrame;->mCameraFrameBase:Lcom/ss/android/ttvecamera/TECameraFrame$CameraFrameBase;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraFrame$CameraFrameBase;->mFrameSizei:Lcom/ss/android/ttvecamera/TEFrameSizei;

    return-object p0
.end method

.method public getTextureID()I
    .registers 2

    .line 216
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraFrame;->mCameraFrameBase:Lcom/ss/android/ttvecamera/TECameraFrame$CameraFrameBase;

    instance-of v0, p0, Lcom/ss/android/ttvecamera/TECameraFrame$TextureFrame;

    if-eqz v0, :cond_d

    .line 217
    check-cast p0, Lcom/ss/android/ttvecamera/TECameraFrame$TextureFrame;

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraFrame$TextureFrame;->getTextureID()I

    move-result p0

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public getTimeStampNS()J
    .registers 3

    .line 261
    iget-wide v0, p0, Lcom/ss/android/ttvecamera/TECameraFrame;->mfTimestampNS:J

    return-wide v0
.end method

.method public getType()I
    .registers 1

    .line 257
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraFrame;->mCameraFrameBase:Lcom/ss/android/ttvecamera/TECameraFrame$CameraFrameBase;

    iget p0, p0, Lcom/ss/android/ttvecamera/TECameraFrame$CameraFrameBase;->mType:I

    return p0
.end method

.method public initBufferFrame([BILcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;I)V
    .registers 14

    .line 180
    new-instance v0, Lcom/ss/android/ttvecamera/TECameraFrame$BufferFrame;

    iget v1, p0, Lcom/ss/android/ttvecamera/TECameraFrame;->mWidth:I

    iget v2, p0, Lcom/ss/android/ttvecamera/TECameraFrame;->mHeight:I

    iget-wide v3, p0, Lcom/ss/android/ttvecamera/TECameraFrame;->mfTimestampNS:J

    move-object v5, p1

    move v6, p2

    move-object v7, p3

    move v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/ss/android/ttvecamera/TECameraFrame$BufferFrame;-><init>(IIJ[BILcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;I)V

    iput-object v0, p0, Lcom/ss/android/ttvecamera/TECameraFrame;->mCameraFrameBase:Lcom/ss/android/ttvecamera/TECameraFrame$CameraFrameBase;

    return-void
.end method

.method public initRawPlans(Lcom/ss/android/ttvecamera/TEPlane;ILcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;ILandroid/hardware/camera2/DngCreator;)V
    .registers 16

    .line 192
    new-instance v0, Lcom/ss/android/ttvecamera/TECameraFrame$RawFrame;

    iget v1, p0, Lcom/ss/android/ttvecamera/TECameraFrame;->mWidth:I

    iget v2, p0, Lcom/ss/android/ttvecamera/TECameraFrame;->mHeight:I

    iget-wide v3, p0, Lcom/ss/android/ttvecamera/TECameraFrame;->mfTimestampNS:J

    move-object v5, p1

    move v6, p2

    move-object v7, p3

    move v8, p4

    move-object v9, p5

    invoke-direct/range {v0 .. v9}, Lcom/ss/android/ttvecamera/TECameraFrame$RawFrame;-><init>(IIJLcom/ss/android/ttvecamera/TEPlane;ILcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;ILandroid/hardware/camera2/DngCreator;)V

    iput-object v0, p0, Lcom/ss/android/ttvecamera/TECameraFrame;->mCameraFrameBase:Lcom/ss/android/ttvecamera/TECameraFrame$CameraFrameBase;

    return-void
.end method

.method public initTextureFrame(II[FLcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;I)V
    .registers 16

    .line 184
    new-instance v0, Lcom/ss/android/ttvecamera/TECameraFrame$TextureFrame;

    iget v1, p0, Lcom/ss/android/ttvecamera/TECameraFrame;->mWidth:I

    iget v2, p0, Lcom/ss/android/ttvecamera/TECameraFrame;->mHeight:I

    iget-wide v3, p0, Lcom/ss/android/ttvecamera/TECameraFrame;->mfTimestampNS:J

    move v5, p1

    move v6, p2

    move-object v7, p3

    move-object v8, p4

    move v9, p5

    invoke-direct/range {v0 .. v9}, Lcom/ss/android/ttvecamera/TECameraFrame$TextureFrame;-><init>(IIJII[FLcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;I)V

    iput-object v0, p0, Lcom/ss/android/ttvecamera/TECameraFrame;->mCameraFrameBase:Lcom/ss/android/ttvecamera/TECameraFrame$CameraFrameBase;

    return-void
.end method

.method public initYUVBytesPlans([BILcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;I)V
    .registers 14

    .line 196
    new-instance v0, Lcom/ss/android/ttvecamera/TECameraFrame$YUVBytesFrame;

    iget v1, p0, Lcom/ss/android/ttvecamera/TECameraFrame;->mWidth:I

    iget v2, p0, Lcom/ss/android/ttvecamera/TECameraFrame;->mHeight:I

    iget-wide v3, p0, Lcom/ss/android/ttvecamera/TECameraFrame;->mfTimestampNS:J

    move-object v5, p1

    move v6, p2

    move-object v7, p3

    move v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/ss/android/ttvecamera/TECameraFrame$YUVBytesFrame;-><init>(IIJ[BILcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;I)V

    iput-object v0, p0, Lcom/ss/android/ttvecamera/TECameraFrame;->mCameraFrameBase:Lcom/ss/android/ttvecamera/TECameraFrame$CameraFrameBase;

    return-void
.end method

.method public initYUVPlans(Lcom/ss/android/ttvecamera/TEPlane;ILcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;I)V
    .registers 14

    .line 188
    new-instance v0, Lcom/ss/android/ttvecamera/TECameraFrame$YUVPlansFrame;

    iget v1, p0, Lcom/ss/android/ttvecamera/TECameraFrame;->mWidth:I

    iget v2, p0, Lcom/ss/android/ttvecamera/TECameraFrame;->mHeight:I

    iget-wide v3, p0, Lcom/ss/android/ttvecamera/TECameraFrame;->mfTimestampNS:J

    move-object v5, p1

    move v6, p2

    move-object v7, p3

    move v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/ss/android/ttvecamera/TECameraFrame$YUVPlansFrame;-><init>(IIJLcom/ss/android/ttvecamera/TEPlane;ILcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;I)V

    iput-object v0, p0, Lcom/ss/android/ttvecamera/TECameraFrame;->mCameraFrameBase:Lcom/ss/android/ttvecamera/TECameraFrame$CameraFrameBase;

    return-void
.end method

.method public setMetadata(Lcom/ss/android/ttvecamera/TECameraFrame$Metadata;)V
    .registers 2

    .line 149
    iput-object p1, p0, Lcom/ss/android/ttvecamera/TECameraFrame;->mMetadata:Lcom/ss/android/ttvecamera/TECameraFrame$Metadata;

    return-void
.end method

.method public setTextureID(I)V
    .registers 3

    .line 224
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraFrame;->mCameraFrameBase:Lcom/ss/android/ttvecamera/TECameraFrame$CameraFrameBase;

    instance-of v0, p0, Lcom/ss/android/ttvecamera/TECameraFrame$TextureFrame;

    if-eqz v0, :cond_b

    .line 225
    check-cast p0, Lcom/ss/android/ttvecamera/TECameraFrame$TextureFrame;

    # setter for: Lcom/ss/android/ttvecamera/TECameraFrame$TextureFrame;->mTextureID:I
    invoke-static {p0, p1}, Lcom/ss/android/ttvecamera/TECameraFrame$TextureFrame;->access$002(Lcom/ss/android/ttvecamera/TECameraFrame$TextureFrame;I)I

    :cond_b
    return-void
.end method
