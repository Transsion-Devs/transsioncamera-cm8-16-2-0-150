.class Lcom/transsion/camera/manager/ThumbnailLoader$LoadThumbnailTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/manager/ThumbnailLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoadThumbnailTask"
.end annotation


# instance fields
.field private mBucketIds:Ljava/util/ArrayList;

.field private mContentResolver:Ljava/lang/ref/WeakReference;

.field private mLoaderCallback:Ljava/lang/ref/WeakReference;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public static synthetic $r8$lambda$sSU99gfMTmTvwddEDsKXISGWDwA(Landroid/net/Uri;Landroid/database/Cursor;)Ljava/util/List;
    .registers 18

    move-object/from16 v0, p1

    .line 330
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_54

    .line 331
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_54

    const/4 v2, 0x0

    .line 332
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v2, 0x1

    .line 333
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v2, 0x2

    .line 334
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const/4 v2, 0x3

    .line 335
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/4 v2, 0x4

    .line 336
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    const/4 v2, 0x5

    .line 337
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 338
    new-instance v3, Lcom/transsion/camera/manager/ThumbnailLoader$Media;

    move-object/from16 v0, p0

    .line 339
    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v13

    const/4 v14, 0x1

    invoke-direct/range {v3 .. v15}, Lcom/transsion/camera/manager/ThumbnailLoader$Media;-><init>(JIJJJLandroid/net/Uri;ILjava/lang/String;)V

    .line 340
    invoke-static {}, Lcom/transsion/camera/manager/ThumbnailLoader;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLowQualityMediaFromDatabase: filePath = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 341
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_54
    return-object v1
.end method

.method private constructor <init>(Landroid/content/ContentResolver;Ljava/util/ArrayList;Lcom/transsion/camera/manager/ThumbnailLoader$TaskCallback;)V
    .registers 5

    .line 147
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 148
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/manager/ThumbnailLoader$LoadThumbnailTask;->mContentResolver:Ljava/lang/ref/WeakReference;

    .line 149
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/transsion/camera/manager/ThumbnailLoader$LoadThumbnailTask;->mLoaderCallback:Ljava/lang/ref/WeakReference;

    .line 150
    iput-object p2, p0, Lcom/transsion/camera/manager/ThumbnailLoader$LoadThumbnailTask;->mBucketIds:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>(Landroid/content/ContentResolver;Ljava/util/ArrayList;Lcom/transsion/camera/manager/ThumbnailLoader$TaskCallback;Landroid/net/Uri;)V
    .registers 5

    .line 154
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/manager/ThumbnailLoader$LoadThumbnailTask;-><init>(Landroid/content/ContentResolver;Ljava/util/ArrayList;Lcom/transsion/camera/manager/ThumbnailLoader$TaskCallback;)V

    .line 155
    iput-object p4, p0, Lcom/transsion/camera/manager/ThumbnailLoader$LoadThumbnailTask;->mUri:Landroid/net/Uri;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/ContentResolver;Ljava/util/ArrayList;Lcom/transsion/camera/manager/ThumbnailLoader$TaskCallback;Landroid/net/Uri;Lcom/transsion/camera/manager/ThumbnailLoader-IA;)V
    .registers 6

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/manager/ThumbnailLoader$LoadThumbnailTask;-><init>(Landroid/content/ContentResolver;Ljava/util/ArrayList;Lcom/transsion/camera/manager/ThumbnailLoader$TaskCallback;Landroid/net/Uri;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/ContentResolver;Ljava/util/ArrayList;Lcom/transsion/camera/manager/ThumbnailLoader$TaskCallback;Lcom/transsion/camera/manager/ThumbnailLoader-IA;)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/manager/ThumbnailLoader$LoadThumbnailTask;-><init>(Landroid/content/ContentResolver;Ljava/util/ArrayList;Lcom/transsion/camera/manager/ThumbnailLoader$TaskCallback;)V

    return-void
.end method

.method private static getBitmapFromExif(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .registers 5

    .line 430
    invoke-static {p1}, Lcom/transsion/camera/manager/ThumbnailLoader$LoadThumbnailTask;->isValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 431
    invoke-static {}, Lcom/transsion/camera/manager/ThumbnailLoader;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getBitmapFromExif fail: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 435
    :cond_20
    invoke-static {p1}, Lcom/transsion/camera/utils/BitmapUtils;->createBitmapFromExif(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_40

    .line 438
    invoke-virtual {p0, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    if-eqz p0, :cond_3b

    .line 440
    :try_start_2c
    invoke-static {p0}, Lcom/transsion/camera/utils/BitmapUtils;->createBitmapFromExif(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_30
    .catchall {:try_start_2c .. :try_end_30} :catchall_31

    goto :goto_3b

    :catchall_31
    move-exception p1

    .line 438
    :try_start_32
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_36

    goto :goto_3a

    :catchall_36
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3a
    throw p1

    :cond_3b
    :goto_3b
    if-eqz p0, :cond_40

    .line 442
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 444
    :cond_40
    invoke-static {}, Lcom/transsion/camera/manager/ThumbnailLoader;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getBitmapFromExif: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", path: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getBitmapFromVideo(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .registers 5

    .line 450
    invoke-static {p1}, Lcom/transsion/camera/manager/ThumbnailLoader$LoadThumbnailTask;->isValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 451
    invoke-static {}, Lcom/transsion/camera/manager/ThumbnailLoader;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getBitmapFromVideo fail: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_20
    const/16 v0, 0x200

    .line 455
    invoke-static {p1, v0}, Lcom/transsion/camera/utils/BitmapUtils;->createScaledBitmapFromVideo(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_48

    .line 457
    const-string v1, "r"

    invoke-virtual {p0, p2, v1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    if-eqz p0, :cond_43

    .line 459
    :try_start_30
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/BitmapUtils;->createScaledBitmapFromVideo(Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_38
    .catchall {:try_start_30 .. :try_end_38} :catchall_39

    goto :goto_43

    :catchall_39
    move-exception p1

    .line 457
    :try_start_3a
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_3e

    goto :goto_42

    :catchall_3e
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_42
    throw p1

    :cond_43
    :goto_43
    if-eqz p0, :cond_48

    .line 461
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_48
    return-object p1
.end method

.method private getLatestMediaFromDatabase(Landroid/content/ContentResolver;)Lcom/transsion/camera/manager/ThumbnailLoader$Media;
    .registers 12

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "((media_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    .line 206
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " OR "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "media_type"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x3

    .line 208
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ") AND "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "_size"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " IS NOT NULL)"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 211
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " IS NOT NULL AND "

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "datetaken"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " IS NULL)"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 217
    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/camera/manager/ThumbnailLoader$LoadThumbnailTask;->getMediaFromDatabase(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/manager/ThumbnailLoader$Media;

    move-result-object p0

    return-object p0
.end method

.method private getLowQualityMediaFromDatabase(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/manager/ThumbnailLoader$Media;
    .registers 7

    .line 329
    invoke-static {}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->getInstance()Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;

    move-result-object p0

    invoke-virtual {p0, p5}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->getBaseSelection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    move-object p5, p6

    new-instance p6, Lcom/transsion/camera/manager/ThumbnailLoader$LoadThumbnailTask$$ExternalSyntheticLambda0;

    invoke-direct {p6, p3}, Lcom/transsion/camera/manager/ThumbnailLoader$LoadThumbnailTask$$ExternalSyntheticLambda0;-><init>(Landroid/net/Uri;)V

    move-object p3, p4

    move-object p4, p0

    .line 328
    invoke-static/range {p1 .. p6}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->getLowQualityMedia(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object p0

    .line 345
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x0

    :cond_19
    :goto_19
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/manager/ThumbnailLoader$Media;

    .line 346
    invoke-virtual {p2, p1}, Lcom/transsion/camera/manager/ThumbnailLoader$Media;->compareTo(Lcom/transsion/camera/manager/ThumbnailLoader$Media;)I

    move-result p3

    if-lez p3, :cond_19

    move-object p1, p2

    goto :goto_19

    :cond_2d
    return-object p1
.end method

.method private getLowQualityMediaFromDatabase(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/manager/ThumbnailLoader$Media;
    .registers 16

    .line 304
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 305
    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "limit"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 306
    const-string v9, "date_modified"

    const-string v10, "date_added"

    const-string v5, "_id"

    const-string v6, "orientation"

    const-string v7, "datetaken"

    const-string v8, "_data"

    filled-new-array/range {v5 .. v10}, [Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    move-object v6, p2

    move-object v7, p4

    .line 314
    invoke-direct/range {v1 .. v7}, Lcom/transsion/camera/manager/ThumbnailLoader$LoadThumbnailTask;->getLowQualityMediaFromDatabase(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/manager/ThumbnailLoader$Media;

    move-result-object p0

    move-object v6, p3

    .line 316
    invoke-direct/range {v1 .. v7}, Lcom/transsion/camera/manager/ThumbnailLoader$LoadThumbnailTask;->getLowQualityMediaFromDatabase(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/manager/ThumbnailLoader$Media;

    move-result-object p1

    if-eqz p1, :cond_41

    if-eqz p0, :cond_41

    .line 319
    iget-wide p2, p0, Lcom/transsion/camera/manager/ThumbnailLoader$Media;->dateModified:J

    iget-wide v0, p1, Lcom/transsion/camera/manager/ThumbnailLoader$Media;->dateModified:J

    cmp-long p2, p2, v0

    if-lez p2, :cond_40

    return-object p0

    :cond_40
    return-object p1

    :cond_41
    return-object p0
.end method

.method private getMediaFromDatabase(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/manager/ThumbnailLoader$Media;
    .registers 35

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    .line 221
    const-string v2, "external"

    invoke-static {v2}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 222
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "limit"

    const-string v5, "1"

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 223
    const-string v11, "date_modified"

    const-string v12, "date_added"

    const-string v6, "_id"

    const-string v7, "orientation"

    const-string v8, "datetaken"

    const-string v9, "_data"

    const-string v10, "media_type"

    filled-new-array/range {v6 .. v12}, [Ljava/lang/String;

    move-result-object v6

    .line 232
    iget-object v3, v1, Lcom/transsion/camera/manager/ThumbnailLoader$LoadThumbnailTask;->mBucketIds:Ljava/util/ArrayList;

    if-eqz v3, :cond_45

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_45

    move-object/from16 v3, p2

    .line 233
    invoke-direct {v1, v3}, Lcom/transsion/camera/manager/ThumbnailLoader$LoadThumbnailTask;->getSelection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_42

    .line 236
    invoke-direct {v1, v0}, Lcom/transsion/camera/manager/ThumbnailLoader$LoadThumbnailTask;->getSelection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_42
    :goto_42
    move-object v7, v3

    move-object v3, v0

    goto :goto_48

    :cond_45
    move-object/from16 v3, p2

    goto :goto_42

    .line 239
    :goto_48
    const-string v9, "datetaken DESC,date_modified DESC,_id DESC"

    .line 240
    const-string v0, "date_modified DESC"

    const/4 v8, 0x0

    move-object/from16 v4, p1

    .line 248
    :try_start_4f
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_53} :catch_102
    .catchall {:try_start_4f .. :try_end_53} :catchall_fd

    move-object v12, v7

    move-object v13, v9

    const/4 v4, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v11, :cond_98

    .line 249
    :try_start_5c
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v16

    if-eqz v16, :cond_98

    .line 250
    invoke-interface {v11, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 251
    invoke-interface {v11, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 252
    invoke-interface {v11, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    .line 253
    invoke-interface {v11, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 254
    invoke-interface {v11, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    const/4 v4, 0x5

    .line 255
    invoke-interface {v11, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    const/4 v4, 0x6

    .line 256
    invoke-interface {v11, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    .line 257
    new-instance v17, Lcom/transsion/camera/manager/ThumbnailLoader$Media;

    .line 258
    invoke-static {v2, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v27

    move-wide/from16 v18, v14

    invoke-direct/range {v17 .. v29}, Lcom/transsion/camera/manager/ThumbnailLoader$Media;-><init>(JIJJJLandroid/net/Uri;ILjava/lang/String;)V
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_8b} :catch_91
    .catchall {:try_start_5c .. :try_end_8b} :catchall_8c

    goto :goto_9a

    :catchall_8c
    move-exception v0

    move-object v10, v11

    const/4 v5, 0x0

    goto/16 :goto_174

    :catch_91
    move-exception v0

    move-object v7, v3

    const/4 v5, 0x0

    :goto_94
    const/16 v17, 0x0

    goto/16 :goto_109

    :cond_98
    const/16 v17, 0x0

    :goto_9a
    if-eqz v3, :cond_eb

    move v4, v8

    const/4 v8, 0x0

    move v14, v7

    move-object v7, v3

    move v3, v14

    move v14, v4

    move v15, v9

    move-object/from16 v4, p1

    move-object v9, v0

    const/4 v0, 0x4

    .line 262
    :try_start_a7
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_ab} :catch_e8
    .catchall {:try_start_a7 .. :try_end_ab} :catchall_8c

    if-eqz v5, :cond_e4

    .line 263
    :try_start_ad
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_e4

    .line 264
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 265
    invoke-interface {v5, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 266
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 267
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 268
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    const/4 v4, 0x5

    .line 269
    invoke-interface {v5, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    const/4 v4, 0x6

    .line 270
    invoke-interface {v5, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    .line 271
    new-instance v18, Lcom/transsion/camera/manager/ThumbnailLoader$Media;

    .line 272
    invoke-static {v2, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v28

    move-wide/from16 v19, v8

    invoke-direct/range {v18 .. v30}, Lcom/transsion/camera/manager/ThumbnailLoader$Media;-><init>(JIJJJLandroid/net/Uri;ILjava/lang/String;)V
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_dc} :catch_e2
    .catchall {:try_start_ad .. :try_end_dc} :catchall_de

    move-object v10, v5

    goto :goto_ee

    :catchall_de
    move-exception v0

    move-object v10, v11

    goto/16 :goto_174

    :catch_e2
    move-exception v0

    goto :goto_109

    :cond_e4
    move-object v10, v5

    :goto_e5
    const/16 v18, 0x0

    goto :goto_ee

    :catch_e8
    move-exception v0

    const/4 v5, 0x0

    goto :goto_109

    :cond_eb
    move-object v7, v3

    const/4 v10, 0x0

    goto :goto_e5

    :goto_ee
    if-eqz v11, :cond_f3

    .line 279
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_f3
    if-eqz v10, :cond_f8

    .line 282
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_f8
    move-object/from16 v10, v18

    :goto_fa
    move-object/from16 v0, v17

    goto :goto_11e

    :catchall_fd
    move-exception v0

    const/4 v5, 0x0

    const/4 v10, 0x0

    goto/16 :goto_174

    :catch_102
    move-exception v0

    move-object v12, v7

    move-object v13, v9

    move-object v7, v3

    const/4 v5, 0x0

    const/4 v11, 0x0

    goto :goto_94

    .line 276
    :goto_109
    :try_start_109
    invoke-static {}, Lcom/transsion/camera/manager/ThumbnailLoader;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v2

    const-string v3, "query Thumbnail fail: "

    invoke-static {v2, v3, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_112
    .catchall {:try_start_109 .. :try_end_112} :catchall_de

    if-eqz v11, :cond_117

    .line 279
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_117
    if-eqz v5, :cond_11c

    .line 282
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_11c
    const/4 v10, 0x0

    goto :goto_fa

    .line 286
    :goto_11e
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v2

    iget-boolean v2, v2, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportLowQualityPicturePublic:Z

    if-nez v2, :cond_135

    move-object/from16 v4, p1

    .line 287
    invoke-direct {v1, v4, v12, v7, v13}, Lcom/transsion/camera/manager/ThumbnailLoader$LoadThumbnailTask;->getLowQualityMediaFromDatabase(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/manager/ThumbnailLoader$Media;

    move-result-object v1

    if-eqz v1, :cond_135

    .line 289
    invoke-virtual {v1, v0}, Lcom/transsion/camera/manager/ThumbnailLoader$Media;->compareTo(Lcom/transsion/camera/manager/ThumbnailLoader$Media;)I

    move-result v2

    if-lez v2, :cond_135

    move-object v0, v1

    .line 293
    :cond_135
    invoke-static {}, Lcom/transsion/camera/manager/ThumbnailLoader;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLatestMediaFromDatabase, media: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " ,dateTakenNullMedia: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", selection: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ,dateTakenNullSelection :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v10, :cond_173

    if-eqz v0, :cond_173

    .line 297
    iget-wide v1, v0, Lcom/transsion/camera/manager/ThumbnailLoader$Media;->dateModified:J

    iget-wide v3, v10, Lcom/transsion/camera/manager/ThumbnailLoader$Media;->dateModified:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_172

    move-object v10, v0

    :cond_172
    return-object v10

    :cond_173
    return-object v0

    :goto_174
    if-eqz v10, :cond_179

    .line 279
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_179
    if-eqz v5, :cond_17e

    .line 282
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 284
    :cond_17e
    throw v0
.end method

.method private getMediaFromDatabaseByUri(Landroid/content/ContentResolver;)Lcom/transsion/camera/manager/ThumbnailLoader$Media;
    .registers 5

    .line 199
    iget-object v0, p0, Lcom/transsion/camera/manager/ThumbnailLoader$LoadThumbnailTask;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id=("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 201
    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/camera/manager/ThumbnailLoader$LoadThumbnailTask;->getMediaFromDatabase(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/manager/ThumbnailLoader$Media;

    move-result-object p0

    return-object p0
.end method

.method private getSelection(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") AND ("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 353
    :goto_1c
    iget-object v1, p0, Lcom/transsion/camera/manager/ThumbnailLoader$LoadThumbnailTask;->mBucketIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_55

    const/16 v1, 0x3d

    .line 354
    const-string v2, "bucket_id"

    if-nez p1, :cond_3c

    .line 355
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/manager/ThumbnailLoader$LoadThumbnailTask;->mBucketIds:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_52

    .line 357
    :cond_3c
    const-string v3, " OR "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/manager/ThumbnailLoader$LoadThumbnailTask;->mBucketIds:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_52
    add-int/lit8 p1, p1, 0x1

    goto :goto_1c

    .line 360
    :cond_55
    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getThumbnailFromMedia(Lcom/transsion/camera/manager/ThumbnailLoader$Media;Landroid/content/ContentResolver;)Lcom/transsion/camera/manager/ThumbnailItem;
    .registers 16

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    .line 368
    :cond_4
    new-instance v2, Lcom/transsion/camera/manager/ThumbnailItem;

    invoke-direct {v2}, Lcom/transsion/camera/manager/ThumbnailItem;-><init>()V

    .line 372
    :try_start_9
    iget v0, p0, Lcom/transsion/camera/manager/ThumbnailLoader$Media;->mediaType:I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_b} :catch_9c

    const-string v3, "external"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_c1

    .line 373
    :try_start_11
    invoke-static {v3}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 374
    iget-wide v6, p0, Lcom/transsion/camera/manager/ThumbnailLoader$Media;->id:J

    invoke-static {v0, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v2, Lcom/transsion/camera/manager/ThumbnailItem;->mUri:Landroid/net/Uri;

    .line 375
    iget-object v3, p0, Lcom/transsion/camera/manager/ThumbnailLoader$Media;->filePath:Ljava/lang/String;

    invoke-static {p1, v3, v0}, Lcom/transsion/camera/manager/ThumbnailLoader$LoadThumbnailTask;->getBitmapFromExif(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_bd

    .line 377
    iget-object v3, p0, Lcom/transsion/camera/manager/ThumbnailLoader$Media;->filePath:Ljava/lang/String;

    invoke-static {v3}, Lcom/transsion/camera/manager/ThumbnailLoader$LoadThumbnailTask;->isValid(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_bd

    .line 378
    iget-object v3, p0, Lcom/transsion/camera/manager/ThumbnailLoader$Media;->filePath:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/transsion/camera/utils/CameraUtil;->getExternalStoragePublicDirectory()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "Camera"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a6

    .line 380
    iget-object v0, p0, Lcom/transsion/camera/manager/ThumbnailLoader$Media;->filePath:Ljava/lang/String;

    invoke-static {}, Lcom/transsion/camera/manager/ThumbnailLoader;->-$$Nest$sfgetsCameraPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 381
    aget-object v3, v0, v4

    const-string v6, "/"

    invoke-virtual {v3, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v6, v5

    aget-object v4, v0, v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 382
    aget-object v13, v0, v5

    .line 383
    const-string v0, "^[a-zA-Z0-9_-]+$"

    invoke-virtual {v7, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9f

    const-string v0, "^[a-zA-Z0-9_.-]+$"

    invoke-virtual {v13, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 384
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v3, "content://com.android.externalstorage.documents/tree/%1$s%2$s3A/document/%3$s%4$s3ADCIM%5$s2FCamera%6$s2F%7$s"

    const-string v8, "%"

    const-string v10, "%"

    const-string v11, "%"

    const-string v12, "%"

    move-object v9, v7

    filled-new-array/range {v7 .. v13}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 385
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {}, Lcom/transsion/camera/manager/ThumbnailLoader;->-$$Nest$sfgetTHUMBNAIL_SIZE()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {p1, v0, v3, v1}, Landroid/content/ContentResolver;->loadThumbnail(Landroid/net/Uri;Landroid/util/Size;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;

    move-result-object p1

    :goto_9a
    move-object v0, p1

    goto :goto_bd

    :catch_9c
    move-exception v0

    move-object p1, v0

    goto :goto_102

    .line 387
    :cond_9f
    iget-object p1, p0, Lcom/transsion/camera/manager/ThumbnailLoader$Media;->filePath:Ljava/lang/String;

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_9a

    .line 390
    :cond_a6
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/transsion/camera/manager/ThumbnailLoader$Media;->filePath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 391
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_bd

    .line 392
    iget-object v0, v2, Lcom/transsion/camera/manager/ThumbnailItem;->mUri:Landroid/net/Uri;

    invoke-static {}, Lcom/transsion/camera/manager/ThumbnailLoader;->-$$Nest$sfgetTHUMBNAIL_SIZE()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {p1, v0, v3, v1}, Landroid/content/ContentResolver;->loadThumbnail(Landroid/net/Uri;Landroid/util/Size;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 396
    :cond_bd
    :goto_bd
    iput-object v0, v2, Lcom/transsion/camera/manager/ThumbnailItem;->mBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_137

    :cond_c1
    const/4 v5, 0x3

    if-ne v0, v5, :cond_137

    .line 398
    invoke-static {v3}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 401
    iget-wide v5, p0, Lcom/transsion/camera/manager/ThumbnailLoader$Media;->id:J

    invoke-static {v0, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v2, Lcom/transsion/camera/manager/ThumbnailItem;->mUri:Landroid/net/Uri;

    .line 402
    iget-object v0, p0, Lcom/transsion/camera/manager/ThumbnailLoader$Media;->filePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/camera/manager/ThumbnailLoader$LoadThumbnailTask;->isValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f0

    .line 403
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/transsion/camera/manager/ThumbnailLoader$Media;->filePath:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 404
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_f0

    .line 405
    iget-object v0, v2, Lcom/transsion/camera/manager/ThumbnailItem;->mUri:Landroid/net/Uri;

    invoke-static {}, Lcom/transsion/camera/manager/ThumbnailLoader;->-$$Nest$sfgetTHUMBNAIL_SIZE()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {p1, v0, v3, v1}, Landroid/content/ContentResolver;->loadThumbnail(Landroid/net/Uri;Landroid/util/Size;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_f1

    :cond_f0
    move-object v0, v1

    :goto_f1
    if-nez v0, :cond_fb

    .line 409
    iget-object v0, p0, Lcom/transsion/camera/manager/ThumbnailLoader$Media;->filePath:Ljava/lang/String;

    iget-object v3, v2, Lcom/transsion/camera/manager/ThumbnailItem;->mUri:Landroid/net/Uri;

    invoke-static {p1, v0, v3}, Lcom/transsion/camera/manager/ThumbnailLoader$LoadThumbnailTask;->getBitmapFromVideo(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 411
    :cond_fb
    invoke-static {v0, v4}, Lcom/transsion/camera/utils/BitmapUtils;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, v2, Lcom/transsion/camera/manager/ThumbnailItem;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_101
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_101} :catch_9c

    goto :goto_137

    .line 414
    :goto_102
    invoke-static {}, Lcom/transsion/camera/manager/ThumbnailLoader;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v3, "getThumbnailFromMedia fail: "

    invoke-static {v0, v3, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 416
    iget-object p0, p0, Lcom/transsion/camera/manager/ThumbnailLoader$Media;->filePath:Ljava/lang/String;

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    iput-object p0, v2, Lcom/transsion/camera/manager/ThumbnailItem;->mBitmap:Landroid/graphics/Bitmap;

    .line 419
    invoke-static {}, Lcom/transsion/camera/manager/ThumbnailLoader;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getThumbnailFromMedia item.mBitmap:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lcom/transsion/camera/manager/ThumbnailItem;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " , item.mUri:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lcom/transsion/camera/manager/ThumbnailItem;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 422
    :cond_137
    :goto_137
    iget-object p0, v2, Lcom/transsion/camera/manager/ThumbnailItem;->mBitmap:Landroid/graphics/Bitmap;

    if-nez p0, :cond_13d

    .line 423
    iput-object v1, v2, Lcom/transsion/camera/manager/ThumbnailItem;->mUri:Landroid/net/Uri;

    :cond_13d
    return-object v2
.end method

.method private static isValid(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 470
    :cond_4
    const-string v1, "./"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_20

    const-string v1, ".."

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_20

    const-string/jumbo v1, "~/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1e

    goto :goto_20

    :cond_1e
    const/4 p0, 0x1

    return p0

    :cond_20
    :goto_20
    return v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/transsion/camera/manager/ThumbnailItem;
    .registers 4

    .line 165
    invoke-static {}, Lcom/transsion/camera/manager/ThumbnailLoader;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "[doInBackground] LoadThumbnailTask start."

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1a

    .line 167
    invoke-static {}, Lcom/transsion/camera/manager/ThumbnailLoader;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "[doInBackground] LoadThumbnailTask is cancelled, return."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v0

    .line 170
    :cond_1a
    iget-object p1, p0, Lcom/transsion/camera/manager/ThumbnailLoader$LoadThumbnailTask;->mContentResolver:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ContentResolver;

    if-nez p1, :cond_25

    return-object v0

    .line 175
    :cond_25
    iget-object v1, p0, Lcom/transsion/camera/manager/ThumbnailLoader$LoadThumbnailTask;->mUri:Landroid/net/Uri;

    if-eqz v1, :cond_2e

    .line 176
    invoke-direct {p0, p1}, Lcom/transsion/camera/manager/ThumbnailLoader$LoadThumbnailTask;->getMediaFromDatabaseByUri(Landroid/content/ContentResolver;)Lcom/transsion/camera/manager/ThumbnailLoader$Media;

    move-result-object v1

    goto :goto_32

    .line 178
    :cond_2e
    invoke-direct {p0, p1}, Lcom/transsion/camera/manager/ThumbnailLoader$LoadThumbnailTask;->getLatestMediaFromDatabase(Landroid/content/ContentResolver;)Lcom/transsion/camera/manager/ThumbnailLoader$Media;

    move-result-object v1

    .line 180
    :goto_32
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result p0

    if-eqz p0, :cond_42

    .line 181
    invoke-static {}, Lcom/transsion/camera/manager/ThumbnailLoader;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "[doInBackground] LoadThumbnailTask is cancelled after getLatestMedia, return."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v0

    .line 185
    :cond_42
    invoke-static {v1, p1}, Lcom/transsion/camera/manager/ThumbnailLoader$LoadThumbnailTask;->getThumbnailFromMedia(Lcom/transsion/camera/manager/ThumbnailLoader$Media;Landroid/content/ContentResolver;)Lcom/transsion/camera/manager/ThumbnailItem;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 141
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/manager/ThumbnailLoader$LoadThumbnailTask;->doInBackground([Ljava/lang/Void;)Lcom/transsion/camera/manager/ThumbnailItem;

    move-result-object p0

    return-object p0
.end method

.method protected onCancelled()V
    .registers 2

    .line 160
    invoke-static {}, Lcom/transsion/camera/manager/ThumbnailLoader;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "[onCancelled] LoadThumbnailTask is cancelled."

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Lcom/transsion/camera/manager/ThumbnailItem;)V
    .registers 5

    .line 190
    iget-object p0, p0, Lcom/transsion/camera/manager/ThumbnailLoader$LoadThumbnailTask;->mLoaderCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/manager/ThumbnailLoader$TaskCallback;

    .line 192
    invoke-static {}, Lcom/transsion/camera/manager/ThumbnailLoader;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[doInBackground] LoadThumbnailTask done. callback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p0, :cond_25

    .line 194
    invoke-interface {p0, p1}, Lcom/transsion/camera/manager/ThumbnailLoader$TaskCallback;->onTaskDone(Lcom/transsion/camera/manager/ThumbnailItem;)V

    :cond_25
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 141
    check-cast p1, Lcom/transsion/camera/manager/ThumbnailItem;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/manager/ThumbnailLoader$LoadThumbnailTask;->onPostExecute(Lcom/transsion/camera/manager/ThumbnailItem;)V

    return-void
.end method
