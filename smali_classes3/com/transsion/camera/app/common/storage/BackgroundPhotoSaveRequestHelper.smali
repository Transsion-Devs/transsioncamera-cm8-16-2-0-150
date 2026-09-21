.class public Lcom/transsion/camera/app/common/storage/BackgroundPhotoSaveRequestHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final HIGH_QUALITY_DUMP_ENABLED:Z

.field private static final LOW_QUALITY_DUMP_ENABLED:Z


# instance fields
.field private final mTag:Lcom/transsion/camera/utils/debug/Log$Tag;


# direct methods
.method public static synthetic $r8$lambda$LhwyfpVtjKjnYNDFmVEsixssA2Y(Landroid/content/ContentValues;)Ljava/lang/String;
    .registers 2

    .line 147
    const-string v0, "_display_name"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$XEWBR1d64x9lWu_wyxdbmoAo-0s(J)Ljava/lang/String;
    .registers 2

    .line 148
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 33
    const-string v0, "debug.camera.taps.dump.high"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/transsion/camera/app/common/storage/BackgroundPhotoSaveRequestHelper;->HIGH_QUALITY_DUMP_ENABLED:Z

    .line 34
    const-string v0, "debug.vendor.sys.taps.save_low"

    .line 35
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/transsion/camera/app/common/storage/BackgroundPhotoSaveRequestHelper;->LOW_QUALITY_DUMP_ENABLED:Z

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-direct {v0, p1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/storage/BackgroundPhotoSaveRequestHelper;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method private copyFile(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/io/File;)Z
    .registers 4

    .line 168
    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/transsion/camera/app/common/storage/BackgroundPhotoSaveRequestHelper;->copyFile(Ljava/io/InputStream;Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method private copyFile(Ljava/io/InputStream;Ljava/io/File;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_b

    .line 173
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundPhotoSaveRequestHelper;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "copyFile: open input stream failed"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0

    .line 178
    :cond_b
    :try_start_b
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_3a

    const/16 p2, 0x2000

    .line 180
    :try_start_12
    new-array p2, p2, [B

    .line 182
    :goto_14
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_20

    .line 183
    invoke-virtual {v1, p2, v0, v2}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_14

    :catchall_1e
    move-exception p2

    goto :goto_3c

    .line 185
    :cond_20
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 186
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p2

    if-eqz p2, :cond_30

    .line 187
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/FileDescriptor;->sync()V
    :try_end_30
    .catchall {:try_start_12 .. :try_end_30} :catchall_1e

    .line 189
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_3a

    :try_start_33
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_36} :catch_38

    const/4 p0, 0x1

    return p0

    :catch_38
    move-exception p1

    goto :goto_4e

    :catchall_3a
    move-exception p2

    goto :goto_45

    .line 176
    :goto_3c
    :try_start_3c
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_40

    goto :goto_44

    :catchall_40
    move-exception v1

    :try_start_41
    invoke-virtual {p2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_44
    throw p2
    :try_end_45
    .catchall {:try_start_41 .. :try_end_45} :catchall_3a

    :goto_45
    :try_start_45
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_49

    goto :goto_4d

    :catchall_49
    move-exception p1

    :try_start_4a
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4d
    throw p2
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4e} :catch_38

    .line 190
    :goto_4e
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundPhotoSaveRequestHelper;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "copyFile: Error closing stream"

    invoke-static {p0, p2, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method private dumpHighQualityFile(Lcom/transsion/camera/app/common/storage/SaveRequest;J)V
    .registers 9

    .line 138
    sget-boolean v0, Lcom/transsion/camera/app/common/storage/BackgroundPhotoSaveRequestHelper;->HIGH_QUALITY_DUMP_ENABLED:Z

    if-eqz v0, :cond_f1

    iget-object v0, p1, Lcom/transsion/camera/app/common/storage/SaveRequest;->mData:[B

    if-nez v0, :cond_a

    goto/16 :goto_f1

    .line 141
    :cond_a
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, "HighQualityImages"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 142
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_43

    .line 143
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    .line 144
    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/BackgroundPhotoSaveRequestHelper;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dumpHighQualityFile: created directory = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", path = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 146
    :cond_43
    iget-object v1, p1, Lcom/transsion/camera/app/common/storage/SaveRequest;->mValues:Landroid/content/ContentValues;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/app/common/storage/BackgroundPhotoSaveRequestHelper$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/transsion/camera/app/common/storage/BackgroundPhotoSaveRequestHelper$$ExternalSyntheticLambda0;-><init>()V

    .line 147
    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/app/common/storage/BackgroundPhotoSaveRequestHelper$$ExternalSyntheticLambda1;

    invoke-direct {v2, p2, p3}, Lcom/transsion/camera/app/common/storage/BackgroundPhotoSaveRequestHelper$$ExternalSyntheticLambda1;-><init>(J)V

    .line 148
    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 149
    const-string p3, ".jpg"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 150
    const-string v1, "_DUMP.jpg"

    invoke-virtual {p2, p3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    goto :goto_80

    .line 151
    :cond_6c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_DUMP"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 152
    :goto_80
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 153
    :try_start_85
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_8a} :catch_d0

    .line 154
    :try_start_8a
    iget-object v0, p1, Lcom/transsion/camera/app/common/storage/SaveRequest;->mData:[B

    invoke-virtual {p2, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 155
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 156
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_a2

    .line 157
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V

    goto :goto_a2

    :catchall_a0
    move-exception p1

    goto :goto_d2

    .line 159
    :cond_a2
    :goto_a2
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/BackgroundPhotoSaveRequestHelper;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dumpHighQualityFile: success, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", size = "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/transsion/camera/app/common/storage/SaveRequest;->mData:[B

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_cc
    .catchall {:try_start_8a .. :try_end_cc} :catchall_a0

    .line 161
    :try_start_cc
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_cf
    .catch Ljava/io/IOException; {:try_start_cc .. :try_end_cf} :catch_d0

    return-void

    :catch_d0
    move-exception p1

    goto :goto_db

    .line 153
    :goto_d2
    :try_start_d2
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_d5
    .catchall {:try_start_d2 .. :try_end_d5} :catchall_d6

    goto :goto_da

    :catchall_d6
    move-exception p2

    :try_start_d7
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_da
    throw p1
    :try_end_db
    .catch Ljava/io/IOException; {:try_start_d7 .. :try_end_db} :catch_d0

    .line 162
    :goto_db
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundPhotoSaveRequestHelper;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "dumpHighQualityFile: failed, "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_f1
    :goto_f1
    return-void
.end method

.method private dumpLowQualityFile(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)V
    .registers 8

    .line 116
    const-string v0, "dumpLowQualityFile: failed, "

    sget-boolean v1, Lcom/transsion/camera/app/common/storage/BackgroundPhotoSaveRequestHelper;->LOW_QUALITY_DUMP_ENABLED:Z

    if-nez v1, :cond_7

    return-void

    .line 120
    :cond_7
    :try_start_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/Camera"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 121
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, p4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-direct {p0, p2, p3, v2}, Lcom/transsion/camera/app/common/storage/BackgroundPhotoSaveRequestHelper;->copyFile(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/io/File;)Z

    move-result p2

    if-nez p2, :cond_44

    .line 123
    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/BackgroundPhotoSaveRequestHelper;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :catch_42
    move-exception p1

    goto :goto_8b

    .line 125
    :cond_44
    iget-object p2, p0, Lcom/transsion/camera/app/common/storage/BackgroundPhotoSaveRequestHelper;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "dumpLowQualityFile: success, "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 128
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    const-string p3, "image/jpeg"

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x0

    invoke-static {p1, p2, p3, p4}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 130
    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/BackgroundPhotoSaveRequestHelper;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "dumpLowQualityFile: triggered MediaScanner for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_8a
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_8a} :catch_42

    return-void

    .line 133
    :goto_8b
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundPhotoSaveRequestHelper;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-static {p0, v0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private dumpLowQualityFile(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/transsion/camera/app/common/storage/SaveRequest;)V
    .registers 7

    .line 93
    sget-boolean v0, Lcom/transsion/camera/app/common/storage/BackgroundPhotoSaveRequestHelper;->LOW_QUALITY_DUMP_ENABLED:Z

    if-nez v0, :cond_5

    return-void

    .line 96
    :cond_5
    iget-object v0, p3, Lcom/transsion/camera/app/common/storage/SaveRequest;->mUri:Landroid/net/Uri;

    invoke-static {p2, v0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->getFileInfoFromContentUri(Landroid/content/ContentResolver;Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object v0

    .line 97
    array-length v1, v0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_17

    .line 98
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundPhotoSaveRequestHelper;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "dumpLowQualityFile: getFileInfoFromContentUri failed."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_17
    const/4 v1, 0x0

    .line 102
    aget-object v1, v0, v1

    const/4 v2, 0x1

    .line 103
    aget-object v0, v0, v2

    .line 104
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_53

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2a

    goto :goto_53

    .line 109
    :cond_2a
    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 110
    const-string v2, "_DUMP.jpg"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4d

    .line 111
    :cond_39
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_DUMP"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    :goto_4d
    iget-object p3, p3, Lcom/transsion/camera/app/common/storage/SaveRequest;->mUri:Landroid/net/Uri;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/transsion/camera/app/common/storage/BackgroundPhotoSaveRequestHelper;->dumpLowQualityFile(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)V

    return-void

    .line 105
    :cond_53
    :goto_53
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundPhotoSaveRequestHelper;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "dumpLowQualityFile: invalid value, targetFilePath: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", displayName: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected writeJpegFileFromUri(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/transsion/camera/app/common/storage/SaveRequest;)Z
    .registers 13

    .line 45
    const-string v0, ", cost: "

    iget-object v1, p3, Lcom/transsion/camera/app/common/storage/SaveRequest;->mUri:Landroid/net/Uri;

    const/4 v2, 0x0

    if-eqz v1, :cond_13d

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_13d

    iget-object v1, p3, Lcom/transsion/camera/app/common/storage/SaveRequest;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_17

    goto/16 :goto_13d

    .line 48
    :cond_17
    iget-object v1, p3, Lcom/transsion/camera/app/common/storage/SaveRequest;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v3, "content"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13d

    iget-object v1, p3, Lcom/transsion/camera/app/common/storage/SaveRequest;->mUri:Landroid/net/Uri;

    .line 49
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v3, "./"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13d

    iget-object v1, p3, Lcom/transsion/camera/app/common/storage/SaveRequest;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v3, ".."

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13d

    iget-object v1, p3, Lcom/transsion/camera/app/common/storage/SaveRequest;->mUri:Landroid/net/Uri;

    .line 50
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "~/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_52

    goto/16 :goto_13d

    .line 54
    :cond_52
    iget-object v1, p3, Lcom/transsion/camera/app/common/storage/SaveRequest;->mUri:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/storage/BackgroundPhotoSaveRequestHelper;->dumpLowQualityFile(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/transsion/camera/app/common/storage/SaveRequest;)V

    .line 57
    invoke-direct {p0, p3, v3, v4}, Lcom/transsion/camera/app/common/storage/BackgroundPhotoSaveRequestHelper;->dumpHighQualityFile(Lcom/transsion/camera/app/common/storage/SaveRequest;J)V

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 60
    const-string p1, "[MediaProvider] writeJpegFileFromUri"

    invoke-static {p1}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 61
    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/BackgroundPhotoSaveRequestHelper;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "writeJpegFileFromUri: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 62
    :try_start_7e
    iget-object p1, p3, Lcom/transsion/camera/app/common/storage/SaveRequest;->mUri:Landroid/net/Uri;

    invoke-virtual {p2, p1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p1
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_84} :catch_100
    .catchall {:try_start_7e .. :try_end_84} :catchall_138

    if-eqz p1, :cond_111

    .line 64
    :try_start_86
    iget-object p2, p3, Lcom/transsion/camera/app/common/storage/SaveRequest;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_95

    .line 65
    sget-object p3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-virtual {p2, p3, v1, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_9c

    :catchall_92
    move-exception p2

    goto/16 :goto_121

    .line 66
    :cond_95
    iget-object p2, p3, Lcom/transsion/camera/app/common/storage/SaveRequest;->mData:[B

    if-eqz p2, :cond_102

    .line 67
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 72
    :goto_9c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    .line 73
    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/BackgroundPhotoSaveRequestHelper;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "writeJpegFileFromUri: write finish "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v5, p2, v5

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 74
    instance-of v1, p1, Ljava/io/FileOutputStream;

    if-eqz v1, :cond_f8

    move-object v1, p1

    check-cast v1, Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    if-eqz v1, :cond_f8

    .line 75
    move-object v1, p1

    check-cast v1, Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V

    .line 76
    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/BackgroundPhotoSaveRequestHelper;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "writeJpegFileFromUri: sync finish "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, p2

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 76
    invoke-static {v1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_f8
    .catchall {:try_start_86 .. :try_end_f8} :catchall_92

    .line 83
    :cond_f8
    :try_start_f8
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_fb
    .catch Ljava/lang/Exception; {:try_start_f8 .. :try_end_fb} :catch_100
    .catchall {:try_start_f8 .. :try_end_fb} :catchall_138

    .line 87
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    const/4 p0, 0x1

    return p0

    :catch_100
    move-exception p1

    goto :goto_12c

    .line 69
    :cond_102
    :try_start_102
    iget-object p2, p0, Lcom/transsion/camera/app/common/storage/BackgroundPhotoSaveRequestHelper;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo p3, "writeJpegFileFromUri: Both bitmap and data are null"

    invoke-static {p2, p3}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_10a
    .catchall {:try_start_102 .. :try_end_10a} :catchall_92

    .line 83
    :try_start_10a
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_10d
    .catch Ljava/lang/Exception; {:try_start_10a .. :try_end_10d} :catch_100
    .catchall {:try_start_10a .. :try_end_10d} :catchall_138

    .line 87
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    return v2

    .line 80
    :cond_111
    :try_start_111
    iget-object p2, p0, Lcom/transsion/camera/app/common/storage/BackgroundPhotoSaveRequestHelper;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p3, "openOutputStream fail"

    invoke-static {p2, p3}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_118
    .catchall {:try_start_111 .. :try_end_118} :catchall_92

    if-eqz p1, :cond_11d

    .line 83
    :try_start_11a
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_11d
    .catch Ljava/lang/Exception; {:try_start_11a .. :try_end_11d} :catch_100
    .catchall {:try_start_11a .. :try_end_11d} :catchall_138

    .line 87
    :cond_11d
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    return v2

    :goto_121
    if-eqz p1, :cond_12b

    .line 62
    :try_start_123
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_126
    .catchall {:try_start_123 .. :try_end_126} :catchall_127

    goto :goto_12b

    :catchall_127
    move-exception p1

    :try_start_128
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_12b
    :goto_12b
    throw p2
    :try_end_12c
    .catch Ljava/lang/Exception; {:try_start_128 .. :try_end_12c} :catch_100
    .catchall {:try_start_128 .. :try_end_12c} :catchall_138

    .line 84
    :goto_12c
    :try_start_12c
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundPhotoSaveRequestHelper;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo p2, "write data fail"

    invoke-static {p0, p2, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_134
    .catchall {:try_start_12c .. :try_end_134} :catchall_138

    .line 87
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    return v2

    :catchall_138
    move-exception p0

    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    .line 88
    throw p0

    :cond_13d
    :goto_13d
    return v2
.end method
