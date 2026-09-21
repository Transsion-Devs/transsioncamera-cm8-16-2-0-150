.class public Lcom/transsion/camera/feature/common/utils/FileUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static saveByteArrayToFile(Ljava/lang/String;[B)Z
    .registers 8

    const/4 v0, 0x0

    if-eqz p0, :cond_5c

    .line 21
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, p0

    move v2, v0

    .line 22
    :goto_a
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_27

    add-int/2addr v2, v5

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 25
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_a

    .line 27
    :cond_27
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    const/4 p0, 0x0

    .line 29
    :try_start_2f
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_34
    .catch Ljava/io/FileNotFoundException; {:try_start_2f .. :try_end_34} :catch_49
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_34} :catch_45
    .catchall {:try_start_2f .. :try_end_34} :catchall_41

    .line 30
    :try_start_34
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_37
    .catch Ljava/io/FileNotFoundException; {:try_start_34 .. :try_end_37} :catch_3f
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_3d
    .catchall {:try_start_34 .. :try_end_37} :catchall_3b

    .line 37
    invoke-static {v1}, Lcom/transsion/camera/feature/common/utils/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    return v5

    :catchall_3b
    move-exception p0

    goto :goto_58

    :catch_3d
    move-exception p0

    goto :goto_4d

    :catch_3f
    move-exception p0

    goto :goto_54

    :catchall_41
    move-exception p1

    move-object v1, p0

    move-object p0, p1

    goto :goto_58

    :catch_45
    move-exception p1

    move-object v1, p0

    move-object p0, p1

    goto :goto_4d

    :catch_49
    move-exception p1

    move-object v1, p0

    move-object p0, p1

    goto :goto_54

    .line 35
    :goto_4d
    :try_start_4d
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_3b

    .line 37
    :goto_50
    invoke-static {v1}, Lcom/transsion/camera/feature/common/utils/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_5c

    .line 33
    :goto_54
    :try_start_54
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_3b

    goto :goto_50

    .line 37
    :goto_58
    invoke-static {v1}, Lcom/transsion/camera/feature/common/utils/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 38
    throw p0

    :cond_5c
    :goto_5c
    return v0
.end method
