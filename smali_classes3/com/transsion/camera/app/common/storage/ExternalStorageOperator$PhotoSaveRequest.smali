.class public Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$PhotoSaveRequest;
.super Lcom/transsion/camera/app/common/storage/SaveRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "PhotoSaveRequest"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;Landroid/content/ContentValues;[BLcom/transsion/camera/app/common/livephoto/PhotoTaskData;Landroid/graphics/Bitmap;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;Landroid/net/Uri;)V
    .registers 8

    .line 392
    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$PhotoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    move-object p1, p2

    move-object p2, p3

    move-object p3, p4

    move-object p4, p5

    const/4 p5, 0x0

    .line 393
    invoke-direct/range {p0 .. p7}, Lcom/transsion/camera/app/common/storage/SaveRequest;-><init>(Landroid/content/ContentValues;[BLcom/transsion/camera/app/common/livephoto/PhotoTaskData;Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;Landroid/net/Uri;)V

    return-void
.end method

.method private isDataValid()Z
    .registers 2

    .line 476
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mData:[B

    if-eqz v0, :cond_c

    :cond_8
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mValues:Landroid/content/ContentValues;

    if-nez v0, :cond_17

    .line 477
    :cond_c
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$PhotoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "data is null or ContentValues is null, invalid"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_17
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public process()I
    .registers 8

    .line 398
    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$PhotoSaveRequest;->isDataValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 401
    :cond_8
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mLivePhotoTaskData:Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;

    const-string v2, "_display_name"

    const/4 v3, 0x0

    if-eqz v0, :cond_4f

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->isLiveShotTask()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 402
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mLivePhotoTaskData:Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->getJpegImageData()[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v4, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData$$ExternalSyntheticLambda0;-><init>()V

    .line 403
    invoke-virtual {v0, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v4, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$PhotoSaveRequest$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$PhotoSaveRequest$$ExternalSyntheticLambda0;-><init>()V

    .line 404
    invoke-virtual {v0, v4}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v0

    .line 405
    invoke-virtual {v0, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/taps/entity/QualityInfo;

    if-eqz v0, :cond_3f

    .line 406
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/taps/entity/QualityInfo;->isLowQuality()Z

    move-result v0

    if-nez v0, :cond_4f

    .line 407
    :cond_3f
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$PhotoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    iget-object v4, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mLivePhotoTaskData:Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;

    iget-object v5, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v5, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->processLivePhotoData(Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mData:[B

    .line 410
    :cond_4f
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 411
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mValues:Landroid/content/ContentValues;

    const-string v2, "mime_type"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 412
    iput v1, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mRetryCount:I

    .line 413
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mUri:Landroid/net/Uri;

    const/4 v2, -0x1

    const-string/jumbo v4, "writeJpegFileFromUri failed: "

    if-nez v0, :cond_d2

    .line 414
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$PhotoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    iget-object v5, v0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mContext:Landroid/content/Context;

    invoke-static {v0, v5}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->-$$Nest$mgetExternalVolumeNames(Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 416
    :try_start_6d
    iget-object v5, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$PhotoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    iget-object v5, v5, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v6, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v5, v0, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mUri:Landroid/net/Uri;
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_7d} :catch_7e

    goto :goto_8d

    :catch_7e
    move-exception v0

    .line 418
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 419
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$PhotoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    iget-object v0, v0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v5, "insert db exception"

    invoke-static {v0, v5}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 420
    iput-object v3, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mUri:Landroid/net/Uri;

    .line 422
    :goto_8d
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_c7

    .line 423
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$PhotoSaveRequest;->writeJpegFileFromUri()Z

    move-result v0

    if-nez v0, :cond_148

    .line 425
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$PhotoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    iget-object v0, v0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 427
    :try_start_af
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$PhotoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    iget-object v0, v0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_b8} :catch_b9

    goto :goto_c6

    :catch_b9
    move-exception v0

    .line 429
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 430
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$PhotoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "delete db exception1"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_c6
    return v2

    .line 435
    :cond_c7
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$PhotoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "insert db fail"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_148

    .line 438
    :cond_d2
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$PhotoSaveRequest;->writeJpegFileFromUri()Z

    move-result v0

    if-eqz v0, :cond_149

    .line 439
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$PhotoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    iget-object v0, v0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v2

    iget-boolean v2, v2, Lcom/transsion/camera/utils/CustomConfigUtil;->mUseGooglePhotosDefault:Z

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/CameraUtil;->getChoseGallery(Landroid/content/pm/PackageManager;Z)I

    move-result v0

    .line 440
    const-string v2, "[CapturePerformance] updateDatabase finish"

    const-string v3, "[CapturePerformance] updateDatabase start"

    if-eqz v0, :cond_115

    .line 441
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mMediaSaverListener:Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;

    if-eqz v0, :cond_fd

    instance-of v4, v0, Lcom/transsion/camera/app/common/storage/MediaSaver$ProcessingMediaSaverListener;

    if-eqz v4, :cond_fd

    .line 442
    check-cast v0, Lcom/transsion/camera/app/common/storage/MediaSaver$ProcessingMediaSaverListener;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/MediaSaver$ProcessingMediaSaverListener;->removeProcessingMedia()V

    .line 444
    :cond_fd
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$PhotoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    iget-object v0, v0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-static {v0, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 445
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$PhotoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    iget-object v3, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v3, v4}, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->updateDatabase(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 446
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$PhotoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    iget-object v0, v0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_139

    .line 448
    :cond_115
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$PhotoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    iget-object v0, v0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-static {v0, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 449
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$PhotoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    iget-object v3, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v3, v4}, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->updateDatabase(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 450
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$PhotoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    iget-object v0, v0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 451
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mMediaSaverListener:Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;

    if-eqz v0, :cond_139

    instance-of v2, v0, Lcom/transsion/camera/app/common/storage/MediaSaver$ProcessingMediaSaverListener;

    if-eqz v2, :cond_139

    .line 452
    check-cast v0, Lcom/transsion/camera/app/common/storage/MediaSaver$ProcessingMediaSaverListener;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/MediaSaver$ProcessingMediaSaverListener;->removeProcessingMedia()V

    .line 456
    :cond_139
    :goto_139
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$PhotoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    iget-object v2, v0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    iget-object v0, v0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mContentResolver:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mUri:Landroid/net/Uri;

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/CameraUtil;->getImageInfoFormUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_148
    :goto_148
    return v1

    .line 459
    :cond_149
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$PhotoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    iget-object v0, v0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 461
    :try_start_161
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$PhotoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    iget-object v0, v0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_16a
    .catch Ljava/lang/Exception; {:try_start_161 .. :try_end_16a} :catch_16b

    goto :goto_178

    :catch_16b
    move-exception v0

    .line 463
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 464
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$PhotoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    iget-object v0, v0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "delete db exception2"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 466
    :goto_178
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mMediaSaverListener:Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;

    if-eqz p0, :cond_185

    instance-of v0, p0, Lcom/transsion/camera/app/common/storage/MediaSaver$ProcessingMediaSaverListener;

    if-eqz v0, :cond_185

    .line 467
    check-cast p0, Lcom/transsion/camera/app/common/storage/MediaSaver$ProcessingMediaSaverListener;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/MediaSaver$ProcessingMediaSaverListener;->removeProcessingMedia()V

    :cond_185
    return v2
.end method

.method protected writeJpegFileFromUri()Z
    .registers 6

    .line 536
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mUri:Landroid/net/Uri;

    const/4 v1, 0x0

    if-eqz v0, :cond_95

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_95

    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_15

    goto/16 :goto_95

    .line 539
    :cond_15
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v2, "content"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_95

    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mUri:Landroid/net/Uri;

    .line 540
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "./"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_95

    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v2, ".."

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_95

    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mUri:Landroid/net/Uri;

    .line 541
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "~/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4f

    goto :goto_95

    :cond_4f
    const/4 v0, 0x0

    .line 545
    :try_start_50
    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$PhotoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    iget-object v2, v2, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v0

    if-eqz v0, :cond_76

    .line 547
    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_6c

    .line 548
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_71

    :catchall_68
    move-exception p0

    goto :goto_91

    :catch_6a
    move-exception v2

    goto :goto_83

    .line 550
    :cond_6c
    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mData:[B

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_71} :catch_6a
    .catchall {:try_start_50 .. :try_end_71} :catchall_68

    .line 560
    :goto_71
    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    const/4 p0, 0x1

    return p0

    .line 553
    :cond_76
    :try_start_76
    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$PhotoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    iget-object v2, v2, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "openOutputStream fail"

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_7f} :catch_6a
    .catchall {:try_start_76 .. :try_end_7f} :catchall_68

    .line 560
    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    return v1

    .line 557
    :goto_83
    :try_start_83
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$PhotoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v3, "write data fail"

    invoke-static {p0, v3, v2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8d
    .catchall {:try_start_83 .. :try_end_8d} :catchall_68

    .line 560
    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    return v1

    :goto_91
    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 561
    throw p0

    :cond_95
    :goto_95
    return v1
.end method
