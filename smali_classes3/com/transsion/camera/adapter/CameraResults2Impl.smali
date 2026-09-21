.class Lcom/transsion/camera/adapter/CameraResults2Impl;
.super Lcom/transsion/camera/adapter/CameraResults;
.source "SourceFile"


# static fields
.field private static final APERTURE_VALUE_PRECISION:Ljava/lang/Long;

.field private static final DEFAULT_THUMBNAIL_SIZE:Landroid/util/Size;

.field private static final FOCAL_LENGTH_PRECISION:Ljava/lang/Long;

.field private static final F_NUMBER_PRECISION:Ljava/lang/Long;

.field private static final LOG_2:D

.field private static final NS_TO_S:Ljava/lang/Long;

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final TIME_FORMAT:Ljava/text/SimpleDateFormat;

.field private static final sComponentsConfiguration:[S


# instance fields
.field private mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 32
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "CameraResults2Impl"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/adapter/CameraResults2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-wide/32 v0, 0x3b9aca00

    .line 37
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/adapter/CameraResults2Impl;->NS_TO_S:Ljava/lang/Long;

    const-wide/16 v0, 0x64

    .line 38
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/adapter/CameraResults2Impl;->F_NUMBER_PRECISION:Ljava/lang/Long;

    .line 39
    sput-object v0, Lcom/transsion/camera/adapter/CameraResults2Impl;->APERTURE_VALUE_PRECISION:Ljava/lang/Long;

    const-wide/16 v0, 0x3e8

    .line 41
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/adapter/CameraResults2Impl;->FOCAL_LENGTH_PRECISION:Ljava/lang/Long;

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 43
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sput-wide v0, Lcom/transsion/camera/adapter/CameraResults2Impl;->LOG_2:D

    .line 48
    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x90

    const/16 v2, 0xc0

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Lcom/transsion/camera/adapter/CameraResults2Impl;->DEFAULT_THUMBNAIL_SIZE:Landroid/util/Size;

    const/4 v0, 0x3

    .line 50
    new-array v0, v0, [S

    fill-array-data v0, :array_4c

    sput-object v0, Lcom/transsion/camera/adapter/CameraResults2Impl;->sComponentsConfiguration:[S

    .line 56
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy:MM:dd kk:mm:ss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/transsion/camera/adapter/CameraResults2Impl;->TIME_FORMAT:Ljava/text/SimpleDateFormat;

    return-void

    :array_4c
    .array-data 2
        0x1s
        0x2s
        0x3s
    .end array-data
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraResults2Impl;-><init>(Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .registers 2

    .line 65
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraResults;-><init>()V

    .line 66
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraResults;->resetAll()V

    .line 67
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraResults2Impl;->applyConstantValue()V

    .line 68
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraResults2Impl;->applyDefaultValue()V

    .line 69
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraResults2Impl;->generateDateTime()V

    .line 70
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraResults2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    return-void
.end method

.method private applyConstantValue()V
    .registers 7

    .line 129
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/adapter/CameraResults;->setMake(Ljava/lang/String;)V

    .line 130
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/adapter/CameraResults;->setModel(Ljava/lang/String;)V

    .line 131
    const-string v0, "Transsion Camera Application"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/adapter/CameraResults;->setSoftware(Ljava/lang/String;)V

    .line 132
    const-string v0, "0220"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/adapter/CameraResults;->setExifVersion(Ljava/lang/String;)V

    const/4 v0, 0x6

    .line 133
    invoke-virtual {p0, v0}, Lcom/transsion/camera/adapter/CameraResults;->setCompression(S)V

    .line 134
    sget-object v1, Lcom/transsion/camera/adapter/CameraResults2Impl;->sComponentsConfiguration:[S

    invoke-virtual {p0, v1}, Lcom/transsion/camera/adapter/CameraResults;->setComponentsConfiguration([S)V

    const/4 v1, 0x0

    .line 135
    invoke-virtual {p0, v1}, Lcom/transsion/camera/adapter/CameraResults;->setExposureProgram(S)V

    const/4 v1, 0x2

    .line 136
    invoke-virtual {p0, v1}, Lcom/transsion/camera/adapter/CameraResults;->setYCBCRPositioning(S)V

    const/16 v2, 0x48

    const-wide/16 v3, 0x1

    .line 137
    invoke-direct {p0, v2, v3, v4}, Lcom/transsion/camera/adapter/CameraResults2Impl;->rational(IJ)Lcom/transsion/camera/utils/exif/Rational;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/transsion/camera/adapter/CameraResults;->setXResolution(Lcom/transsion/camera/utils/exif/Rational;)V

    .line 138
    invoke-direct {p0, v2, v3, v4}, Lcom/transsion/camera/adapter/CameraResults2Impl;->rational(IJ)Lcom/transsion/camera/utils/exif/Rational;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/transsion/camera/adapter/CameraResults;->setYResolution(Lcom/transsion/camera/utils/exif/Rational;)V

    .line 139
    invoke-virtual {p0, v1}, Lcom/transsion/camera/adapter/CameraResults;->setResolutionUnit(S)V

    .line 140
    invoke-virtual {p0, v0}, Lcom/transsion/camera/adapter/CameraResults;->setPhotometricInterpretation(S)V

    return-void
.end method

.method private applyDefaultValue()V
    .registers 2

    .line 144
    sget-object v0, Lcom/transsion/camera/adapter/CameraResults2Impl;->DEFAULT_THUMBNAIL_SIZE:Landroid/util/Size;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/adapter/CameraResults;->setThumbnailSize(Landroid/util/Size;)V

    const/16 v0, 0x64

    .line 145
    invoke-virtual {p0, v0}, Lcom/transsion/camera/adapter/CameraResults;->setThumbnailQuality(B)V

    return-void
.end method

.method private extractApertureValue(Landroid/hardware/camera2/CaptureResult;)V
    .registers 6

    .line 171
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->LENS_APERTURE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    if-eqz p1, :cond_26

    .line 173
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraResults2Impl;->log2(F)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    .line 174
    sget-object p1, Lcom/transsion/camera/adapter/CameraResults2Impl;->APERTURE_VALUE_PRECISION:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/transsion/camera/adapter/CameraResults2Impl;->rational(DJ)Lcom/transsion/camera/utils/exif/Rational;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraResults;->setApertureValue(Lcom/transsion/camera/utils/exif/Rational;)V

    :cond_26
    return-void
.end method

.method private extractBestMomentValue(Landroid/hardware/camera2/CaptureResult;)V
    .registers 3

    .line 95
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraResults2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getBestMomentDetectResult(Landroid/hardware/camera2/CaptureResult;)I

    move-result p1

    .line 96
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraResults;->setBestMomentDetectResult(I)V

    return-void
.end method

.method private extractExposureMode(Landroid/hardware/camera2/CaptureResult;)V
    .registers 3

    .line 195
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_11

    .line 197
    invoke-virtual {p1}, Ljava/lang/Integer;->shortValue()S

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraResults;->setExposureMode(S)V

    :cond_11
    return-void
.end method

.method private extractExposureTime(Landroid/hardware/camera2/CaptureResult;)V
    .registers 6

    .line 202
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_1b

    .line 204
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sget-object p1, Lcom/transsion/camera/adapter/CameraResults2Impl;->NS_TO_S:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/transsion/camera/adapter/CameraResults2Impl;->ratio(JJ)Lcom/transsion/camera/utils/exif/Rational;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraResults;->setExposureTime(Lcom/transsion/camera/utils/exif/Rational;)V

    :cond_1b
    return-void
.end method

.method private extractFNumber(Landroid/hardware/camera2/CaptureResult;)V
    .registers 4

    .line 164
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->LENS_APERTURE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    if-eqz p1, :cond_1b

    .line 166
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    sget-object v0, Lcom/transsion/camera/adapter/CameraResults2Impl;->F_NUMBER_PRECISION:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/camera/adapter/CameraResults2Impl;->rational(FJ)Lcom/transsion/camera/utils/exif/Rational;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraResults;->setFNumber(Lcom/transsion/camera/utils/exif/Rational;)V

    :cond_1b
    return-void
.end method

.method private extractFlash(Landroid/hardware/camera2/CaptureResult;)V
    .registers 3

    .line 186
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->FLASH_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_13

    const/4 v0, 0x3

    .line 188
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne v0, p1, :cond_13

    const/4 p1, 0x1

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    .line 191
    :goto_14
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraResults;->setFlash(S)V

    return-void
.end method

.method private extractFlickerDetectBanding(Landroid/hardware/camera2/CaptureResult;)V
    .registers 3

    .line 104
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraResults2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getFlickerDetectBanding(Landroid/hardware/camera2/CaptureResult;)I

    move-result p1

    .line 105
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraResults;->setFlickerDetectBandingResult(I)V

    return-void
.end method

.method private extractFocalLength(Landroid/hardware/camera2/CaptureResult;)V
    .registers 4

    .line 179
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    if-eqz p1, :cond_1b

    .line 181
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    sget-object v0, Lcom/transsion/camera/adapter/CameraResults2Impl;->FOCAL_LENGTH_PRECISION:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/camera/adapter/CameraResults2Impl;->rational(FJ)Lcom/transsion/camera/utils/exif/Rational;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraResults;->setFocalLength(Lcom/transsion/camera/utils/exif/Rational;)V

    :cond_1b
    return-void
.end method

.method private extractFrameNumber(Landroid/hardware/camera2/CaptureResult;)V
    .registers 4

    .line 100
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/adapter/CameraResults;->setFrameNumber(J)V

    return-void
.end method

.method private extractIsoSpeedRatings(Landroid/hardware/camera2/CaptureResult;)V
    .registers 3

    .line 238
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_11

    .line 240
    invoke-virtual {p1}, Ljava/lang/Integer;->shortValue()S

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraResults;->setIsoSpeedRatings(S)V

    :cond_11
    return-void
.end method

.method private extractOrientation(Landroid/hardware/camera2/CaptureResult;)V
    .registers 3

    .line 157
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_11

    .line 159
    invoke-virtual {p1}, Ljava/lang/Integer;->shortValue()S

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraResults;->setOrientation(S)V

    :cond_11
    return-void
.end method

.method private extractThumbnailQuality(Landroid/hardware/camera2/CaptureResult;)V
    .registers 3

    .line 229
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->JPEG_THUMBNAIL_QUALITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Byte;

    if-eqz p1, :cond_12

    .line 231
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraResults;->setThumbnailQuality(B)V

    return-void

    :cond_12
    const/16 p1, 0x64

    .line 233
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraResults;->setThumbnailQuality(B)V

    return-void
.end method

.method private extractThumbnailSize(Landroid/hardware/camera2/CaptureResult;)V
    .registers 3

    .line 220
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Size;

    if-eqz p1, :cond_e

    .line 222
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraResults;->setThumbnailSize(Landroid/util/Size;)V

    return-void

    .line 224
    :cond_e
    sget-object p1, Lcom/transsion/camera/adapter/CameraResults2Impl;->DEFAULT_THUMBNAIL_SIZE:Landroid/util/Size;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraResults;->setThumbnailSize(Landroid/util/Size;)V

    return-void
.end method

.method private extractWhiteBalance(Landroid/hardware/camera2/CaptureResult;)V
    .registers 3

    .line 209
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_16

    .line 212
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-eq v0, p1, :cond_12

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 215
    :goto_13
    invoke-virtual {p0, v0}, Lcom/transsion/camera/adapter/CameraResults;->setWhiteBalance(S)V

    :cond_16
    return-void
.end method

.method private generateDateTime()V
    .registers 4

    .line 149
    sget-object v0, Lcom/transsion/camera/adapter/CameraResults2Impl;->TIME_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 151
    invoke-virtual {p0, v0}, Lcom/transsion/camera/adapter/CameraResults;->setDateTime(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0, v0}, Lcom/transsion/camera/adapter/CameraResults;->setDateTimeOriginal(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0, v0}, Lcom/transsion/camera/adapter/CameraResults;->setDateTimeDigitized(Ljava/lang/String;)V

    return-void
.end method

.method private log2(F)Ljava/lang/Double;
    .registers 4

    float-to-double p0, p1

    .line 109
    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    sget-wide v0, Lcom/transsion/camera/adapter/CameraResults2Impl;->LOG_2:D

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method private ratio(JJ)Lcom/transsion/camera/utils/exif/Rational;
    .registers 5

    .line 125
    new-instance p0, Lcom/transsion/camera/utils/exif/Rational;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/utils/exif/Rational;-><init>(JJ)V

    return-object p0
.end method

.method private rational(DJ)Lcom/transsion/camera/utils/exif/Rational;
    .registers 7

    .line 121
    new-instance p0, Lcom/transsion/camera/utils/exif/Rational;

    long-to-double v0, p3

    mul-double/2addr p1, v0

    double-to-long p1, p1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/utils/exif/Rational;-><init>(JJ)V

    return-object p0
.end method

.method private rational(FJ)Lcom/transsion/camera/utils/exif/Rational;
    .registers 6

    .line 117
    new-instance p0, Lcom/transsion/camera/utils/exif/Rational;

    long-to-float v0, p2

    mul-float/2addr p1, v0

    float-to-long v0, p1

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/transsion/camera/utils/exif/Rational;-><init>(JJ)V

    return-object p0
.end method

.method private rational(IJ)Lcom/transsion/camera/utils/exif/Rational;
    .registers 6

    .line 113
    new-instance p0, Lcom/transsion/camera/utils/exif/Rational;

    int-to-long v0, p1

    mul-long/2addr v0, p2

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/transsion/camera/utils/exif/Rational;-><init>(JJ)V

    return-object p0
.end method


# virtual methods
.method extractResults(Landroid/hardware/camera2/CaptureResult;)V
    .registers 3

    .line 74
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraResults2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    if-nez v0, :cond_c

    .line 75
    sget-object p0, Lcom/transsion/camera/adapter/CameraResults2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "extractResults mPlatformCamera2 is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 78
    :cond_c
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraResults2Impl;->extractOrientation(Landroid/hardware/camera2/CaptureResult;)V

    .line 79
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraResults2Impl;->extractFNumber(Landroid/hardware/camera2/CaptureResult;)V

    .line 80
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraResults2Impl;->extractApertureValue(Landroid/hardware/camera2/CaptureResult;)V

    .line 81
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraResults2Impl;->extractFocalLength(Landroid/hardware/camera2/CaptureResult;)V

    .line 82
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraResults2Impl;->extractFlash(Landroid/hardware/camera2/CaptureResult;)V

    .line 83
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraResults2Impl;->extractExposureMode(Landroid/hardware/camera2/CaptureResult;)V

    .line 84
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraResults2Impl;->extractExposureTime(Landroid/hardware/camera2/CaptureResult;)V

    .line 85
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraResults2Impl;->extractWhiteBalance(Landroid/hardware/camera2/CaptureResult;)V

    .line 86
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraResults2Impl;->extractThumbnailSize(Landroid/hardware/camera2/CaptureResult;)V

    .line 87
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraResults2Impl;->extractThumbnailQuality(Landroid/hardware/camera2/CaptureResult;)V

    .line 88
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraResults2Impl;->extractIsoSpeedRatings(Landroid/hardware/camera2/CaptureResult;)V

    .line 89
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraResults2Impl;->extractBestMomentValue(Landroid/hardware/camera2/CaptureResult;)V

    .line 90
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraResults2Impl;->extractFrameNumber(Landroid/hardware/camera2/CaptureResult;)V

    .line 91
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraResults2Impl;->extractFlickerDetectBanding(Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method
