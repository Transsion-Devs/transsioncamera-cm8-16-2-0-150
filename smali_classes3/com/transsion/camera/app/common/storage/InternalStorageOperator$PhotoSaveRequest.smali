.class public Lcom/transsion/camera/app/common/storage/InternalStorageOperator$PhotoSaveRequest;
.super Lcom/transsion/camera/app/common/storage/InternalStorageOperator$BaseSaveRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/storage/InternalStorageOperator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "PhotoSaveRequest"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/storage/InternalStorageOperator;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/storage/InternalStorageOperator;Landroid/content/ContentValues;[BLcom/transsion/camera/app/common/livephoto/PhotoTaskData;Landroid/graphics/Bitmap;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;Landroid/net/Uri;)V
    .registers 17

    .line 263
    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$PhotoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/InternalStorageOperator;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, p6

    move-object/from16 v8, p7

    .line 264
    invoke-direct/range {v0 .. v8}, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$BaseSaveRequest;-><init>(Lcom/transsion/camera/app/common/storage/InternalStorageOperator;Landroid/content/ContentValues;[BLcom/transsion/camera/app/common/livephoto/PhotoTaskData;Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;Landroid/net/Uri;)V

    return-void
.end method

.method private saveFileWithCheck()Z
    .registers 4

    .line 329
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$PhotoSaveRequest;->isDataValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 333
    :cond_8
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mFilePath:Ljava/lang/String;

    if-nez v0, :cond_16

    .line 334
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mValues:Landroid/content/ContentValues;

    const-string v2, "_data"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mFilePath:Ljava/lang/String;

    .line 337
    :cond_16
    iput v1, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mRetryCount:I

    .line 338
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mFilePath:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mData:[B

    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0, v1, v2}, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$PhotoSaveRequest;->writeJpegFile(Ljava/lang/String;[BLandroid/graphics/Bitmap;)Z

    move-result p0

    return p0
.end method

.method private writeJpegFile(Ljava/lang/String;[BLandroid/graphics/Bitmap;)Z
    .registers 10

    .line 355
    const-string v0, "[CapturePerformance] save data in file finish"

    const/4 v1, 0x0

    if-nez p1, :cond_d

    .line 356
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$BaseSaveRequest;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "filePath is null, invalid"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 359
    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 360
    iget-object v3, p0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$BaseSaveRequest;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v4, "[CapturePerformance] save data in file"

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 361
    :try_start_25
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_2a} :catch_52
    .catchall {:try_start_25 .. :try_end_2a} :catchall_50

    if-eqz p3, :cond_36

    .line 363
    :try_start_2c
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {p3, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_39

    :catchall_34
    move-exception v2

    goto :goto_54

    .line 365
    :cond_36
    invoke-virtual {v3, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 367
    :goto_39
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2
    :try_end_47
    .catchall {:try_start_2c .. :try_end_47} :catchall_34

    .line 368
    :try_start_47
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_52
    .catchall {:try_start_47 .. :try_end_4a} :catchall_50

    .line 378
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$BaseSaveRequest;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v2

    :catchall_50
    move-exception p1

    goto :goto_a0

    :catch_52
    move-exception v2

    goto :goto_5d

    .line 361
    :goto_54
    :try_start_54
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_58

    goto :goto_5c

    :catchall_58
    move-exception v3

    :try_start_59
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5c
    throw v2
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5d} :catch_52
    .catchall {:try_start_59 .. :try_end_5d} :catchall_50

    .line 369
    :goto_5d
    :try_start_5d
    iget-object v3, p0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$BaseSaveRequest;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v4, "Failed to save image,Exception:"

    invoke-static {v3, v4, v2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 370
    iget v2, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mRetryCount:I

    const/4 v3, 0x3

    if-ge v2, v3, :cond_9a

    add-int/lit8 v2, v2, 0x1

    .line 371
    iput v2, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mRetryCount:I

    mul-int/lit8 v2, v2, 0x32

    int-to-long v1, v2

    .line 372
    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 373
    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$BaseSaveRequest;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to save image,the:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mRetryCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "th retry"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 374
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$PhotoSaveRequest;->writeJpegFile(Ljava/lang/String;[BLandroid/graphics/Bitmap;)Z

    move-result p1
    :try_end_94
    .catchall {:try_start_5d .. :try_end_94} :catchall_50

    .line 378
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$BaseSaveRequest;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p1

    :cond_9a
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$BaseSaveRequest;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    :goto_a0
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$BaseSaveRequest;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 379
    throw p1
.end method


# virtual methods
.method getBaseUri()Landroid/net/Uri;
    .registers 1

    .line 343
    sget-object p0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    return-object p0
.end method

.method isDataValid()Z
    .registers 2

    .line 347
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mData:[B

    if-eqz v0, :cond_c

    :cond_8
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mValues:Landroid/content/ContentValues;

    if-nez v0, :cond_15

    .line 348
    :cond_c
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$BaseSaveRequest;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "data is null or ContentValues is null , invalid"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_15
    const/4 p0, 0x1

    return p0
.end method

.method public process()I
    .registers 6

    .line 269
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mLivePhotoTaskData:Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;

    const/4 v1, 0x0

    if-eqz v0, :cond_47

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->isLiveShotTask()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 270
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mLivePhotoTaskData:Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->getJpegImageData()[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v2, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData$$ExternalSyntheticLambda0;-><init>()V

    .line 271
    invoke-virtual {v0, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v2, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$PhotoSaveRequest$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$PhotoSaveRequest$$ExternalSyntheticLambda0;-><init>()V

    .line 272
    invoke-virtual {v0, v2}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v0

    .line 273
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/taps/entity/QualityInfo;

    if-eqz v0, :cond_35

    .line 274
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/taps/entity/QualityInfo;->isLowQuality()Z

    move-result v0

    if-nez v0, :cond_47

    .line 275
    :cond_35
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$PhotoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/InternalStorageOperator;

    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mLivePhotoTaskData:Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;

    iget-object v3, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mValues:Landroid/content/ContentValues;

    const-string v4, "_display_name"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->processLivePhotoData(Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mData:[B

    .line 279
    :cond_47
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mUri:Landroid/net/Uri;

    const/4 v2, 0x0

    if-nez v0, :cond_66

    .line 280
    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$PhotoSaveRequest;->saveFileWithCheck()Z

    move-result v0

    if-nez v0, :cond_53

    return v2

    .line 283
    :cond_53
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$BaseSaveRequest;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[CapturePerformance] insertDatabase start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 284
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$BaseSaveRequest;->insertDatabase()V

    .line 285
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$BaseSaveRequest;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[CapturePerformance] insertDatabase finish"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_111

    .line 287
    :cond_66
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mData:[B

    if-nez v0, :cond_6e

    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_b8

    .line 288
    :cond_6e
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$PhotoSaveRequest;->writeJpegFileFromUri()Z

    move-result v0

    if-nez v0, :cond_b8

    .line 290
    :try_start_74
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$BaseSaveRequest;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "writeJpegFileFromUri failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 291
    const-string v0, "[MediaProvider]process: delete"

    invoke-static {v0}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$PhotoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/InternalStorageOperator;

    iget-object v0, v0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_9b
    .catch Ljava/lang/SecurityException; {:try_start_74 .. :try_end_9b} :catch_9f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_74 .. :try_end_9b} :catch_9f
    .catchall {:try_start_74 .. :try_end_9b} :catchall_b3

    .line 296
    :goto_9b
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    goto :goto_a4

    :catch_9f
    move-exception v0

    .line 294
    :try_start_a0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_a3
    .catchall {:try_start_a0 .. :try_end_a3} :catchall_b3

    goto :goto_9b

    .line 298
    :goto_a4
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mMediaSaverListener:Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;

    if-eqz p0, :cond_b1

    instance-of v0, p0, Lcom/transsion/camera/app/common/storage/MediaSaver$ProcessingMediaSaverListener;

    if-eqz v0, :cond_b1

    .line 299
    check-cast p0, Lcom/transsion/camera/app/common/storage/MediaSaver$ProcessingMediaSaverListener;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/MediaSaver$ProcessingMediaSaverListener;->removeProcessingMedia()V

    :cond_b1
    const/4 p0, -0x1

    return p0

    :catchall_b3
    move-exception p0

    .line 296
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    .line 297
    throw p0

    .line 305
    :cond_b8
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$PhotoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/InternalStorageOperator;

    iget-object v0, v0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mUseGooglePhotosDefault:Z

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->getChoseGallery(Landroid/content/pm/PackageManager;Z)I

    move-result v0

    .line 306
    const-string v1, "[CapturePerformance] updateDatabase finish"

    const-string v3, "[CapturePerformance] updateDatabase start"

    if-eqz v0, :cond_f1

    .line 308
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mMediaSaverListener:Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;

    if-eqz v0, :cond_dd

    instance-of v4, v0, Lcom/transsion/camera/app/common/storage/MediaSaver$ProcessingMediaSaverListener;

    if-eqz v4, :cond_dd

    .line 309
    check-cast v0, Lcom/transsion/camera/app/common/storage/MediaSaver$ProcessingMediaSaverListener;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/MediaSaver$ProcessingMediaSaverListener;->removeProcessingMedia()V

    .line 311
    :cond_dd
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$BaseSaveRequest;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-static {v0, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$PhotoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/InternalStorageOperator;

    iget-object v3, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v3, v4}, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->updateDatabase(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 313
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$BaseSaveRequest;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_111

    .line 315
    :cond_f1
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$BaseSaveRequest;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-static {v0, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$PhotoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/InternalStorageOperator;

    iget-object v3, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v3, v4}, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->updateDatabase(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 317
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$BaseSaveRequest;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 318
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mMediaSaverListener:Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;

    if-eqz p0, :cond_111

    instance-of v0, p0, Lcom/transsion/camera/app/common/storage/MediaSaver$ProcessingMediaSaverListener;

    if-eqz v0, :cond_111

    .line 319
    check-cast p0, Lcom/transsion/camera/app/common/storage/MediaSaver$ProcessingMediaSaverListener;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/MediaSaver$ProcessingMediaSaverListener;->removeProcessingMedia()V

    :cond_111
    :goto_111
    return v2
.end method

.method protected writeJpegFileFromUri()Z
    .registers 6

    .line 384
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mUri:Landroid/net/Uri;

    const/4 v1, 0x0

    if-eqz v0, :cond_b5

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b5

    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_15

    goto/16 :goto_b5

    .line 387
    :cond_15
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v2, "content"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b5

    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mUri:Landroid/net/Uri;

    .line 388
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "./"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b5

    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v2, ".."

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b5

    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mUri:Landroid/net/Uri;

    .line 389
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "~/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4f

    goto :goto_b5

    :cond_4f
    const/4 v0, 0x0

    .line 393
    :try_start_50
    const-string v2, "[MediaProvider]writeJpegFileFromUri"

    invoke-static {v2}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 394
    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$BaseSaveRequest;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "writeJpegFileFromUri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 395
    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$PhotoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/InternalStorageOperator;

    iget-object v2, v2, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v0

    if-eqz v0, :cond_97

    .line 397
    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_8a

    .line 398
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_8f

    :catchall_86
    move-exception p0

    goto :goto_ae

    :catch_88
    move-exception v2

    goto :goto_a5

    .line 400
    :cond_8a
    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mData:[B

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_8f} :catch_88
    .catchall {:try_start_50 .. :try_end_8f} :catchall_86

    .line 410
    :goto_8f
    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 411
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    const/4 p0, 0x1

    return p0

    .line 403
    :cond_97
    :try_start_97
    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$BaseSaveRequest;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "openOutputStream fail"

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_9e} :catch_88
    .catchall {:try_start_97 .. :try_end_9e} :catchall_86

    .line 410
    :goto_9e
    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 411
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    return v1

    .line 407
    :goto_a5
    :try_start_a5
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$BaseSaveRequest;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v3, "write data fail"

    invoke-static {p0, v3, v2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_ad
    .catchall {:try_start_a5 .. :try_end_ad} :catchall_86

    goto :goto_9e

    .line 410
    :goto_ae
    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 411
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    .line 412
    throw p0

    :cond_b5
    :goto_b5
    return v1
.end method
