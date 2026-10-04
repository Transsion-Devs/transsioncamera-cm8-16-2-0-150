.class public abstract Lcom/transsion/camera/utils/FileUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# direct methods
.method public static synthetic $r8$lambda$Ii663Ky4dv3EdoamKaABSePdgCY(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 4

    .line 360
    invoke-virtual {p0, p1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 361
    sget-object p1, Lcom/transsion/camera/utils/FileUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getExternalFilesDir] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 43
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "FileUtil"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/utils/FileUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public static convertBuffer2Fd(Ljava/io/File;[B)Landroid/os/ParcelFileDescriptor;
    .registers 5

    .line 335
    const-string v0, "convertBuffer2Fd: "

    const/4 v1, 0x0

    .line 337
    :try_start_3
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_1a
    .catchall {:try_start_3 .. :try_end_8} :catchall_18

    .line 338
    :try_start_8
    invoke-virtual {v2, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 339
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_e} :catch_15
    .catchall {:try_start_8 .. :try_end_e} :catchall_12

    .line 344
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    goto :goto_25

    :catchall_12
    move-exception p0

    move-object v1, v2

    goto :goto_44

    :catch_15
    move-exception p1

    move-object v1, v2

    goto :goto_1b

    :catchall_18
    move-exception p0

    goto :goto_44

    :catch_1a
    move-exception p1

    .line 341
    :goto_1b
    :try_start_1b
    sget-object v2, Lcom/transsion/camera/utils/FileUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-static {v2, v0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_20
    .catchall {:try_start_1b .. :try_end_20} :catchall_18

    if-eqz v1, :cond_25

    .line 344
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 347
    :cond_25
    :goto_25
    sget-object p1, Lcom/transsion/camera/utils/FileUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/high16 p1, 0x10000000

    .line 348
    invoke-static {p0, p1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0

    :goto_44
    if-eqz v1, :cond_49

    .line 344
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 346
    :cond_49
    throw p0
.end method

.method public static copyAssets(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 213
    invoke-static {p0, p1}, Lcom/transsion/camera/utils/FileUtil;->isAssetsDir(Landroid/content/res/AssetManager;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6d

    .line 214
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 215
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_43

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_43

    .line 216
    sget-object p0, Lcom/transsion/camera/utils/FileUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "copyAssets mkdir failed: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 220
    :cond_43
    :try_start_43
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6c

    .line 222
    array-length v2, v0

    :goto_4a
    if-ge v1, v2, :cond_6c

    aget-object v3, v0, v1

    .line 223
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, p2}, Lcom/transsion/camera/utils/FileUtil;->copyAssets(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_65} :catch_68

    add-int/lit8 v1, v1, 0x1

    goto :goto_4a

    :catch_68
    move-exception p0

    .line 227
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6c
    return-void

    .line 230
    :cond_6d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2, v1}, Lcom/transsion/camera/utils/FileUtil;->copyAssetsToFileIfNeed(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static copyAssetsToFileIfNeed(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6

    .line 96
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_33

    if-nez p3, :cond_33

    .line 98
    sget-object p0, Lcom/transsion/camera/utils/FileUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "copyAssetsToFileIfNeed "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " exists"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 101
    :cond_33
    :try_start_33
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_37} :catch_74

    .line 102
    :try_start_37
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_3c
    .catchall {:try_start_37 .. :try_end_3c} :catchall_5e

    const/16 p2, 0x1000

    .line 103
    :try_start_3e
    new-array p2, p2, [B

    .line 105
    :goto_40
    invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I

    move-result p3

    if-ltz p3, :cond_4d

    const/4 v0, 0x0

    .line 106
    invoke-virtual {p1, p2, v0, p3}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_40

    :catchall_4b
    move-exception p2

    goto :goto_60

    .line 108
    :cond_4d
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 109
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/FileDescriptor;->sync()V
    :try_end_57
    .catchall {:try_start_3e .. :try_end_57} :catchall_4b

    .line 110
    :try_start_57
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_5e

    :try_start_5a
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5d} :catch_74

    return-void

    :catchall_5e
    move-exception p1

    goto :goto_69

    .line 101
    :goto_60
    :try_start_60
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_64

    goto :goto_68

    :catchall_64
    move-exception p1

    :try_start_65
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_68
    throw p2
    :try_end_69
    .catchall {:try_start_65 .. :try_end_69} :catchall_5e

    :goto_69
    if-eqz p0, :cond_73

    :try_start_6b
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_6f

    goto :goto_73

    :catchall_6f
    move-exception p0

    :try_start_70
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_73
    :goto_73
    throw p1
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_74} :catch_74

    :catch_74
    move-exception p0

    .line 111
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    .line 199
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_37

    .line 200
    :try_start_6
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_23

    const/16 p1, 0x1000

    .line 201
    :try_start_d
    new-array p1, p1, [B

    .line 203
    :goto_f
    invoke-virtual {v1, p1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_1b

    .line 204
    invoke-virtual {p0, p1, v0, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_19

    goto :goto_f

    :catchall_19
    move-exception p1

    goto :goto_25

    .line 207
    :cond_1b
    :try_start_1b
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_23

    const/4 p0, 0x1

    :try_start_1f
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_22} :catch_37

    return p0

    :catchall_23
    move-exception p0

    goto :goto_2e

    .line 199
    :goto_25
    :try_start_25
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_29

    goto :goto_2d

    :catchall_29
    move-exception p0

    :try_start_2a
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2d
    throw p1
    :try_end_2e
    .catchall {:try_start_2a .. :try_end_2e} :catchall_23

    :goto_2e
    :try_start_2e
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_32

    goto :goto_36

    :catchall_32
    move-exception p1

    :try_start_33
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_36
    throw p0
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_37} :catch_37

    :catch_37
    return v0
.end method

.method private static deleteDirectory(Ljava/io/File;)Z
    .registers 7

    .line 314
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3b

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_3b

    .line 319
    :cond_e
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_33

    .line 320
    array-length v3, v0

    if-lez v3, :cond_33

    .line 321
    array-length v3, v0

    move v4, v1

    :goto_1a
    if-ge v4, v3, :cond_33

    aget-object v2, v0, v4

    .line 322
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_29

    .line 323
    invoke-static {v2}, Lcom/transsion/camera/utils/FileUtil;->deleteFile(Ljava/io/File;)Z

    move-result v2

    goto :goto_2d

    .line 325
    :cond_29
    invoke-static {v2}, Lcom/transsion/camera/utils/FileUtil;->deleteDirectory(Ljava/io/File;)Z

    move-result v2

    :goto_2d
    if-nez v2, :cond_30

    goto :goto_33

    :cond_30
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    :cond_33
    :goto_33
    if-nez v2, :cond_36

    return v1

    .line 331
    :cond_36
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    return p0

    .line 315
    :cond_3b
    :goto_3b
    sget-object v0, Lcom/transsion/camera/utils/FileUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteDirectory failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1
.end method

.method public static deleteFile(Ljava/io/File;)Z
    .registers 2

    .line 264
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 265
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 266
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    return p0

    .line 268
    :cond_11
    invoke-static {p0}, Lcom/transsion/camera/utils/FileUtil;->deleteDirectory(Ljava/io/File;)Z

    move-result p0

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public static deleteFile(Ljava/lang/String;)Z
    .registers 2

    .line 257
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 260
    :cond_8
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/transsion/camera/utils/FileUtil;->deleteFile(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static fileExist(Landroid/content/Context;Landroid/net/Uri;)Z
    .registers 11

    .line 275
    const-string v0, "_data"

    const-string v1, "is_trashed"

    const/4 v2, 0x0

    if-eqz p0, :cond_69

    if-nez p1, :cond_a

    goto :goto_69

    .line 280
    :cond_a
    :try_start_a
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1a} :catch_31

    if-eqz p0, :cond_5c

    .line 282
    :try_start_1c
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_5c

    .line 283
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1
    :try_end_2a
    .catchall {:try_start_1c .. :try_end_2a} :catchall_50

    const/4 v1, 0x1

    if-ne v1, p1, :cond_34

    .line 292
    :goto_2d
    :try_start_2d
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_30} :catch_31

    return v2

    :catch_31
    move-exception v0

    move-object p0, v0

    goto :goto_62

    .line 286
    :cond_34
    :try_start_34
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 287
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_43

    goto :goto_2d

    .line 290
    :cond_43
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1
    :try_end_4c
    .catchall {:try_start_34 .. :try_end_4c} :catchall_50

    .line 292
    :try_start_4c
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4f} :catch_31

    return p1

    :catchall_50
    move-exception v0

    move-object p1, v0

    .line 280
    :try_start_52
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_56

    goto :goto_5b

    :catchall_56
    move-exception v0

    move-object p0, v0

    :try_start_58
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5b
    throw p1

    :cond_5c
    if-eqz p0, :cond_69

    .line 292
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_61} :catch_31

    goto :goto_69

    .line 293
    :goto_62
    sget-object p1, Lcom/transsion/camera/utils/FileUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "Error checking if file exists"

    invoke-static {p1, v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_69
    :goto_69
    return v2
.end method

.method public static getAssertData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    .line 62
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_2a

    .line 63
    :try_start_9
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p1

    .line 64
    new-array p1, p1, [B

    .line 65
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    .line 66
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_1e

    .line 67
    :try_start_17
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1a} :catch_1b

    return-object v1

    :catch_1b
    move-exception p0

    move-object v0, v1

    goto :goto_2d

    :catchall_1e
    move-exception p1

    if-eqz p0, :cond_2c

    .line 62
    :try_start_21
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_25

    goto :goto_2c

    :catchall_25
    move-exception p0

    :try_start_26
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2c

    :catch_2a
    move-exception p0

    goto :goto_2d

    :cond_2c
    :goto_2c
    throw p1
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2d} :catch_2a

    .line 68
    :goto_2d
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public static getDataStoreFile(Landroid/content/Context;)Ljava/io/File;
    .registers 4

    .line 399
    invoke-static {p0}, Lcom/transsion/camera/utils/FileUtil;->getUid(Landroid/content/Context;)I

    move-result v0

    .line 400
    invoke-static {v0}, Lcom/transsion/camera/utils/FileUtil;->getUserId(I)I

    move-result v0

    if-eqz v0, :cond_21

    .line 404
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/user/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_23

    .line 403
    :cond_21
    const-string v0, "/data/user/0/"

    .line 407
    :goto_23
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/files/mmkv/"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static getDataStoreSPFile(Landroid/content/Context;)Ljava/io/File;
    .registers 4

    .line 439
    invoke-static {p0}, Lcom/transsion/camera/utils/FileUtil;->getUid(Landroid/content/Context;)I

    move-result v0

    .line 440
    invoke-static {v0}, Lcom/transsion/camera/utils/FileUtil;->getUserId(I)I

    move-result v0

    if-eqz v0, :cond_21

    .line 443
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/user/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_23

    .line 442
    :cond_21
    const-string v0, "/data/user/0/"

    .line 445
    :goto_23
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/shared_prefs/"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static getExternalFileDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 6

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 359
    :cond_4
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/transsion/camera/utils/FileUtil$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/utils/FileUtil$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 364
    invoke-static {}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->getInstance()Lcom/transsion/camera/utils/threads/WorkThreadPools;

    move-result-object v1

    const-string v2, "Get_External_Files_Dir"

    invoke-virtual {v1, v0, v2}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->execute(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 367
    :try_start_17
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;
    :try_end_21
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_17 .. :try_end_21} :catch_22
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_21} :catch_22
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_17 .. :try_end_21} :catch_22

    return-object v0

    .line 369
    :catch_22
    invoke-static {p0}, Lcom/transsion/camera/utils/FileUtil;->getUid(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Lcom/transsion/camera/utils/FileUtil;->getUserId(I)I

    move-result v0

    .line 370
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/storage/emulated/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/Android/data/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/files/"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_4c

    const-string p1, ""

    :cond_4c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 371
    sget-object p1, Lcom/transsion/camera/utils/FileUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getExternalFilesDir timeout.Return default path,it\'s "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 372
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public static getFileData(Ljava/io/File;)[B
    .registers 6

    .line 116
    const/4 v1, 0x0

    if-eqz p0, :cm8guard_funull

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_f

    .line 117
    sget-object p0, Lcom/transsion/camera/utils/FileUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[getFileData] return because file not exists"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cm8guard_funull
    return-object v1

    .line 120
    :cond_f
    :try_start_f
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_14} :catch_36

    .line 121
    :try_start_14
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_38

    const/16 v2, 0x1000

    .line 122
    :try_start_1b
    new-array v2, v2, [B

    .line 124
    :goto_1d
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2b

    const/4 v4, 0x0

    .line 125
    invoke-virtual {p0, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1d

    :catchall_29
    move-exception v2

    goto :goto_3a

    .line 127
    :cond_2b
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2
    :try_end_2f
    .catchall {:try_start_1b .. :try_end_2f} :catchall_29

    .line 128
    :try_start_2f
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_38

    :try_start_32
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_35} :catch_36

    return-object v2

    :catch_36
    move-exception p0

    goto :goto_4c

    :catchall_38
    move-exception p0

    goto :goto_43

    .line 120
    :goto_3a
    :try_start_3a
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_3e

    goto :goto_42

    :catchall_3e
    move-exception p0

    :try_start_3f
    invoke-virtual {v2, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_42
    throw v2
    :try_end_43
    .catchall {:try_start_3f .. :try_end_43} :catchall_38

    :goto_43
    :try_start_43
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_47

    goto :goto_4b

    :catchall_47
    move-exception v0

    :try_start_48
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4b
    throw p0
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_4c} :catch_36

    .line 129
    :goto_4c
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v1
.end method

.method public static getUid(Landroid/content/Context;)I
    .registers 3

    .line 389
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 390
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x80

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 391
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_10} :catch_11

    return p0

    :catch_11
    move-exception p0

    .line 393
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, -0x1

    return p0
.end method

.method public static getUserId()I
    .registers 1

    .line 379
    sget-object v0, Lcom/transsion/camera/app_info/AppInfo;->app:Landroid/app/Application;

    invoke-static {v0}, Lcom/transsion/camera/utils/FileUtil;->getUid(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Lcom/transsion/camera/utils/FileUtil;->getUserId(I)I

    move-result v0

    return v0
.end method

.method public static getUserId(I)I
    .registers 2

    const v0, 0x186a0

    .line 383
    div-int/2addr p0, v0

    return p0
.end method

.method private static isAssetsDir(Landroid/content/res/AssetManager;Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    .line 236
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_e

    .line 237
    array-length p0, p0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_8} :catch_c

    if-lez p0, :cond_e

    const/4 p0, 0x1

    return p0

    :catch_c
    move-exception p0

    goto :goto_f

    :cond_e
    return v0

    .line 239
    :goto_f
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public static isFileExists(Ljava/lang/String;)Z
    .registers 2

    .line 53
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 56
    :cond_8
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method public static loadMappedByteBufferFromFile(Ljava/io/File;)Ljava/nio/MappedByteBuffer;
    .registers 9

    .line 147
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_24

    .line 148
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 149
    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    const-wide/16 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object p0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_19

    .line 150
    :try_start_15
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_24

    return-object p0

    :catchall_19
    move-exception v0

    move-object p0, v0

    .line 147
    :try_start_1b
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_1f

    goto :goto_23

    :catchall_1f
    move-exception v0

    :try_start_20
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_23
    throw p0
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_24} :catch_24

    :catch_24
    move-exception v0

    move-object p0, v0

    .line 151
    sget-object v0, Lcom/transsion/camera/utils/FileUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadMappedByteBufferFromFile e: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static migrateAllSPToMMKV(Landroid/content/Context;)V
    .registers 13

    .line 411
    invoke-static {p0}, Lcom/transsion/camera/utils/FileUtil;->getDataStoreSPFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 412
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_8e

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_12

    goto/16 :goto_8e

    .line 416
    :cond_12
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_19

    goto :goto_8e

    .line 421
    :cond_19
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_1c
    if-ge v3, v1, :cond_8e

    aget-object v4, v0, v3

    .line 422
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 423
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x4

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 424
    const-string v6, "[0-9.-]+"

    invoke-virtual {v5, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    .line 425
    sget-object v7, Lcom/transsion/camera/utils/FileUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isInValidXML: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", name: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 426
    const-string v8, ".xml"

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8b

    if-nez v6, :cond_8b

    .line 427
    invoke-virtual {p0, v5, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 428
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 429
    invoke-static {v4, v5}, Lcom/transsion/camera/utils/FileUtil;->migrateSingleSP(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 430
    invoke-virtual {p0, v5}, Landroid/content/Context;->deleteSharedPreferences(Ljava/lang/String;)Z

    .line 431
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v8

    .line 432
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "migrate xml:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", cost time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_8b
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :cond_8e
    :goto_8e
    return-void
.end method

.method private static migrateSingleSP(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 7

    .line 461
    invoke-static {p1}, Lcom/tencent/mmkv/MMKV;->mmkvWithID(Ljava/lang/String;)Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    .line 462
    invoke-virtual {v0}, Lcom/tencent/mmkv/MMKV;->count()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_f

    return-void

    .line 465
    :cond_f
    invoke-virtual {v0, p0}, Lcom/tencent/mmkv/MMKV;->importFromSharedPreferences(Landroid/content/SharedPreferences;)I

    .line 466
    sget-object p0, Lcom/transsion/camera/utils/FileUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "migrateSingleSP X: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/tencent/mmkv/MMKV;->count()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " name: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public static readStream(Ljava/io/InputStream;I)[B
    .registers 5

    .line 135
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 136
    new-array p1, p1, [B

    .line 138
    :goto_7
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_13

    const/4 v2, 0x0

    .line 139
    invoke-virtual {v0, p1, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_7

    .line 141
    :cond_13
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 142
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 143
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static saveByteArrayToFile(Ljava/lang/String;[BZ)Z
    .registers 8

    const/4 v0, 0x0

    if-eqz p0, :cond_4e

    .line 161
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    if-nez p2, :cond_2a

    move-object v3, p0

    move p2, v0

    .line 163
    :goto_d
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_29

    add-int/2addr p2, v2

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 166
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_d

    :cond_29
    move-object p0, v3

    .line 169
    :cond_2a
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 170
    :try_start_31
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_36} :catch_4a

    .line 171
    :try_start_36
    invoke-virtual {p2, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_40

    .line 173
    :try_start_39
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_3d

    return v2

    :catch_3d
    move-exception p0

    move v0, v2

    goto :goto_4b

    :catchall_40
    move-exception p0

    .line 170
    :try_start_41
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_45

    goto :goto_49

    :catchall_45
    move-exception p1

    :try_start_46
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_49
    throw p0
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_4a} :catch_4a

    :catch_4a
    move-exception p0

    .line 174
    :goto_4b
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4e
    return v0
.end method
