.class public abstract Lcom/transsion/camera/utils/ExifUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static createExifInterface(Ljava/io/InputStream;)Landroid/media/ExifInterface;
    .registers 2

    .line 124
    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p0}, Landroid/media/ExifInterface;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    return-object v0

    :catch_6
    move-exception p0

    .line 126
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static createExifInterface(Ljava/lang/String;)Landroid/media/ExifInterface;
    .registers 3

    const/4 v0, 0x0

    .line 115
    :try_start_1
    invoke-static {p0}, Lcom/transsion/camera/utils/ExifUtils;->isValid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_c} :catch_d

    return-object v1

    :catch_d
    move-exception p0

    goto :goto_10

    :cond_f
    return-object v0

    .line 117
    :goto_10
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public static createExifInterface([B)Landroid/media/ExifInterface;
    .registers 3

    .line 106
    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Landroid/media/ExifInterface;-><init>(Ljava/io/InputStream;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    :catch_b
    move-exception p0

    .line 108
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getExifStringValue([BLjava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_16

    .line 29
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_16

    .line 32
    :cond_a
    invoke-static {p0}, Lcom/transsion/camera/utils/ExifUtils;->createExifInterface([B)Landroid/media/ExifInterface;

    move-result-object p0

    if-nez p0, :cond_11

    return-object v0

    .line 36
    :cond_11
    invoke-virtual {p0, p1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_16
    :goto_16
    return-object v0
.end method

.method public static getOrientationFromExif(Landroid/media/ExifInterface;)I
    .registers 3

    .line 63
    const-string v0, "Orientation"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1e

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1b

    const/4 v0, 0x6

    if-eq p0, v0, :cond_18

    const/16 v0, 0x8

    if-eq p0, v0, :cond_15

    return v1

    :cond_15
    const/16 p0, 0x10e

    return p0

    :cond_18
    const/16 p0, 0x5a

    return p0

    :cond_1b
    const/16 p0, 0xb4

    return p0

    :cond_1e
    return v1
.end method

.method public static getOrientationFromExif([B)I
    .registers 1

    .line 40
    invoke-static {p0}, Lcom/transsion/camera/utils/ExifUtils;->createExifInterface([B)Landroid/media/ExifInterface;

    move-result-object p0

    .line 41
    invoke-static {p0}, Lcom/transsion/camera/utils/ExifUtils;->getOrientationFromExif(Landroid/media/ExifInterface;)I

    move-result p0

    return p0
.end method

.method public static getSizeFromExif(Landroid/media/ExifInterface;)Landroid/util/Size;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_9

    .line 97
    new-instance p0, Landroid/util/Size;

    invoke-direct {p0, v0, v0}, Landroid/util/Size;-><init>(II)V

    return-object p0

    .line 99
    :cond_9
    const-string v1, "ImageWidth"

    invoke-virtual {p0, v1, v0}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v1

    .line 100
    const-string v2, "ImageLength"

    invoke-virtual {p0, v2, v0}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p0

    .line 101
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v1, p0}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public static getSizeFromExif([B)Landroid/util/Size;
    .registers 1

    .line 91
    invoke-static {p0}, Lcom/transsion/camera/utils/ExifUtils;->createExifInterface([B)Landroid/media/ExifInterface;

    move-result-object p0

    .line 92
    invoke-static {p0}, Lcom/transsion/camera/utils/ExifUtils;->getSizeFromExif(Landroid/media/ExifInterface;)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method private static isValid(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 135
    :cond_4
    const-string v1, "./"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    const-string v1, ".."

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    const-string v1, "~/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p0, 0x1

    return p0

    :cond_1f
    :goto_1f
    return v0
.end method

.method public static updateExifForAnalytics([B)V
    .registers 8

    if-nez p0, :cond_3

    goto :goto_9

    .line 48
    :cond_3
    invoke-static {p0}, Lcom/transsion/camera/utils/ExifUtils;->createExifInterface([B)Landroid/media/ExifInterface;

    move-result-object p0

    if-nez p0, :cond_a

    :goto_9
    return-void

    .line 52
    :cond_a
    new-instance v0, Lcom/transsion/camera/utils/analytics/CaptureExif;

    invoke-direct {v0}, Lcom/transsion/camera/utils/analytics/CaptureExif;-><init>()V

    .line 53
    const-string v1, "ExposureMode"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/transsion/camera/utils/analytics/CaptureExif;->mExposureMode:I

    .line 54
    const-string v1, "ExposureTime"

    const-wide/16 v3, 0x0

    invoke-virtual {p0, v1, v3, v4}, Landroid/media/ExifInterface;->getAttributeDouble(Ljava/lang/String;D)D

    move-result-wide v5

    iput-wide v5, v0, Lcom/transsion/camera/utils/analytics/CaptureExif;->mExposureTime:D

    .line 55
    const-string v1, "ExposureBiasValue"

    invoke-virtual {p0, v1, v3, v4}, Landroid/media/ExifInterface;->getAttributeDouble(Ljava/lang/String;D)D

    move-result-wide v3

    iput-wide v3, v0, Lcom/transsion/camera/utils/analytics/CaptureExif;->mExposureBiasValue:D

    .line 56
    const-string v1, "Flash"

    invoke-virtual {p0, v1, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/transsion/camera/utils/analytics/CaptureExif;->mFlash:I

    .line 57
    const-string v1, "ISOSpeedRatings"

    invoke-virtual {p0, v1, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/transsion/camera/utils/analytics/CaptureExif;->mISOSpeed:I

    .line 58
    const-string v1, "OffsetTimeOriginal"

    invoke-virtual {p0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/transsion/camera/utils/analytics/CaptureExif;->mTimeOffset:Ljava/lang/String;

    .line 59
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setCaptureExif(Lcom/transsion/camera/utils/analytics/CaptureExif;)V

    return-void
.end method
