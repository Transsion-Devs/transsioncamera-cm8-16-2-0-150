.class public Lcom/transsion/camera/utils/bitmap_recycle/LruBitmapPool;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/utils/bitmap_recycle/BitmapPool;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/utils/bitmap_recycle/LruBitmapPool$NullBitmapTracker;,
        Lcom/transsion/camera/utils/bitmap_recycle/LruBitmapPool$BitmapTracker;
    }
.end annotation


# static fields
.field private static final DEFAULT_CONFIG:Landroid/graphics/Bitmap$Config;


# instance fields
.field private final allowedConfigs:Ljava/util/Set;

.field private currentSize:J

.field private evictions:I

.field private hits:I

.field private final initialMaxSize:J

.field private maxSize:J

.field private misses:I

.field private puts:I

.field private final strategy:Lcom/transsion/camera/utils/bitmap_recycle/LruPoolStrategy;

.field private final tracker:Lcom/transsion/camera/utils/bitmap_recycle/LruBitmapPool$BitmapTracker;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 28
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lcom/transsion/camera/utils/bitmap_recycle/LruBitmapPool;->DEFAULT_CONFIG:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>(J)V
    .registers 5

    .line 57
    invoke-static {}, Lcom/transsion/camera/utils/bitmap_recycle/LruBitmapPool;->getDefaultStrategy()Lcom/transsion/camera/utils/bitmap_recycle/LruPoolStrategy;

    move-result-object v0

    invoke-static {}, Lcom/transsion/camera/utils/bitmap_recycle/LruBitmapPool;->getDefaultAllowedConfigs()Ljava/util/Set;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/transsion/camera/utils/bitmap_recycle/LruBitmapPool;-><init>(JLcom/transsion/camera/utils/bitmap_recycle/LruPoolStrategy;Ljava/util/Set;)V

    return-void
.end method

.method constructor <init>(JLcom/transsion/camera/utils/bitmap_recycle/LruPoolStrategy;Ljava/util/Set;)V
    .registers 5

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-wide p1, p0, Lcom/transsion/camera/utils/bitmap_recycle/LruBitmapPool;->initialMaxSize:J

    .line 45
    iput-wide p1, p0, Lcom/transsion/camera/utils/bitmap_recycle/LruBitmapPool;->maxSize:J

    .line 46
    iput-object p3, p0, Lcom/transsion/camera/utils/bitmap_recycle/LruBitmapPool;->strategy:Lcom/transsion/camera/utils/bitmap_recycle/LruPoolStrategy;

    .line 47
    iput-object p4, p0, Lcom/transsion/camera/utils/bitmap_recycle/LruBitmapPool;->allowedConfigs:Ljava/util/Set;

    .line 48
    new-instance p1, Lcom/transsion/camera/utils/bitmap_recycle/LruBitmapPool$NullBitmapTracker;

    invoke-direct {p1}, Lcom/transsion/camera/utils/bitmap_recycle/LruBitmapPool$NullBitmapTracker;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/utils/bitmap_recycle/LruBitmapPool;->tracker:Lcom/transsion/camera/utils/bitmap_recycle/LruBitmapPool$BitmapTracker;

    return-void
.end method

.method private static assertNotHardwareConfig(Landroid/graphics/Bitmap$Config;)V
    .registers 4

    .line 187
    sget-object v0, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-eq p0, v0, :cond_5

    return-void

    .line 188
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot create a mutable Bitmap with config: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ". Consider setting Downsampler#ALLOW_HARDWARE_CONFIG to false in your RequestOptions and/or in GlideBuilder.setDefaultRequestOptions"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .registers 3

    if-eqz p2, :cond_3

    goto :goto_5

    .line 177
    :cond_3
    sget-object p2, Lcom/transsion/camera/utils/bitmap_recycle/LruBitmapPool;->DEFAULT_CONFIG:Landroid/graphics/Bitmap$Config;

    :goto_5
    invoke-static {p0, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private dump()V
    .registers 3

    .line 285
    const-string v0, "LruBitmapPool"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 286
    invoke-direct {p0}, Lcom/transsion/camera/utils/bitmap_recycle/LruBitmapPool;->dumpUnchecked()V

    :cond_c
    return-void
.end method

.method private dumpUnchecked()V
    .registers 4

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Hits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/utils/bitmap_recycle/LruBitmapPool;->hits:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", misses="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/utils/bitmap_recycle/LruBitmapPool;->misses:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", puts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/utils/bitmap_recycle/LruBitmapPool;->puts:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", evictions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/utils/bitmap_recycle/LruBitmapPool;->evictions:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", currentSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/camera/utils/bitmap_recycle/LruBitmapPool;->currentSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", maxSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/camera/utils/bitmap_recycle/LruBitmapPool;->maxSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\nStrategy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/utils/bitmap_recycle/LruBitmapPool;->strategy:Lcom/transsion/camera/utils/bitmap_recycle/LruPoolStrategy;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "LruBitmapPool"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private evict()V
    .registers 3

    .line 146
    iget-wide v0, p0, Lcom/transsion/camera/utils/bitmap_recycle/LruBitmapPool;->maxSize:J

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/utils/bitmap_recycle/LruBitmapPool;->trimToSize(J)V

    return-void
.end method

.method private static getDefaultAllowedConfigs()Ljava/util/Set;
    .registers 2

    .line 316
    new-instance v0, Ljava/util/HashSet;

    invoke-static {}, Landroid/graphics/Bitmap$Config;->values()[Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    .line 321
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 324
    sget-object v1, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 326
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private static getDefaultStrategy()Lcom/transsion/camera/utils/bitmap_recycle/LruPoolStrategy;
    .registers 1

    .line 311
    new-instance v0, Lcom/transsion/camera/utils/bitmap_recycle/SizeConfigStrategy;

    invoke-direct {v0}, Lcom/transsion/camera/utils/bitmap_recycle/SizeConfigStrategy;-><init>()V

    return-object v0
.end method

.method private declared-synchronized getDirtyOrNull(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .registers 9

    monitor-enter p0

    .line 199
    :try_start_1
    invoke-static {p3}, Lcom/transsion/camera/utils/bitmap_recycle/LruBitmapPool;->assertNotHardwareConfig(Landroid/graphics/Bitmap$Config;)V

    .line 202
    iget-object v0, p0, Lcom/transsion/camera/utils/bitmap_recycle/LruBitmapPool;->strategy:Lcom/transsion/camera/utils/bitmap_recycle/LruPoolStrategy;

    if-eqz p3, :cond_a

    move-object v1, p3

    goto :goto_c

    :cond_a
    sget-object v1, Lcom/transsion/camera/utils/bitmap_recycle/LruBitmapPool;->DEFAULT_CONFIG:Landroid/graphics/Bitmap$Config;

    :goto_c
    invoke-interface {v0, p1, p2, v1}, Lcom/transsion/camera/utils/bitmap_recycle/LruPoolStrategy;->get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_41

    .line 204
    const-string v1, "LruBitmapPool"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 205
    const-string v1, "LruBitmapPool"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing bitmap="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/utils/bitmap_recycle/LruBitmapPool;->strategy:Lcom/transsion/camera/utils/bitmap_recycle/LruPoolStrategy;

    invoke-interface {v3, p1, p2, p3}, Lcom/transsion/camera/utils/bitmap_recycle/LruPoolStrategy;->logBitmap(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a

    :catchall_38
    move-exception p1

    goto :goto_85

    .line 207
    :cond_3a
    :goto_3a
    iget v1, p0, Lcom/transsion/camera/utils/bitmap_recycle/LruBitmapPool;->misses:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/transsion/camera/utils/bitmap_recycle/LruBitmapPool;->misses:I

    goto :goto_5b

    .line 209
    :cond_41
    iget v1, p0, Lcom/transsion/camera/utils/bitmap_recycle/LruBitmapPool;->hits:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/transsion/camera/utils/bitmap_recycle/LruBitmapPool;->hits:I

    .line 210
    iget-wide v1, p0, Lcom/transsion/camera/utils/bitmap_recycle/LruBitmapPool;->currentSize:J

    iget-object v3, p0, Lcom/transsion/camera/utils/bitmap_recycle/LruBitmapPool;->strategy:Lcom/transsion/camera/utils/bitmap_recycle/LruPoolStrategy;

    invoke-interface {v3, v0}, Lcom/transsion/camera/utils/bitmap_recycle/LruPoolStrategy;->getSize(Landroid/graphics/Bitmap;)I

    move-result v3

    int-to-long v3, v3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/transsion/camera/utils/bitmap_recycle/LruBitmapPool;->currentSize:J

    .line 211
    iget-object v1, p0, Lcom/transsion/camera/utils/bitmap_recycle/LruBitmapPool;->tracker:Lcom/transsion/camera/utils/bitmap_recycle/LruBitmapPool$BitmapTracker;

    invoke-interface {v1, v0}, Lcom/transsion/camera/utils/bitmap_recycle/LruBitmapPool$BitmapTracker;->remove(Landroid/graphics/Bitmap;)V

    .line 212
    invoke-static {v0}, Lcom/transsion/camera/utils/bitmap_recycle/LruBitmapPool;->normalize(Landroid/graphics/Bitmap;)V

    .line 214
    :goto_5b
    const-string v1, "LruBitmapPool"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_80

    .line 215
    const-string v1, "LruBitmapPool"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get bitmap="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/utils/bitmap_recycle/LruBitmapPool;->strategy:Lcom/transsion/camera/utils/bitmap_recycle/LruPoolStrategy;

    invoke-interface {v3, p1, p2, p3}, Lcom/transsion/camera/utils/bitmap_recycle/LruPoolStrategy;->logBitmap(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_80
    invoke-direct {p0}, Lcom/transsion/camera/utils/bitmap_recycle/LruBitmapPool;->dump()V
    :try_end_83
    .catchall {:try_start_1 .. :try_end_83} :catchall_38

    .line 219
    monitor-exit p0

    return-object v0

    :goto_85
    :try_start_85
    monitor-exit p0
    :try_end_86
    .catchall {:try_start_85 .. :try_end_86} :catchall_38

    throw p1
.end method

.method private static maybeSetPreMultiplied(Landroid/graphics/Bitmap;)V
    .registers 2

    const/4 v0, 0x1

    .line 232
    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->setPremultiplied(Z)V

    return-void
.end method

.method private static normalize(Landroid/graphics/Bitmap;)V
    .registers 2

    const/4 v0, 0x1

    .line 225
    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 226
    invoke-static {p0}, Lcom/transsion/camera/utils/bitmap_recycle/LruBitmapPool;->maybeSetPreMultiplied(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private declared-synchronized trimToSize(J)V
    .registers 8

    monitor-enter p0

    .line 262
    :goto_1
    :try_start_1
    iget-wide v0, p0, Lcom/transsion/camera/utils/bitmap_recycle/LruBitmapPool;->currentSize:J

    cmp-long v0, v0, p1

    if-lez v0, :cond_6e

    .line 263
    iget-object v0, p0, Lcom/transsion/camera/utils/bitmap_recycle/LruBitmapPool;->strategy:Lcom/transsion/camera/utils/bitmap_recycle/LruPoolStrategy;

    invoke-interface {v0}, Lcom/transsion/camera/utils/bitmap_recycle/LruPoolStrategy;->removeLast()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_2b

    .line 266
    const-string p1, "LruBitmapPool"

    const/4 p2, 0x5

    invoke-static {p1, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_25

    .line 267
    const-string p1, "LruBitmapPool"

    const-string p2, "Size mismatch, resetting"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-direct {p0}, Lcom/transsion/camera/utils/bitmap_recycle/LruBitmapPool;->dumpUnchecked()V

    goto :goto_25

    :catchall_23
    move-exception p1

    goto :goto_70

    :cond_25
    :goto_25
    const-wide/16 p1, 0x0

    .line 270
    iput-wide p1, p0, Lcom/transsion/camera/utils/bitmap_recycle/LruBitmapPool;->currentSize:J
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_23

    .line 271
    monitor-exit p0

    return-void

    .line 273
    :cond_2b
    :try_start_2b
    iget-object v1, p0, Lcom/transsion/camera/utils/bitmap_recycle/LruBitmapPool;->tracker:Lcom/transsion/camera/utils/bitmap_recycle/LruBitmapPool$BitmapTracker;

    invoke-interface {v1, v0}, Lcom/transsion/camera/utils/bitmap_recycle/LruBitmapPool$BitmapTracker;->remove(Landroid/graphics/Bitmap;)V

    .line 274
    iget-wide v1, p0, Lcom/transsion/camera/utils/bitmap_recycle/LruBitmapPool;->currentSize:J

    iget-object v3, p0, Lcom/transsion/camera/utils/bitmap_recycle/LruBitmapPool;->strategy:Lcom/transsion/camera/utils/bitmap_recycle/LruPoolStrategy;

    invoke-interface {v3, v0}, Lcom/transsion/camera/utils/bitmap_recycle/LruPoolStrategy;->getSize(Landroid/graphics/Bitmap;)I

    move-result v3

    int-to-long v3, v3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/transsion/camera/utils/bitmap_recycle/LruBitmapPool;->currentSize:J

    .line 275
    iget v1, p0, Lcom/transsion/camera/utils/bitmap_recycle/LruBitmapPool;->evictions:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/transsion/camera/utils/bitmap_recycle/LruBitmapPool;->evictions:I

    .line 276
    const-string v1, "LruBitmapPool"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 277
    const-string v1, "LruBitmapPool"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Evicting bitmap="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/utils/bitmap_recycle/LruBitmapPool;->strategy:Lcom/transsion/camera/utils/bitmap_recycle/LruPoolStrategy;

    invoke-interface {v3, v0}, Lcom/transsion/camera/utils/bitmap_recycle/LruPoolStrategy;->logBitmap(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_67
    invoke-direct {p0}, Lcom/transsion/camera/utils/bitmap_recycle/LruBitmapPool;->dump()V

    .line 280
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_6d
    .catchall {:try_start_2b .. :try_end_6d} :catchall_23

    goto :goto_1

    .line 282
    :cond_6e
    monitor-exit p0

    return-void

    :goto_70
    :try_start_70
    monitor-exit p0
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_23

    throw p1
.end method


# virtual methods
.method public clearMemory()V
    .registers 3

    const/4 v0, 0x3

    .line 238
    const-string v1, "LruBitmapPool"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 239
    const-string v0, "clearMemory"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    const-wide/16 v0, 0x0

    .line 241
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/utils/bitmap_recycle/LruBitmapPool;->trimToSize(J)V

    return-void
.end method

.method public get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .registers 4

    .line 152
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/utils/bitmap_recycle/LruBitmapPool;->getDirtyOrNull(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_b

    const/4 p1, 0x0

    .line 157
    invoke-virtual {p0, p1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    return-object p0

    .line 159
    :cond_b
    invoke-static {p1, p2, p3}, Lcom/transsion/camera/utils/bitmap_recycle/LruBitmapPool;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getMaxSize()J
    .registers 3

    .line 95
    iget-wide v0, p0, Lcom/transsion/camera/utils/bitmap_recycle/LruBitmapPool;->maxSize:J

    return-wide v0
.end method

.method public declared-synchronized put(Landroid/graphics/Bitmap;)V
    .registers 8

    monitor-enter p0

    if-eqz p1, :cond_c4

    .line 109
    :try_start_3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_bc

    .line 112
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_75

    iget-object v0, p0, Lcom/transsion/camera/utils/bitmap_recycle/LruBitmapPool;->strategy:Lcom/transsion/camera/utils/bitmap_recycle/LruPoolStrategy;

    .line 113
    invoke-interface {v0, p1}, Lcom/transsion/camera/utils/bitmap_recycle/LruPoolStrategy;->getSize(Landroid/graphics/Bitmap;)I

    move-result v0

    int-to-long v2, v0

    iget-wide v4, p0, Lcom/transsion/camera/utils/bitmap_recycle/LruBitmapPool;->maxSize:J

    cmp-long v0, v2, v4

    if-gtz v0, :cond_75

    iget-object v0, p0, Lcom/transsion/camera/utils/bitmap_recycle/LruBitmapPool;->allowedConfigs:Ljava/util/Set;

    .line 114
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    goto :goto_75

    .line 130
    :cond_2a
    iget-object v0, p0, Lcom/transsion/camera/utils/bitmap_recycle/LruBitmapPool;->strategy:Lcom/transsion/camera/utils/bitmap_recycle/LruPoolStrategy;

    invoke-interface {v0, p1}, Lcom/transsion/camera/utils/bitmap_recycle/LruPoolStrategy;->getSize(Landroid/graphics/Bitmap;)I

    move-result v0

    .line 131
    iget-object v2, p0, Lcom/transsion/camera/utils/bitmap_recycle/LruBitmapPool;->strategy:Lcom/transsion/camera/utils/bitmap_recycle/LruPoolStrategy;

    invoke-interface {v2, p1}, Lcom/transsion/camera/utils/bitmap_recycle/LruPoolStrategy;->put(Landroid/graphics/Bitmap;)V

    .line 132
    iget-object v2, p0, Lcom/transsion/camera/utils/bitmap_recycle/LruBitmapPool;->tracker:Lcom/transsion/camera/utils/bitmap_recycle/LruBitmapPool$BitmapTracker;

    invoke-interface {v2, p1}, Lcom/transsion/camera/utils/bitmap_recycle/LruBitmapPool$BitmapTracker;->add(Landroid/graphics/Bitmap;)V

    .line 134
    iget v2, p0, Lcom/transsion/camera/utils/bitmap_recycle/LruBitmapPool;->puts:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/transsion/camera/utils/bitmap_recycle/LruBitmapPool;->puts:I

    .line 135
    iget-wide v2, p0, Lcom/transsion/camera/utils/bitmap_recycle/LruBitmapPool;->currentSize:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/transsion/camera/utils/bitmap_recycle/LruBitmapPool;->currentSize:J

    .line 137
    const-string v0, "LruBitmapPool"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 138
    const-string v0, "LruBitmapPool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Put bitmap in pool="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/utils/bitmap_recycle/LruBitmapPool;->strategy:Lcom/transsion/camera/utils/bitmap_recycle/LruPoolStrategy;

    invoke-interface {v2, p1}, Lcom/transsion/camera/utils/bitmap_recycle/LruPoolStrategy;->logBitmap(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6d

    :catchall_6b
    move-exception p1

    goto :goto_cc

    .line 140
    :cond_6d
    :goto_6d
    invoke-direct {p0}, Lcom/transsion/camera/utils/bitmap_recycle/LruBitmapPool;->dump()V

    .line 142
    invoke-direct {p0}, Lcom/transsion/camera/utils/bitmap_recycle/LruBitmapPool;->evict()V
    :try_end_73
    .catchall {:try_start_3 .. :try_end_73} :catchall_6b

    .line 143
    monitor-exit p0

    return-void

    .line 115
    :cond_75
    :goto_75
    :try_start_75
    const-string v0, "LruBitmapPool"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_b7

    .line 116
    const-string v0, "LruBitmapPool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reject bitmap from pool, bitmap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/utils/bitmap_recycle/LruBitmapPool;->strategy:Lcom/transsion/camera/utils/bitmap_recycle/LruPoolStrategy;

    .line 120
    invoke-interface {v2, p1}, Lcom/transsion/camera/utils/bitmap_recycle/LruPoolStrategy;->logBitmap(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", is mutable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", is allowed config: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/utils/bitmap_recycle/LruBitmapPool;->allowedConfigs:Ljava/util/Set;

    .line 124
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 116
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_b7
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_ba
    .catchall {:try_start_75 .. :try_end_ba} :catchall_6b

    .line 127
    monitor-exit p0

    return-void

    .line 110
    :cond_bc
    :try_start_bc
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot pool recycled bitmap"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 107
    :cond_c4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Bitmap must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 127
    :goto_cc
    monitor-exit p0
    :try_end_cd
    .catchall {:try_start_bc .. :try_end_cd} :catchall_6b

    throw p1
.end method
