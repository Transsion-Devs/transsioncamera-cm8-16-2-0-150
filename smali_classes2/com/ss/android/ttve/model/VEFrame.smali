.class public Lcom/ss/android/ttve/model/VEFrame;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/ttve/model/VEFrame$TextureFrame;,
        Lcom/ss/android/ttve/model/VEFrame$IntArrayFrame;,
        Lcom/ss/android/ttve/model/VEFrame$ByteArrayFrame;,
        Lcom/ss/android/ttve/model/VEFrame$ByteBufferFrame;,
        Lcom/ss/android/ttve/model/VEFrame$YUVPlansFrame;,
        Lcom/ss/android/ttve/model/VEFrame$FrameBase;,
        Lcom/ss/android/ttve/model/VEFrame$Operation;,
        Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ss/android/ttve/model/VEFrame;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "VEFrame"


# instance fields
.field protected format:Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;

.field protected fromFrontCamera:Z

.field protected height:I

.field protected mInternalFrame:Lcom/ss/android/ttve/model/VEFrame$FrameBase;

.field private mMetaDataMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected rotation:I

.field protected timeStamp:J

.field protected width:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 479
    new-instance v0, Lcom/ss/android/ttve/model/VEFrame$1;

    invoke-direct {v0}, Lcom/ss/android/ttve/model/VEFrame$1;-><init>()V

    sput-object v0, Lcom/ss/android/ttve/model/VEFrame;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIJLcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;)V
    .registers 8

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    sget-object v0, Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;->TEPixFmt_YUV420P:Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;

    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lcom/ss/android/ttve/model/VEFrame;->mMetaDataMap:Ljava/util/HashMap;

    .line 83
    iput p1, p0, Lcom/ss/android/ttve/model/VEFrame;->width:I

    .line 84
    iput p2, p0, Lcom/ss/android/ttve/model/VEFrame;->height:I

    .line 85
    iput p3, p0, Lcom/ss/android/ttve/model/VEFrame;->rotation:I

    .line 86
    iput-wide p4, p0, Lcom/ss/android/ttve/model/VEFrame;->timeStamp:J

    .line 87
    iput-object p6, p0, Lcom/ss/android/ttve/model/VEFrame;->format:Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    .line 468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    sget-object v0, Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;->TEPixFmt_Count:Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;

    iput-object v0, p0, Lcom/ss/android/ttve/model/VEFrame;->format:Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;

    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lcom/ss/android/ttve/model/VEFrame;->mMetaDataMap:Ljava/util/HashMap;

    .line 469
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_12

    goto :goto_18

    .line 470
    :cond_12
    invoke-static {}, Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;->values()[Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;

    move-result-object v0

    aget-object v0, v0, v1

    :goto_18
    iput-object v0, p0, Lcom/ss/android/ttve/model/VEFrame;->format:Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;

    .line 471
    const-class v0, Lcom/ss/android/ttve/model/VEFrame$FrameBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ss/android/ttve/model/VEFrame$FrameBase;

    iput-object v0, p0, Lcom/ss/android/ttve/model/VEFrame;->mInternalFrame:Lcom/ss/android/ttve/model/VEFrame$FrameBase;

    .line 472
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ss/android/ttve/model/VEFrame;->rotation:I

    .line 473
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ss/android/ttve/model/VEFrame;->width:I

    .line 474
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ss/android/ttve/model/VEFrame;->height:I

    .line 475
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/ttve/model/VEFrame;->timeStamp:J

    .line 476
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_48

    const/4 p1, 0x1

    goto :goto_49

    :cond_48
    const/4 p1, 0x0

    :goto_49
    iput-boolean p1, p0, Lcom/ss/android/ttve/model/VEFrame;->fromFrontCamera:Z

    return-void
.end method

.method public static allocateFrame(I)Ljava/nio/ByteBuffer;
    .registers 2

    .line 492
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static createByteArrayFrame([BIIIJLcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;)Lcom/ss/android/ttve/model/VEFrame;
    .registers 14

    .line 281
    new-instance v0, Lcom/ss/android/ttve/model/VEFrame;

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/ss/android/ttve/model/VEFrame;-><init>(IIIJLcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;)V

    .line 282
    new-instance p1, Lcom/ss/android/ttve/model/VEFrame$ByteArrayFrame;

    invoke-direct {p1, p0}, Lcom/ss/android/ttve/model/VEFrame$ByteArrayFrame;-><init>([B)V

    iput-object p1, v0, Lcom/ss/android/ttve/model/VEFrame;->mInternalFrame:Lcom/ss/android/ttve/model/VEFrame$FrameBase;

    return-object v0
.end method

.method public static createByteBufferFrame(Landroid/graphics/Bitmap;J)Lcom/ss/android/ttve/model/VEFrame;
    .registers 11

    if-eqz p0, :cond_33

    .line 246
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_33

    .line 247
    :cond_9
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    .line 248
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 249
    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 250
    new-instance v1, Lcom/ss/android/ttve/model/VEFrame;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    sget-object v7, Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;->TEPixFmt_RGBA8:Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;

    move-wide v5, p1

    invoke-direct/range {v1 .. v7}, Lcom/ss/android/ttve/model/VEFrame;-><init>(IIIJLcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;)V

    .line 251
    new-instance p0, Lcom/ss/android/ttve/model/VEFrame$ByteBufferFrame;

    invoke-direct {p0, v0}, Lcom/ss/android/ttve/model/VEFrame$ByteBufferFrame;-><init>(Ljava/nio/ByteBuffer;)V

    iput-object p0, v1, Lcom/ss/android/ttve/model/VEFrame;->mInternalFrame:Lcom/ss/android/ttve/model/VEFrame$FrameBase;

    return-object v1

    :cond_33
    :goto_33
    const/4 p0, 0x0

    return-object p0
.end method

.method private static createByteBufferFrame(Ljava/nio/ByteBuffer;IIIJI)Lcom/ss/android/ttve/model/VEFrame;
    .registers 8

    .line 267
    invoke-static {}, Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;->values()[Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;

    move-result-object v0

    aget-object p6, v0, p6

    invoke-static/range {p0 .. p6}, Lcom/ss/android/ttve/model/VEFrame;->createByteBufferFrame(Ljava/nio/ByteBuffer;IIIJLcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;)Lcom/ss/android/ttve/model/VEFrame;

    move-result-object p0

    return-object p0
.end method

.method public static createByteBufferFrame(Ljava/nio/ByteBuffer;IIIJLcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;)Lcom/ss/android/ttve/model/VEFrame;
    .registers 14

    .line 235
    new-instance v0, Lcom/ss/android/ttve/model/VEFrame;

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/ss/android/ttve/model/VEFrame;-><init>(IIIJLcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;)V

    .line 236
    new-instance p1, Lcom/ss/android/ttve/model/VEFrame$ByteBufferFrame;

    invoke-direct {p1, p0}, Lcom/ss/android/ttve/model/VEFrame$ByteBufferFrame;-><init>(Ljava/nio/ByteBuffer;)V

    iput-object p1, v0, Lcom/ss/android/ttve/model/VEFrame;->mInternalFrame:Lcom/ss/android/ttve/model/VEFrame$FrameBase;

    return-object v0
.end method

.method public static createIntArrayFrame([IIIIJLcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;)Lcom/ss/android/ttve/model/VEFrame;
    .registers 14

    .line 297
    new-instance v0, Lcom/ss/android/ttve/model/VEFrame;

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/ss/android/ttve/model/VEFrame;-><init>(IIIJLcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;)V

    .line 298
    new-instance p1, Lcom/ss/android/ttve/model/VEFrame$IntArrayFrame;

    invoke-direct {p1, p0}, Lcom/ss/android/ttve/model/VEFrame$IntArrayFrame;-><init>([I)V

    iput-object p1, v0, Lcom/ss/android/ttve/model/VEFrame;->mInternalFrame:Lcom/ss/android/ttve/model/VEFrame$FrameBase;

    return-object v0
.end method

.method public static createTextureFrame(Landroid/opengl/EGLContext;IIIIJLcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;)Lcom/ss/android/ttve/model/VEFrame;
    .registers 15

    .line 314
    new-instance v0, Lcom/ss/android/ttve/model/VEFrame;

    move v1, p2

    move v2, p3

    move v3, p4

    move-wide v4, p5

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/ss/android/ttve/model/VEFrame;-><init>(IIIJLcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;)V

    .line 315
    new-instance p2, Lcom/ss/android/ttve/model/VEFrame$TextureFrame;

    invoke-direct {p2, p0, p1}, Lcom/ss/android/ttve/model/VEFrame$TextureFrame;-><init>(Landroid/opengl/EGLContext;I)V

    iput-object p2, v0, Lcom/ss/android/ttve/model/VEFrame;->mInternalFrame:Lcom/ss/android/ttve/model/VEFrame$FrameBase;

    return-object v0
.end method

.method public static createYUVPlanFrame(Lcom/ss/android/ttve/model/TEPlane;IIIJLcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;)Lcom/ss/android/ttve/model/VEFrame;
    .registers 14

    .line 219
    new-instance v0, Lcom/ss/android/ttve/model/VEFrame;

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/ss/android/ttve/model/VEFrame;-><init>(IIIJLcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;)V

    .line 220
    new-instance p1, Lcom/ss/android/ttve/model/VEFrame$YUVPlansFrame;

    invoke-direct {p1, p0}, Lcom/ss/android/ttve/model/VEFrame$YUVPlansFrame;-><init>(Lcom/ss/android/ttve/model/TEPlane;)V

    iput-object p1, v0, Lcom/ss/android/ttve/model/VEFrame;->mInternalFrame:Lcom/ss/android/ttve/model/VEFrame$FrameBase;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public dumpImageToPath(Ljava/lang/String;)V
    .registers 8

    .line 496
    iget-object v0, p0, Lcom/ss/android/ttve/model/VEFrame;->mInternalFrame:Lcom/ss/android/ttve/model/VEFrame$FrameBase;

    const-string v1, "VEFrame"

    if-nez v0, :cond_c

    .line 497
    const-string p0, "dump image failed! internal frame is null!"

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 502
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/ss/android/ttve/model/VEFrame;->width:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/ss/android/ttve/model/VEFrame;->height:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 503
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 505
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_VEFrame"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 507
    sget-object v0, Lcom/ss/android/ttve/model/VEFrame$2;->$SwitchMap$com$ss$android$ttve$model$VEFrame$ETEPixelFormat:[I

    iget-object v2, p0, Lcom/ss/android/ttve/model/VEFrame;->format:Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    const-string v3, "Start to dump VEFrame to "

    if-eq v0, v2, :cond_a7

    const/4 v2, 0x2

    if-eq v0, v2, :cond_7c

    .line 519
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unexpected dump image format: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/ss/android/ttve/model/VEFrame;->format:Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 514
    :cond_7c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_JPEG.jpeg"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 515
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    invoke-virtual {p0}, Lcom/ss/android/ttve/model/VEFrame;->getJpegData()[B

    move-result-object p0

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VEImageUtils;->saveJPEGToPath([BLjava/lang/String;)V

    return-void

    .line 509
    :cond_a7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_YUV420.yuv"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    invoke-virtual {p0}, Lcom/ss/android/ttve/model/VEFrame;->getYUVPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    iget v1, p0, Lcom/ss/android/ttve/model/VEFrame;->width:I

    iget p0, p0, Lcom/ss/android/ttve/model/VEFrame;->height:I

    invoke-static {v0, v1, p0, p1}, Lcom/ss/android/vesdk/VEImageUtils;->saveYUVToPath([Landroid/media/Image$Plane;IILjava/lang/String;)V

    return-void
.end method

.method public getFormat()Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;
    .registers 1

    .line 332
    iget-object p0, p0, Lcom/ss/android/ttve/model/VEFrame;->format:Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;

    return-object p0
.end method

.method public getFormatOrdinal()I
    .registers 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 341
    iget-object p0, p0, Lcom/ss/android/ttve/model/VEFrame;->format:Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    return p0
.end method

.method public getFrame()Lcom/ss/android/ttve/model/VEFrame$FrameBase;
    .registers 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 350
    iget-object p0, p0, Lcom/ss/android/ttve/model/VEFrame;->mInternalFrame:Lcom/ss/android/ttve/model/VEFrame$FrameBase;

    return-object p0
.end method

.method public getHeight()I
    .registers 1

    .line 374
    iget p0, p0, Lcom/ss/android/ttve/model/VEFrame;->height:I

    return p0
.end method

.method public getJpegData()[B
    .registers 6

    .line 412
    iget-object v0, p0, Lcom/ss/android/ttve/model/VEFrame;->mInternalFrame:Lcom/ss/android/ttve/model/VEFrame$FrameBase;

    const-string v1, "VEFrame"

    const/4 v2, 0x0

    if-nez v0, :cond_d

    .line 413
    const-string p0, "get jpeg data failed, no internal frame!"

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 417
    :cond_d
    iget-object v3, p0, Lcom/ss/android/ttve/model/VEFrame;->format:Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;

    sget-object v4, Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;->TEPIXEL_FORMAT_JPEG:Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;

    if-eq v3, v4, :cond_2a

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get jpeg data failed, internal frame format: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/ss/android/ttve/model/VEFrame;->format:Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 422
    :cond_2a
    instance-of p0, v0, Lcom/ss/android/ttve/model/VEFrame$ByteArrayFrame;

    if-eqz p0, :cond_35

    .line 423
    check-cast v0, Lcom/ss/android/ttve/model/VEFrame$ByteArrayFrame;

    .line 424
    invoke-virtual {v0}, Lcom/ss/android/ttve/model/VEFrame$ByteArrayFrame;->getByteArray()[B

    move-result-object p0

    return-object p0

    :cond_35
    return-object v2
.end method

.method public getMetaData()Ljava/util/HashMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 449
    iget-object p0, p0, Lcom/ss/android/ttve/model/VEFrame;->mMetaDataMap:Ljava/util/HashMap;

    return-object p0
.end method

.method public getRotation()I
    .registers 1

    .line 358
    iget p0, p0, Lcom/ss/android/ttve/model/VEFrame;->rotation:I

    return p0
.end method

.method public getTimeStamp()J
    .registers 3

    .line 382
    iget-wide v0, p0, Lcom/ss/android/ttve/model/VEFrame;->timeStamp:J

    return-wide v0
.end method

.method public getWidth()I
    .registers 1

    .line 366
    iget p0, p0, Lcom/ss/android/ttve/model/VEFrame;->width:I

    return p0
.end method

.method public getYUVPlanes()[Landroid/media/Image$Plane;
    .registers 3

    .line 431
    iget-object p0, p0, Lcom/ss/android/ttve/model/VEFrame;->mInternalFrame:Lcom/ss/android/ttve/model/VEFrame$FrameBase;

    const/4 v0, 0x0

    if-nez p0, :cond_d

    .line 432
    const-string p0, "VEFrame"

    const-string v1, "get yuv data failed, no internal frame!"

    invoke-static {p0, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 436
    :cond_d
    instance-of v1, p0, Lcom/ss/android/ttve/model/VEFrame$YUVPlansFrame;

    if-eqz v1, :cond_18

    .line 437
    check-cast p0, Lcom/ss/android/ttve/model/VEFrame$YUVPlansFrame;

    .line 438
    invoke-virtual {p0}, Lcom/ss/android/ttve/model/VEFrame$YUVPlansFrame;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p0

    return-object p0

    :cond_18
    return-object v0
.end method

.method public isFromFrontCamera()Z
    .registers 1

    .line 324
    iget-boolean p0, p0, Lcom/ss/android/ttve/model/VEFrame;->fromFrontCamera:Z

    return p0
.end method

.method public setFromFrontCamera(Z)V
    .registers 2

    .line 320
    iput-boolean p1, p0, Lcom/ss/android/ttve/model/VEFrame;->fromFrontCamera:Z

    return-void
.end method

.method public setMetaData(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 445
    iput-object p1, p0, Lcom/ss/android/ttve/model/VEFrame;->mMetaDataMap:Ljava/util/HashMap;

    return-void
.end method

.method public toBitmap()Landroid/graphics/Bitmap;
    .registers 4

    .line 388
    iget-object v0, p0, Lcom/ss/android/ttve/model/VEFrame;->mInternalFrame:Lcom/ss/android/ttve/model/VEFrame$FrameBase;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 392
    :cond_6
    instance-of v1, v0, Lcom/ss/android/ttve/model/VEFrame$ByteBufferFrame;

    if-eqz v1, :cond_29

    .line 393
    iget-object v1, p0, Lcom/ss/android/ttve/model/VEFrame;->format:Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;

    sget-object v2, Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;->TEPixFmt_RGBA8:Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;

    if-ne v1, v2, :cond_46

    iget v1, p0, Lcom/ss/android/ttve/model/VEFrame;->rotation:I

    if-nez v1, :cond_46

    .line 394
    check-cast v0, Lcom/ss/android/ttve/model/VEFrame$ByteBufferFrame;

    iget-object v0, v0, Lcom/ss/android/ttve/model/VEFrame$ByteBufferFrame;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 395
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 396
    iget v1, p0, Lcom/ss/android/ttve/model/VEFrame;->width:I

    iget p0, p0, Lcom/ss/android/ttve/model/VEFrame;->height:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, p0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 397
    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    return-object p0

    .line 400
    :cond_29
    instance-of v1, v0, Lcom/ss/android/ttve/model/VEFrame$IntArrayFrame;

    if-eqz v1, :cond_46

    .line 401
    iget-object v1, p0, Lcom/ss/android/ttve/model/VEFrame;->format:Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;

    sget-object v2, Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;->TEPixFmt_RGBA8:Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;

    if-ne v1, v2, :cond_46

    iget v1, p0, Lcom/ss/android/ttve/model/VEFrame;->rotation:I

    if-nez v1, :cond_46

    .line 402
    check-cast v0, Lcom/ss/android/ttve/model/VEFrame$IntArrayFrame;

    iget-object v0, v0, Lcom/ss/android/ttve/model/VEFrame$IntArrayFrame;->intArray:[I

    .line 403
    iget v1, p0, Lcom/ss/android/ttve/model/VEFrame;->width:I

    iget p0, p0, Lcom/ss/android/ttve/model/VEFrame;->height:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, p0, v2}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 408
    :cond_46
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Conversion to bitmap is not supported!!!"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 459
    iget-object v0, p0, Lcom/ss/android/ttve/model/VEFrame;->format:Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;

    if-nez v0, :cond_6

    const/4 v0, -0x1

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    :goto_a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 460
    iget-object v0, p0, Lcom/ss/android/ttve/model/VEFrame;->mInternalFrame:Lcom/ss/android/ttve/model/VEFrame$FrameBase;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 461
    iget p2, p0, Lcom/ss/android/ttve/model/VEFrame;->rotation:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 462
    iget p2, p0, Lcom/ss/android/ttve/model/VEFrame;->width:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 463
    iget p2, p0, Lcom/ss/android/ttve/model/VEFrame;->height:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 464
    iget-wide v0, p0, Lcom/ss/android/ttve/model/VEFrame;->timeStamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 465
    iget-boolean p0, p0, Lcom/ss/android/ttve/model/VEFrame;->fromFrontCamera:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
