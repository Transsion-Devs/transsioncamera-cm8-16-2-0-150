.class public Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/CaptureSurface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Helper"
.end annotation


# instance fields
.field private volatile mCanReleaseCaptureSurface:Z

.field private final mCaptureCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mImageCallback:Lcom/transsion/camera/app/common/mode/CaptureSurface$ImageCallback;

.field protected mIsReleased:Z

.field private final mListener:Landroid/media/ImageReader$OnImageAvailableListener;

.field protected final mName:Ljava/lang/String;

.field private final mPictureCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mRealReleaseSurface:Ljava/util/function/Consumer;

.field protected final mReleaseLock:Ljava/lang/Object;

.field protected final mTag:Lcom/transsion/camera/utils/debug/Log$Tag;


# direct methods
.method public static synthetic $r8$lambda$cI9osAdh9urdbpTAwFeFw7GU8Qc(Landroid/media/Image;)Landroid/media/Image;
    .registers 1

    .line 0
    return-object p0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5

    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 339
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->mPictureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 340
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->mCaptureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 341
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->mReleaseLock:Ljava/lang/Object;

    .line 344
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->mIsReleased:Z

    .line 345
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->mCanReleaseCaptureSurface:Z

    .line 349
    new-instance v0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper$1;-><init>(Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->mListener:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 362
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CaptureSurface$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 363
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->mName:Ljava/lang/String;

    return-void
.end method

.method private acquireImage(Ljava/util/function/Supplier;Ljava/util/function/LongConsumer;)V
    .registers 12

    .line 510
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->mReleaseLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    .line 511
    :try_start_4
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->getImage(Ljava/util/function/Supplier;Ljava/util/function/Consumer;)Landroid/media/Image;

    move-result-object p1

    if-nez p1, :cond_f

    .line 513
    monitor-exit v1

    return-void

    :catchall_c
    move-exception v0

    move-object p0, v0

    goto :goto_3e

    .line 515
    :cond_f
    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v7

    if-eqz p2, :cond_18

    .line 517
    invoke-interface {p2, v7, v8}, Ljava/util/function/LongConsumer;->accept(J)V

    .line 519
    :cond_18
    invoke-virtual {p1}, Landroid/media/Image;->getFormat()I

    move-result p2

    const/16 v0, 0x23

    if-ne p2, v0, :cond_24

    const/16 p2, 0x11

    :goto_22
    move v4, p2

    goto :goto_29

    .line 520
    :cond_24
    invoke-virtual {p1}, Landroid/media/Image;->getFormat()I

    move-result p2

    goto :goto_22

    .line 521
    :goto_29
    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->-$$Nest$smgetBufferFromImage(Landroid/media/Image;)[B

    move-result-object v3

    .line 522
    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v5

    .line 523
    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v6

    .line 524
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    .line 525
    monitor-exit v1
    :try_end_39
    .catchall {:try_start_4 .. :try_end_39} :catchall_c

    move-object v2, p0

    .line 526
    invoke-virtual/range {v2 .. v8}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->processImage([BIIIJ)V

    return-void

    .line 525
    :goto_3e
    :try_start_3e
    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_c

    throw p0
.end method


# virtual methods
.method protected acquireImage(Landroid/media/Image;)V
    .registers 3

    .line 501
    new-instance v0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper$$ExternalSyntheticLambda0;-><init>(Landroid/media/Image;)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->acquireImage(Ljava/util/function/Supplier;Ljava/util/function/LongConsumer;)V

    return-void
.end method

.method protected acquireImage(Landroid/media/ImageReader;)V
    .registers 3

    const/4 v0, 0x0

    .line 493
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->acquireImage(Landroid/media/ImageReader;Ljava/util/function/LongConsumer;)V

    return-void
.end method

.method protected acquireImage(Landroid/media/ImageReader;Ljava/util/function/LongConsumer;)V
    .registers 4

    .line 497
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper$$ExternalSyntheticLambda0;-><init>(Landroid/media/ImageReader;)V

    invoke-direct {p0, v0, p2}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->acquireImage(Ljava/util/function/Supplier;Ljava/util/function/LongConsumer;)V

    return-void
.end method

.method protected addCaptureSurface(Lcom/transsion/camera/app/common/mode/CaptureSurface;)V
    .registers 2

    return-void
.end method

.method protected checkNotifyBgErr()V
    .registers 1

    return-void
.end method

.method protected decreaseCaptureCount()V
    .registers 5

    .line 558
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->isUnnecessaryChangeCaptureCount()Z

    move-result v0

    const-string v1, ", "

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->mCaptureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-gtz v0, :cond_35

    .line 559
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mBGEnable & mBGOfflineEnable is false, don\'t decreaseCaptureCount. mCaptureCount:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->mCaptureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 561
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->mCaptureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void

    .line 564
    :cond_35
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->mCaptureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 565
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<decreaseCaptureCount> mCaptureCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->mCaptureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected decreasePicCount()V
    .registers 3

    const-wide/16 v0, -0x1

    .line 582
    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->decreasePicCount(J)V

    return-void
.end method

.method protected decreasePicCount(J)V
    .registers 4

    .line 586
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->isUnnecessaryChangePictureCount()Z

    move-result p1

    if-eqz p1, :cond_35

    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->mPictureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-gtz p1, :cond_35

    .line 587
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mBGEnable & mBGOfflineEnable is false, don\'t decreasePicCount. mPictureCount:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->mPictureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 589
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->mPictureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void

    .line 592
    :cond_35
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->mPictureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 593
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "<decreasePicCount> captureSurface:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", mPictureCount = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->mPictureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 594
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 593
    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 595
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->releaseAfterCheckNum()V

    return-void
.end method

.method protected disableBGEnable()V
    .registers 1

    return-void
.end method

.method public getCaptureCount()I
    .registers 1

    .line 405
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->mCaptureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0
.end method

.method protected getHandler()Landroid/os/Handler;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method protected getImage(Ljava/util/function/Supplier;Ljava/util/function/Consumer;)Landroid/media/Image;
    .registers 6

    .line 531
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->mReleaseLock:Ljava/lang/Object;

    monitor-enter v0

    .line 532
    :try_start_3
    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->mIsReleased:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_13

    .line 533
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "ImageReader is release, return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 534
    monitor-exit v0

    return-object v2

    :catchall_11
    move-exception p0

    goto :goto_2b

    .line 536
    :cond_13
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/Image;

    if-nez p1, :cond_24

    .line 538
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "getImage image is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 539
    monitor-exit v0

    return-object v2

    :cond_24
    if-eqz p2, :cond_29

    .line 542
    invoke-interface {p2, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 544
    :cond_29
    monitor-exit v0

    return-object p1

    :goto_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_11

    throw p0
.end method

.method protected getImageAvailableListener(Ljava/lang/String;)Landroid/media/ImageReader$OnImageAvailableListener;
    .registers 2

    .line 627
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->mListener:Landroid/media/ImageReader$OnImageAvailableListener;

    return-object p0
.end method

.method public getImageCallback()Lcom/transsion/camera/app/common/mode/CaptureSurface$ImageCallback;
    .registers 1

    .line 401
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->mImageCallback:Lcom/transsion/camera/app/common/mode/CaptureSurface$ImageCallback;

    return-object p0
.end method

.method public getPictureCount()I
    .registers 1

    .line 409
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->mPictureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0
.end method

.method public getReleaseLock()Ljava/lang/Object;
    .registers 1

    .line 393
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->mReleaseLock:Ljava/lang/Object;

    return-object p0
.end method

.method protected increaseCaptureCount()V
    .registers 4

    .line 549
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->isUnnecessaryChangeCaptureCount()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 550
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBGEnable & mBGOfflineEnable is false, don\'t increaseCaptureCount. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 553
    :cond_1d
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->mCaptureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 554
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<increaseCaptureCount> mCaptureCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->mCaptureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected increasePicCount(J)V
    .registers 4

    .line 573
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->isUnnecessaryChangePictureCount()Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 574
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mBGEnable & mBGOfflineEnable is false, don\'t increasePicCount. "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 577
    :cond_1d
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->mPictureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 578
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "<increasePicCount> captureSurface:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", mPictureCount = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->mPictureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected isEnable()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method protected isNeedReleaseAfterCheckNum()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method protected isPictureCountRemaining()Z
    .registers 1

    .line 489
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->mCaptureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    if-lez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public isReleased()Z
    .registers 1

    .line 413
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->mIsReleased:Z

    return p0
.end method

.method protected isSurfaceDirty()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method protected isUnnecessaryChangeCaptureCount()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method protected isUnnecessaryChangePictureCount()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method protected notifyEventCallback(Ljava/lang/Class;Ljava/lang/Object;)V
    .registers 3

    return-void
.end method

.method protected onBGServiceDied()V
    .registers 3

    .line 440
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->mReleaseLock:Ljava/lang/Object;

    monitor-enter v0

    .line 441
    :try_start_3
    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->mCanReleaseCaptureSurface:Z

    if-eqz v1, :cond_12

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->mRealReleaseSurface:Ljava/util/function/Consumer;

    if-eqz p0, :cond_12

    const/4 v1, 0x0

    .line 442
    invoke-interface {p0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_12

    :catchall_10
    move-exception p0

    goto :goto_14

    .line 444
    :cond_12
    :goto_12
    monitor-exit v0

    return-void

    :goto_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_10

    throw p0
.end method

.method public onImageAvailable(Landroid/media/ImageReader;)V
    .registers 5

    .line 608
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onImageAvailable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 609
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->acquireImage(Landroid/media/ImageReader;)V

    return-void
.end method

.method protected onImageReaderClose()V
    .registers 1

    return-void
.end method

.method protected onRelease(Lcom/transsion/camera/app/common/mode/CaptureSurface;)V
    .registers 2

    const/4 p1, 0x1

    .line 452
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->mIsReleased:Z

    return-void
.end method

.method protected processImage([BIIIJ)V
    .registers 11

    .line 463
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->mImageCallback:Lcom/transsion/camera/app/common/mode/CaptureSurface$ImageCallback;

    .line 464
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processImage: mImageCallback: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", timestamp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v0, :cond_6e

    .line 467
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->isPictureCountRemaining()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 468
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->mCaptureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_32

    :cond_31
    const/4 v1, 0x0

    .line 470
    :goto_32
    new-instance v2, Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;

    invoke-direct {v2}, Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;-><init>()V

    .line 471
    invoke-virtual {v2, p1}, Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;->setData([B)Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;

    move-result-object p1

    .line 472
    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;->setFormat(I)Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;

    move-result-object p1

    .line 473
    invoke-virtual {p1, p3}, Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;->setWidth(I)Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;

    move-result-object p1

    .line 474
    invoke-virtual {p1, p4}, Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;->setHeight(I)Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;

    move-result-object p1

    iget-boolean p2, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->mCanReleaseCaptureSurface:Z

    .line 475
    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;->setIsBGImage(Z)Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;

    move-result-object p1

    .line 476
    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;->setPicCountRemaining(I)Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;

    move-result-object p1

    .line 477
    invoke-virtual {p1, p5, p6}, Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;->setTimestamp(J)Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;

    move-result-object p1

    .line 478
    invoke-static {}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->getInstance()Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->getLowQualityMediaSaverListener()Lcom/transsion/camera/app/common/taps/OnBackgroundImageStateChangeListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;->setListener(Lcom/transsion/camera/app/common/taps/OnBackgroundImageStateChangeListener;)Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;

    move-result-object p1

    .line 479
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;->build()Lcom/transsion/camera/app/common/mode/PictureInfo;

    move-result-object p1

    .line 480
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/mode/CaptureSurface$ImageCallback;->onPictureTaken(Lcom/transsion/camera/app/common/mode/PictureInfo;)V

    .line 481
    invoke-virtual {p0, p5, p6}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->decreasePicCount(J)V

    .line 482
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->decreaseCaptureCount()V

    .line 484
    :cond_6e
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->checkNotifyBgErr()V

    return-void
.end method

.method protected releaseAfterCheckNum()V
    .registers 4

    .line 613
    invoke-static {}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseAfterCheckNum, mCanReleaseCaptureSurface:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->mCanReleaseCaptureSurface:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mPictureCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->mPictureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 614
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mIsBGSurface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->isEnable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 613
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 615
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->mReleaseLock:Ljava/lang/Object;

    monitor-enter v0

    .line 616
    :try_start_37
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->isNeedReleaseAfterCheckNum()Z

    move-result v1

    if-eqz v1, :cond_52

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->mPictureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-nez v1, :cond_52

    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->mCanReleaseCaptureSurface:Z

    if-eqz v1, :cond_52

    .line 617
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->mRealReleaseSurface:Ljava/util/function/Consumer;

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_52

    :catchall_50
    move-exception p0

    goto :goto_54

    .line 619
    :cond_52
    :goto_52
    monitor-exit v0

    return-void

    :goto_54
    monitor-exit v0
    :try_end_55
    .catchall {:try_start_37 .. :try_end_55} :catchall_50

    throw p0
.end method

.method protected resetBGEnable(ZZ)V
    .registers 3

    return-void
.end method

.method public setCanReleaseCaptureSurface(Z)V
    .registers 2

    .line 389
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->mCanReleaseCaptureSurface:Z

    return-void
.end method

.method protected setCustomEnable(ZZ)V
    .registers 3

    return-void
.end method

.method public setImageCallback(Lcom/transsion/camera/app/common/mode/CaptureSurface$ImageCallback;)V
    .registers 2

    .line 397
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->mImageCallback:Lcom/transsion/camera/app/common/mode/CaptureSurface$ImageCallback;

    return-void
.end method

.method public setRealReleaseSurface(Ljava/util/function/Consumer;)V
    .registers 2

    .line 385
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->mRealReleaseSurface:Ljava/util/function/Consumer;

    return-void
.end method

.method public setThreadPriority(I)V
    .registers 2

    .line 635
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mThumbnailTransitionSupport:Z

    if-eqz p0, :cond_b

    .line 636
    invoke-static {p1}, Landroid/os/Process;->setThreadPriority(I)V

    :cond_b
    return-void
.end method

.method protected shouldReleaseSurface()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{mName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mPictureCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->mPictureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 371
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCaptureCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->mCaptureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 372
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCanReleaseCaptureSurface: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->mCanReleaseCaptureSurface:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsReleased: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->mIsReleased:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected updateBGOfflineState(I)V
    .registers 2

    return-void
.end method
