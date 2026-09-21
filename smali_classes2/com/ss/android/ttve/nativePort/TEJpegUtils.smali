.class public Lcom/ss/android/ttve/nativePort/TEJpegUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 14
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->loadLibrary()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calBestSampleSize(IIII)I
    .registers 7

    if-lez p0, :cond_2a

    if-lez p1, :cond_2a

    if-lez p2, :cond_2a

    if-gtz p3, :cond_9

    goto :goto_2a

    :cond_9
    if-le p2, p3, :cond_e

    move v2, p3

    move p3, p2

    move p2, v2

    :cond_e
    if-le p0, p1, :cond_13

    move v2, p3

    move p3, p2

    move p2, v2

    :cond_13
    int-to-float p0, p0

    int-to-float p2, p2

    div-float/2addr p0, p2

    float-to-double v0, p0

    .line 42
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p0, v0

    int-to-float p1, p1

    int-to-float p2, p3

    div-float/2addr p1, p2

    float-to-double p1, p1

    .line 43
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    .line 42
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :cond_2a
    :goto_2a
    const/4 p0, -0x1

    return p0
.end method

.method public static calBestSampleSize2(IIII)I
    .registers 8

    const/4 v0, -0x1

    if-lez p0, :cond_46

    if-lez p1, :cond_46

    if-lez p2, :cond_46

    if-gtz p3, :cond_a

    goto :goto_46

    :cond_a
    if-le p2, p3, :cond_f

    move v3, p3

    move p3, p2

    move p2, v3

    :cond_f
    if-le p0, p1, :cond_14

    move v3, p3

    move p3, p2

    move p2, v3

    :cond_14
    int-to-float p0, p0

    int-to-float p2, p2

    div-float/2addr p0, p2

    float-to-double v1, p0

    .line 72
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int p0, v1

    int-to-float p1, p1

    int-to-float p2, p3

    div-float/2addr p1, p2

    float-to-double p1, p1

    .line 73
    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    double-to-int p1, p1

    .line 72
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/4 p1, 0x2

    if-ge p0, p1, :cond_2e

    return v0

    :cond_2e
    int-to-double p0, p0

    .line 77
    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    const-wide/high16 p2, 0x4000000000000000L    # 2.0

    invoke-static {p2, p3}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    double-to-int p0, p0

    int-to-double p0, p0

    .line 78
    invoke-static {p2, p3, p0, p1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    double-to-int p0, p0

    return p0

    :cond_46
    :goto_46
    return v0
.end method

.method public static native compressToJPEG(Landroid/graphics/Bitmap;ILjava/lang/String;)V
.end method

.method public static native compressToJPEG2([BIIILjava/lang/String;)V
.end method

.method public static native decompressJPEG(Ljava/lang/String;I)Lcom/ss/android/medialib/camera/ImageFrame;
.end method
