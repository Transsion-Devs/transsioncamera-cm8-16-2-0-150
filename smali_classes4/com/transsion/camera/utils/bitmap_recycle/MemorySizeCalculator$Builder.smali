.class public final Lcom/transsion/camera/utils/bitmap_recycle/MemorySizeCalculator$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/utils/bitmap_recycle/MemorySizeCalculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field static final BITMAP_POOL_TARGET_SCREENS:I


# instance fields
.field activityManager:Landroid/app/ActivityManager;

.field arrayPoolSizeBytes:I

.field bitmapPoolScreens:F

.field final context:Landroid/content/Context;

.field lowMemoryMaxSizeMultiplier:F

.field maxSizeMultiplier:F

.field memoryCacheScreens:F

.field screenDimensions:Lcom/transsion/camera/utils/bitmap_recycle/MemorySizeCalculator$ScreenDimensions;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x1

    .line 138
    sput v0, Lcom/transsion/camera/utils/bitmap_recycle/MemorySizeCalculator$Builder;->BITMAP_POOL_TARGET_SCREENS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x40000000    # 2.0f

    .line 151
    iput v0, p0, Lcom/transsion/camera/utils/bitmap_recycle/MemorySizeCalculator$Builder;->memoryCacheScreens:F

    .line 152
    sget v0, Lcom/transsion/camera/utils/bitmap_recycle/MemorySizeCalculator$Builder;->BITMAP_POOL_TARGET_SCREENS:I

    int-to-float v0, v0

    iput v0, p0, Lcom/transsion/camera/utils/bitmap_recycle/MemorySizeCalculator$Builder;->bitmapPoolScreens:F

    const v0, 0x3ecccccd    # 0.4f

    .line 153
    iput v0, p0, Lcom/transsion/camera/utils/bitmap_recycle/MemorySizeCalculator$Builder;->maxSizeMultiplier:F

    const v0, 0x3ea8f5c3    # 0.33f

    .line 154
    iput v0, p0, Lcom/transsion/camera/utils/bitmap_recycle/MemorySizeCalculator$Builder;->lowMemoryMaxSizeMultiplier:F

    const/high16 v0, 0x400000

    .line 155
    iput v0, p0, Lcom/transsion/camera/utils/bitmap_recycle/MemorySizeCalculator$Builder;->arrayPoolSizeBytes:I

    .line 158
    iput-object p1, p0, Lcom/transsion/camera/utils/bitmap_recycle/MemorySizeCalculator$Builder;->context:Landroid/content/Context;

    .line 159
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/transsion/camera/utils/bitmap_recycle/MemorySizeCalculator$Builder;->activityManager:Landroid/app/ActivityManager;

    .line 160
    new-instance v0, Lcom/transsion/camera/utils/bitmap_recycle/MemorySizeCalculator$DisplayMetricsScreenDimensions;

    .line 161
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/transsion/camera/utils/bitmap_recycle/MemorySizeCalculator$DisplayMetricsScreenDimensions;-><init>(Landroid/util/DisplayMetrics;)V

    iput-object v0, p0, Lcom/transsion/camera/utils/bitmap_recycle/MemorySizeCalculator$Builder;->screenDimensions:Lcom/transsion/camera/utils/bitmap_recycle/MemorySizeCalculator$ScreenDimensions;

    .line 167
    iget-object p1, p0, Lcom/transsion/camera/utils/bitmap_recycle/MemorySizeCalculator$Builder;->activityManager:Landroid/app/ActivityManager;

    invoke-static {p1}, Lcom/transsion/camera/utils/bitmap_recycle/MemorySizeCalculator;->isLowMemoryDevice(Landroid/app/ActivityManager;)Z

    move-result p1

    if-eqz p1, :cond_40

    const/4 p1, 0x0

    .line 168
    iput p1, p0, Lcom/transsion/camera/utils/bitmap_recycle/MemorySizeCalculator$Builder;->bitmapPoolScreens:F

    :cond_40
    return-void
.end method


# virtual methods
.method public build()Lcom/transsion/camera/utils/bitmap_recycle/MemorySizeCalculator;
    .registers 2

    .line 251
    new-instance v0, Lcom/transsion/camera/utils/bitmap_recycle/MemorySizeCalculator;

    invoke-direct {v0, p0}, Lcom/transsion/camera/utils/bitmap_recycle/MemorySizeCalculator;-><init>(Lcom/transsion/camera/utils/bitmap_recycle/MemorySizeCalculator$Builder;)V

    return-object v0
.end method
