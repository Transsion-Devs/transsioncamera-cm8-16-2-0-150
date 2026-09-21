.class Lcom/transsion/camera/app/common/storage/InternalStorageOperator$PhotoSaveFuseRequest;
.super Lcom/transsion/camera/app/common/storage/InternalStorageOperator$PhotoSaveRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/storage/InternalStorageOperator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhotoSaveFuseRequest"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/storage/InternalStorageOperator;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/storage/InternalStorageOperator;Landroid/content/ContentValues;[BLandroid/graphics/Bitmap;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;Landroid/net/Uri;)V
    .registers 15

    .line 418
    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$PhotoSaveFuseRequest;->this$0:Lcom/transsion/camera/app/common/storage/InternalStorageOperator;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 419
    invoke-direct/range {v0 .. v7}, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$PhotoSaveRequest;-><init>(Lcom/transsion/camera/app/common/storage/InternalStorageOperator;Landroid/content/ContentValues;[BLcom/transsion/camera/app/common/livephoto/PhotoTaskData;Landroid/graphics/Bitmap;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;Landroid/net/Uri;)V

    .line 420
    const-string p0, "relative_path"

    invoke-static {}, Lcom/transsion/camera/utils/CameraUtil;->getCameraRelativePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private saveFileWithCheck()Z
    .registers 5

    .line 442
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$PhotoSaveRequest;->isDataValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 446
    :cond_8
    iput v1, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mRetryCount:I

    .line 447
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$PhotoSaveFuseRequest;->this$0:Lcom/transsion/camera/app/common/storage/InternalStorageOperator;

    iget-object v0, v0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mData:[B

    iget-object v3, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$PhotoSaveFuseRequest;->writeJpegFile(Landroid/content/ContentResolver;Landroid/net/Uri;[BLandroid/graphics/Bitmap;)Z

    move-result p0

    return p0
.end method

.method private writeJpegFile(Landroid/content/ContentResolver;Landroid/net/Uri;[BLandroid/graphics/Bitmap;)Z
    .registers 10

    .line 451
    invoke-static {p2}, Lcom/transsion/camera/utils/CameraUtil;->isUriValid(Landroid/net/Uri;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1f

    .line 452
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$BaseSaveRequest;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "uri is invalid: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 456
    :cond_1f
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$BaseSaveRequest;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "[CapturePerformance] save data in file"

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 457
    const-string v0, "[MediaProvider]writeJpegFile"

    invoke-static {v0}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 458
    :try_start_2c
    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v2
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_30} :catch_48
    .catchall {:try_start_2c .. :try_end_30} :catchall_a7

    if-eqz v2, :cond_4a

    if-eqz p4, :cond_3e

    .line 461
    :try_start_34
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p4, v1, v3, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_41

    :catchall_3c
    move-exception v1

    goto :goto_5a

    .line 463
    :cond_3e
    invoke-virtual {v2, p3}, Ljava/io/OutputStream;->write([B)V
    :try_end_41
    .catchall {:try_start_34 .. :try_end_41} :catchall_3c

    .line 469
    :goto_41
    :try_start_41
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_48
    .catchall {:try_start_41 .. :try_end_44} :catchall_a7

    .line 478
    :cond_44
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    goto :goto_9f

    :catch_48
    move-exception v1

    goto :goto_65

    .line 466
    :cond_4a
    :try_start_4a
    iget-object v3, p0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$BaseSaveRequest;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v4, "save data in file, open uri failed."

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_51
    .catchall {:try_start_4a .. :try_end_51} :catchall_3c

    if-eqz v2, :cond_56

    .line 469
    :try_start_53
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_48
    .catchall {:try_start_53 .. :try_end_56} :catchall_a7

    .line 478
    :cond_56
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    return v1

    :goto_5a
    if-eqz v2, :cond_64

    .line 458
    :try_start_5c
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_5f
    .catchall {:try_start_5c .. :try_end_5f} :catchall_60

    goto :goto_64

    :catchall_60
    move-exception v2

    :try_start_61
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_64
    :goto_64
    throw v1
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_65} :catch_48
    .catchall {:try_start_61 .. :try_end_65} :catchall_a7

    .line 470
    :goto_65
    :try_start_65
    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$BaseSaveRequest;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "Failed to save image,Exception:"

    invoke-static {v2, v3, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 471
    iget v1, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mRetryCount:I

    const/4 v2, 0x3

    if-ge v1, v2, :cond_44

    add-int/2addr v1, v0

    .line 472
    iput v1, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mRetryCount:I

    mul-int/lit8 v1, v1, 0x32

    int-to-long v0, v1

    .line 473
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 474
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$BaseSaveRequest;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to save image,the:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mRetryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "th retry"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 475
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$PhotoSaveFuseRequest;->writeJpegFile(Landroid/content/ContentResolver;Landroid/net/Uri;[BLandroid/graphics/Bitmap;)Z

    move-result p0
    :try_end_9b
    .catchall {:try_start_65 .. :try_end_9b} :catchall_a7

    .line 478
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    return p0

    .line 480
    :goto_9f
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$BaseSaveRequest;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[CapturePerformance] save data in file finish"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0

    :catchall_a7
    move-exception p0

    .line 478
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    .line 479
    throw p0
.end method


# virtual methods
.method public process()I
    .registers 4

    .line 425
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_16

    .line 426
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$BaseSaveRequest;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[CapturePerformance] insertDatabase start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 427
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$BaseSaveRequest;->insertDatabase()V

    .line 428
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$BaseSaveRequest;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[CapturePerformance] insertDatabase finish"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_2d

    .line 430
    :cond_16
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$BaseSaveRequest;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[CapturePerformance] updateDatabase start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 431
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$PhotoSaveFuseRequest;->this$0:Lcom/transsion/camera/app/common/storage/InternalStorageOperator;

    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->updateDatabase(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 432
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$BaseSaveRequest;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[CapturePerformance] updateDatabase finish"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 434
    :goto_2d
    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$PhotoSaveFuseRequest;->saveFileWithCheck()Z

    move-result v0

    if-nez v0, :cond_3d

    .line 435
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$BaseSaveRequest;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "saveFile failed, deleteDatabase."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 436
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$BaseSaveRequest;->deleteDatabase()V

    :cond_3d
    const/4 p0, 0x0

    return p0
.end method
