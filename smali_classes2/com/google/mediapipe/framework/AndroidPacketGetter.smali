.class public final Lcom/google/mediapipe/framework/AndroidPacketGetter;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyRgbToBitmap(Lcom/google/mediapipe/framework/Packet;Landroid/graphics/Bitmap;)V
    .registers 8

    .line 56
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    const-string v1, "Input bitmap should be mutable."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 58
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_15

    move v0, v3

    goto :goto_16

    :cond_15
    move v0, v2

    :goto_16
    const-string v1, "Input bitmap should be of type ARGB_8888."

    .line 57
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 59
    invoke-static {p0}, Lcom/google/mediapipe/framework/PacketGetter;->getImageWidth(Lcom/google/mediapipe/framework/Packet;)I

    move-result v0

    .line 60
    invoke-static {p0}, Lcom/google/mediapipe/framework/PacketGetter;->getImageHeight(Lcom/google/mediapipe/framework/Packet;)I

    move-result v1

    .line 61
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v4

    mul-int v5, v0, v1

    mul-int/lit8 v5, v5, 0x4

    if-ne v4, v5, :cond_2e

    move v2, v3

    :cond_2e
    const-string v3, "Input bitmap size mismatch."

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 62
    invoke-static {p0, p1, v0, v1}, Lcom/google/mediapipe/framework/AndroidPacketGetter;->copyRgbToBitmap(Lcom/google/mediapipe/framework/Packet;Landroid/graphics/Bitmap;II)V

    return-void
.end method

.method private static copyRgbToBitmap(Lcom/google/mediapipe/framework/Packet;Landroid/graphics/Bitmap;II)V
    .registers 4

    mul-int/2addr p2, p3

    mul-int/lit8 p2, p2, 0x4

    .line 67
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 68
    invoke-static {p0, p2}, Lcom/google/mediapipe/framework/PacketGetter;->getRgbaFromRgb(Lcom/google/mediapipe/framework/Packet;Ljava/nio/ByteBuffer;)Z

    .line 69
    invoke-virtual {p1, p2}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    return-void
.end method

.method public static copyRgbaToBitmap(Lcom/google/mediapipe/framework/Packet;Landroid/graphics/Bitmap;)V
    .registers 8

    .line 95
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    const-string v1, "Input bitmap should be mutable."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 97
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_15

    move v0, v3

    goto :goto_16

    :cond_15
    move v0, v2

    :goto_16
    const-string v1, "Input bitmap should be of type ARGB_8888."

    .line 96
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 98
    invoke-static {p0}, Lcom/google/mediapipe/framework/PacketGetter;->getImageWidth(Lcom/google/mediapipe/framework/Packet;)I

    move-result v0

    .line 99
    invoke-static {p0}, Lcom/google/mediapipe/framework/PacketGetter;->getImageHeight(Lcom/google/mediapipe/framework/Packet;)I

    move-result v1

    .line 100
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v4

    mul-int v5, v0, v1

    mul-int/lit8 v5, v5, 0x4

    if-ne v4, v5, :cond_2e

    move v2, v3

    :cond_2e
    const-string v3, "Input bitmap size mismatch."

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 101
    invoke-static {p0, p1, v0, v1}, Lcom/google/mediapipe/framework/AndroidPacketGetter;->copyRgbaToBitmap(Lcom/google/mediapipe/framework/Packet;Landroid/graphics/Bitmap;II)V

    return-void
.end method

.method private static copyRgbaToBitmap(Lcom/google/mediapipe/framework/Packet;Landroid/graphics/Bitmap;II)V
    .registers 6

    mul-int v0, p2, p3

    mul-int/lit8 v0, v0, 0x4

    .line 107
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 108
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 111
    invoke-static {p0, v0}, Lcom/google/mediapipe/framework/PacketGetter;->getImageData(Lcom/google/mediapipe/framework/Packet;Ljava/nio/ByteBuffer;)Z

    move-result p0

    .line 115
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 117
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 118
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    .line 114
    const-string p3, "Got error from getImageData, returning null Bitmap. Image width %d, height %d"

    invoke-static {v1, p3, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 112
    invoke-static {p0, p2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 119
    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    return-void
.end method

.method public static getBitmapFromRgb(Lcom/google/mediapipe/framework/Packet;)Landroid/graphics/Bitmap;
    .registers 4

    .line 41
    invoke-static {p0}, Lcom/google/mediapipe/framework/PacketGetter;->getImageWidth(Lcom/google/mediapipe/framework/Packet;)I

    move-result v0

    .line 42
    invoke-static {p0}, Lcom/google/mediapipe/framework/PacketGetter;->getImageHeight(Lcom/google/mediapipe/framework/Packet;)I

    move-result v1

    .line 43
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 44
    invoke-static {p0, v2, v0, v1}, Lcom/google/mediapipe/framework/AndroidPacketGetter;->copyRgbToBitmap(Lcom/google/mediapipe/framework/Packet;Landroid/graphics/Bitmap;II)V

    return-object v2
.end method

.method public static getBitmapFromRgba(Lcom/google/mediapipe/framework/Packet;)Landroid/graphics/Bitmap;
    .registers 4

    .line 80
    invoke-static {p0}, Lcom/google/mediapipe/framework/PacketGetter;->getImageWidth(Lcom/google/mediapipe/framework/Packet;)I

    move-result v0

    .line 81
    invoke-static {p0}, Lcom/google/mediapipe/framework/PacketGetter;->getImageHeight(Lcom/google/mediapipe/framework/Packet;)I

    move-result v1

    .line 82
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 83
    invoke-static {p0, v2, v0, v1}, Lcom/google/mediapipe/framework/AndroidPacketGetter;->copyRgbaToBitmap(Lcom/google/mediapipe/framework/Packet;Landroid/graphics/Bitmap;II)V

    return-object v2
.end method
