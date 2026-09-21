.class public Lcom/transsion/camera/adapter/CameraResultsCustomImpl;
.super Lcom/transsion/camera/adapter/CameraResults;
.source "SourceFile"


# static fields
.field private static final DEFAULT_THUMBNAIL_SIZE:Landroid/util/Size;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 18
    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x90

    const/16 v2, 0xc0

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Lcom/transsion/camera/adapter/CameraResultsCustomImpl;->DEFAULT_THUMBNAIL_SIZE:Landroid/util/Size;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraResults;-><init>()V

    .line 21
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraResults;->resetAll()V

    .line 22
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraResultsCustomImpl;->applyConstantValue()V

    .line 23
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraResultsCustomImpl;->applyDefaultValue()V

    .line 24
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraResultsCustomImpl;->generateDateTime()V

    return-void
.end method

.method private applyConstantValue()V
    .registers 2

    .line 28
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/adapter/CameraResults;->setMake(Ljava/lang/String;)V

    .line 29
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/adapter/CameraResults;->setModel(Ljava/lang/String;)V

    .line 30
    const-string v0, "0220"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/adapter/CameraResults;->setExifVersion(Ljava/lang/String;)V

    const/4 v0, 0x6

    .line 31
    invoke-virtual {p0, v0}, Lcom/transsion/camera/adapter/CameraResults;->setCompression(S)V

    return-void
.end method

.method private applyDefaultValue()V
    .registers 2

    .line 35
    sget-object v0, Lcom/transsion/camera/adapter/CameraResultsCustomImpl;->DEFAULT_THUMBNAIL_SIZE:Landroid/util/Size;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/adapter/CameraResults;->setThumbnailSize(Landroid/util/Size;)V

    const/16 v0, 0x64

    .line 36
    invoke-virtual {p0, v0}, Lcom/transsion/camera/adapter/CameraResults;->setThumbnailQuality(B)V

    return-void
.end method

.method private generateDateTime()V
    .registers 4

    .line 40
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy:MM:dd kk:mm:ss"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 42
    invoke-virtual {p0, v0}, Lcom/transsion/camera/adapter/CameraResults;->setDateTime(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0, v0}, Lcom/transsion/camera/adapter/CameraResults;->setDateTimeOriginal(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0, v0}, Lcom/transsion/camera/adapter/CameraResults;->setDateTimeDigitized(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public updateDateTime(J)V
    .registers 6

    .line 48
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy:MM:dd kk:mm:ss"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 50
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraResults;->setDateTime(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraResults;->setDateTimeOriginal(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraResults;->setDateTimeDigitized(Ljava/lang/String;)V

    return-void
.end method

.method public updateFlashState(Z)V
    .registers 2

    .line 78
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraResults;->setFlash(S)V

    return-void
.end method

.method public updateIsoSpeedRatings(S)V
    .registers 2

    .line 82
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraResults;->setIsoSpeedRatings(S)V

    return-void
.end method

.method public updateLocation(Landroid/location/Location;)V
    .registers 4

    if-eqz p1, :cond_17

    .line 57
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/adapter/CameraResults;->setGpsLatitude(D)V

    .line 58
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/adapter/CameraResults;->setGpsLongitude(D)V

    .line 59
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/adapter/CameraResults;->setGpsTimeStamp(J)V

    :cond_17
    return-void
.end method

.method public updateOrientation(I)V
    .registers 2

    int-to-short p1, p1

    .line 64
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraResults;->setOrientation(S)V

    return-void
.end method

.method public updateThumbnailSize(Landroid/graphics/Bitmap;)V
    .registers 4

    if-eqz p1, :cond_12

    .line 69
    new-instance v0, Landroid/util/Size;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/transsion/camera/adapter/CameraResults;->setThumbnailSize(Landroid/util/Size;)V

    :cond_12
    return-void
.end method
