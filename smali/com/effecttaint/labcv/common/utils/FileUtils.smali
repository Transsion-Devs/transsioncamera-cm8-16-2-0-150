.class public abstract Lcom/effecttaint/labcv/common/utils/FileUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static hexChar:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x10

    .line 376
    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/effecttaint/labcv/common/utils/FileUtils;->hexChar:[C

    return-void

    :array_a
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public static clearDir(Ljava/io/File;)Z
    .registers 6

    .line 273
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    return v1

    .line 276
    :cond_8
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_f

    return v1

    .line 280
    :cond_f
    array-length v0, p0

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v0, :cond_2e

    aget-object v3, p0, v2

    .line 281
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_22

    .line 282
    invoke-static {v3}, Lcom/effecttaint/labcv/common/utils/FileUtils;->clearDir(Ljava/io/File;)Z

    .line 283
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_2b

    .line 285
    :cond_22
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 286
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_2b
    :goto_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_2e
    return v1
.end method

.method public static copyAssets(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .line 73
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-static {p0, v0}, Lcom/effecttaint/labcv/common/utils/FileUtils;->isAssetsDir(Landroid/content/res/AssetManager;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 75
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3d

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_35

    goto :goto_3d

    .line 77
    :cond_35
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "mkdir failed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 79
    :cond_3d
    :goto_3d
    invoke-virtual {p0, v0}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_63

    .line 81
    array-length v1, v0

    const/4 v2, 0x0

    :goto_45
    if-ge v2, v1, :cond_63

    aget-object v3, v0, v2

    .line 82
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, p1, v3, p3}, Lcom/effecttaint/labcv/common/utils/FileUtils;->copyAssets(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_45

    :cond_63
    return-void

    .line 86
    :cond_64
    invoke-virtual {p0, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    .line 87
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-static {p0, p1}, Lcom/effecttaint/labcv/common/utils/FileUtils;->copyToFileOrThrow(Ljava/io/InputStream;Ljava/io/File;)V

    return-void
.end method

.method public static copyAssetsContent(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .line 94
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 95
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3d

    .line 97
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_12
    if-ge v2, v0, :cond_3d

    aget-object v3, p2, v2

    .line 98
    const-string v4, "online_model"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 100
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 101
    invoke-virtual {p0, v3}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 103
    array-length v5, v4

    move v6, v1

    :goto_2d
    if-ge v6, v5, :cond_3a

    aget-object v7, v4, v6

    .line 104
    invoke-static {p0, v3, v7, p3}, Lcom/effecttaint/labcv/common/utils/FileUtils;->copyAssets(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2d

    .line 109
    :cond_37
    invoke-static {p0, p1, v3, p3}, Lcom/effecttaint/labcv/common/utils/FileUtils;->copyAssets(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_3d
    return-void
.end method

.method public static copyToFileOrThrow(Ljava/io/InputStream;Ljava/io/File;)V
    .registers 5

    .line 147
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 151
    :cond_7
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 152
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_16

    .line 153
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 155
    :cond_16
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 p1, 0x1000

    .line 157
    :try_start_1d
    new-array p1, p1, [B

    .line 159
    :goto_1f
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-ltz v1, :cond_2c

    const/4 v2, 0x0

    .line 160
    invoke-virtual {v0, p1, v2, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_29
    .catchall {:try_start_1d .. :try_end_29} :catchall_2a

    goto :goto_1f

    :catchall_2a
    move-exception p0

    goto :goto_3a

    .line 163
    :cond_2c
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 165
    :try_start_2f
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_36} :catch_36

    .line 168
    :catch_36
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    return-void

    .line 163
    :goto_3a
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 165
    :try_start_3d
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_44} :catch_44

    .line 168
    :catch_44
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 169
    throw p0
.end method

.method public static isAssetsDir(Landroid/content/res/AssetManager;Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    .line 137
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_e

    .line 138
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

    .line 140
    :goto_f
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method
