.class public Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;
.super Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$PhotoSaveRequest;,
        Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$VideoSaveRequest;
    }
.end annotation


# instance fields
.field private mCameraDirectoryPath:Ljava/lang/String;

.field private mCameraFolder:Landroidx/documentfile/provider/DocumentFile;

.field private mDescriptor:Landroid/os/ParcelFileDescriptor;

.field private mExternalCacheDir:Ljava/io/File;

.field private mRootFolder:Landroidx/documentfile/provider/DocumentFile;

.field private mTempVideoFile:Landroidx/documentfile/provider/DocumentFile;

.field private mUuid:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$2IuDBMqyOZLrbnUq0usCaA0BLW8(Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;Landroidx/documentfile/provider/DocumentFile;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->lambda$makeCameraDirectory$0(Landroidx/documentfile/provider/DocumentFile;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmCameraFolder(Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;)Landroidx/documentfile/provider/DocumentFile;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mCameraFolder:Landroidx/documentfile/provider/DocumentFile;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTempVideoFile(Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;)Landroidx/documentfile/provider/DocumentFile;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mTempVideoFile:Landroidx/documentfile/provider/DocumentFile;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmTempVideoFile(Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;Landroidx/documentfile/provider/DocumentFile;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mTempVideoFile:Landroidx/documentfile/provider/DocumentFile;

    return-void
.end method

.method static bridge synthetic -$$Nest$mcloseDescriptor(Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->closeDescriptor()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetExternalVolumeNames(Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->getExternalVolumeNames(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetFileExtFromMime(Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->getFileExtFromMime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mwriteVideoFile(Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;Landroidx/documentfile/provider/DocumentFile;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->writeVideoFile(Landroidx/documentfile/provider/DocumentFile;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;-><init>()V

    return-void
.end method

.method private closeDescriptor()V
    .registers 2

    .line 286
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_11

    .line 287
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    const/4 v0, 0x0

    .line 288
    iput-object v0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 289
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "CloseDescriptor"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_11} :catch_12

    :cond_11
    return-void

    :catch_12
    move-exception p0

    .line 292
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private getExternalVolumeNames(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .line 633
    :try_start_0
    invoke-static {p1}, Landroid/provider/MediaStore;->getExternalVolumeNames(Landroid/content/Context;)Ljava/util/Set;

    move-result-object p1

    if-eqz p1, :cond_6d

    .line 634
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_6d

    .line 635
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mUuid:Ljava/lang/String;

    if-eqz v0, :cond_35

    .line 636
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 637
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 638
    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getExternalVolumeNames,uuid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v0

    :catch_33
    move-exception p1

    goto :goto_66

    .line 642
    :cond_35
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_39
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_39

    .line 643
    const-string v1, "external_primary"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_39

    .line 644
    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getExternalVolumeNames,volume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_65} :catch_33

    return-object v0

    .line 650
    :goto_66
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "getExternalVolumeNames error"

    invoke-static {p0, v0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6d
    const/4 p0, 0x0

    return-object p0
.end method

.method private getFileExtFromMime(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 621
    const-string/jumbo v0, "video/mp4"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 622
    const-string p0, ".mp4"

    return-object p0

    .line 623
    :cond_c
    const-string/jumbo v0, "video/3gp"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 624
    const-string p0, ".3gp"

    return-object p0

    .line 626
    :cond_18
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mimeType is wrong when save video, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 627
    const-string p0, ""

    return-object p0
.end method

.method private getVideoTempFd()Ljava/io/FileDescriptor;
    .registers 4

    .line 270
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mTempVideoFile:Landroidx/documentfile/provider/DocumentFile;

    if-eqz v0, :cond_1d

    .line 271
    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 273
    :try_start_8
    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "rw"

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_1d

    .line 275
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0
    :try_end_18
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_18} :catch_19

    return-object p0

    :catch_19
    move-exception p0

    .line 278
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1d
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$makeCameraDirectory$0(Landroidx/documentfile/provider/DocumentFile;)V
    .registers 4

    if-eqz p1, :cond_1f

    .line 157
    const-string v0, "Camera"

    invoke-virtual {p1, v0}, Landroidx/documentfile/provider/DocumentFile;->findFile(Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mCameraFolder:Landroidx/documentfile/provider/DocumentFile;

    if-eqz v1, :cond_12

    .line 158
    invoke-virtual {v1}, Landroidx/documentfile/provider/DocumentFile;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 159
    :cond_12
    invoke-virtual {p1, v0}, Landroidx/documentfile/provider/DocumentFile;->createDirectory(Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mCameraFolder:Landroidx/documentfile/provider/DocumentFile;

    .line 160
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "makeCameraDirectory: done"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_1f
    return-void
.end method

.method private writeVideoFile(Landroidx/documentfile/provider/DocumentFile;Ljava/lang/String;)V
    .registers 7

    const/4 v0, 0x0

    .line 673
    :try_start_1
    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mCameraFolder:Landroidx/documentfile/provider/DocumentFile;

    if-nez v1, :cond_e

    .line 674
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->makeCameraDirectory()Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_c
    .catchall {:try_start_1 .. :try_end_8} :catchall_9

    goto :goto_e

    :catchall_9
    move-exception p0

    move-object p1, v0

    goto :goto_52

    :catch_c
    move-object p1, v0

    goto :goto_59

    :cond_e
    :goto_e
    if-nez p1, :cond_17

    .line 694
    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 695
    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    return-void

    .line 680
    :cond_17
    :try_start_17
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p0
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_21} :catch_c
    .catchall {:try_start_17 .. :try_end_21} :catchall_9

    .line 681
    :try_start_21
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_26} :catch_50
    .catchall {:try_start_21 .. :try_end_26} :catchall_4a

    const/16 p2, 0x400

    .line 683
    :try_start_28
    new-array p2, p2, [B

    if-eqz p0, :cond_42

    .line 686
    :goto_2c
    invoke-virtual {p1, p2}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v2, v1, :cond_3e

    const/4 v2, 0x0

    .line 687
    invoke-virtual {p0, p2, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_2c

    :catchall_38
    move-exception p2

    move-object v0, p0

    move-object p0, p2

    goto :goto_52

    :catch_3c
    :goto_3c
    move-object v0, p0

    goto :goto_59

    .line 689
    :cond_3e
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_41} :catch_3c
    .catchall {:try_start_28 .. :try_end_41} :catchall_38

    goto :goto_43

    :cond_42
    move-object v0, p0

    .line 694
    :goto_43
    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 695
    invoke-static {p1}, Lcom/transsion/camera/utils/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    return-void

    :catchall_4a
    move-exception p1

    move-object v3, v0

    move-object v0, p0

    move-object p0, p1

    move-object p1, v3

    goto :goto_52

    :catch_50
    move-object p1, v0

    goto :goto_3c

    .line 694
    :goto_52
    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 695
    invoke-static {p1}, Lcom/transsion/camera/utils/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 696
    throw p0

    .line 694
    :goto_59
    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 695
    invoke-static {p1}, Lcom/transsion/camera/utils/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    return-void
.end method


# virtual methods
.method protected buildPhotoSaveRequest(Landroid/content/ContentValues;[BLcom/transsion/camera/app/common/livephoto/PhotoTaskData;Landroid/graphics/Bitmap;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;)Lcom/transsion/camera/app/common/storage/SaveRequest;
    .registers 14

    .line 94
    new-instance v0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$PhotoSaveRequest;

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$PhotoSaveRequest;-><init>(Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;Landroid/content/ContentValues;[BLcom/transsion/camera/app/common/livephoto/PhotoTaskData;Landroid/graphics/Bitmap;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;Landroid/net/Uri;)V

    return-object v0
.end method

.method protected buildPhotoSaveRequest(Landroid/content/ContentValues;[BLcom/transsion/camera/app/common/livephoto/PhotoTaskData;Landroid/graphics/Bitmap;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;Landroid/net/Uri;)Lcom/transsion/camera/app/common/storage/SaveRequest;
    .registers 15

    .line 99
    new-instance v0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$PhotoSaveRequest;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$PhotoSaveRequest;-><init>(Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;Landroid/content/ContentValues;[BLcom/transsion/camera/app/common/livephoto/PhotoTaskData;Landroid/graphics/Bitmap;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;Landroid/net/Uri;)V

    return-object v0
.end method

.method protected buildPhotoSaveRequestForFuse(Landroid/content/ContentValues;[BLandroid/graphics/Bitmap;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;)Lcom/transsion/camera/app/common/storage/SaveRequest;
    .registers 13

    .line 105
    new-instance v0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$PhotoSaveRequest;

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$PhotoSaveRequest;-><init>(Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;Landroid/content/ContentValues;[BLcom/transsion/camera/app/common/livephoto/PhotoTaskData;Landroid/graphics/Bitmap;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;Landroid/net/Uri;)V

    return-object v0
.end method

.method protected buildVideoSaveRequest(Landroid/content/ContentValues;Landroid/net/Uri;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;)Lcom/transsion/camera/app/common/storage/SaveRequest;
    .registers 10

    .line 117
    new-instance v0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$VideoSaveRequest;

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$VideoSaveRequest;-><init>(Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;Landroid/content/ContentValues;Ljava/lang/String;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;Landroid/net/Uri;)V

    return-object v0
.end method

.method protected buildVideoSaveRequest(Landroid/content/ContentValues;Ljava/lang/String;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;)Lcom/transsion/camera/app/common/storage/SaveRequest;
    .registers 10

    .line 111
    new-instance v0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$VideoSaveRequest;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$VideoSaveRequest;-><init>(Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;Landroid/content/ContentValues;Ljava/lang/String;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;Landroid/net/Uri;)V

    return-object v0
.end method

.method public createTempVideoFile(Lcom/transsion/camera/app/common/recorder/data/VideoFileSpec;I[Landroidx/documentfile/provider/DocumentFile;)Z
    .registers 7

    .line 327
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mCameraFolder:Landroidx/documentfile/provider/DocumentFile;

    const/4 v1, 0x0

    if-nez v0, :cond_1a

    .line 328
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "makeCameraDirectory again in createTempVideoFile."

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 329
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->makeCameraDirectory()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 331
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "makeCameraDirectory failed in createTempVideoFile."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 335
    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ".videorecorder_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mCameraDirectoryPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/recorder/data/VideoFileSpec;->setFileTempPath(Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mCameraFolder:Landroidx/documentfile/provider/DocumentFile;

    const-string v2, "application/octet-stream"

    invoke-virtual {v0, v2, p2}, Landroidx/documentfile/provider/DocumentFile;->createFile(Ljava/lang/String;Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v0

    aput-object v0, p3, v1

    if-nez v0, :cond_73

    .line 341
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->deleteTempVideoFile(Ljava/lang/String;)Z

    .line 342
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mCameraFolder:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {v0, v2, p2}, Landroidx/documentfile/provider/DocumentFile;->createFile(Ljava/lang/String;Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object p2

    aput-object p2, p3, v1

    .line 343
    iget-object p2, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[createTempVideoFile] mTempVideoFile is null,and create it again:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p3, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 346
    :cond_73
    aget-object p2, p3, v1

    const/4 p3, 0x0

    if-eqz p2, :cond_8f

    .line 347
    invoke-virtual {p2}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object p2

    .line 349
    :try_start_7c
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "rw"

    invoke-virtual {p0, p2, v0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    if-eqz p0, :cond_8f

    .line 351
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p3
    :try_end_8a
    .catch Ljava/io/FileNotFoundException; {:try_start_7c .. :try_end_8a} :catch_8b

    goto :goto_8f

    :catch_8b
    move-exception p0

    .line 354
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_8f
    :goto_8f
    if-eqz p3, :cond_9c

    .line 357
    invoke-virtual {p3}, Ljava/io/FileDescriptor;->valid()Z

    move-result p0

    if-eqz p0, :cond_9c

    .line 358
    invoke-virtual {p1, p3}, Lcom/transsion/camera/app/common/recorder/data/VideoFileSpec;->setFileDescriptor(Ljava/io/FileDescriptor;)V

    const/4 p0, 0x1

    return p0

    :cond_9c
    return v1
.end method

.method protected createTempVideoFileImpl(Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;)Z
    .registers 7

    .line 175
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mCameraFolder:Landroidx/documentfile/provider/DocumentFile;

    const/4 v1, 0x0

    if-nez v0, :cond_1a

    .line 176
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "makeCameraDirectory again in createTempVideoFile."

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 177
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->makeCameraDirectory()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 179
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "makeCameraDirectory failed in createTempVideoFile."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 183
    :cond_1a
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->deleteTempVideoFile()V

    .line 184
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mCameraFolder:Landroidx/documentfile/provider/DocumentFile;

    const-string v2, "application/octet-stream"

    const-string v3, ".videorecorder"

    invoke-virtual {v0, v2, v3}, Landroidx/documentfile/provider/DocumentFile;->createFile(Ljava/lang/String;Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mTempVideoFile:Landroidx/documentfile/provider/DocumentFile;

    if-nez v0, :cond_4e

    .line 187
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->deleteTempVideoFile(Ljava/lang/String;)Z

    .line 188
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mCameraFolder:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {v0, v2, v3}, Landroidx/documentfile/provider/DocumentFile;->createFile(Ljava/lang/String;Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mTempVideoFile:Landroidx/documentfile/provider/DocumentFile;

    .line 189
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[createTempVideoFile] mTempVideoFile is null,and create it again:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mTempVideoFile:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 191
    :cond_4e
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mTempVideoFile:Landroidx/documentfile/provider/DocumentFile;

    if-nez v0, :cond_5a

    .line 192
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "createTempVideoFile failed"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 195
    :cond_5a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mCameraDirectoryPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;->setFileTempPath(Ljava/lang/String;)Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;

    .line 196
    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->getVideoTempFd()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;->setFileDescriptor(Ljava/io/FileDescriptor;)Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;

    const/4 p0, 0x1

    return p0
.end method

.method protected createTempVideoFileImpl(Lcom/transsion/camera/app/common/recorder/data/VideoFileSpec;)Z
    .registers 6

    .line 298
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mCameraFolder:Landroidx/documentfile/provider/DocumentFile;

    const/4 v1, 0x0

    if-nez v0, :cond_1a

    .line 299
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "makeCameraDirectory again in createTempVideoFile."

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 300
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->makeCameraDirectory()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 302
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "makeCameraDirectory failed in createTempVideoFile."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 307
    :cond_1a
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->deleteTempVideoFile()V

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mCameraDirectoryPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".videorecorder"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/recorder/data/VideoFileSpec;->setFileTempPath(Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mCameraFolder:Landroidx/documentfile/provider/DocumentFile;

    const-string v3, "application/octet-stream"

    invoke-virtual {v0, v3, v2}, Landroidx/documentfile/provider/DocumentFile;->createFile(Ljava/lang/String;Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mTempVideoFile:Landroidx/documentfile/provider/DocumentFile;

    if-nez v0, :cond_67

    .line 312
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->deleteTempVideoFile(Ljava/lang/String;)Z

    .line 313
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mCameraFolder:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {v0, v3, v2}, Landroidx/documentfile/provider/DocumentFile;->createFile(Ljava/lang/String;Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mTempVideoFile:Landroidx/documentfile/provider/DocumentFile;

    .line 314
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[createTempVideoFile] mTempVideoFile is null,and create it again:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mTempVideoFile:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 316
    :cond_67
    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->getVideoTempFd()Ljava/io/FileDescriptor;

    move-result-object p0

    if-eqz p0, :cond_72

    .line 318
    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/recorder/data/VideoFileSpec;->setFileDescriptor(Ljava/io/FileDescriptor;)V

    const/4 p0, 0x1

    return p0

    :cond_72
    return v1
.end method

.method public deleteTempVideoFile()V
    .registers 3

    .line 376
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mTempVideoFile:Landroidx/documentfile/provider/DocumentFile;

    const/4 v1, 0x0

    .line 377
    iput-object v1, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mTempVideoFile:Landroidx/documentfile/provider/DocumentFile;

    if-eqz v0, :cond_a

    .line 379
    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->delete()Z

    :cond_a
    return-void
.end method

.method public deleteTempVideoFile(Ljava/lang/String;)Z
    .registers 8

    .line 245
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mCameraFolder:Landroidx/documentfile/provider/DocumentFile;

    if-nez v0, :cond_d

    .line 246
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "deleteTempVideoFile mCameraFolder is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 249
    :cond_d
    const-string v0, "com.android.externalstorage.documents"

    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mUuid:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/provider/DocumentsContract;->buildTreeDocumentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "%3A"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Camera"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 251
    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Landroidx/documentfile/provider/DocumentFile;->fromSingleUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_63

    .line 253
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file is not exist: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v2

    .line 256
    :cond_63
    invoke-virtual {v1}, Landroidx/documentfile/provider/DocumentFile;->delete()Z

    move-result v1

    .line 257
    iget-object v3, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "document file : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " deleted success : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez v1, :cond_b3

    .line 259
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mCameraDirectoryPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 260
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_ae

    .line 261
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "temp video file is not exist."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v2

    .line 264
    :cond_ae
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result p0

    return p0

    :cond_b3
    return v1
.end method

.method protected getAvailableSpaceInDirectory()J
    .registers 8

    .line 126
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mExternalCacheDir:Ljava/io/File;

    const-wide/16 v1, -0x3

    if-nez v0, :cond_7

    return-wide v1

    .line 130
    :cond_7
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mExternalCacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_55

    .line 135
    :cond_16
    :try_start_16
    new-instance v0, Landroid/os/StatFs;

    iget-object v3, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mExternalCacheDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v3

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v5

    mul-long/2addr v3, v5

    const-wide/32 v5, 0x2000000

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-gez v0, :cond_35

    move-wide v3, v5

    .line 138
    :cond_35
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "storage getAvailableSpaceInDirectory : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_4b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_16 .. :try_end_4b} :catch_4c

    return-wide v3

    :catch_4c
    move-exception v0

    .line 141
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "Fail to access external storage"

    invoke-static {p0, v3, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-wide v1

    .line 131
    :cond_55
    :goto_55
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "storage path can not write"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-wide/16 v0, -0x4

    return-wide v0
.end method

.method public getBucketId()Ljava/lang/String;
    .registers 2

    .line 385
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->getCameraDirectory()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 388
    :cond_8
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->getCameraDirectory()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCameraDirectory()Ljava/lang/String;
    .registers 1

    .line 148
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mCameraDirectoryPath:Ljava/lang/String;

    return-object p0
.end method

.method public getVideoTempFd(Ljava/lang/String;)Ljava/io/FileDescriptor;
    .registers 6

    .line 212
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mCameraFolder:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {v0, p1}, Landroidx/documentfile/provider/DocumentFile;->findFile(Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 214
    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVideoTempFd exist already: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 215
    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->delete()Z

    .line 217
    :cond_21
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mCameraFolder:Landroidx/documentfile/provider/DocumentFile;

    const-string v1, "."

    .line 218
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 217
    const-string/jumbo v2, "video/mp4"

    invoke-virtual {v0, v2, v1}, Landroidx/documentfile/provider/DocumentFile;->createFile(Ljava/lang/String;Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_4f

    .line 220
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVideoTempFd create failed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v1

    .line 223
    :cond_4f
    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object p1

    .line 225
    :try_start_53
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "rw"

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    if-eqz p0, :cond_66

    .line 227
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0
    :try_end_61
    .catch Ljava/io/FileNotFoundException; {:try_start_53 .. :try_end_61} :catch_62

    return-object p0

    :catch_62
    move-exception p0

    .line 230
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_66
    return-object v1
.end method

.method public getVideoTempFileSize()J
    .registers 3

    .line 237
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mTempVideoFile:Landroidx/documentfile/provider/DocumentFile;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->exists()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 238
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mTempVideoFile:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {p0}, Landroidx/documentfile/provider/DocumentFile;->length()J

    move-result-wide v0

    return-wide v0

    :cond_11
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public insertProcessMedia(Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 5

    const/4 v0, 0x0

    .line 659
    :try_start_1
    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->getExternalVolumeNames(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 660
    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v1}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 661
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[insertProcessMedia], uri:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_27} :catch_28

    return-object v0

    :catch_28
    move-exception p0

    .line 663
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public isReady()Z
    .registers 1

    .line 121
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mExternalCacheDir:Ljava/io/File;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public makeCameraDirectory()Z
    .registers 6

    .line 153
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeCameraDirectory mRootFolder: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mRootFolder:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mRootFolder:Landroidx/documentfile/provider/DocumentFile;

    .line 155
    new-instance v1, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;Landroidx/documentfile/provider/DocumentFile;)V

    invoke-static {v1}, Ljava/util/concurrent/CompletableFuture;->runAsync(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    const/4 v1, 0x0

    .line 165
    :try_start_24
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v0, v3, v4, v2}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2b} :catch_32

    .line 170
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mCameraFolder:Landroidx/documentfile/provider/DocumentFile;

    if-eqz p0, :cond_31

    const/4 p0, 0x1

    return p0

    :cond_31
    return v1

    :catch_32
    move-exception p0

    .line 167
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v1
.end method

.method public renameTempVideoFile(Landroidx/documentfile/provider/DocumentFile;Ljava/lang/String;)Z
    .registers 3

    .line 367
    invoke-virtual {p1, p2}, Landroidx/documentfile/provider/DocumentFile;->renameTo(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 368
    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mTempVideoFile:Landroidx/documentfile/provider/DocumentFile;

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public renameTempVideoFile(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 202
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mCameraFolder:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {v0, p1}, Landroidx/documentfile/provider/DocumentFile;->findFile(Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v0

    if-nez v0, :cond_20

    .line 204
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "rename failed, src file is not exist: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 207
    :cond_20
    invoke-virtual {v0, p2}, Landroidx/documentfile/provider/DocumentFile;->renameTo(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method updateDocumentFolder(Landroidx/documentfile/provider/DocumentFile;)V
    .registers 4

    .line 87
    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mRootFolder:Landroidx/documentfile/provider/DocumentFile;

    .line 88
    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateDocumentFolder mRootFolder: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mRootFolder:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public updateStorageVolume(Landroid/os/storage/StorageVolume;)V
    .registers 9

    .line 70
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->updateStorageVolume(Landroid/os/storage/StorageVolume;)V

    .line 71
    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getUuid()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mUuid:Ljava/lang/String;

    .line 72
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "/storage/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mUuid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mCameraDirectoryPath:Ljava/lang/String;

    .line 74
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDirs()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_72

    .line 76
    array-length v1, v0

    const/4 v2, 0x0

    :goto_46
    if-ge v2, v1, :cond_72

    aget-object v3, v0, v2

    .line 77
    iget-object v4, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getExternalCacheDirs   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v3, :cond_6f

    .line 78
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6f

    .line 79
    iput-object v3, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mExternalCacheDir:Ljava/io/File;

    return-void

    :cond_6f
    add-int/lit8 v2, v2, 0x1

    goto :goto_46

    :cond_72
    return-void
.end method
