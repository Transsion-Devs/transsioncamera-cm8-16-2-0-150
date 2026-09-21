.class public final Lcom/transsion/camera/utils/bitmap_recycle/MemorySizeCalculator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/utils/bitmap_recycle/MemorySizeCalculator$Builder;,
        Lcom/transsion/camera/utils/bitmap_recycle/MemorySizeCalculator$ScreenDimensions;,
        Lcom/transsion/camera/utils/bitmap_recycle/MemorySizeCalculator$DisplayMetricsScreenDimensions;
    }
.end annotation


# instance fields
.field private final arrayPoolSize:I

.field private final bitmapPoolSize:I

.field private final context:Landroid/content/Context;

.field private final memoryCacheSize:I


# direct methods
.method constructor <init>(Lcom/transsion/camera/utils/bitmap_recycle/MemorySizeCalculator$Builder;)V
    .registers 8

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iget-object v0, p1, Lcom/transsion/camera/utils/bitmap_recycle/MemorySizeCalculator$Builder;->context:Landroid/content/Context;

    iput-object v0, p0, Lcom/transsion/camera/utils/bitmap_recycle/MemorySizeCalculator;->context:Landroid/content/Context;

    .line 37
    iget-object v0, p1, Lcom/transsion/camera/utils/bitmap_recycle/MemorySizeCalculator$Builder;->activityManager:Landroid/app/ActivityManager;

    invoke-static {v0}, Lcom/transsion/camera/utils/bitmap_recycle/MemorySizeCalculator;->isLowMemoryDevice(Landroid/app/ActivityManager;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 38
    iget v0, p1, Lcom/transsion/camera/utils/bitmap_recycle/MemorySizeCalculator$Builder;->arrayPoolSizeBytes:I

    div-int/lit8 v0, v0, 0x2

    goto :goto_16

    .line 39
    :cond_14
    iget v0, p1, Lcom/transsion/camera/utils/bitmap_recycle/MemorySizeCalculator$Builder;->arrayPoolSizeBytes:I

    :goto_16
    iput v0, p0, Lcom/transsion/camera/utils/bitmap_recycle/MemorySizeCalculator;->arrayPoolSize:I

    .line 40
    iget-object v1, p1, Lcom/transsion/camera/utils/bitmap_recycle/MemorySizeCalculator$Builder;->activityManager:Landroid/app/ActivityManager;

    iget v2, p1, Lcom/transsion/camera/utils/bitmap_recycle/MemorySizeCalculator$Builder;->maxSizeMultiplier:F

    iget v3, p1, Lcom/transsion/camera/utils/bitmap_recycle/MemorySizeCalculator$Builder;->lowMemoryMaxSizeMultiplier:F

    .line 41
    invoke-static {v1, v2, v3}, Lcom/transsion/camera/utils/bitmap_recycle/MemorySizeCalculator;->getMaxSize(Landroid/app/ActivityManager;FF)I

    move-result v1

    .line 44
    iget-object v2, p1, Lcom/transsion/camera/utils/bitmap_recycle/MemorySizeCalculator$Builder;->screenDimensions:Lcom/transsion/camera/utils/bitmap_recycle/MemorySizeCalculator$ScreenDimensions;

    invoke-interface {v2}, Lcom/transsion/camera/utils/bitmap_recycle/MemorySizeCalculator$ScreenDimensions;->getWidthPixels()I

    move-result v2

    .line 45
    iget-object v3, p1, Lcom/transsion/camera/utils/bitmap_recycle/MemorySizeCalculator$Builder;->screenDimensions:Lcom/transsion/camera/utils/bitmap_recycle/MemorySizeCalculator$ScreenDimensions;

    invoke-interface {v3}, Lcom/transsion/camera/utils/bitmap_recycle/MemorySizeCalculator$ScreenDimensions;->getHeightPixels()I

    move-result v3

    mul-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x4

    int-to-float v2, v2

    .line 48
    iget v3, p1, Lcom/transsion/camera/utils/bitmap_recycle/MemorySizeCalculator$Builder;->bitmapPoolScreens:F

    mul-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 50
    iget v4, p1, Lcom/transsion/camera/utils/bitmap_recycle/MemorySizeCalculator$Builder;->memoryCacheScreens:F

    mul-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    sub-int v4, v1, v0

    add-int v5, v2, v3

    if-gt v5, v4, :cond_4b

    .line 54
    iput v2, p0, Lcom/transsion/camera/utils/bitmap_recycle/MemorySizeCalculator;->memoryCacheSize:I

    .line 55
    iput v3, p0, Lcom/transsion/camera/utils/bitmap_recycle/MemorySizeCalculator;->bitmapPoolSize:I

    goto :goto_62

    :cond_4b
    int-to-float v2, v4

    .line 57
    iget v3, p1, Lcom/transsion/camera/utils/bitmap_recycle/MemorySizeCalculator$Builder;->bitmapPoolScreens:F

    iget v4, p1, Lcom/transsion/camera/utils/bitmap_recycle/MemorySizeCalculator$Builder;->memoryCacheScreens:F

    add-float/2addr v3, v4

    div-float/2addr v2, v3

    mul-float/2addr v4, v2

    .line 58
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Lcom/transsion/camera/utils/bitmap_recycle/MemorySizeCalculator;->memoryCacheSize:I

    .line 59
    iget v3, p1, Lcom/transsion/camera/utils/bitmap_recycle/MemorySizeCalculator$Builder;->bitmapPoolScreens:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/utils/bitmap_recycle/MemorySizeCalculator;->bitmapPoolSize:I

    :goto_62
    const/4 v2, 0x3

    .line 62
    const-string v3, "MemorySizeCalculator"

    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_d4

    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calculation complete, Calculated memory cache size: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/transsion/camera/utils/bitmap_recycle/MemorySizeCalculator;->memoryCacheSize:I

    .line 67
    invoke-direct {p0, v4}, Lcom/transsion/camera/utils/bitmap_recycle/MemorySizeCalculator;->toMb(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", pool size: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/transsion/camera/utils/bitmap_recycle/MemorySizeCalculator;->bitmapPoolSize:I

    .line 69
    invoke-direct {p0, v4}, Lcom/transsion/camera/utils/bitmap_recycle/MemorySizeCalculator;->toMb(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", byte array size: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-direct {p0, v0}, Lcom/transsion/camera/utils/bitmap_recycle/MemorySizeCalculator;->toMb(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", memory class limited? "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-le v5, v1, :cond_a1

    const/4 v0, 0x1

    goto :goto_a2

    :cond_a1
    const/4 v0, 0x0

    :goto_a2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", max size: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-direct {p0, v1}, Lcom/transsion/camera/utils/bitmap_recycle/MemorySizeCalculator;->toMb(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", memoryClass: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p1, Lcom/transsion/camera/utils/bitmap_recycle/MemorySizeCalculator$Builder;->activityManager:Landroid/app/ActivityManager;

    .line 77
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", isLowMemoryDevice: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p1, Lcom/transsion/camera/utils/bitmap_recycle/MemorySizeCalculator$Builder;->activityManager:Landroid/app/ActivityManager;

    .line 79
    invoke-static {p0}, Lcom/transsion/camera/utils/bitmap_recycle/MemorySizeCalculator;->isLowMemoryDevice(Landroid/app/ActivityManager;)Z

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 63
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d4
    return-void
.end method

.method private static getMaxSize(Landroid/app/ActivityManager;FF)I
    .registers 5

    .line 100
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    const/high16 v1, 0x100000

    mul-int/2addr v0, v1

    .line 101
    invoke-static {p0}, Lcom/transsion/camera/utils/bitmap_recycle/MemorySizeCalculator;->isLowMemoryDevice(Landroid/app/ActivityManager;)Z

    move-result p0

    int-to-float v0, v0

    if-eqz p0, :cond_f

    move p1, p2

    :cond_f
    mul-float/2addr v0, p1

    .line 102
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method static isLowMemoryDevice(Landroid/app/ActivityManager;)Z
    .registers 1

    .line 117
    invoke-virtual {p0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result p0

    return p0
.end method

.method private toMb(I)Ljava/lang/String;
    .registers 4

    .line 107
    iget-object p0, p0, Lcom/transsion/camera/utils/bitmap_recycle/MemorySizeCalculator;->context:Landroid/content/Context;

    int-to-long v0, p1

    invoke-static {p0, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getBitmapPoolSize()I
    .registers 1

    .line 90
    iget p0, p0, Lcom/transsion/camera/utils/bitmap_recycle/MemorySizeCalculator;->bitmapPoolSize:I

    return p0
.end method
