.class public Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/thumbnailtransition/IThumbnailTransition;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager$Stub;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final TRANSITION_ANIMATION_DURATION:I = 0xc8


# instance fields
.field private mAppUi:Lcom/transsion/camera/app/common/IAppUI;

.field private mContext:Landroid/content/Context;

.field private mCurrentName:Ljava/lang/String;

.field private mDecodeBitmapHandler:Landroid/os/Handler;

.field private mDecodeBitmapThread:Landroid/os/HandlerThread;

.field private final mDecodeBitmapThreadLock:Ljava/lang/Object;

.field private volatile mHasBitmapUpdate:Z

.field private mIRemoteGetBitmap:Lcom/transsion/camera/feature/thumbnailtransition/IRemoteGetBitmap$Stub;

.field private mIsCaptureUpdate:Z

.field private mJpegBytes:[B

.field private mJpegHasProWaterMark:Z

.field mPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private mScreenRect:Landroid/graphics/Rect;

.field private mStartRect:Landroid/graphics/Rect;

.field private mTargetRect:Landroid/graphics/Rect;

.field private mThumbnailBitmap:Landroid/graphics/Bitmap;

.field private mThumbnailLowQualityBitmap:Landroid/graphics/Bitmap;

.field private mThumbnailTransitionView:Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;

.field private mTransitionBitmap:Landroid/graphics/Bitmap;


# direct methods
.method static bridge synthetic -$$Nest$fgetmHasBitmapUpdate(Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->mHasBitmapUpdate:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTransitionBitmap(Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;)Landroid/graphics/Bitmap;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->mTransitionBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmHasBitmapUpdate(Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->mHasBitmapUpdate:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsCaptureUpdate(Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->mIsCaptureUpdate:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 47
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ThumbnailTranManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->mTargetRect:Landroid/graphics/Rect;

    .line 60
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->mScreenRect:Landroid/graphics/Rect;

    .line 61
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f28f5c3    # 0.66f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3ea8f5c3    # 0.33f

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->mDecodeBitmapThreadLock:Ljava/lang/Object;

    .line 68
    new-instance v0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager$Stub;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager$Stub;-><init>(Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->mIRemoteGetBitmap:Lcom/transsion/camera/feature/thumbnailtransition/IRemoteGetBitmap$Stub;

    .line 110
    iput-object p1, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private ensureDecodeBitmapThread()V
    .registers 5

    .line 364
    iget-object v0, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->mDecodeBitmapThreadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 365
    :try_start_3
    iget-object v1, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->mDecodeBitmapThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 366
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    goto :goto_2e

    .line 368
    :cond_11
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "DecodeBitmapThread"

    const/16 v3, -0x14

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->mDecodeBitmapThread:Landroid/os/HandlerThread;

    .line 369
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 370
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->mDecodeBitmapThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->mDecodeBitmapHandler:Landroid/os/Handler;

    .line 371
    monitor-exit v0

    return-void

    :goto_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_f

    throw p0
.end method

.method private getContext()Landroid/content/Context;
    .registers 1

    .line 72
    iget-object p0, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private isAutoRotationEnabled()Z
    .registers 5

    .line 340
    invoke-direct {p0}, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return v0

    .line 345
    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "accelerometer_rotation"

    .line 344
    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_16

    move v0, v1

    .line 350
    :cond_16
    sget-object p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAutoRotationEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    xor-int/lit8 p0, v0, 0x1

    return p0
.end method

.method private processPosition(IILandroid/graphics/Rect;)V
    .registers 8

    if-lez p1, :cond_62

    if-lez p2, :cond_62

    .line 287
    iget-object v0, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_62

    int-to-float p1, p1

    int-to-float p2, p2

    .line 290
    iget-object v0, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, p1

    iget-object v1, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    mul-float/2addr p1, v0

    .line 291
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget-object v1, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    mul-float/2addr p2, v0

    .line 292
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iget-object v0, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 293
    iget-object v0, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->mScreenRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 294
    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int v2, v1, p1

    add-int v3, v0, p2

    .line 295
    invoke-virtual {p3, v1, v0, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 296
    iget-object v0, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    iget-object p0, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    sub-int/2addr p0, p2

    div-int/lit8 p0, p0, 0x2

    invoke-virtual {p3, v0, p0}, Landroid/graphics/Rect;->offset(II)V

    :cond_62
    return-void
.end method

.method private releaseDecodeBitmapThread()V
    .registers 5

    .line 377
    iget-object v0, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->mDecodeBitmapThreadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 378
    :try_start_3
    iget-object v1, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->mDecodeBitmapThread:Landroid/os/HandlerThread;

    .line 379
    iget-object v2, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->mDecodeBitmapHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    .line 380
    iput-object v3, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->mDecodeBitmapThread:Landroid/os/HandlerThread;

    .line 381
    iput-object v3, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->mDecodeBitmapHandler:Landroid/os/Handler;

    .line 382
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_18

    if-eqz v2, :cond_12

    .line 384
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_12
    if-eqz v1, :cond_17

    .line 387
    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_17
    return-void

    :catchall_18
    move-exception p0

    .line 382
    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw p0
.end method


# virtual methods
.method public destroy()V
    .registers 1

    .line 336
    invoke-direct {p0}, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->releaseDecodeBitmapThread()V

    return-void
.end method

.method public getDecodeBitmapHandler()Landroid/os/Handler;
    .registers 1

    .line 174
    iget-object p0, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->mDecodeBitmapHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public getJpegHasProWaterMark()Z
    .registers 4

    .line 223
    sget-object v0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getJpegHasProWaterMark = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->mJpegHasProWaterMark:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 224
    iget-boolean p0, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->mJpegHasProWaterMark:Z

    return p0
.end method

.method public getThumbnailDrawable(IILandroid/net/Uri;)Z
    .registers 9

    .line 178
    sget-object p1, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "getThumbnailDrawable"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 179
    invoke-static {p3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 182
    invoke-static {}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->getInstance()Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;

    move-result-object p3

    invoke-virtual {p3}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->getLastPostViewInfo()Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$PostViewInfo;

    move-result-object p3

    if-eqz p3, :cond_20

    .line 184
    invoke-virtual {p3}, Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$PostViewInfo;->getLastPostViewJpeg()[B

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->mJpegBytes:[B

    .line 185
    invoke-virtual {p3}, Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$PostViewInfo;->getMediaStoreId()J

    move-result-wide v2

    goto :goto_22

    :cond_20
    const-wide/16 v2, 0x0

    .line 188
    :goto_22
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getThumbnailDrawable low mJpegBytes = "

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->mJpegBytes:[B

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "  bitmapMediaId = "

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "  lowQualityMediaId = "

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 189
    iget-object p3, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->mJpegBytes:[B

    const/4 v4, 0x0

    if-eqz p3, :cond_84

    array-length p3, p3

    if-lez p3, :cond_84

    cmp-long p3, v2, v0

    if-nez p3, :cond_84

    .line 190
    const-string p1, "decodeByteArray"

    invoke-static {p1}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 192
    :try_start_5a
    iget-object p3, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->mJpegBytes:[B

    invoke-static {p3, v0, p2}, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailGlideDecoder;->decode(Landroid/content/Context;[BI)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->mThumbnailLowQualityBitmap:Landroid/graphics/Bitmap;
    :try_end_64
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_5a .. :try_end_64} :catch_6b
    .catch Ljava/lang/InterruptedException; {:try_start_5a .. :try_end_64} :catch_6b

    .line 202
    iput-object p1, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->mJpegBytes:[B

    .line 203
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    const/4 p0, 0x1

    return p0

    :catch_6b
    move-exception p2

    .line 194
    instance-of p3, p2, Ljava/lang/InterruptedException;

    if-eqz p3, :cond_77

    .line 195
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Thread;->interrupt()V

    .line 197
    :cond_77
    sget-object p3, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "decode failed"

    invoke-static {p3, v0, p2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 198
    iput-object p1, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->mJpegBytes:[B

    .line 199
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    return v4

    .line 206
    :cond_84
    const-string p0, "getThumbnailDrawable Bitmap fail !!!!!!"

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v4
.end method

.method public gotoGallery(Landroid/view/View;IZ)Landroid/graphics/Bitmap;
    .registers 13

    .line 258
    sget-object p1, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gotoGallery useBitmap:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p3, :cond_1c

    .line 261
    iget-object p1, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    :goto_1a
    move-object v1, p1

    goto :goto_1f

    .line 263
    :cond_1c
    iget-object p1, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->mThumbnailLowQualityBitmap:Landroid/graphics/Bitmap;

    goto :goto_1a

    .line 266
    :goto_1f
    iget-object v0, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->mThumbnailTransitionView:Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;

    if-nez v0, :cond_25

    const/4 p0, 0x0

    return-object p0

    .line 269
    :cond_25
    iget-object v3, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->mStartRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->mTargetRect:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    new-instance v8, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager$1;

    invoke-direct {v8, p0}, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager$1;-><init>(Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;)V

    const-wide/16 v5, 0xc8

    move v2, p2

    invoke-virtual/range {v0 .. v8}, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->startAnima(Landroid/graphics/Bitmap;ILandroid/graphics/Rect;Landroid/graphics/Rect;JLandroid/view/animation/PathInterpolator;Ljava/lang/Runnable;)V

    return-object v1
.end method

.method public init(Landroid/view/ViewGroup;I)V
    .registers 3

    .line 158
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;

    iput-object p1, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->mThumbnailTransitionView:Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;

    .line 159
    invoke-direct {p0}, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->ensureDecodeBitmapThread()V

    return-void
.end method

.method public isSupport(ILjava/lang/String;Lcom/transsion/camera/app/common/IAppUI;Landroid/net/Uri;)Z
    .registers 6

    .line 114
    iput-object p3, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->mAppUi:Lcom/transsion/camera/app/common/IAppUI;

    .line 115
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p3

    invoke-virtual {p3}, Lcom/transsion/camera/utils/CustomConfigUtil;->isThumbnailTransitionSupport()Z

    move-result p3

    const/4 v0, 0x0

    if-nez p3, :cond_e

    return v0

    .line 119
    :cond_e
    iput-object p2, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->mCurrentName:Ljava/lang/String;

    .line 121
    const-string p3, "com.transsion.camera.feature.mode.autoscenedetection.ASDModeEntry"

    invoke-static {p3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_35

    .line 122
    iget-boolean p2, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->mIsCaptureUpdate:Z

    if-nez p2, :cond_1d

    return v0

    .line 126
    :cond_1d
    iget-object p2, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->mAppUi:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p2, :cond_26

    .line 127
    invoke-interface {p2}, Lcom/transsion/camera/app/common/IAppUI;->isLivePhotoOn()Z

    move-result p2

    goto :goto_27

    :cond_26
    move p2, v0

    :goto_27
    if-eqz p2, :cond_2a

    return v0

    .line 132
    :cond_2a
    invoke-static {}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->getInstance()Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;

    move-result-object p2

    invoke-virtual {p2, p4}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->isLowQualityJpeg(Landroid/net/Uri;)Z

    move-result p2

    if-nez p2, :cond_6c

    return v0

    .line 135
    :cond_35
    const-string p3, "com.transsion.camera.feature.mode.pmaster.PMasterModeEntry"

    invoke-static {p3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_5f

    .line 136
    iget-boolean p2, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->mIsCaptureUpdate:Z

    if-nez p2, :cond_42

    return v0

    .line 139
    :cond_42
    invoke-static {}, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->getInstance()Lcom/transsion/camera/app/common/tzservice/TZServiceController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->isSupport()Z

    move-result p2

    if-nez p2, :cond_54

    .line 140
    sget-object p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "TZServiceController is not support !!!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0

    .line 143
    :cond_54
    invoke-static {}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->getInstance()Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;

    move-result-object p2

    invoke-virtual {p2, p4}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->isLowQualityJpeg(Landroid/net/Uri;)Z

    move-result p2

    if-nez p2, :cond_6c

    return v0

    .line 146
    :cond_5f
    const-string p3, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    invoke-static {p3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_7c

    .line 147
    iget-boolean p2, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->mIsCaptureUpdate:Z

    if-nez p2, :cond_6c

    return v0

    .line 154
    :cond_6c
    invoke-direct {p0}, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->isAutoRotationEnabled()Z

    move-result p0

    if-nez p0, :cond_7a

    if-eqz p1, :cond_7a

    const/16 p0, 0xb4

    if-ne p1, p0, :cond_79

    goto :goto_7a

    :cond_79
    return v0

    :cond_7a
    :goto_7a
    const/4 p0, 0x1

    return p0

    :cond_7c
    return v0
.end method

.method public onModeChanged()V
    .registers 2

    const/4 v0, 0x0

    .line 359
    iput-boolean v0, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->mIsCaptureUpdate:Z

    .line 360
    iput-boolean v0, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->mHasBitmapUpdate:Z

    return-void
.end method

.method public onTopChanged(Z)V
    .registers 4

    .line 355
    sget-object p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTopChanged  isTopResumedActivity:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public pause()V
    .registers 3

    .line 319
    sget-object v0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "pause"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 320
    iget-object p0, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->mThumbnailTransitionView:Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;

    if-eqz p0, :cond_e

    .line 321
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->pause()V

    :cond_e
    return-void
.end method

.method public processBitmap(Landroid/content/Intent;)Landroid/content/Intent;
    .registers 4

    .line 280
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 281
    const-string v1, "binder"

    iget-object p0, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->mIRemoteGetBitmap:Lcom/transsion/camera/feature/thumbnailtransition/IRemoteGetBitmap$Stub;

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 282
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    return-object p1
.end method

.method public processBitmap(Landroid/graphics/Rect;ILandroid/net/Uri;)Z
    .registers 8

    .line 228
    sget-object v0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processBitmap  orientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 229
    const-string v1, "processBitmap"

    invoke-static {v1}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 230
    iput-object p1, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->mStartRect:Landroid/graphics/Rect;

    .line 231
    iget-object p1, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-nez p1, :cond_2b

    .line 232
    const-string p0, "mThumbnailBitmap is NULL "

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 233
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    return v1

    .line 236
    :cond_2b
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iget-object v2, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->mTargetRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v2, v3}, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->processPosition(IILandroid/graphics/Rect;)V

    .line 237
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processBitmap first mThumbnailBitmap getWidth = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  getHeight = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 238
    const-string p1, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    iget-object v2, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->mCurrentName:Ljava/lang/String;

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_77

    .line 239
    iget-object p1, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->mTransitionBitmap:Landroid/graphics/Bitmap;

    .line 240
    iput-boolean v2, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->mHasBitmapUpdate:Z

    .line 241
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    return v1

    .line 244
    :cond_77
    invoke-static {}, Lcom/transsion/camera/utils/ScreenUtils;->getScreenSize()Landroid/util/Size;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    invoke-virtual {p0, p2, p1, p3}, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->getThumbnailDrawable(IILandroid/net/Uri;)Z

    move-result p1

    if-nez p1, :cond_8a

    .line 246
    iget-object p2, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->mTransitionBitmap:Landroid/graphics/Bitmap;

    goto :goto_8e

    .line 248
    :cond_8a
    iget-object p2, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->mThumbnailLowQualityBitmap:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->mTransitionBitmap:Landroid/graphics/Bitmap;

    .line 250
    :goto_8e
    iput-boolean v2, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->mHasBitmapUpdate:Z

    .line 251
    const-string p0, "gotoGallery mTransitionBitmap update"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 253
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    return p1
.end method

.method public resume()V
    .registers 5

    .line 308
    sget-object v0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "resume"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->mScreenRect:Landroid/graphics/Rect;

    invoke-static {}, Lcom/transsion/camera/utils/ScreenUtils;->getScreenSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-static {}, Lcom/transsion/camera/utils/ScreenUtils;->getScreenSize()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 310
    iget-object v0, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->mThumbnailTransitionView:Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;

    if-eqz v0, :cond_26

    const/16 v1, 0x8

    .line 311
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 313
    :cond_26
    iget-object p0, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->mThumbnailTransitionView:Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;

    if-eqz p0, :cond_2d

    .line 314
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->resume()V

    :cond_2d
    return-void
.end method

.method public setThreadVip()V
    .registers 4

    .line 164
    const-string v0, "setThumbnailTransitionThreadVip"

    invoke-static {v0}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 165
    iget-object p0, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->mDecodeBitmapThread:Landroid/os/HandlerThread;

    if-eqz p0, :cond_2e

    .line 167
    sget-object v0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setThreadVip "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 168
    invoke-static {}, Lcom/transsion/camera/thub/TranSchedManagerProxy;->getInstance()Lcom/transsion/camera/thub/TranSchedManagerProxy;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/thub/TranSchedManagerProxy;->setVipDecodeBitmapTranSched(I)V

    .line 170
    :cond_2e
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    return-void
.end method

.method public setThumbnailBitmap(Landroid/graphics/Bitmap;ZZ)V
    .registers 4

    .line 214
    iput-object p1, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_8

    .line 216
    iput-boolean p2, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->mIsCaptureUpdate:Z

    .line 217
    iput-boolean p3, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->mJpegHasProWaterMark:Z

    .line 219
    :cond_8
    sget-object p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setThumbnailBitmap isCaptureUpdate = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public start()V
    .registers 3

    .line 301
    sget-object v0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 302
    iget-object p0, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->mThumbnailTransitionView:Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;

    if-eqz p0, :cond_10

    const/16 v0, 0x8

    .line 303
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_10
    return-void
.end method

.method public stop()V
    .registers 3

    .line 326
    sget-object v0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "stop"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 327
    iput-boolean v0, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->mIsCaptureUpdate:Z

    .line 328
    iput-boolean v0, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->mHasBitmapUpdate:Z

    .line 329
    iget-object v0, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->mThumbnailTransitionView:Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;

    if-eqz v0, :cond_1a

    .line 330
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->stop()V

    .line 331
    iget-object p0, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->mThumbnailTransitionView:Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1a
    return-void
.end method
