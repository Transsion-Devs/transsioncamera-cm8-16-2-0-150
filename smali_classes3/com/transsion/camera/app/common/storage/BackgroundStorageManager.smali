.class public Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;
.super Lcom/transsion/camera/app/common/storage/BaseStorageManager;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$OnLowQualityImageStateChangeListener;,
        Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$CaptureProgressImpl;,
        Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$LowQualityColumnIndices;,
        Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$ColumnIndices;
    }
.end annotation


# static fields
.field private static final FLUSH_BEFORE_LOW_QUALITY_JPEG_SAVE:Z

.field private static final LOW_QUALITY_PROJECTION:[Ljava/lang/String;

.field private static final PROJECTION:[Ljava/lang/String;

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final USER_COMMENT_IDS:Ljava/util/Set;


# instance fields
.field private mBackgroundService:Lcom/transsion/camera/app/common/taps/IBackgroundController;

.field private final mBackgroundShot2ShotSkipPolicy:Lcom/transsion/camera/app/common/taps/IBackgroundShot2ShotSkipPolicy;

.field private final mBackgroundStorageLifecycle:Lcom/transsion/camera/app/common/taps/IBackgroundStorageLifecycleObserver;

.field private final mCTSVerifierInstalled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mCaptureProgressImpl:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$CaptureProgressImpl;

.field private mCurrentCaptureStartState:Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;

.field private final mFailedLowQualityPicture:Ljava/util/Set;

.field private mGoToGalleryMediaStoreId:J

.field private final mLowQualityMediaSaverListener:Lcom/transsion/camera/app/common/taps/OnBackgroundImageStateChangeListener;

.field private final mLowQualityPictureCache:Ljava/util/Map;

.field private final mLowQualityPictureSavingCache:Ljava/util/Set;

.field private final mLowQualityPictureTimestampKey:Ljava/util/Map;

.field private final mMainHandler:Landroid/os/Handler;

.field private final mPhotoHelper:Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;

.field private mPostViewBitmapProcessingCount:Ljava/util/concurrent/CountDownLatch;

.field private mPostViewInfo:Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$PostViewInfo;

.field private mProcessingThumbUri:Landroid/net/Uri;

.field private mRestoreCacheNeeded:Z

.field private final mRestoreCacheTask:Ljava/lang/Runnable;

.field private final mScreenStateReceiver:Landroid/content/BroadcastReceiver;

.field private final mSystemUserID:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mThumbnailController:Ljava/lang/ref/WeakReference;

.field private mTranssionCameraMode:I

.field private final mWorkHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$-pv99j5JLRpDj55mpAurgpbkWlU(Landroid/database/Cursor;)Ljava/util/List;
    .registers 6

    .line 1386
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1387
    new-instance v1, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$ColumnIndices;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$ColumnIndices;-><init>(Landroid/database/Cursor;)V

    .line 1389
    :goto_a
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_70

    .line 1390
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1391
    const-string v3, "_display_name"

    iget v4, v1, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$ColumnIndices;->mDisplayNameIndex:I

    invoke-static {v2, v3, p0, v4}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->putString(Landroid/content/ContentValues;Ljava/lang/String;Landroid/database/Cursor;I)V

    .line 1392
    const-string v3, "_id"

    iget v4, v1, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$ColumnIndices;->mIdIndex:I

    invoke-static {v2, v3, p0, v4}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->putLong(Landroid/content/ContentValues;Ljava/lang/String;Landroid/database/Cursor;I)V

    .line 1393
    const-string v3, "datetaken"

    iget v4, v1, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$ColumnIndices;->mDateTakenIndex:I

    invoke-static {v2, v3, p0, v4}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->putLong(Landroid/content/ContentValues;Ljava/lang/String;Landroid/database/Cursor;I)V

    .line 1394
    const-string/jumbo v3, "title"

    iget v4, v1, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$ColumnIndices;->mTitleIndex:I

    invoke-static {v2, v3, p0, v4}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->putString(Landroid/content/ContentValues;Ljava/lang/String;Landroid/database/Cursor;I)V

    .line 1395
    const-string v3, "mime_type"

    iget v4, v1, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$ColumnIndices;->mMimeTypeIndex:I

    invoke-static {v2, v3, p0, v4}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->putString(Landroid/content/ContentValues;Ljava/lang/String;Landroid/database/Cursor;I)V

    .line 1396
    const-string/jumbo v3, "width"

    iget v4, v1, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$ColumnIndices;->mWidthIndex:I

    invoke-static {v2, v3, p0, v4}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->putInt(Landroid/content/ContentValues;Ljava/lang/String;Landroid/database/Cursor;I)V

    .line 1397
    const-string v3, "height"

    iget v4, v1, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$ColumnIndices;->mHeightIndex:I

    invoke-static {v2, v3, p0, v4}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->putInt(Landroid/content/ContentValues;Ljava/lang/String;Landroid/database/Cursor;I)V

    .line 1398
    const-string v3, "orientation"

    iget v4, v1, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$ColumnIndices;->mOrientationIndex:I

    invoke-static {v2, v3, p0, v4}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->putInt(Landroid/content/ContentValues;Ljava/lang/String;Landroid/database/Cursor;I)V

    .line 1399
    const-string v3, "_data"

    iget v4, v1, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$ColumnIndices;->mDataIndex:I

    invoke-static {v2, v3, p0, v4}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->putString(Landroid/content/ContentValues;Ljava/lang/String;Landroid/database/Cursor;I)V

    .line 1400
    const-string v3, "latitude"

    iget v4, v1, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$ColumnIndices;->mLatitudeIndex:I

    invoke-static {v2, v3, p0, v4}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->putDouble(Landroid/content/ContentValues;Ljava/lang/String;Landroid/database/Cursor;I)V

    .line 1401
    const-string v3, "longitude"

    iget v4, v1, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$ColumnIndices;->mLongitudeIndex:I

    invoke-static {v2, v3, p0, v4}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->putDouble(Landroid/content/ContentValues;Ljava/lang/String;Landroid/database/Cursor;I)V

    .line 1402
    const-string/jumbo v3, "xmp"

    iget v4, v1, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$ColumnIndices;->mXmpIndex:I

    invoke-static {v2, v3, p0, v4}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->putBlob(Landroid/content/ContentValues;Ljava/lang/String;Landroid/database/Cursor;I)V

    .line 1403
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_70
    return-object v0
.end method

.method public static synthetic $r8$lambda$2AzLAM8t9x5nKb6hPanvYfU2bh0(Landroid/os/Bundle;)V
    .registers 3

    .line 1406
    const-string v0, "android:query-arg-match-trashed"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$3RGGMBzZ8VIwFIa5PxP4a_PwkhE(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->lambda$onActivityResume$17()V

    return-void
.end method

.method public static synthetic $r8$lambda$7KLsA1Kz6R45aTUGjYKx5qb2vCg(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->lambda$restoreCache$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$KyH6d9dKBQ9YW1hhbB4UR5VU-hw(Landroid/database/Cursor;)Ljava/util/List;
    .registers 9

    .line 1527
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1528
    new-instance v1, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$LowQualityColumnIndices;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$LowQualityColumnIndices;-><init>(Landroid/database/Cursor;)V

    .line 1530
    :goto_a
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    const-string v3, "datetaken"

    const-string v4, "_display_name"

    if-eqz v2, :cond_75

    .line 1531
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1532
    iget v5, v1, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$LowQualityColumnIndices;->mDisplayNameIndex:I

    invoke-static {v2, v4, p0, v5}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->putString(Landroid/content/ContentValues;Ljava/lang/String;Landroid/database/Cursor;I)V

    .line 1533
    const-string v4, "_id"

    iget v5, v1, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$LowQualityColumnIndices;->mIdIndex:I

    invoke-static {v2, v4, p0, v5}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->putLong(Landroid/content/ContentValues;Ljava/lang/String;Landroid/database/Cursor;I)V

    .line 1534
    const-string v4, "bucket_id"

    iget v5, v1, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$LowQualityColumnIndices;->mBucketIdIndex:I

    invoke-static {v2, v4, p0, v5}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->putLong(Landroid/content/ContentValues;Ljava/lang/String;Landroid/database/Cursor;I)V

    .line 1535
    const-string v4, "mime_type"

    iget v5, v1, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$LowQualityColumnIndices;->mMimeTypeIndex:I

    invoke-static {v2, v4, p0, v5}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->putString(Landroid/content/ContentValues;Ljava/lang/String;Landroid/database/Cursor;I)V

    .line 1536
    iget v4, v1, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$LowQualityColumnIndices;->mDateTakenIndex:I

    invoke-static {v2, v3, p0, v4}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->putLong(Landroid/content/ContentValues;Ljava/lang/String;Landroid/database/Cursor;I)V

    .line 1537
    const-string v3, "date_added"

    iget v4, v1, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$LowQualityColumnIndices;->mDateAddedIndex:I

    invoke-static {v2, v3, p0, v4}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->putLong(Landroid/content/ContentValues;Ljava/lang/String;Landroid/database/Cursor;I)V

    .line 1538
    const-string v3, "date_modified"

    iget v4, v1, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$LowQualityColumnIndices;->mDateModifiedIndex:I

    invoke-static {v2, v3, p0, v4}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->putLong(Landroid/content/ContentValues;Ljava/lang/String;Landroid/database/Cursor;I)V

    .line 1539
    const-string v3, "_data"

    iget v4, v1, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$LowQualityColumnIndices;->mDataIndex:I

    invoke-static {v2, v3, p0, v4}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->putString(Landroid/content/ContentValues;Ljava/lang/String;Landroid/database/Cursor;I)V

    .line 1540
    const-string v3, "_size"

    iget v4, v1, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$LowQualityColumnIndices;->mSizeIndex:I

    invoke-static {v2, v3, p0, v4}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->putLong(Landroid/content/ContentValues;Ljava/lang/String;Landroid/database/Cursor;I)V

    .line 1541
    const-string v3, "is_favorite"

    iget v4, v1, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$LowQualityColumnIndices;->mIsFavoriteIndex:I

    invoke-static {v2, v3, p0, v4}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->putInt(Landroid/content/ContentValues;Ljava/lang/String;Landroid/database/Cursor;I)V

    .line 1542
    const-string/jumbo v3, "width"

    iget v4, v1, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$LowQualityColumnIndices;->mWidthIndex:I

    invoke-static {v2, v3, p0, v4}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->putInt(Landroid/content/ContentValues;Ljava/lang/String;Landroid/database/Cursor;I)V

    .line 1543
    const-string v3, "height"

    iget v4, v1, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$LowQualityColumnIndices;->mHeightIndex:I

    invoke-static {v2, v3, p0, v4}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->putInt(Landroid/content/ContentValues;Ljava/lang/String;Landroid/database/Cursor;I)V

    .line 1544
    const-string v3, "orientation"

    iget v4, v1, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$LowQualityColumnIndices;->mOrientationIndex:I

    invoke-static {v2, v3, p0, v4}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->putInt(Landroid/content/ContentValues;Ljava/lang/String;Landroid/database/Cursor;I)V

    .line 1546
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 1548
    :cond_75
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v1, 0x0

    :goto_7a
    if-ge v1, p0, :cond_ab

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Landroid/content/ContentValues;

    .line 1549
    sget-object v5, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getLowQualityMediaForProvider: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1550
    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1549
    invoke-static {v5, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_7a

    :cond_ab
    return-object v0
.end method

.method public static synthetic $r8$lambda$P58xkVSnTCUtK8BmuExsWKJ58vg(JLandroid/net/Uri;Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;
    .registers 6

    if-eqz p4, :cond_3

    return-object p4

    .line 706
    :cond_3
    sget-object p3, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "applyLowQualityPictureTimestampKeyCache: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 707
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$R_PuQ7wlrHmGmB6v2hpNOQSRvEI(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;JLandroid/net/Uri;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->lambda$applyLowQualityPictureCache$12(JLandroid/net/Uri;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TYD71eq29pMnoCtJimAJM8Vpm2A(Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;Lcom/transsion/camera/app/common/taps/entity/CacheInfo$Builder;Lcom/transsion/camera/app/common/taps/entity/CacheInfo;)Lcom/transsion/camera/app/common/taps/entity/CacheInfo$Builder;
    .registers 6

    if-eqz p2, :cond_e

    .line 661
    invoke-virtual {p2}, Lcom/transsion/camera/app/common/taps/entity/CacheInfo;->getDisplayNameInfo()Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 664
    :cond_e
    sget-object v0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyLowQualityPictureCache: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 665
    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/taps/entity/CacheInfo$Builder;->setDisplayNameInfo(Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;)Lcom/transsion/camera/app/common/taps/entity/CacheInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$U8HJznly-svYn9FlwD1MVzYroyc(Ljava/io/File;)Z
    .registers 2

    .line 1439
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "live_photo"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$XEuYZEw8ggZMK82mxjc2rwUs6mY(Landroid/database/Cursor;)Ljava/util/List;
    .registers 6

    .line 1569
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_76

    .line 1571
    new-instance v1, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$LowQualityColumnIndices;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$LowQualityColumnIndices;-><init>(Landroid/database/Cursor;)V

    .line 1572
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_76

    .line 1573
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1574
    const-string v3, "_display_name"

    iget v4, v1, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$LowQualityColumnIndices;->mDisplayNameIndex:I

    invoke-static {v2, v3, p0, v4}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->putString(Landroid/content/ContentValues;Ljava/lang/String;Landroid/database/Cursor;I)V

    .line 1575
    const-string v3, "_id"

    iget v4, v1, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$LowQualityColumnIndices;->mIdIndex:I

    invoke-static {v2, v3, p0, v4}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->putLong(Landroid/content/ContentValues;Ljava/lang/String;Landroid/database/Cursor;I)V

    .line 1576
    const-string v3, "bucket_id"

    iget v4, v1, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$LowQualityColumnIndices;->mBucketIdIndex:I

    invoke-static {v2, v3, p0, v4}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->putLong(Landroid/content/ContentValues;Ljava/lang/String;Landroid/database/Cursor;I)V

    .line 1577
    const-string v3, "mime_type"

    iget v4, v1, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$LowQualityColumnIndices;->mMimeTypeIndex:I

    invoke-static {v2, v3, p0, v4}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->putString(Landroid/content/ContentValues;Ljava/lang/String;Landroid/database/Cursor;I)V

    .line 1578
    const-string v3, "datetaken"

    iget v4, v1, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$LowQualityColumnIndices;->mDateTakenIndex:I

    invoke-static {v2, v3, p0, v4}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->putLong(Landroid/content/ContentValues;Ljava/lang/String;Landroid/database/Cursor;I)V

    .line 1579
    const-string v3, "date_added"

    iget v4, v1, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$LowQualityColumnIndices;->mDateAddedIndex:I

    invoke-static {v2, v3, p0, v4}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->putLong(Landroid/content/ContentValues;Ljava/lang/String;Landroid/database/Cursor;I)V

    .line 1580
    const-string v3, "date_modified"

    iget v4, v1, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$LowQualityColumnIndices;->mDateModifiedIndex:I

    invoke-static {v2, v3, p0, v4}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->putLong(Landroid/content/ContentValues;Ljava/lang/String;Landroid/database/Cursor;I)V

    .line 1581
    const-string v3, "_data"

    iget v4, v1, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$LowQualityColumnIndices;->mDataIndex:I

    invoke-static {v2, v3, p0, v4}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->putString(Landroid/content/ContentValues;Ljava/lang/String;Landroid/database/Cursor;I)V

    .line 1582
    const-string v3, "_size"

    iget v4, v1, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$LowQualityColumnIndices;->mSizeIndex:I

    invoke-static {v2, v3, p0, v4}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->putLong(Landroid/content/ContentValues;Ljava/lang/String;Landroid/database/Cursor;I)V

    .line 1583
    const-string v3, "is_favorite"

    iget v4, v1, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$LowQualityColumnIndices;->mIsFavoriteIndex:I

    invoke-static {v2, v3, p0, v4}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->putInt(Landroid/content/ContentValues;Ljava/lang/String;Landroid/database/Cursor;I)V

    .line 1584
    const-string/jumbo v3, "width"

    iget v4, v1, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$LowQualityColumnIndices;->mWidthIndex:I

    invoke-static {v2, v3, p0, v4}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->putInt(Landroid/content/ContentValues;Ljava/lang/String;Landroid/database/Cursor;I)V

    .line 1585
    const-string v3, "height"

    iget v4, v1, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$LowQualityColumnIndices;->mHeightIndex:I

    invoke-static {v2, v3, p0, v4}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->putInt(Landroid/content/ContentValues;Ljava/lang/String;Landroid/database/Cursor;I)V

    .line 1586
    const-string v3, "orientation"

    iget v1, v1, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$LowQualityColumnIndices;->mOrientationIndex:I

    invoke-static {v2, v3, p0, v1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->putInt(Landroid/content/ContentValues;Ljava/lang/String;Landroid/database/Cursor;I)V

    .line 1588
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_76
    return-object v0
.end method

.method public static synthetic $r8$lambda$euUhDs9jv49lYz7JZPjp7aYVp1g(Lcom/transsion/camera/app/common/taps/IThumbnailController;)V
    .registers 2

    const/4 v0, 0x0

    .line 987
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/taps/IThumbnailController;->updateThumbnailUIEnable(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$fKI6NuwG692rCopyFcbzfaU_knI(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;Landroid/net/Uri;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->lambda$clearLowQualityPictureCache$14(Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic $r8$lambda$falPs4EZN_j45bybXXby9ZBfjk8(Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;Lcom/transsion/camera/app/common/taps/entity/CacheInfo$Builder;Lcom/transsion/camera/app/common/taps/entity/CacheInfo;)Lcom/transsion/camera/app/common/taps/entity/CacheInfo$Builder;
    .registers 5

    if-eqz p2, :cond_e

    .line 636
    invoke-virtual {p2}, Lcom/transsion/camera/app/common/taps/entity/CacheInfo;->getImageInfo()Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 639
    :cond_e
    sget-object p2, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applyLowQualityPictureCache: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 640
    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/taps/entity/CacheInfo$Builder;->setImageInfo(Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;)Lcom/transsion/camera/app/common/taps/entity/CacheInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$fciInEkRu276NOuz2Ohc70dPiFQ(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;JLcom/transsion/camera/app/common/taps/entity/CacheInfo;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->lambda$applyLowQualityPictureCache$8(JLcom/transsion/camera/app/common/taps/entity/CacheInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fzL2EYrqvJpDtPLFTxctRdEPUUw([BLcom/transsion/camera/app/common/storage/IBackgroundStorageManager$PostViewInfo;)V
    .registers 2

    .line 462
    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$PostViewInfo;->setPostViewJpeg([B)Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$PostViewInfo;

    return-void
.end method

.method public static synthetic $r8$lambda$gYA4RKHZvecYBcXGVZm6kp4rylE(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;J[Ljava/io/File;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->lambda$restoreLivePhotoCacheFromStorage$25(J[Ljava/io/File;)V

    return-void
.end method

.method public static synthetic $r8$lambda$h4Ybxda5nXI6o1Ibe893o5Ij-JI(Lcom/transsion/camera/app/common/taps/entity/QualityInfo;Lcom/transsion/camera/app/common/taps/entity/CacheInfo$Builder;Lcom/transsion/camera/app/common/taps/entity/CacheInfo;)Lcom/transsion/camera/app/common/taps/entity/CacheInfo$Builder;
    .registers 5

    if-eqz p2, :cond_e

    .line 650
    invoke-virtual {p2}, Lcom/transsion/camera/app/common/taps/entity/CacheInfo;->getQualityInfo()Lcom/transsion/camera/app/common/taps/entity/QualityInfo;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/taps/entity/QualityInfo;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 653
    :cond_e
    sget-object p2, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applyLowQualityPictureCache: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 654
    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/taps/entity/CacheInfo$Builder;->setQualityInfo(Lcom/transsion/camera/app/common/taps/entity/QualityInfo;)Lcom/transsion/camera/app/common/taps/entity/CacheInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$hIaN1XmQXHl5dUvNfnTq9Id-GLE(Landroid/graphics/Bitmap;Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$PostViewInfo;)V
    .registers 2

    .line 465
    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$PostViewInfo;->setPostViewBitmap(Landroid/graphics/Bitmap;)Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$PostViewInfo;

    return-void
.end method

.method public static synthetic $r8$lambda$hoi4lbTnit9P2q0XqAeyfkvoDvA(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$ix3asQ7fn6-OqVGy2atvm1d9HI8(Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;Lcom/transsion/camera/app/common/taps/entity/CacheInfo$Builder;Lcom/transsion/camera/app/common/taps/entity/CacheInfo;)Lcom/transsion/camera/app/common/taps/entity/CacheInfo$Builder;
    .registers 5

    const/4 v0, 0x0

    if-eqz p2, :cond_e

    .line 598
    invoke-virtual {p2}, Lcom/transsion/camera/app/common/taps/entity/CacheInfo;->getLivePhotoInfo()Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    return-object v0

    :cond_e
    if-nez p2, :cond_11

    goto :goto_15

    .line 601
    :cond_11
    invoke-virtual {p2}, Lcom/transsion/camera/app/common/taps/entity/CacheInfo;->getLivePhotoInfo()Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;

    move-result-object v0

    :goto_15
    if-nez v0, :cond_18

    goto :goto_49

    .line 606
    :cond_18
    new-instance p2, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo$Builder;

    invoke-direct {p2, v0}, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo$Builder;-><init>(Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;)V

    .line 607
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;->getPresentationTimeUs()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo$Builder;->setPresentationTimeUs(J)Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo$Builder;

    move-result-object p2

    .line 608
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;->getLivePhotoVideoPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo$Builder;->setLivePhotoVideoPath(Ljava/lang/String;)Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo$Builder;

    move-result-object p2

    .line 609
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;->isProcessing()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo$Builder;->setProcessing(Z)Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo$Builder;

    move-result-object p2

    .line 610
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;->getCamFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo$Builder;->setCamFilePath(Ljava/lang/String;)Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo$Builder;

    move-result-object p2

    .line 611
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;->getGyroFilePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo$Builder;->setGyroFilePath(Ljava/lang/String;)Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo$Builder;

    move-result-object p0

    .line 612
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo$Builder;->build()Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;

    move-result-object p0

    .line 614
    :goto_49
    sget-object p2, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applyLowQualityPictureCache: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 615
    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/taps/entity/CacheInfo$Builder;->setLivePhotoInfo(Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;)Lcom/transsion/camera/app/common/taps/entity/CacheInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$o6nSP3mob7Nugg4dkkrXaNf8gJc(Ljava/util/function/BiFunction;Ljava/lang/Long;Lcom/transsion/camera/app/common/taps/entity/CacheInfo;)Lcom/transsion/camera/app/common/taps/entity/CacheInfo;
    .registers 6

    if-nez p2, :cond_c

    .line 680
    new-instance v0, Lcom/transsion/camera/app/common/taps/entity/CacheInfo$Builder;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/common/taps/entity/CacheInfo$Builder;-><init>(J)V

    goto :goto_11

    .line 681
    :cond_c
    new-instance v0, Lcom/transsion/camera/app/common/taps/entity/CacheInfo$Builder;

    invoke-direct {v0, p2}, Lcom/transsion/camera/app/common/taps/entity/CacheInfo$Builder;-><init>(Lcom/transsion/camera/app/common/taps/entity/CacheInfo;)V

    .line 683
    :goto_11
    invoke-interface {p0, v0, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/taps/entity/CacheInfo$Builder;

    if-eqz p0, :cond_1e

    .line 685
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/taps/entity/CacheInfo$Builder;->build()Lcom/transsion/camera/app/common/taps/entity/CacheInfo;

    move-result-object p0

    return-object p0

    :cond_1e
    return-object p2
.end method

.method public static synthetic $r8$lambda$r6fRqCDKfARtEwOa1yFdwo1rNXE(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;Landroid/content/Context;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->lambda$onActivityResume$18(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$r_My_kO_i3Z34DPoRPkga-y-uTg(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;JLandroid/net/Uri;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->lambda$applyLowQualityPictureCache$7(JLandroid/net/Uri;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vwD9YNTxuGlP5NC89N4ut4Qo77U(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 2

    .line 1333
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic $r8$lambda$wrPWoMr00ylkbq2d_PGSy4VK0k8(Lcom/transsion/camera/app/common/taps/entity/CacheInfo;)V
    .registers 1

    if-eqz p0, :cond_b

    .line 620
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/taps/entity/CacheInfo;->getLivePhotoInfo()Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 622
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;->complete()V

    :cond_b
    return-void
.end method

.method public static synthetic $r8$lambda$ww9tmv7tZdoXF74p4ARdnXhzvR4(Ljava/io/File;)Z
    .registers 2

    .line 1491
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$zb8or1Msj6d-Duf1cg-7yfAissw(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;Ljava/lang/ref/WeakReference;)Lcom/transsion/camera/app/common/taps/IThumbnailController;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->lambda$onCaptureStarted$15(Ljava/lang/ref/WeakReference;)Lcom/transsion/camera/app/common/taps/IThumbnailController;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$zmw2-KBwnUgLv-tWB7X6lkDq75M(Ljava/lang/String;)Z
    .registers 1

    .line 1334
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmBackgroundService(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;)Lcom/transsion/camera/app/common/taps/IBackgroundController;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mBackgroundService:Lcom/transsion/camera/app/common/taps/IBackgroundController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCaptureProgressImpl(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;)Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$CaptureProgressImpl;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mCaptureProgressImpl:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$CaptureProgressImpl;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFailedLowQualityPicture(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;)Ljava/util/Set;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mFailedLowQualityPicture:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLowQualityPictureCache(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;)Ljava/util/Map;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mLowQualityPictureCache:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLowQualityPictureSavingCache(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;)Ljava/util/Set;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mLowQualityPictureSavingCache:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLowQualityPictureTimestampKey(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;)Ljava/util/Map;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mLowQualityPictureTimestampKey:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPostViewBitmapProcessingCount(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;)Ljava/util/concurrent/CountDownLatch;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mPostViewBitmapProcessingCount:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProcessingThumbUri(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;)Landroid/net/Uri;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mProcessingThumbUri:Landroid/net/Uri;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmThumbnailController(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;)Ljava/lang/ref/WeakReference;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mThumbnailController:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mapplyLowQualityPictureCache(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->applyLowQualityPictureCache(Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearLowQualityPictureCache(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;J)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->clearLowQualityPictureCache(J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetThumbnailController(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;)Lcom/transsion/camera/app/common/taps/IThumbnailController;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->getThumbnailController()Lcom/transsion/camera/app/common/taps/IThumbnailController;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$monLowQualityJpegSaved(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;JLjava/lang/String;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->onLowQualityJpegSaved(JLjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monSaveHighQualityJpeg(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;ILcom/transsion/camera/app/common/taps/OnBackgroundImageStateChangeListener;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->onSaveHighQualityJpeg(Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;ILcom/transsion/camera/app/common/taps/OnBackgroundImageStateChangeListener;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdatePostViewPicture(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;JLjava/util/function/Consumer;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->updatePostViewPicture(JLjava/util/function/Consumer;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetFLUSH_BEFORE_LOW_QUALITY_JPEG_SAVE()Z
    .registers 1

    .line 0
    sget-boolean v0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->FLUSH_BEFORE_LOW_QUALITY_JPEG_SAVE:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 14

    .line 105
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "BackgroundStorageManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 119
    const-string v12, "longitude"

    const-string/jumbo v13, "xmp"

    const-string v2, "_id"

    const-string v3, "datetaken"

    const-string/jumbo v4, "title"

    const-string v5, "_display_name"

    const-string v6, "mime_type"

    const-string/jumbo v7, "width"

    const-string v8, "height"

    const-string v9, "orientation"

    const-string v10, "_data"

    const-string v11, "latitude"

    filled-new-array/range {v2 .. v13}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->PROJECTION:[Ljava/lang/String;

    .line 133
    const-string v12, "height"

    const-string v13, "orientation"

    const-string v1, "_id"

    const-string v2, "bucket_id"

    const-string v3, "_display_name"

    const-string v4, "mime_type"

    const-string v5, "datetaken"

    const-string v6, "date_added"

    const-string v7, "date_modified"

    const-string v8, "_data"

    const-string v9, "_size"

    const-string v10, "is_favorite"

    const-string/jumbo v11, "width"

    filled-new-array/range {v1 .. v13}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->LOW_QUALITY_PROJECTION:[Ljava/lang/String;

    .line 148
    new-instance v0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$1;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$1;-><init>()V

    sput-object v0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->USER_COMMENT_IDS:Ljava/util/Set;

    .line 156
    const-string v0, "debug.vendor.sys.taps.flush_before_low_quality_jpeg_save"

    const/4 v1, 0x1

    .line 157
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->FLUSH_BEFORE_LOW_QUALITY_JPEG_SAVE:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/common/storage/DataStore;Lcom/transsion/camera/app/common/taps/IBackgroundStorageLifecycleObserver;)V
    .registers 6

    .line 202
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/storage/BaseStorageManager;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 159
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mMainHandler:Landroid/os/Handler;

    .line 162
    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p2, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mLowQualityPictureCache:Ljava/util/Map;

    .line 163
    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p2, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mLowQualityPictureTimestampKey:Ljava/util/Map;

    .line 164
    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mLowQualityPictureSavingCache:Ljava/util/Set;

    .line 165
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mFailedLowQualityPicture:Ljava/util/Set;

    .line 166
    new-instance p2, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$OnLowQualityImageStateChangeListener;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$OnLowQualityImageStateChangeListener;-><init>(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;Lcom/transsion/camera/app/common/storage/BackgroundStorageManager-IA;)V

    iput-object p2, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mLowQualityMediaSaverListener:Lcom/transsion/camera/app/common/taps/OnBackgroundImageStateChangeListener;

    .line 169
    new-instance p2, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$CaptureProgressImpl;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$CaptureProgressImpl;-><init>(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;)V

    iput-object p2, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mCaptureProgressImpl:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$CaptureProgressImpl;

    .line 170
    new-instance p2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/high16 v1, -0x80000000

    invoke-direct {p2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p2, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mSystemUserID:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 171
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {p2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mCTSVerifierInstalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 172
    new-instance p2, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda9;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda9;-><init>(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;)V

    iput-object p2, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mRestoreCacheTask:Ljava/lang/Runnable;

    .line 176
    new-instance p2, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$2;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$2;-><init>(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;)V

    iput-object p2, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    const/4 p2, 0x1

    .line 199
    iput-boolean p2, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mRestoreCacheNeeded:Z

    .line 203
    iput-object p3, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mBackgroundStorageLifecycle:Lcom/transsion/camera/app/common/taps/IBackgroundStorageLifecycleObserver;

    .line 204
    new-instance p2, Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;

    invoke-direct {p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;-><init>()V

    iput-object p2, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mPhotoHelper:Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;

    .line 205
    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->createWorkHandler()Landroid/os/Handler;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mWorkHandler:Landroid/os/Handler;

    .line 207
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportBackgroundShot2shotSkipPolicy:Z

    if-eqz v1, :cond_76

    .line 208
    new-instance v0, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundShot2ShotSkipPolicy;

    invoke-direct {v0, p2}, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundShot2ShotSkipPolicy;-><init>(Landroid/os/Handler;)V

    :cond_76
    iput-object v0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mBackgroundShot2ShotSkipPolicy:Lcom/transsion/camera/app/common/taps/IBackgroundShot2ShotSkipPolicy;

    if-eqz p3, :cond_7d

    .line 210
    invoke-interface {p3, p0}, Lcom/transsion/camera/app/common/taps/IBackgroundStorageLifecycleObserver;->onBackgroundStorageCreate(Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager;)V

    .line 212
    :cond_7d
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->registerReceiver(Landroid/content/Context;)V

    .line 213
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->registerContentObserver(Landroid/content/Context;)V

    return-void
.end method

.method private applyLowQualityPictureCache(JLjava/util/function/BiFunction;)V
    .registers 5

    const/4 v0, 0x0

    .line 672
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->applyLowQualityPictureCache(JLjava/util/function/BiFunction;Ljava/util/function/Consumer;)V

    return-void
.end method

.method private applyLowQualityPictureCache(JLjava/util/function/BiFunction;Ljava/util/function/Consumer;)V
    .registers 5

    .line 678
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mLowQualityPictureCache:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    new-instance p2, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda31;

    invoke-direct {p2, p3}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda31;-><init>(Ljava/util/function/BiFunction;)V

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/taps/entity/CacheInfo;

    if-eqz p4, :cond_18

    if-eqz p0, :cond_18

    .line 688
    invoke-interface {p4, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_18
    return-void
.end method

.method private applyLowQualityPictureCache(Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;)V
    .registers 5

    .line 630
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_e

    .line 631
    sget-object p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "applyLowQualityPictureCache: invalid imageInfo"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 634
    :cond_e
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/taps/entity/BaseInfo;->getTimestampKey()J

    move-result-wide v0

    .line 635
    new-instance v2, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda29;

    invoke-direct {v2, p1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda29;-><init>(Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;)V

    new-instance p1, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda30;

    invoke-direct {p1, p0, v0, v1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda30;-><init>(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;J)V

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->applyLowQualityPictureCache(JLjava/util/function/BiFunction;Ljava/util/function/Consumer;)V

    return-void
.end method

.method private applyLowQualityPictureCache(Lcom/transsion/camera/app/common/taps/entity/CacheInfo;)V
    .registers 6

    .line 693
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/taps/entity/BaseInfo;->getTimestampKey()J

    move-result-wide v0

    .line 694
    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mLowQualityPictureCache:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v2, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda12;

    invoke-direct {v2}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda12;-><init>()V

    .line 696
    invoke-virtual {p1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    new-instance v2, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda13;

    invoke-direct {v2}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda13;-><init>()V

    .line 697
    invoke-virtual {p1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    new-instance v2, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda14;

    invoke-direct {v2, p0, v0, v1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda14;-><init>(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;J)V

    .line 698
    invoke-virtual {p1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private applyLowQualityPictureCache(Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;)V
    .registers 5

    .line 660
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/taps/entity/BaseInfo;->getTimestampKey()J

    move-result-wide v0

    new-instance v2, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda19;

    invoke-direct {v2, p1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda19;-><init>(Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->applyLowQualityPictureCache(JLjava/util/function/BiFunction;)V

    return-void
.end method

.method private applyLowQualityPictureCache(Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;)V
    .registers 3

    const/4 v0, 0x0

    .line 584
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->applyLowQualityPictureCache(Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;Z)Z

    return-void
.end method

.method private applyLowQualityPictureCache(Lcom/transsion/camera/app/common/taps/entity/QualityInfo;)V
    .registers 5

    .line 649
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/taps/entity/BaseInfo;->getTimestampKey()J

    move-result-wide v0

    new-instance v2, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda27;

    invoke-direct {v2, p1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda27;-><init>(Lcom/transsion/camera/app/common/taps/entity/QualityInfo;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->applyLowQualityPictureCache(JLjava/util/function/BiFunction;)V

    return-void
.end method

.method private applyLowQualityPictureCache(Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;Z)Z
    .registers 7

    .line 589
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->getBackgroundServiceType()Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$BackgroundServiceType;

    move-result-object v0

    sget-object v1, Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$BackgroundServiceType;->BG_SERVICE:Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$BackgroundServiceType;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_a

    return v2

    .line 592
    :cond_a
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/taps/entity/BaseInfo;->getTimestampKey()J

    move-result-wide v0

    if-eqz p2, :cond_1d

    .line 593
    iget-object p2, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mLowQualityPictureCache:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1d

    return v2

    .line 596
    :cond_1d
    new-instance p2, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda15;

    invoke-direct {p2, p1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda15;-><init>(Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;)V

    new-instance p1, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda16;

    invoke-direct {p1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda16;-><init>()V

    invoke-direct {p0, v0, v1, p2, p1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->applyLowQualityPictureCache(JLjava/util/function/BiFunction;Ljava/util/function/Consumer;)V

    const/4 p0, 0x1

    return p0
.end method

.method private applyLowQualityPictureTimestampKeyCache(Landroid/net/Uri;J)V
    .registers 6

    .line 702
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mLowQualityPictureTimestampKey:Ljava/util/Map;

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda28;

    invoke-direct {v1, p2, p3, p1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda28;-><init>(JLandroid/net/Uri;)V

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    return-void
.end method

.method private checkBackgroundService()V
    .registers 2

    .line 1069
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mBackgroundService:Lcom/transsion/camera/app/common/taps/IBackgroundController;

    if-eqz p0, :cond_5

    return-void

    .line 1070
    :cond_5
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "mBackgroundService is null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private clearLowQualityPictureCache(J)V
    .registers 6

    .line 713
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mLowQualityPictureCache:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 714
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mLowQualityPictureCache:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/taps/entity/CacheInfo;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda12;

    invoke-direct {v1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda12;-><init>()V

    .line 715
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda13;

    invoke-direct {v1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda13;-><init>()V

    .line 716
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda35;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda35;-><init>(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;)V

    .line 717
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 718
    sget-object v0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearLowQualityPictureCache: timestamp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mLowQualityPictureCache:Ljava/util/Map;

    .line 719
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mLowQualityPictureTimestampKey:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 718
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_66
    return-void
.end method

.method private static createSqlQueryBundle(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 5

    .line 1687
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-nez p0, :cond_c

    if-nez p1, :cond_c

    if-nez p2, :cond_c

    goto :goto_21

    :cond_c
    if-eqz p0, :cond_13

    .line 1693
    const-string v1, "android:query-arg-sql-selection"

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    if-eqz p1, :cond_1a

    .line 1696
    const-string p0, "android:query-arg-sql-selection-args"

    invoke-virtual {v0, p0, p1}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_1a
    if-eqz p2, :cond_21

    .line 1699
    const-string p0, "android:query-arg-sql-sort-order"

    invoke-virtual {v0, p0, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_21
    :goto_21
    return-object v0
.end method

.method private createWorkHandler()Landroid/os/Handler;
    .registers 2

    .line 228
    new-instance p0, Landroid/os/HandlerThread;

    const-string v0, "BackgroundStorageManager"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 230
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method

.method private doSaveHighQualityJpeg(JLandroid/content/ContentValues;[BLcom/transsion/camera/app/common/livephoto/PhotoTaskData;Landroid/net/Uri;Lcom/transsion/camera/app/common/taps/OnBackgroundImageStateChangeListener;)V
    .registers 18

    move-object v2, p4

    move-object/from16 v8, p6

    if-eqz v2, :cond_24

    .line 490
    invoke-static {p4}, Lcom/transsion/camera/utils/ExifUtils;->updateExifForAnalytics([B)V

    .line 491
    sget-object v0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ImageProcessor_SceneType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "SceneType"

    .line 492
    invoke-static {p4, v4}, Lcom/transsion/camera/utils/ExifUtils;->getExifStringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 491
    invoke-static {v0, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 494
    :cond_24
    const-string v0, "[TranMemoryFlow] available memory when save file:"

    invoke-static {v0}, Lcom/transsion/camera/utils/MemoryUtils;->logAvailMemoryAsync(Ljava/lang/String;)V

    if-nez v2, :cond_5c

    if-nez p5, :cond_5c

    const/4 v2, 0x0

    .line 498
    :try_start_2e
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v8, p3, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_37} :catch_39

    const/4 v0, 0x0

    goto :goto_51

    :catch_39
    move-exception v0

    .line 501
    sget-object v3, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doSaveHighQualityJpeg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 504
    :goto_51
    new-instance v3, Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;

    invoke-direct {v3, p1, p2, v8, v2}, Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;-><init>(JLandroid/net/Uri;Landroid/content/ContentValues;)V

    move-object/from16 v4, p7

    invoke-direct {p0, v3, v0, v4}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->onSaveHighQualityJpeg(Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;ILcom/transsion/camera/app/common/taps/OnBackgroundImageStateChangeListener;)V

    return-void

    :cond_5c
    move-object/from16 v4, p7

    .line 506
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->getStorageOperator()Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    move-result-object v9

    new-instance v0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$5;

    move-object v1, p0

    move-object v5, p3

    move-object v7, p5

    move-object v6, v2

    move-wide v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$5;-><init>(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;JLcom/transsion/camera/app/common/taps/OnBackgroundImageStateChangeListener;Landroid/content/ContentValues;[BLcom/transsion/camera/app/common/livephoto/PhotoTaskData;)V

    const/4 v3, 0x0

    move-object v1, p3

    move-object v2, p4

    move-object v4, p5

    move-object v5, v0

    move-object v6, v8

    move-object v0, v9

    invoke-interface/range {v0 .. v6}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->addPhotoSaveRequest(Landroid/content/ContentValues;[BLandroid/graphics/Bitmap;Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;Landroid/net/Uri;)V

    return-void
.end method

.method private static getBaseSelection(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 1705
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(owner_package_name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\')"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getBaseSelection(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1709
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "owner_package_name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1710
    invoke-static {p1, p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mergeSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getBytesFromUri(Landroid/content/Context;Landroid/net/Uri;)[B
    .registers 6

    .line 1867
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    .line 1868
    :try_start_5
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_9} :catch_40

    if-nez p0, :cond_1c

    .line 1870
    :try_start_b
    sget-object p1, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "getBytesFromUri: open uri failed"

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1871
    new-array p1, v0, [B
    :try_end_14
    .catchall {:try_start_b .. :try_end_14} :catchall_1a

    if-eqz p0, :cond_19

    .line 1880
    :goto_16
    :try_start_16
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_40

    :cond_19
    return-object p1

    :catchall_1a
    move-exception p1

    goto :goto_35

    .line 1873
    :cond_1c
    :try_start_1c
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x1000

    .line 1874
    new-array v1, v1, [B

    .line 1876
    :goto_25
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_30

    .line 1877
    invoke-virtual {p1, v1, v0, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_25

    .line 1879
    :cond_30
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_34
    .catchall {:try_start_1c .. :try_end_34} :catchall_1a

    goto :goto_16

    :goto_35
    if-eqz p0, :cond_3f

    .line 1868
    :try_start_37
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_3b

    goto :goto_3f

    :catchall_3b
    move-exception p0

    :try_start_3c
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3f
    :goto_3f
    throw p1
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_40} :catch_40

    .line 1881
    :catch_40
    new-array p0, v0, [B

    return-object p0
.end method

.method public static getContentUri(J)Landroid/net/Uri;
    .registers 3

    .line 1356
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static getFileInfoFromContentUri(Landroid/content/ContentResolver;Landroid/net/Uri;)[Ljava/lang/String;
    .registers 14

    .line 1662
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1665
    const-string v0, "_data"

    const-string v3, "_display_name"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x0

    move-object v4, p0

    move-object v5, p1

    .line 1669
    :try_start_12
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_16} :catch_52

    if-eqz p0, :cond_48

    .line 1670
    :try_start_18
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_48

    .line 1671
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    .line 1672
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_26
    .catchall {:try_start_18 .. :try_end_26} :catchall_35

    .line 1673
    :try_start_26
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 1674
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_32

    move-object v11, v10

    move-object v10, p1

    move-object p1, v11

    goto :goto_49

    :catchall_32
    move-exception v0

    move-object v3, v0

    goto :goto_38

    :catchall_35
    move-exception v0

    move-object v3, v0

    move-object p1, v10

    .line 1669
    :goto_38
    :try_start_38
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_3c

    goto :goto_41

    :catchall_3c
    move-exception v0

    move-object p0, v0

    :try_start_3e
    invoke-virtual {v3, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_41
    throw v3
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_42} :catch_42

    :catch_42
    move-exception v0

    move-object p0, v0

    move-object v11, v10

    move-object v10, p1

    move-object p1, v11

    goto :goto_55

    :cond_48
    move-object p1, v10

    :goto_49
    if-eqz p0, :cond_58

    .line 1676
    :try_start_4b
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4e} :catch_4f

    goto :goto_58

    :catch_4f
    move-exception v0

    move-object p0, v0

    goto :goto_55

    :catch_52
    move-exception v0

    move-object p0, v0

    move-object p1, v10

    .line 1677
    :goto_55
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1679
    :cond_58
    :goto_58
    sget-object p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFilePathFromContentUri: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1680
    filled-new-array {v10, p1}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getHighQualityContentValues(Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .registers 5

    .line 1232
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->removeCustomContentValues(Landroid/content/ContentValues;)V

    const/4 v0, 0x0

    .line 1233
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "is_pending"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1235
    const-string v0, "_display_name"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->getHighQualityDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1234
    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1236
    sget-object v0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getHighQualityContentValues: values = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->getStorageOperator()Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->getCameraDirectory()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p1
.end method

.method private getHighQualityContentValues([BJLcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;)Landroid/content/ContentValues;
    .registers 7

    if-eqz p4, :cond_1d

    .line 1221
    invoke-virtual {p4}, Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;->getValues()Landroid/content/ContentValues;

    move-result-object p1

    .line 1222
    sget-object p4, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getHighQualityContentValues: normal: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p4, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_42

    .line 1224
    :cond_1d
    iget-object p4, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mPhotoHelper:Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;

    .line 1225
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->getStorageOperator()Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->getCameraDirectory()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 1224
    invoke-virtual {p4, p1, v1, v1, v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;->createContentValues([BLandroid/graphics/Bitmap;Landroid/location/Location;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object p1

    .line 1226
    sget-object p4, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getHighQualityContentValues: without low quality picture: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p4, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1228
    :goto_42
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->getHighQualityContentValues(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object p0

    return-object p0
.end method

.method public static getHighQualityDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 1360
    invoke-static {p0}, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;->getHighQualityDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getImageUri(Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;)Landroid/net/Uri;
    .registers 2

    if-eqz p1, :cond_7

    .line 1243
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;->getUri()Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method private getInfoFromCache(JLjava/util/function/Function;)Ljava/lang/Object;
    .registers 4

    .line 1350
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mLowQualityPictureCache:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/taps/entity/CacheInfo;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    .line 1351
    invoke-virtual {p0, p3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 p1, 0x0

    .line 1352
    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private getLivePhotoInfo([BLcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;)Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;
    .registers 7

    const/4 v0, 0x1

    if-eqz p2, :cond_32

    .line 562
    invoke-virtual {p2, v0}, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;->isProcessing(Z)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 563
    sget-object v1, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLivePhotoInfo: isProcessing = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;->isProcessing()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 564
    invoke-virtual {p2}, Lcom/transsion/camera/app/common/taps/entity/BaseInfo;->getTimestampKey()J

    move-result-wide v1

    new-instance p2, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda33;

    invoke-direct {p2}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda33;-><init>()V

    invoke-direct {p0, v1, v2, p2}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->getInfoFromCache(JLjava/util/function/Function;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;

    .line 568
    :cond_32
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mContext:Landroid/content/Context;

    invoke-static {p0, p2}, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;->getAvailablePath(Landroid/content/Context;Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;)Ljava/lang/String;

    move-result-object p0

    .line 569
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_77

    if-eqz p2, :cond_77

    .line 570
    sget-object v1, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLivePhotoInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 571
    new-instance v1, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;

    invoke-direct {v1}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;-><init>()V

    .line 572
    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->setLiveShotTask(Z)V

    .line 573
    invoke-virtual {v1, p1}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->fillJpegData([B)V

    .line 574
    invoke-virtual {p2}, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;->getPresentationTimeUs()J

    move-result-wide v2

    invoke-virtual {v1, p0, v2, v3}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->fillVideoPath(Ljava/lang/String;J)V

    .line 575
    invoke-virtual {p2}, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;->getCamFilePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->setCamFilePath(Ljava/lang/String;)V

    .line 576
    invoke-virtual {p2}, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;->getGyroFilePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->setGyroFilePath(Ljava/lang/String;)V

    return-object v1

    :cond_77
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getLowQualityLiveMediaForProvider(Landroid/content/Context;J)Landroid/content/ContentValues;
    .registers 4

    .line 1562
    invoke-static {p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->getBaseSelection(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;->getLowQualityLiveMediaSelection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1561
    invoke-static {p0, p1, p2, v0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->getLowQualityMediaForProvider(Landroid/content/Context;JLjava/lang/String;)Landroid/content/ContentValues;

    move-result-object p0

    return-object p0
.end method

.method public static getLowQualityLiveMediaForProvider(Landroid/content/Context;)Ljava/util/List;
    .registers 2

    .line 1522
    invoke-static {p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->getBaseSelection(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;->getLowQualityLiveMediaSelection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1521
    invoke-static {p0, v0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->getLowQualityMediaForProvider(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getLowQualityMedia(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Ljava/util/function/Function;)Ljava/util/List;
    .registers 6

    const/4 v0, 0x0

    .line 1647
    :try_start_1
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5} :catch_23

    if-nez p0, :cond_c

    .line 1649
    :try_start_7
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_12

    :catchall_a
    move-exception p1

    goto :goto_18

    .line 1651
    :cond_c
    invoke-interface {p4, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_a

    :goto_12
    if-eqz p0, :cond_17

    .line 1653
    :try_start_14
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_17} :catch_23

    :cond_17
    return-object p1

    :goto_18
    if-eqz p0, :cond_22

    .line 1647
    :try_start_1a
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_1e

    goto :goto_22

    :catchall_1e
    move-exception p0

    :try_start_1f
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_22
    :goto_22
    throw p1
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_23} :catch_23

    :catch_23
    move-exception p0

    .line 1654
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 1655
    sget-object p2, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "getLowQualityMedia: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1656
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object p1
.end method

.method public static getLowQualityMedia(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Function;)Ljava/util/List;
    .registers 13

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1618
    invoke-static/range {v0 .. v6}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->getLowQualityMedia(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Consumer;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getLowQualityMedia(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Consumer;)Ljava/util/List;
    .registers 8

    .line 1629
    invoke-static {p3}, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;->getLowQualityMediaSelection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    .line 1628
    invoke-static {p3, v0, p4}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->createSqlQueryBundle(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p3

    .line 1631
    const-string p4, "android:query-arg-match-pending"

    const/4 v0, 0x1

    invoke-virtual {p3, p4, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1632
    const-string p4, "android:query-arg-match-trashed"

    const/4 v0, 0x2

    invoke-virtual {p3, p4, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    if-eqz p6, :cond_1a

    .line 1635
    invoke-interface {p6, p3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1637
    :cond_1a
    invoke-static {p0, p1, p2, p3, p5}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->getLowQualityMedia(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getLowQualityMedia(Landroid/content/ContentResolver;[Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Function;)Ljava/util/List;
    .registers 5

    const/4 v0, 0x0

    .line 1600
    invoke-static {p0, p1, p2, p3, v0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->getLowQualityMedia(Landroid/content/ContentResolver;[Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Consumer;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getLowQualityMedia(Landroid/content/ContentResolver;[Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Consumer;)Ljava/util/List;
    .registers 12

    .line 1608
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->getLowQualityMedia(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Consumer;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getLowQualityMediaForProvider(Landroid/content/Context;J)Landroid/content/ContentValues;
    .registers 4

    .line 1557
    invoke-static {p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->getBaseSelection(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->getLowQualityMediaForProvider(Landroid/content/Context;JLjava/lang/String;)Landroid/content/ContentValues;

    move-result-object p0

    return-object p0
.end method

.method private static getLowQualityMediaForProvider(Landroid/content/Context;JLjava/lang/String;)Landroid/content/ContentValues;
    .registers 10

    .line 1567
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->getContentUri(J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->LOW_QUALITY_PROJECTION:[Ljava/lang/String;

    new-instance v5, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda2;

    invoke-direct {v5}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda2;-><init>()V

    const/4 v4, 0x0

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->getLowQualityMedia(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object p0

    .line 1593
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1d

    const/4 p0, 0x0

    return-object p0

    :cond_1d
    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ContentValues;

    return-object p0
.end method

.method public static getLowQualityMediaForProvider(Landroid/content/Context;)Ljava/util/List;
    .registers 2

    .line 1517
    invoke-static {p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->getBaseSelection(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;->getLowQualityMediaSelection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1516
    invoke-static {p0, v0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->getLowQualityMediaForProvider(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static getLowQualityMediaForProvider(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .registers 4

    .line 1526
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->LOW_QUALITY_PROJECTION:[Ljava/lang/String;

    new-instance v1, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda11;

    invoke-direct {v1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda11;-><init>()V

    invoke-static {p0, v0, p1, v1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->getLowQualityMedia(Landroid/content/ContentResolver;[Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getQualityInfo([B)Lcom/transsion/camera/app/common/taps/entity/QualityInfo;
    .registers 17

    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    .line 1313
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v0, :cond_df

    .line 1301
    array-length v5, v0

    if-nez v5, :cond_10

    goto/16 :goto_df

    .line 1304
    :cond_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 1306
    :try_start_14
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_19} :catch_3e

    .line 1307
    :try_start_19
    new-instance v0, Lcom/transsion/camera/utils/exif/ExifInterface;

    invoke-direct {v0}, Lcom/transsion/camera/utils/exif/ExifInterface;-><init>()V

    .line 1308
    invoke-virtual {v0, v7}, Lcom/transsion/camera/utils/exif/ExifInterface;->readExif(Ljava/io/InputStream;)V

    .line 1309
    sget v8, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_USER_COMMENT:I

    invoke-virtual {v0, v8}, Lcom/transsion/camera/utils/exif/ExifInterface;->getTagStringValue(I)Ljava/lang/String;

    move-result-object v0

    sget-object v8, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->USER_COMMENT_IDS:Ljava/util/Set;

    invoke-static {v0, v8}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->getUserCommentByKey(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Map;

    move-result-object v8
    :try_end_2d
    .catchall {:try_start_19 .. :try_end_2d} :catchall_33

    .line 1310
    :try_start_2d
    invoke-virtual {v7}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_31

    goto :goto_43

    :catch_31
    move-exception v0

    goto :goto_40

    :catchall_33
    move-exception v0

    move-object v8, v0

    .line 1306
    :try_start_35
    invoke-virtual {v7}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_39

    goto :goto_3d

    :catchall_39
    move-exception v0

    :try_start_3a
    invoke-virtual {v8, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3d
    throw v8
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3e} :catch_3e

    :catch_3e
    move-exception v0

    move-object v8, v4

    .line 1311
    :goto_40
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1313
    :goto_43
    new-instance v0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda0;-><init>()V

    const-string/jumbo v7, "ts"

    invoke-static {v8, v7, v0, v3}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->getUserCommentMessage(Ljava/util/Map;Ljava/lang/String;Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 1314
    new-instance v0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda0;-><init>()V

    const-string v7, "appts"

    invoke-static {v8, v7, v0, v3}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->getUserCommentMessage(Ljava/util/Map;Ljava/lang/String;Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 1315
    new-instance v0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda1;-><init>()V

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v9, "qlty"

    invoke-static {v8, v9, v0, v7}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->getUserCommentMessage(Ljava/util/Map;Ljava/lang/String;Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 1316
    new-instance v0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda1;-><init>()V

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string/jumbo v9, "uid"

    invoke-static {v8, v9, v0, v7}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->getUserCommentMessage(Ljava/util/Map;Ljava/lang/String;Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 1317
    sget-object v0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getQualityInfo: timestampKey: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ", showTimestamp: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ", quality: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", userID: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", cost: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1321
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v5

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "ms"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1317
    invoke-static {v0, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    cmp-long v0, v10, v1

    if-eqz v0, :cond_df

    if-eq v14, v3, :cond_df

    .line 1324
    new-instance v9, Lcom/transsion/camera/app/common/taps/entity/QualityInfo;

    invoke-direct/range {v9 .. v15}, Lcom/transsion/camera/app/common/taps/entity/QualityInfo;-><init>(JJII)V

    return-object v9

    :cond_df
    :goto_df
    return-object v4
.end method

.method private getSystemUserIDFromAMS()I
    .registers 4

    .line 820
    new-instance p0, Lcom/transsion/hubsdk/api/app/TranActivityManager;

    invoke-direct {p0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;-><init>()V

    .line 823
    :try_start_5
    invoke-virtual {p0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getCurrentUser()I

    move-result p0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_9} :catch_20

    .line 828
    sget-object v0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSystemUserID: userid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0

    :catch_20
    move-exception p0

    .line 825
    sget-object v0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "getSystemUserID error "

    invoke-static {v0, v1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method private getThumbnailController()Lcom/transsion/camera/app/common/taps/IThumbnailController;
    .registers 1

    .line 322
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mThumbnailController:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/taps/IThumbnailController;

    return-object p0
.end method

.method private static getUserCommentByKey(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Map;
    .registers 9

    .line 1201
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3f

    if-nez p1, :cond_9

    goto :goto_3f

    .line 1204
    :cond_9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1205
    const-string v1, ";"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 1206
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_17
    if-ge v3, v1, :cond_3e

    aget-object v4, p0, v3

    .line 1207
    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1208
    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3b

    .line 1209
    aget-object v5, v4, v2

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 1210
    invoke-interface {p1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3b

    const/4 v6, 0x1

    .line 1211
    aget-object v4, v4, v6

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3b
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_3e
    return-object v0

    .line 1202
    :cond_3f
    :goto_3f
    sget-object p0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object p0
.end method

.method private static getUserCommentMessage(Ljava/util/Map;Ljava/lang/String;Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1332
    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda7;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda7;-><init>(Ljava/lang/String;)V

    .line 1333
    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda8;

    invoke-direct {p1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda8;-><init>()V

    .line 1334
    invoke-virtual {p0, p1}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object p0

    .line 1335
    invoke-virtual {p0, p2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    .line 1336
    invoke-virtual {p0, p3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private isCTSVerifierInstalled(Landroid/content/Context;)Z
    .registers 4

    .line 1282
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 1284
    :try_start_4
    const-string p1, "com.android.cts.verifier"

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_a} :catch_b

    return v0

    :catch_b
    move-exception p0

    .line 1286
    sget-object p1, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isCTSVerifierInstalled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$applyLowQualityPictureCache$12(JLandroid/net/Uri;)V
    .registers 4

    .line 698
    invoke-direct {p0, p3, p1, p2}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->applyLowQualityPictureTimestampKeyCache(Landroid/net/Uri;J)V

    return-void
.end method

.method private synthetic lambda$applyLowQualityPictureCache$7(JLandroid/net/Uri;)V
    .registers 4

    .line 645
    invoke-direct {p0, p3, p1, p2}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->applyLowQualityPictureTimestampKeyCache(Landroid/net/Uri;J)V

    return-void
.end method

.method private synthetic lambda$applyLowQualityPictureCache$8(JLcom/transsion/camera/app/common/taps/entity/CacheInfo;)V
    .registers 5

    .line 642
    invoke-static {p3}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p3

    new-instance v0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda12;-><init>()V

    .line 643
    invoke-virtual {p3, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p3

    new-instance v0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda13;-><init>()V

    .line 644
    invoke-virtual {p3, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p3

    new-instance v0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda36;

    invoke-direct {v0, p0, p1, p2}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda36;-><init>(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;J)V

    .line 645
    invoke-virtual {p3, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$clearLowQualityPictureCache$14(Landroid/net/Uri;)V
    .registers 4

    .line 717
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mLowQualityPictureTimestampKey:Ljava/util/Map;

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private synthetic lambda$new$0()V
    .registers 1

    .line 173
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->checkStorageVolume()V

    .line 174
    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->restoreCache()V

    return-void
.end method

.method private synthetic lambda$onActivityResume$17()V
    .registers 2

    .line 1270
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mSystemUserID:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->getSystemUserIDFromAMS()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method private synthetic lambda$onActivityResume$18(Landroid/content/Context;)V
    .registers 4

    .line 1275
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mCTSVerifierInstalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->isCTSVerifierInstalled(Landroid/content/Context;)Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 1276
    sget-object p1, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResume: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mCTSVerifierInstalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onCaptureStarted$15(Ljava/lang/ref/WeakReference;)Lcom/transsion/camera/app/common/taps/IThumbnailController;
    .registers 2

    .line 986
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mThumbnailController:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/taps/IThumbnailController;

    return-object p0
.end method

.method private synthetic lambda$restoreCache$1()V
    .registers 2

    .line 291
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->restoreCacheFromDB(Landroid/content/Context;)V

    .line 292
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->restoreLivePhotoCacheFromStorage(Landroid/content/Context;)V

    .line 293
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mBackgroundStorageLifecycle:Lcom/transsion/camera/app/common/taps/IBackgroundStorageLifecycleObserver;

    if-eqz v0, :cond_11

    .line 294
    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/taps/IBackgroundStorageLifecycleObserver;->onBackgroundStorageReady(Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager;)V

    :cond_11
    return-void
.end method

.method private synthetic lambda$restoreLivePhotoCacheFromStorage$25(J[Ljava/io/File;)V
    .registers 11

    .line 1495
    array-length v0, p3

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v1, v0, :cond_4e

    aget-object v3, p3, v1

    if-eqz v3, :cond_4b

    .line 1496
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4b

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 1497
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1498
    invoke-static {v4}, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;->isVideoValidName(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 1499
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v5}, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;

    move-result-object v4

    if-eqz v4, :cond_31

    const/4 v3, 0x1

    .line 1501
    invoke-direct {p0, v4, v3}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->applyLowQualityPictureCache(Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;Z)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_4b

    .line 1506
    :cond_31
    sget-object v4, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "restoreLivePhotoCacheFromStorage: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_4b
    :goto_4b
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1509
    :cond_4e
    sget-object p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "restoreLivePhotoCacheFromStorage: count = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", cost: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1510
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1509
    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private static mergeSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1714
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p1

    .line 1717
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") AND ("

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private onLowQualityJpegSaved(JLjava/lang/String;)V
    .registers 4

    .line 1064
    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->checkBackgroundService()V

    .line 1065
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mBackgroundService:Lcom/transsion/camera/app/common/taps/IBackgroundController;

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/taps/IBackgroundController;->onLowQualityJpegSaved(JLjava/lang/String;)V

    return-void
.end method

.method private onSaveHighQualityJpeg(Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;ILcom/transsion/camera/app/common/taps/OnBackgroundImageStateChangeListener;)V
    .registers 6

    const/4 v0, 0x0

    .line 528
    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p3, p1, p2, v0}, Lcom/transsion/camera/app/common/taps/OnBackgroundImageStateChangeListener;->onBackgroundImageSaveCompleted(Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;I[Ljava/lang/Object;)V

    .line 529
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;->getUri()Landroid/net/Uri;

    move-result-object p3

    if-eqz p3, :cond_16

    .line 531
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_16
    if-nez p2, :cond_1f

    .line 534
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/taps/entity/BaseInfo;->getTimestampKey()J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->clearLowQualityPictureCache(J)V

    :cond_1f
    return-void
.end method

.method private static putBlob(Landroid/content/ContentValues;Ljava/lang/String;Landroid/database/Cursor;I)V
    .registers 5

    const/4 v0, -0x1

    if-ne p3, v0, :cond_4

    return-void

    .line 1827
    :cond_4
    :try_start_4
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_b} :catch_c

    return-void

    :catch_c
    const/4 p2, 0x0

    .line 1829
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    return-void
.end method

.method private static putDouble(Landroid/content/ContentValues;Ljava/lang/String;Landroid/database/Cursor;I)V
    .registers 5

    const/4 v0, -0x1

    if-ne p3, v0, :cond_4

    return-void

    .line 1860
    :cond_4
    :try_start_4
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_f} :catch_10

    return-void

    :catch_10
    const-wide/16 p2, 0x0

    .line 1862
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    return-void
.end method

.method private static putInt(Landroid/content/ContentValues;Ljava/lang/String;Landroid/database/Cursor;I)V
    .registers 5

    const/4 v0, -0x1

    if-ne p3, v0, :cond_4

    return-void

    .line 1838
    :cond_4
    :try_start_4
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_f} :catch_10

    return-void

    :catch_10
    const/4 p2, 0x0

    .line 1840
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method private static putLong(Landroid/content/ContentValues;Ljava/lang/String;Landroid/database/Cursor;I)V
    .registers 5

    const/4 v0, -0x1

    if-ne p3, v0, :cond_4

    return-void

    .line 1849
    :cond_4
    :try_start_4
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_f} :catch_10

    return-void

    :catch_10
    const-wide/16 p2, 0x0

    .line 1851
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method private static putString(Landroid/content/ContentValues;Ljava/lang/String;Landroid/database/Cursor;I)V
    .registers 5

    const/4 v0, -0x1

    if-ne p3, v0, :cond_4

    return-void

    .line 1816
    :cond_4
    :try_start_4
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_b} :catch_c

    return-void

    .line 1818
    :catch_c
    const-string p2, ""

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private registerContentObserver(Landroid/content/Context;)V
    .registers 4

    if-eqz p1, :cond_1e

    .line 245
    sget-object v0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "registerContentObserver: "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 246
    new-instance v0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$3;

    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mWorkHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$3;-><init>(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;Landroid/os/Handler;)V

    .line 268
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_1e
    return-void
.end method

.method private registerReceiver(Landroid/content/Context;)V
    .registers 4

    if-eqz p1, :cond_22

    .line 235
    sget-object v0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "registerReceiver: "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 236
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 237
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 238
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x2

    invoke-virtual {p1, p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    :cond_22
    return-void
.end method

.method private removeCustomContentValues(Landroid/content/ContentValues;)V
    .registers 3

    const/4 v0, 0x0

    .line 768
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->removeCustomContentValues(Landroid/content/ContentValues;Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;)V

    return-void
.end method

.method private restoreCache()V
    .registers 5

    .line 289
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->getStorageOperator()Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->getLeftSpace(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1f

    .line 290
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda10;-><init>(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 298
    :cond_1f
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mMainHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mRestoreCacheTask:Ljava/lang/Runnable;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private restoreCacheFromDB(Landroid/content/Context;Lcom/transsion/camera/app/common/taps/ILowQualityPicturePolicy;)Ljava/util/List;
    .registers 14

    .line 1384
    invoke-static {p1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->getBaseSelection(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/transsion/camera/app/common/taps/ILowQualityPicturePolicy;->getLowQualityMediaSelection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1385
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->PROJECTION:[Ljava/lang/String;

    new-instance v1, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda17;

    invoke-direct {v1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda17;-><init>()V

    new-instance v2, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda18;

    invoke-direct {v2}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda18;-><init>()V

    invoke-static {p1, v0, p0, v1, v2}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->getLowQualityMedia(Landroid/content/ContentResolver;[Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Consumer;)Ljava/util/List;

    move-result-object p0

    .line 1407
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1408
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_25
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_92

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1409
    const-string v1, "_id"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1410
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1412
    invoke-interface {p2, v0}, Lcom/transsion/camera/app/common/taps/ILowQualityPicturePolicy;->getDisplayNameInfo(Landroid/content/ContentValues;)Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;

    move-result-object v1

    if-nez v1, :cond_60

    .line 1414
    sget-object v0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restoreCacheFromDB: id = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " xmp info is empty"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_25

    .line 1417
    :cond_60
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/taps/entity/BaseInfo;->getTimestampKey()J

    move-result-wide v5

    .line 1418
    new-instance v4, Lcom/transsion/camera/app/common/taps/entity/QualityInfo;

    const/4 v9, 0x0

    .line 1419
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;->getUserID()I

    move-result v10

    const-wide/16 v7, -0x1

    invoke-direct/range {v4 .. v10}, Lcom/transsion/camera/app/common/taps/entity/QualityInfo;-><init>(JJII)V

    .line 1420
    new-instance v7, Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;

    invoke-static {v2, v3}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->getContentUri(J)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v7, v5, v6, v2, v0}, Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;-><init>(JLandroid/net/Uri;Landroid/content/ContentValues;)V

    .line 1421
    new-instance v0, Lcom/transsion/camera/app/common/taps/entity/CacheInfo$Builder;

    invoke-direct {v0, v5, v6}, Lcom/transsion/camera/app/common/taps/entity/CacheInfo$Builder;-><init>(J)V

    .line 1422
    invoke-virtual {v0, v7}, Lcom/transsion/camera/app/common/taps/entity/CacheInfo$Builder;->setImageInfo(Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;)Lcom/transsion/camera/app/common/taps/entity/CacheInfo$Builder;

    move-result-object v0

    .line 1423
    invoke-virtual {v0, v4}, Lcom/transsion/camera/app/common/taps/entity/CacheInfo$Builder;->setQualityInfo(Lcom/transsion/camera/app/common/taps/entity/QualityInfo;)Lcom/transsion/camera/app/common/taps/entity/CacheInfo$Builder;

    move-result-object v0

    .line 1424
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/taps/entity/CacheInfo$Builder;->setDisplayNameInfo(Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;)Lcom/transsion/camera/app/common/taps/entity/CacheInfo$Builder;

    move-result-object v0

    .line 1425
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/taps/entity/CacheInfo$Builder;->build()Lcom/transsion/camera/app/common/taps/entity/CacheInfo;

    move-result-object v0

    .line 1426
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_25

    :cond_92
    return-object p1
.end method

.method private restoreCacheFromDB(Landroid/content/Context;)V
    .registers 10

    .line 1372
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1373
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1374
    new-instance v3, Lcom/transsion/camera/app/common/taps/policy/PrivateLowQualityPicturePolicy;

    invoke-direct {v3}, Lcom/transsion/camera/app/common/taps/policy/PrivateLowQualityPicturePolicy;-><init>()V

    invoke-direct {p0, p1, v3}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->restoreCacheFromDB(Landroid/content/Context;Lcom/transsion/camera/app/common/taps/ILowQualityPicturePolicy;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1375
    new-instance v3, Lcom/transsion/camera/app/common/taps/policy/PublicLowQualityPicturePolicy;

    invoke-direct {v3}, Lcom/transsion/camera/app/common/taps/policy/PublicLowQualityPicturePolicy;-><init>()V

    invoke-direct {p0, p1, v3}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->restoreCacheFromDB(Landroid/content/Context;Lcom/transsion/camera/app/common/taps/ILowQualityPicturePolicy;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1376
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v3, 0x0

    :goto_26
    if-ge v3, p1, :cond_4a

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/transsion/camera/app/common/taps/entity/CacheInfo;

    .line 1377
    invoke-direct {p0, v4}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->applyLowQualityPictureCache(Lcom/transsion/camera/app/common/taps/entity/CacheInfo;)V

    .line 1378
    sget-object v5, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "restoreCacheFromDB: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_26

    .line 1380
    :cond_4a
    sget-object p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restoreCacheFromDB: list = "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", cost: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private restoreLivePhotoCacheFromStorage(Landroid/content/Context;)V
    .registers 20

    move-object/from16 v0, p0

    .line 1432
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1433
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_110

    .line 1434
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_110

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_110

    .line 1437
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v4

    iget-boolean v4, v4, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsLivePhotoMovementLocusSupport:Z

    if-eqz v4, :cond_ed

    .line 1438
    new-instance v4, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda22;

    invoke-direct {v4}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda22;-><init>()V

    invoke-virtual {v3, v4}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_2c

    return-void

    .line 1445
    :cond_2c
    array-length v4, v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_2f
    if-ge v6, v4, :cond_c9

    aget-object v8, v3, v6

    .line 1446
    new-instance v9, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda23;

    invoke-direct {v9}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda23;-><init>()V

    invoke-virtual {v8, v9}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v8

    if-nez v8, :cond_40

    goto/16 :goto_c5

    .line 1450
    :cond_40
    array-length v9, v8

    const/4 v10, 0x0

    :goto_42
    if-ge v10, v9, :cond_c5

    aget-object v11, v8, v10

    if-eqz v11, :cond_c1

    .line 1452
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_c1

    .line 1453
    invoke-virtual {v11}, Ljava/io/File;->isDirectory()Z

    move-result v12

    if-nez v12, :cond_56

    goto/16 :goto_c1

    .line 1459
    :cond_56
    invoke-virtual {v11}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v11

    if-nez v11, :cond_5d

    goto :goto_c1

    .line 1463
    :cond_5d
    array-length v12, v11

    const-string v13, ""

    move-object v14, v13

    move-object v15, v14

    const/4 v5, 0x0

    :goto_63
    if-ge v5, v12, :cond_8f

    aget-object v16, v11, v5

    if-eqz v16, :cond_8c

    .line 1464
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->isFile()Z

    move-result v17

    if-nez v17, :cond_70

    goto :goto_8c

    .line 1467
    :cond_70
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v16

    .line 1468
    invoke-static/range {v16 .. v16}, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;->isVideoValidName(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7c

    move-object/from16 v13, v16

    .line 1471
    :cond_7c
    invoke-static/range {v16 .. v16}, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;->isCamValidName(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_84

    move-object/from16 v14, v16

    .line 1474
    :cond_84
    invoke-static/range {v16 .. v16}, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;->isGyroValidName(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_8c

    move-object/from16 v15, v16

    :cond_8c
    :goto_8c
    add-int/lit8 v5, v5, 0x1

    goto :goto_63

    :cond_8f
    add-int/lit8 v7, v7, 0x1

    .line 1479
    sget-object v5, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[restoreLivePhotoCacheFromStorage] videoPath: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " ,camFilePath :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " ,gyroFilePath :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1481
    invoke-static {v13, v14, v15}, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;

    move-result-object v5

    if-eqz v5, :cond_c1

    const/4 v11, 0x1

    .line 1483
    invoke-direct {v0, v5, v11}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->applyLowQualityPictureCache(Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;Z)Z

    :cond_c1
    :goto_c1
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_42

    :cond_c5
    :goto_c5
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2f

    .line 1487
    :cond_c9
    sget-object v0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restoreLivePhotoCacheFromStorage: count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", cost: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1488
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1487
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1490
    :cond_ed
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda24;

    invoke-direct {v4}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda24;-><init>()V

    .line 1491
    invoke-virtual {v3, v4}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda25;

    invoke-direct {v4}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda25;-><init>()V

    .line 1492
    invoke-virtual {v3, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda26;

    invoke-direct {v4, v0, v1, v2}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda26;-><init>(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;J)V

    .line 1493
    invoke-virtual {v3, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    .line 1435
    :cond_110
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "restoreLivePhotoCacheFromStorage: cache dir is invalid"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateJpegExif([BLcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;)V
    .registers 4

    if-nez p2, :cond_3

    goto :goto_29

    .line 1095
    :cond_3
    invoke-virtual {p2}, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;->isAIFrame()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_17

    .line 1096
    sget p0, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_USER_COMMENT:I

    const-string p2, ";ai_frame"

    invoke-static {p1, p0, p2}, Lcom/transsion/camera/utils/exif/ExifTools;->extendExifStringValue([BILjava/lang/String;)[B

    move-result-object p0

    .line 1098
    array-length p2, p0

    invoke-static {p0, v0, p1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    .line 1101
    :cond_17
    invoke-virtual {p2}, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;->isAIZoomSR()Z

    move-result p0

    if-eqz p0, :cond_29

    .line 1102
    sget p0, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_USER_COMMENT:I

    const-string p2, ";ai_zoom"

    invoke-static {p1, p0, p2}, Lcom/transsion/camera/utils/exif/ExifTools;->extendExifStringValue([BILjava/lang/String;)[B

    move-result-object p0

    .line 1104
    array-length p2, p0

    invoke-static {p0, v0, p1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_29
    :goto_29
    return-void
.end method

.method private updateJpegToHighQuality(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 6

    .line 1075
    const-string p0, "UserComment"

    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "rw"

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_c} :catch_51

    if-eqz p1, :cond_4b

    .line 1077
    :try_start_e
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p2

    .line 1078
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p2}, Landroid/media/ExifInterface;-><init>(Ljava/io/FileDescriptor;)V

    .line 1079
    invoke-virtual {v0, p0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1080
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4b

    .line 1081
    const-string v1, "qlty"

    const-string v2, "1"

    invoke-static {p2, v1, v2}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->updateUserComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1082
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ";L2H"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p0, p2}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    invoke-virtual {v0}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_40
    .catchall {:try_start_e .. :try_end_40} :catchall_41

    goto :goto_4b

    :catchall_41
    move-exception p0

    .line 1075
    :try_start_42
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_46

    goto :goto_4a

    :catchall_46
    move-exception p1

    :try_start_47
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4a
    throw p0

    :cond_4b
    :goto_4b
    if-eqz p1, :cond_50

    .line 1086
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_50} :catch_51

    :cond_50
    return-void

    :catch_51
    move-exception p0

    .line 1087
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private declared-synchronized updatePostViewPicture(JLjava/util/function/Consumer;)V
    .registers 6

    monitor-enter p0

    .line 473
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mPostViewInfo:Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$PostViewInfo;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$PostViewInfo;->getTimestamp()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-eqz v0, :cond_18

    .line 474
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mPostViewInfo:Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$PostViewInfo;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$PostViewInfo;->release()V

    const/4 v0, 0x0

    .line 475
    iput-object v0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mPostViewInfo:Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$PostViewInfo;

    goto :goto_18

    :catchall_16
    move-exception p1

    goto :goto_45

    .line 477
    :cond_18
    :goto_18
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mPostViewInfo:Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$PostViewInfo;

    if-nez v0, :cond_23

    .line 478
    new-instance v0, Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$PostViewInfo;

    invoke-direct {v0, p1, p2}, Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$PostViewInfo;-><init>(J)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mPostViewInfo:Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$PostViewInfo;

    :cond_23
    if-eqz p3, :cond_2a

    .line 481
    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mPostViewInfo:Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$PostViewInfo;

    invoke-interface {p3, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 483
    :cond_2a
    sget-object p1, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "updatePostViewBitmap: mPostViewInfo = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mPostViewInfo:Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$PostViewInfo;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_43
    .catchall {:try_start_1 .. :try_end_43} :catchall_16

    .line 484
    monitor-exit p0

    return-void

    :goto_45
    :try_start_45
    monitor-exit p0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_16

    throw p1
.end method

.method private static updateUserComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    .line 1109
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_50

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_50

    .line 1112
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1113
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 1114
    const-string v1, ";"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    .line 1115
    :goto_1f
    array-length v3, p0

    if-ge v2, v3, :cond_4c

    .line 1116
    aget-object v3, p0, v2

    .line 1117
    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3f

    .line 1118
    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1119
    array-length v6, v4

    const/4 v7, 0x2

    if-ne v6, v7, :cond_42

    .line 1120
    aget-object v4, v4, v5

    invoke-virtual {v3, v4, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_42

    .line 1123
    :cond_3f
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1125
    :cond_42
    :goto_42
    array-length v3, p0

    sub-int/2addr v3, v5

    if-eq v2, v3, :cond_49

    .line 1126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_49
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 1130
    :cond_4c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_50
    :goto_50
    return-object p0
.end method


# virtual methods
.method public addCustomContentValues(Landroid/content/ContentValues;Lcom/transsion/camera/app/common/taps/entity/QualityInfo;)V
    .registers 5

    .line 747
    invoke-virtual {p2}, Lcom/transsion/camera/app/common/taps/entity/BaseInfo;->getTimestampKey()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "transsion_quality_timestamp_key"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 748
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/transsion/camera/app/common/taps/entity/QualityInfo;->getShowTimestamp(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "transsion_quality_show_timestamp"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 749
    invoke-virtual {p2}, Lcom/transsion/camera/app/common/taps/entity/QualityInfo;->getQuality()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "transsion_quality_state"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 750
    invoke-virtual {p2}, Lcom/transsion/camera/app/common/taps/entity/QualityInfo;->getUserID()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "transsion_user_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 751
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->applyLowQualityPictureCache(Lcom/transsion/camera/app/common/taps/entity/QualityInfo;)V

    .line 752
    sget-object p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addCustomContentValues: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/taps/entity/BaseInfo;->getTimestampKey()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public deleteWrongStateLowQualityPictures()V
    .registers 7

    .line 427
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_c

    .line 428
    sget-object p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "deleteWrongStateLowQualityPictures: mContext is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 431
    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 432
    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 434
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->getBaseSelection(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 435
    invoke-static {p0}, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;->getLowQualityMediaSelection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    .line 437
    invoke-static {p0, v3, v3}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->createSqlQueryBundle(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    .line 439
    const-string v3, "android:query-arg-match-pending"

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 440
    const-string v3, "android:query-arg-match-trashed"

    const/4 v4, 0x2

    invoke-virtual {p0, v3, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 445
    :try_start_31
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, p0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Landroid/os/Bundle;)I

    move-result p0
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_37} :catch_38

    goto :goto_41

    :catch_38
    move-exception p0

    .line 447
    sget-object v2, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "deleteWrongStateLowQualityPictures: error deleting low quality pictures"

    invoke-static {v2, v3, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    .line 450
    :goto_41
    sget-object v2, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteWrongStateLowQualityPictures: deleted "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " low quality pictures, cost: "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "ms"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 450
    invoke-static {v2, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public getAppUserID()I
    .registers 4

    .line 808
    invoke-static {}, Lcom/transsion/camera/utils/FileUtil;->getUserId()I

    move-result p0

    .line 809
    sget-object v0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAppUserID: userid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0
.end method

.method public getBackgroundServiceType()Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$BackgroundServiceType;
    .registers 2

    .line 866
    iget v0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mTranssionCameraMode:I

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->getBackgroundServiceType(I)Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$BackgroundServiceType;

    move-result-object p0

    return-object p0
.end method

.method public getBackgroundServiceType(I)Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$BackgroundServiceType;
    .registers 5

    .line 871
    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->checkBackgroundService()V

    .line 872
    sget-object v0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBackgroundServiceType: transsionCameraMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 873
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mBackgroundService:Lcom/transsion/camera/app/common/taps/IBackgroundController;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/taps/IBackgroundController;->getBackgroundServiceType(I)Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$BackgroundServiceType;

    move-result-object p0

    return-object p0
.end method

.method public getBackgroundShot2ShotSkipPolicy()Lcom/transsion/camera/app/common/taps/IBackgroundShot2ShotSkipPolicy;
    .registers 1

    .line 1258
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mBackgroundShot2ShotSkipPolicy:Lcom/transsion/camera/app/common/taps/IBackgroundShot2ShotSkipPolicy;

    return-object p0
.end method

.method public getBaseSelection(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1263
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->getBaseSelection(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBatteryCapacity()I
    .registers 5

    .line 799
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mContext:Landroid/content/Context;

    const-string v0, "batterymanager"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/BatteryManager;

    const/4 v0, 0x4

    .line 800
    invoke-virtual {p0, v0}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v0

    const/4 v1, 0x6

    .line 801
    invoke-virtual {p0, v1}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result p0

    .line 802
    sget-object v1, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBatteryCapacity: Battery Capacity = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", batteryStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 1

    .line 878
    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->checkBackgroundService()V

    .line 879
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mBackgroundService:Lcom/transsion/camera/app/common/taps/IBackgroundController;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/taps/IBackgroundController;->getHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method public getLastPostViewInfo()Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$PostViewInfo;
    .registers 4

    .line 904
    sget-object v0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLastPostViewJpeg:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mPostViewInfo:Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$PostViewInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 905
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mPostViewInfo:Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$PostViewInfo;

    return-object p0
.end method

.method public getLowQualityMediaForProcessProvider(Landroid/content/Context;)Landroid/content/ContentValues;
    .registers 6

    .line 884
    iget-wide v0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mGoToGalleryMediaStoreId:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_d

    .line 885
    invoke-static {p1, v0, v1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->getLowQualityMediaForProvider(Landroid/content/Context;J)Landroid/content/ContentValues;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLowQualityMediaSaverListener()Lcom/transsion/camera/app/common/taps/OnBackgroundImageStateChangeListener;
    .registers 1

    .line 1252
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mLowQualityMediaSaverListener:Lcom/transsion/camera/app/common/taps/OnBackgroundImageStateChangeListener;

    return-object p0
.end method

.method public getPostViewJpeg(J)[B
    .registers 6

    .line 898
    sget-object v0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPostViewJpeg: mediaStoreId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mPostViewInfo:Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$PostViewInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 899
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mPostViewInfo:Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$PostViewInfo;

    if-nez p0, :cond_26

    const/4 p0, 0x0

    return-object p0

    :cond_26
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$PostViewInfo;->getPostViewJpeg(J)[B

    move-result-object p0

    return-object p0
.end method

.method public getQualityInfo(Landroid/content/ContentValues;)Lcom/transsion/camera/app/common/taps/entity/QualityInfo;
    .registers 13

    .line 779
    const-string/jumbo p0, "transsion_quality_timestamp_key"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    .line 780
    const-string/jumbo v0, "transsion_quality_show_timestamp"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 781
    const-string/jumbo v1, "transsion_quality_state"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 782
    const-string/jumbo v2, "transsion_user_id"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    .line 783
    sget-object v2, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getQualityInfo: timestampKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p0, :cond_4c

    if-eqz v1, :cond_4c

    .line 785
    new-instance v4, Lcom/transsion/camera/app/common/taps/entity/QualityInfo;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct/range {v4 .. v10}, Lcom/transsion/camera/app/common/taps/entity/QualityInfo;-><init>(JJII)V

    return-object v4

    :cond_4c
    const/4 p0, 0x0

    return-object p0
.end method

.method public getStorageOperator()Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;
    .registers 4

    .line 304
    invoke-super {p0}, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->getStorageOperator()Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    move-result-object p0

    .line 305
    sget-object v0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getStorageOperator: mCurrentStorageOperator = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p0
.end method

.method public getSystemUserID()I
    .registers 3

    .line 815
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mSystemUserID:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_b

    return v0

    .line 816
    :cond_b
    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->getSystemUserIDFromAMS()I

    move-result p0

    return p0
.end method

.method public getTopPackageName()Ljava/lang/String;
    .registers 1

    .line 793
    new-instance p0, Lcom/transsion/hubsdk/api/app/TranActivityManager;

    invoke-direct {p0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;-><init>()V

    .line 794
    invoke-virtual {p0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getTopActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public init(Lcom/transsion/camera/app/common/storage/DataStore;Lcom/transsion/camera/app/common/setting/ISettingManager;)V
    .registers 3

    .line 275
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->init(Lcom/transsion/camera/app/common/storage/DataStore;Lcom/transsion/camera/app/common/setting/ISettingManager;)V

    .line 276
    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mBackgroundStorageLifecycle:Lcom/transsion/camera/app/common/taps/IBackgroundStorageLifecycleObserver;

    if-eqz p1, :cond_a

    .line 277
    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/taps/IBackgroundStorageLifecycleObserver;->onBackgroundStorageInit(Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager;)V

    .line 279
    :cond_a
    sget-object p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "init"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected initExternalStorageOperator()Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;
    .registers 1

    .line 223
    new-instance p0, Lcom/transsion/camera/app/common/storage/BackgroundExternalStorageOperator;

    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/BackgroundExternalStorageOperator;-><init>()V

    return-object p0
.end method

.method protected initInternalStorageOperator()Lcom/transsion/camera/app/common/storage/InternalStorageOperator;
    .registers 1

    .line 218
    new-instance p0, Lcom/transsion/camera/app/common/storage/BackgroundInternalStorageOperator;

    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/BackgroundInternalStorageOperator;-><init>()V

    return-object p0
.end method

.method public isLowQualityJpeg(Landroid/net/Uri;)Z
    .registers 4

    if-eqz p1, :cond_32

    .line 726
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mLowQualityPictureCache:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_c
    :goto_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/taps/entity/CacheInfo;

    .line 727
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/taps/entity/CacheInfo;->getImageInfo()Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;

    move-result-object v0

    if-nez v0, :cond_26

    .line 729
    sget-object v0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "isLowQualityJpeg: cache state error"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_c

    .line 732
    :cond_26
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_32
    const/4 p0, 0x0

    return p0
.end method

.method public isNeedASDShot2ShotSkipPolicy()Z
    .registers 1

    .line 1050
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mBackgroundService:Lcom/transsion/camera/app/common/taps/IBackgroundController;

    if-eqz p0, :cond_c

    invoke-interface {p0}, Lcom/transsion/camera/app/common/taps/IBackgroundCommon;->isNeedASDShot2ShotSkipPolicy()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public isNeedMuSlimeBodyShot2ShotSkipPolicy()Z
    .registers 1

    .line 1055
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mBackgroundService:Lcom/transsion/camera/app/common/taps/IBackgroundController;

    if-eqz p0, :cond_c

    invoke-interface {p0}, Lcom/transsion/camera/app/common/taps/IBackgroundCommon;->isNeedMuSlimeBodyShot2ShotSkipPolicy()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public isNeedPortraitModeEnhanceShot2ShotSkipPolicy()Z
    .registers 1

    .line 1060
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mBackgroundService:Lcom/transsion/camera/app/common/taps/IBackgroundController;

    if-eqz p0, :cond_c

    invoke-interface {p0}, Lcom/transsion/camera/app/common/taps/IBackgroundCommon;->isNeedPortraitModeEnhanceShot2ShotSkipPolicy()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public isNeedShotSkipByCTSTest()Z
    .registers 2

    .line 970
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mBackgroundService:Lcom/transsion/camera/app/common/taps/IBackgroundController;

    if-eqz v0, :cond_14

    invoke-interface {v0}, Lcom/transsion/camera/app/common/taps/IBackgroundCommon;->isNeedShotSkipByCTSTest()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mCTSVerifierInstalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public isReady()Z
    .registers 2

    .line 935
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mBackgroundService:Lcom/transsion/camera/app/common/taps/IBackgroundController;

    instance-of v0, p0, Lcom/transsion/camera/app/common/taps/IBackgroundStorageLifecycleObserver;

    if-eqz v0, :cond_10

    check-cast p0, Lcom/transsion/camera/app/common/taps/IBackgroundStorageLifecycleObserver;

    .line 936
    invoke-interface {p0}, Lcom/transsion/camera/app/common/taps/IBackgroundStorageLifecycleObserver;->isReady()Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public isShutterEnable()Z
    .registers 2

    .line 951
    iget v0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mTranssionCameraMode:I

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->isShutterEnable(I)Z

    move-result p0

    return p0
.end method

.method public isShutterEnable(I)Z
    .registers 2

    .line 965
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mBackgroundService:Lcom/transsion/camera/app/common/taps/IBackgroundController;

    if-eqz p0, :cond_c

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/taps/IBackgroundCommon;->isShutterEnable(I)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public isSupport()Z
    .registers 2

    .line 929
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mBackgroundService:Lcom/transsion/camera/app/common/taps/IBackgroundController;

    instance-of v0, p0, Lcom/transsion/camera/app/common/taps/IBackgroundStorageLifecycleObserver;

    if-eqz v0, :cond_10

    check-cast p0, Lcom/transsion/camera/app/common/taps/IBackgroundStorageLifecycleObserver;

    .line 930
    invoke-interface {p0}, Lcom/transsion/camera/app/common/taps/IBackgroundStorageLifecycleObserver;->isSupport()Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public isSupportDefer()Z
    .registers 2

    .line 941
    iget v0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mTranssionCameraMode:I

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->isSupportDefer(I)Z

    move-result p0

    return p0
.end method

.method public isSupportDefer(I)Z
    .registers 2

    .line 946
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mBackgroundService:Lcom/transsion/camera/app/common/taps/IBackgroundController;

    if-eqz p0, :cond_c

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/taps/IBackgroundCommon;->isSupportDefer(I)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public onActivityPause()V
    .registers 3

    .line 1294
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mSystemUserID:Ljava/util/concurrent/atomic/AtomicInteger;

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1295
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mBackgroundShot2ShotSkipPolicy:Lcom/transsion/camera/app/common/taps/IBackgroundShot2ShotSkipPolicy;

    if-eqz p0, :cond_e

    .line 1296
    invoke-interface {p0}, Lcom/transsion/camera/app/common/taps/IBackgroundShot2ShotSkipPolicy;->resetCount()V

    :cond_e
    return-void
.end method

.method public onActivityResume()V
    .registers 4

    .line 1268
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 1270
    new-instance v1, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1272
    :cond_e
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1e

    .line 1273
    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mWorkHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1e

    .line 1274
    new-instance v2, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1e
    return-void
.end method

.method public onAllHighQualityJpegCompleted()V
    .registers 8

    .line 540
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->getSystemUserID()I

    move-result v0

    .line 541
    sget-object v1, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSaveAllHighQualityJpegCompleted: userID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 542
    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mLowQualityPictureCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_24
    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_72

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 543
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/app/common/taps/entity/CacheInfo;

    invoke-static {v3}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda34;

    invoke-direct {v4}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda34;-><init>()V

    .line 544
    invoke-virtual {v3, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v3

    const/4 v4, 0x0

    .line 545
    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/app/common/taps/entity/QualityInfo;

    if-eqz v3, :cond_52

    .line 546
    invoke-virtual {v3}, Lcom/transsion/camera/app/common/taps/entity/QualityInfo;->getUserID()I

    move-result v3

    if-ne v3, v0, :cond_24

    :cond_52
    iget-object v3, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mBackgroundService:Lcom/transsion/camera/app/common/taps/IBackgroundController;

    if-eqz v3, :cond_24

    .line 547
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 548
    iget-object v5, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mFailedLowQualityPicture:Ljava/util/Set;

    monitor-enter v5

    .line 549
    :try_start_63
    iget-object v6, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mFailedLowQualityPicture:Ljava/util/Set;

    invoke-interface {v6, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 550
    monitor-exit v5
    :try_end_69
    .catchall {:try_start_63 .. :try_end_69} :catchall_6f

    .line 551
    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mBackgroundService:Lcom/transsion/camera/app/common/taps/IBackgroundController;

    invoke-interface {v2, v3, v4}, Lcom/transsion/camera/app/common/taps/IBackgroundController;->onHighQualityJpegFailed(J)V

    goto :goto_24

    :catchall_6f
    move-exception p0

    .line 550
    :try_start_70
    monitor-exit v5
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_6f

    throw p0

    .line 554
    :cond_72
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mRestoreCacheNeeded:Z

    if-eqz v0, :cond_8c

    invoke-static {}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->getInstance()Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->isSupport()Z

    move-result v0

    if-eqz v0, :cond_8c

    const/4 v0, 0x0

    .line 555
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mRestoreCacheNeeded:Z

    .line 556
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mMainHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mRestoreCacheTask:Ljava/lang/Runnable;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_8c
    return-void
.end method

.method public onCaptureFailed(J)V
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_2d

    .line 1006
    sget-object v0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCaptureFailed: timestamp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1007
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mLowQualityMediaSaverListener:Lcom/transsion/camera/app/common/taps/OnBackgroundImageStateChangeListener;

    invoke-interface {v0, p1, p2}, Lcom/transsion/camera/app/common/taps/OnBackgroundImageStateChangeListener;->onBackgroundImageFailed(J)V

    .line 1008
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->isSupportDefer()Z

    move-result v0

    if-nez v0, :cond_28

    goto :goto_2d

    .line 1011
    :cond_28
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mCaptureProgressImpl:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$CaptureProgressImpl;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$CaptureProgressImpl;->onCaptureFailed(J)V

    :cond_2d
    :goto_2d
    return-void
.end method

.method public onCaptureProgressed(Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)V
    .registers 5

    .line 993
    sget-object v0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCaptureProgressed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 994
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->isSupportDefer()Z

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_29

    .line 997
    :cond_1d
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mCaptureProgressImpl:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$CaptureProgressImpl;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$CaptureProgressImpl;->onCaptureProgressed(Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)V

    .line 998
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mBackgroundShot2ShotSkipPolicy:Lcom/transsion/camera/app/common/taps/IBackgroundShot2ShotSkipPolicy;

    if-eqz p0, :cond_29

    .line 999
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/taps/IBackgroundShot2ShotSkipPolicy;->onCaptureCustomDefer(Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)V

    :cond_29
    :goto_29
    return-void
.end method

.method public onCaptureProgressed(Ljava/util/function/UnaryOperator;)V
    .registers 3

    .line 1017
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->isSupportDefer()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1020
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mCurrentCaptureStartState:Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;

    if-eqz p1, :cond_15

    .line 1024
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->onCaptureProgressed(Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)V

    return-void

    .line 1022
    :cond_15
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "state is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onCaptureStarted(JLcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)V
    .registers 7

    .line 975
    sget-object v0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCaptureStarted: timestamp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 976
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->isSupportDefer()Z

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_3e

    .line 979
    :cond_1d
    iput-object p3, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mCurrentCaptureStartState:Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;

    .line 980
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mCaptureProgressImpl:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$CaptureProgressImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$CaptureProgressImpl;->onCaptureStarted(JLcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)V

    .line 981
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mBackgroundShot2ShotSkipPolicy:Lcom/transsion/camera/app/common/taps/IBackgroundShot2ShotSkipPolicy;

    if-eqz v0, :cond_2b

    .line 982
    invoke-interface {v0, p1, p2, p3}, Lcom/transsion/camera/app/common/taps/IBackgroundShot2ShotSkipPolicy;->increaseCount(JLcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)V

    .line 984
    :cond_2b
    invoke-interface {p3}, Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;->isCusDeferRequestMode()Z

    move-result p1

    if-nez p1, :cond_3f

    invoke-interface {p3}, Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;->isSupportLowQualityMode()Z

    move-result p1

    if-nez p1, :cond_3f

    invoke-interface {p3}, Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;->isSupportHighQualityMode()Z

    move-result p1

    if-eqz p1, :cond_3e

    goto :goto_3f

    :cond_3e
    :goto_3e
    return-void

    .line 985
    :cond_3f
    :goto_3f
    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mThumbnailController:Ljava/lang/ref/WeakReference;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda20;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda20;-><init>(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;)V

    .line 986
    invoke-virtual {p1, p2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda21;

    invoke-direct {p1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda21;-><init>()V

    .line 987
    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onHighQualityJpegAvailable([BJLcom/transsion/camera/app/common/taps/OnBackgroundImageStateChangeListener;)V
    .registers 14

    .line 337
    invoke-interface {p4, p2, p3}, Lcom/transsion/camera/app/common/taps/OnBackgroundImageStateChangeListener;->onBackgroundImageSaveStarted(J)V

    .line 338
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->getAppUserID()I

    move-result v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->getSystemUserID()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eq v0, v1, :cond_22

    .line 339
    sget-object p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "doSaveHighQualityJpeg: ignore by diff user id"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 340
    new-instance p0, Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;

    invoke-direct {p0, p2, p3, v3, v3}, Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;-><init>(JLandroid/net/Uri;Landroid/content/ContentValues;)V

    const/4 p1, -0x1

    new-array p2, v2, [Ljava/lang/Object;

    invoke-interface {p4, p0, p1, p2}, Lcom/transsion/camera/app/common/taps/OnBackgroundImageStateChangeListener;->onBackgroundImageSaveCompleted(Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;I[Ljava/lang/Object;)V

    return-void

    .line 343
    :cond_22
    sget-object v0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doSaveHighQualityJpeg() called with: timestamp = ["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 344
    new-instance v1, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda12;

    invoke-direct {v1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda12;-><init>()V

    invoke-direct {p0, p2, p3, v1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->getInfoFromCache(JLjava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;

    .line 345
    new-instance v4, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda32;

    invoke-direct {v4}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda32;-><init>()V

    invoke-direct {p0, p2, p3, v4}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->getInfoFromCache(JLjava/util/function/Function;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;

    .line 346
    new-instance v5, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda33;

    invoke-direct {v5}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda33;-><init>()V

    invoke-direct {p0, p2, p3, v5}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->getInfoFromCache(JLjava/util/function/Function;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;

    .line 347
    new-instance v6, Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;

    invoke-direct {v6, p2, p3, v3, v3}, Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;-><init>(JLandroid/net/Uri;Landroid/content/ContentValues;)V

    new-array v7, v2, [Ljava/lang/Object;

    invoke-interface {p4, v6, v7}, Lcom/transsion/camera/app/common/taps/OnBackgroundImageStateChangeListener;->onBackgroundImageSaveProgressed(Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;[Ljava/lang/Object;)V

    if-nez p1, :cond_ed

    if-eqz v1, :cond_d0

    .line 351
    :try_start_6c
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;->getUri()Landroid/net/Uri;

    move-result-object v7

    if-eqz v7, :cond_d0

    .line 353
    const-string v2, "doSaveHighQualityJpeg: low quality picture without high quality picture"

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 354
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;->getValues()Landroid/content/ContentValues;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->getHighQualityContentValues(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v0

    .line 355
    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, v7}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->updateJpegToHighQuality(Landroid/content/Context;Landroid/net/Uri;)V

    .line 356
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportLowQualityPicturePublic:Z

    if-eqz v1, :cond_ab

    .line 357
    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v7}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->getBytesFromUri(Landroid/content/Context;Landroid/net/Uri;)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v4, v2}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->writeXMPMetadata([BLcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;Z)[B

    move-result-object v1

    if-eqz v5, :cond_9d

    .line 360
    invoke-direct {p0, v1, v5}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->getLivePhotoInfo([BLcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;)Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;

    move-result-object v3

    :cond_9d
    move-object v8, p4

    move-object v4, v0

    move-object v5, v1

    move-object v6, v3

    move-object v1, p0

    move-wide v2, p2

    goto :goto_a7

    :catchall_a4
    move-exception v0

    goto/16 :goto_113

    .line 364
    :goto_a7
    invoke-direct/range {v1 .. v8}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->doSaveHighQualityJpeg(JLandroid/content/ContentValues;[BLcom/transsion/camera/app/common/livephoto/PhotoTaskData;Landroid/net/Uri;Lcom/transsion/camera/app/common/taps/OnBackgroundImageStateChangeListener;)V

    goto :goto_c8

    :cond_ab
    move-object v4, v0

    if-nez v5, :cond_b7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p2

    move-object v8, p4

    .line 367
    invoke-direct/range {v1 .. v8}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->doSaveHighQualityJpeg(JLandroid/content/ContentValues;[BLcom/transsion/camera/app/common/livephoto/PhotoTaskData;Landroid/net/Uri;Lcom/transsion/camera/app/common/taps/OnBackgroundImageStateChangeListener;)V

    goto :goto_c8

    .line 369
    :cond_b7
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v7}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->getBytesFromUri(Landroid/content/Context;Landroid/net/Uri;)[B

    move-result-object v0

    .line 370
    invoke-direct {p0, v0, v5}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->getLivePhotoInfo([BLcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;)Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;

    move-result-object v6

    move-object v1, p0

    move-wide v2, p2

    move-object v8, p4

    move-object v5, v0

    .line 371
    invoke-direct/range {v1 .. v8}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->doSaveHighQualityJpeg(JLandroid/content/ContentValues;[BLcom/transsion/camera/app/common/livephoto/PhotoTaskData;Landroid/net/Uri;Lcom/transsion/camera/app/common/taps/OnBackgroundImageStateChangeListener;)V
    :try_end_c8
    .catchall {:try_start_6c .. :try_end_c8} :catchall_a4

    .line 387
    :goto_c8
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mBackgroundShot2ShotSkipPolicy:Lcom/transsion/camera/app/common/taps/IBackgroundShot2ShotSkipPolicy;

    if-eqz p0, :cond_112

    .line 388
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/taps/IBackgroundShot2ShotSkipPolicy;->onHighQualityCaptureCompleted([BJ)V

    return-void

    .line 377
    :cond_d0
    :try_start_d0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doSaveHighQualityJpeg: saveJpegToFile ignore, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 378
    new-instance v0, Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;

    invoke-direct {v0, p2, p3, v3, v3}, Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;-><init>(JLandroid/net/Uri;Landroid/content/ContentValues;)V

    invoke-direct {p0, v0, v2, p4}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->onSaveHighQualityJpeg(Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;ILcom/transsion/camera/app/common/taps/OnBackgroundImageStateChangeListener;)V

    goto :goto_10b

    .line 380
    :cond_ed
    const-string v2, "doSaveHighQualityJpeg: saveJpegToFile image"

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 381
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->getHighQualityContentValues([BJLcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;)Landroid/content/ContentValues;

    move-result-object v0

    .line 382
    invoke-direct {p0, p1, v5}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->getLivePhotoInfo([BLcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;)Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;

    move-result-object v2

    .line 383
    invoke-direct {p0, p1, v4}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->updateJpegExif([BLcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;)V

    .line 384
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->getImageUri(Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;)Landroid/net/Uri;

    move-result-object v1

    move-object v5, p1

    move-object v8, p4

    move-object v4, v0

    move-object v7, v1

    move-object v6, v2

    move-object v1, p0

    move-wide v2, p2

    invoke-direct/range {v1 .. v8}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->doSaveHighQualityJpeg(JLandroid/content/ContentValues;[BLcom/transsion/camera/app/common/livephoto/PhotoTaskData;Landroid/net/Uri;Lcom/transsion/camera/app/common/taps/OnBackgroundImageStateChangeListener;)V
    :try_end_10b
    .catchall {:try_start_d0 .. :try_end_10b} :catchall_a4

    .line 387
    :goto_10b
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mBackgroundShot2ShotSkipPolicy:Lcom/transsion/camera/app/common/taps/IBackgroundShot2ShotSkipPolicy;

    if-eqz p0, :cond_112

    .line 388
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/taps/IBackgroundShot2ShotSkipPolicy;->onHighQualityCaptureCompleted([BJ)V

    :cond_112
    return-void

    .line 387
    :goto_113
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mBackgroundShot2ShotSkipPolicy:Lcom/transsion/camera/app/common/taps/IBackgroundShot2ShotSkipPolicy;

    if-eqz p0, :cond_11a

    .line 388
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/taps/IBackgroundShot2ShotSkipPolicy;->onHighQualityCaptureCompleted([BJ)V

    .line 390
    :cond_11a
    throw v0
.end method

.method public onHighQualityJpegFailed(JLcom/transsion/camera/app/common/taps/OnBackgroundImageStateChangeListener;)V
    .registers 7

    .line 395
    sget-object v0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHighQualityJpegFailed: timestamp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 396
    new-instance v0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$4;

    invoke-direct {v0, p0, p3}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$4;-><init>(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;Lcom/transsion/camera/app/common/taps/OnBackgroundImageStateChangeListener;)V

    const/4 p3, 0x0

    invoke-virtual {p0, p3, p1, p2, v0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->onHighQualityJpegAvailable([BJLcom/transsion/camera/app/common/taps/OnBackgroundImageStateChangeListener;)V

    return-void
.end method

.method public onLivePhotoStateChanged(Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;)V
    .registers 2

    .line 1745
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->applyLowQualityPictureCache(Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;)V

    return-void
.end method

.method public onThumbnailClicked()V
    .registers 3

    .line 1029
    const-string v0, "onThumbnailClicked"

    invoke-static {v0}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 1030
    sget-object v0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onThumbnailClicked: "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1031
    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->checkBackgroundService()V

    .line 1032
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mBackgroundService:Lcom/transsion/camera/app/common/taps/IBackgroundController;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/taps/IBackgroundCommon;->onThumbnailClicked()V

    .line 1033
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    return-void
.end method

.method public onThumbnailPendingClicked(Z)V
    .registers 5

    .line 910
    sget-object v0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onThumbnailPendingClicked: click = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_30

    .line 912
    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mCaptureProgressImpl:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$CaptureProgressImpl;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$CaptureProgressImpl;->isShot2ShotFinished()Z

    move-result p1

    if-nez p1, :cond_2c

    invoke-static {}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->getInstance()Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->isSupport()Z

    move-result p1

    if-eqz p1, :cond_2b

    goto :goto_2c

    :cond_2b
    return-void

    .line 913
    :cond_2c
    :goto_2c
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->onThumbnailClicked()V

    return-void

    .line 916
    :cond_30
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mCaptureProgressImpl:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$CaptureProgressImpl;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$CaptureProgressImpl;->resetShot2ShotFinished()V

    return-void
.end method

.method public removeCustomContentValues(Landroid/content/ContentValues;Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;)V
    .registers 4

    .line 757
    const-string/jumbo v0, "transsion_quality_show_timestamp"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 758
    const-string/jumbo v0, "transsion_quality_timestamp_key"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 759
    const-string/jumbo v0, "transsion_quality_state"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 760
    const-string/jumbo v0, "transsion_user_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    if-eqz p2, :cond_1d

    .line 762
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->applyLowQualityPictureCache(Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;)V

    .line 764
    :cond_1d
    sget-object p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "removeCustomContentValues: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public resume()V
    .registers 1

    .line 284
    invoke-super {p0}, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->resume()V

    .line 285
    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->restoreCache()V

    return-void
.end method

.method public setAppIOOperationStart(II)V
    .registers 3

    .line 1044
    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->checkBackgroundService()V

    .line 1045
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mBackgroundService:Lcom/transsion/camera/app/common/taps/IBackgroundController;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/common/taps/IBackgroundCommon;->setAppIOOperationStart(II)V

    return-void
.end method

.method public setBackgroundService(Lcom/transsion/camera/app/common/taps/IBackgroundController;)V
    .registers 5

    .line 311
    sget-object v0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBackgroundService: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 312
    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mBackgroundService:Lcom/transsion/camera/app/common/taps/IBackgroundController;

    return-void
.end method

.method public setGoToGalleryMediaStoreId(J)V
    .registers 3

    .line 327
    iput-wide p1, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mGoToGalleryMediaStoreId:J

    return-void
.end method

.method public setTapCapConfig(JII)V
    .registers 5

    .line 1038
    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->checkBackgroundService()V

    .line 1039
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mBackgroundService:Lcom/transsion/camera/app/common/taps/IBackgroundController;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/taps/IBackgroundCommon;->setTapCapConfig(JII)V

    return-void
.end method

.method public setThumbnailController(Lcom/transsion/camera/app/common/taps/IThumbnailController;)V
    .registers 5

    .line 317
    sget-object v0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setThumbnailController: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 318
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mThumbnailController:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public updatePostViewPicture(J[BLandroid/graphics/Bitmap;Z)V
    .registers 9

    .line 457
    sget-object v0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updatePostViewBitmap: timestamp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p5, :cond_21

    .line 459
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mPostViewBitmapProcessingCount:Ljava/util/concurrent/CountDownLatch;

    :cond_21
    if-eqz p3, :cond_2b

    .line 462
    new-instance v0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda5;

    invoke-direct {v0, p3}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda5;-><init>([B)V

    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->updatePostViewPicture(JLjava/util/function/Consumer;)V

    :cond_2b
    if-eqz p4, :cond_35

    .line 465
    new-instance p3, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda6;

    invoke-direct {p3, p4}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda6;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->updatePostViewPicture(JLjava/util/function/Consumer;)V

    :cond_35
    if-nez p5, :cond_3e

    .line 467
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mPostViewBitmapProcessingCount:Ljava/util/concurrent/CountDownLatch;

    if-eqz p0, :cond_3e

    .line 468
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_3e
    return-void
.end method

.method public updateThumbnailUri(Landroid/net/Uri;)V
    .registers 4

    .line 860
    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mProcessingThumbUri:Landroid/net/Uri;

    .line 861
    sget-object p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateThumbnailUri: uri = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public updateTranssionCameraMode(Lcom/transsion/camera/app/common/mode/ICameraMode;Lcom/transsion/camera/app/common/mode/ICameraMode;)V
    .registers 6

    .line 835
    const-string v0, "key_cam_mode"

    if-eqz p2, :cond_17

    .line 837
    invoke-interface {p2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getModeRelation()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/transsion/camera/app/common/relation/Relation;->getBodyEntryValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 836
    invoke-static {v1, v0}, Lcom/transsion/camera/utils/TranssionCameraModeUtil;->getTranssionCameraMode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mTranssionCameraMode:I

    goto :goto_2f

    :cond_17
    if-eqz p1, :cond_2c

    .line 840
    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getModeRelation()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/transsion/camera/app/common/relation/Relation;->getBodyEntryValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 839
    invoke-static {v1, v0}, Lcom/transsion/camera/utils/TranssionCameraModeUtil;->getTranssionCameraMode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mTranssionCameraMode:I

    goto :goto_2f

    :cond_2c
    const/4 v0, -0x1

    .line 842
    iput v0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mTranssionCameraMode:I

    .line 844
    :goto_2f
    sget-object v0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateTranssionCameraMode: oldMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", newMode = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", mTranssionCameraMode = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mTranssionCameraMode:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 846
    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mCaptureProgressImpl:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$CaptureProgressImpl;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$CaptureProgressImpl;->clearCache()V

    .line 847
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mBackgroundShot2ShotSkipPolicy:Lcom/transsion/camera/app/common/taps/IBackgroundShot2ShotSkipPolicy;

    if-eqz p0, :cond_6d

    if-nez p2, :cond_66

    .line 848
    const-string p1, "empty"

    goto :goto_6a

    :cond_66
    invoke-interface {p2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_6a
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/taps/IBackgroundShot2ShotSkipPolicy;->onModeOpened(Ljava/lang/String;)V

    :cond_6d
    return-void
.end method

.method public updateTranssionCameraModeId(I)V
    .registers 4

    .line 854
    iput p1, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->mTranssionCameraMode:I

    .line 855
    sget-object p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateTranssionCameraModeId: modeId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
