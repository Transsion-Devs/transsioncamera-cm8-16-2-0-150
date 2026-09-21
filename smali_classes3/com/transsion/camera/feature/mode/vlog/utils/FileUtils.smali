.class public Lcom/transsion/camera/feature/mode/vlog/utils/FileUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 26
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "VlogFileUtil"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/vlog/utils/FileUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearDir(Ljava/io/File;)Z
    .registers 6

    .line 149
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    return v1

    .line 153
    :cond_8
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_31

    .line 154
    array-length v0, p0

    if-nez v0, :cond_12

    goto :goto_31

    .line 158
    :cond_12
    array-length v0, p0

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v0, :cond_31

    aget-object v3, p0, v2

    .line 159
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_25

    .line 160
    invoke-static {v3}, Lcom/transsion/camera/feature/mode/vlog/utils/FileUtils;->clearDir(Ljava/io/File;)Z

    .line 161
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_2e

    .line 163
    :cond_25
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 164
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_2e
    :goto_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_31
    :goto_31
    return v1
.end method

.method public static copyAssetFile(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    const/4 v0, 0x0

    .line 83
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_e

    goto/16 :goto_7b

    .line 88
    :cond_e
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_25

    .line 89
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_25

    .line 90
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    goto :goto_25

    :catchall_1e
    move-exception p0

    move-object p1, v0

    goto/16 :goto_7d

    :catch_22
    move-exception p0

    move-object p1, v0

    goto :goto_6b

    .line 93
    :cond_25
    :goto_25
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_29} :catch_22
    .catchall {:try_start_1 .. :try_end_29} :catchall_1e

    .line 94
    :try_start_29
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2e} :catch_66
    .catchall {:try_start_29 .. :try_end_2e} :catchall_60

    const/16 p2, 0x1000

    .line 95
    :try_start_30
    new-array p2, p2, [B

    .line 98
    :goto_32
    invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-ltz v0, :cond_45

    const/4 v1, 0x0

    .line 99
    invoke-virtual {p1, p2, v1, v0}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_32

    :catchall_3d
    move-exception p2

    move-object v0, p0

    move-object p0, p2

    goto :goto_7d

    :catch_41
    move-exception p2

    move-object v0, p0

    move-object p0, p2

    goto :goto_6b

    .line 102
    :cond_45
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 103
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/FileDescriptor;->sync()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_4f} :catch_41
    .catchall {:try_start_30 .. :try_end_4f} :catchall_3d

    .line 109
    :try_start_4f
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_53

    goto :goto_57

    :catch_53
    move-exception p0

    .line 111
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 116
    :goto_57
    :try_start_57
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_5b

    goto :goto_7b

    :catch_5b
    move-exception p0

    .line 118
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_7b

    :catchall_60
    move-exception p1

    move-object v3, v0

    move-object v0, p0

    move-object p0, p1

    move-object p1, v3

    goto :goto_7d

    :catch_66
    move-exception p1

    move-object v3, v0

    move-object v0, p0

    move-object p0, p1

    move-object p1, v3

    .line 105
    :goto_6b
    :try_start_6b
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_7c

    if-eqz v0, :cond_78

    .line 109
    :try_start_70
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_73} :catch_74

    goto :goto_78

    :catch_74
    move-exception p0

    .line 111
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_78
    :goto_78
    if-eqz p1, :cond_7b

    goto :goto_57

    :cond_7b
    :goto_7b
    return-void

    :catchall_7c
    move-exception p0

    :goto_7d
    if-eqz v0, :cond_87

    .line 109
    :try_start_7f
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_82} :catch_83

    goto :goto_87

    :catch_83
    move-exception p2

    .line 111
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_87
    :goto_87
    if-eqz p1, :cond_91

    .line 116
    :try_start_89
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_8c} :catch_8d

    goto :goto_91

    :catch_8d
    move-exception p1

    .line 118
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 121
    :cond_91
    :goto_91
    throw p0
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)Z
    .registers 6

    .line 29
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_50

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 30
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_14

    return v1

    .line 34
    :cond_14
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 35
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_1d
    const/16 v0, 0x800

    .line 40
    :try_start_1f
    new-array v0, v0, [B

    .line 41
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 42
    new-instance p0, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 45
    :goto_35
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result p1

    const/4 v3, -0x1

    if-ne p1, v3, :cond_49

    .line 53
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 54
    invoke-virtual {p0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 55
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    const/4 p0, 0x1

    return p0

    :catch_47
    move-exception p0

    goto :goto_4d

    .line 50
    :cond_49
    invoke-virtual {p0, v0, v1, p1}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_4c} :catch_47

    goto :goto_35

    .line 59
    :goto_4d
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_50
    return v1
.end method

.method public static copyFileByName(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    .line 66
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_37

    .line 67
    :try_start_6
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_23

    const/16 p1, 0x1000

    .line 68
    :try_start_d
    new-array p1, p1, [B

    .line 70
    :goto_f
    invoke-virtual {v1, p1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_1b

    .line 71
    invoke-virtual {p0, p1, v0, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_19

    goto :goto_f

    :catchall_19
    move-exception p1

    goto :goto_25

    .line 74
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

    .line 66
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

.method public static deleteFile(Ljava/lang/String;)Z
    .registers 4

    if-eqz p0, :cond_c

    .line 207
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p0

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    .line 210
    :goto_d
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/utils/FileUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteFile, deleteSuccess: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0
.end method

.method public static getAvailableSpace()J
    .registers 4

    .line 235
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/helper/ResourceHelper;->getLocalVlogResRootPath()Ljava/lang/String;

    move-result-object v0

    .line 236
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 237
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 238
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-nez v1, :cond_19

    goto :goto_33

    .line 242
    :cond_19
    :try_start_19
    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 243
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v2

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v0
    :try_end_26
    .catch Ljava/lang/IllegalArgumentException; {:try_start_19 .. :try_end_26} :catch_28

    mul-long/2addr v2, v0

    return-wide v2

    :catch_28
    move-exception v0

    .line 245
    sget-object v1, Lcom/transsion/camera/feature/mode/vlog/utils/FileUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "getAvailableSpace, fail to access internal storage"

    invoke-static {v1, v2, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-wide/16 v0, -0x2

    return-wide v0

    :cond_33
    :goto_33
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static isFileExists(Ljava/lang/String;)Z
    .registers 2

    .line 140
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 144
    :cond_8
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method public static readAssetJsonFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_d} :catch_48

    .line 127
    :try_start_d
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {p1, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_19
    .catchall {:try_start_d .. :try_end_19} :catchall_32

    .line 129
    :goto_19
    :try_start_19
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_25

    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_22
    .catchall {:try_start_19 .. :try_end_22} :catchall_23

    goto :goto_19

    :catchall_23
    move-exception v0

    goto :goto_34

    .line 132
    :cond_25
    :try_start_25
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_32

    if-eqz p0, :cond_2d

    :try_start_2a
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2d} :catch_48

    .line 136
    :cond_2d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_32
    move-exception p1

    goto :goto_3d

    .line 126
    :goto_34
    :try_start_34
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_38

    goto :goto_3c

    :catchall_38
    move-exception p1

    :try_start_39
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3c
    throw v0
    :try_end_3d
    .catchall {:try_start_39 .. :try_end_3d} :catchall_32

    :goto_3d
    if-eqz p0, :cond_47

    :try_start_3f
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_43

    goto :goto_47

    :catchall_43
    move-exception p0

    :try_start_44
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_47
    :goto_47
    throw p1
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_48} :catch_48

    :catch_48
    move-exception p0

    .line 133
    sget-object p1, Lcom/transsion/camera/feature/mode/vlog/utils/FileUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "readAssetJsonFile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static renameFile(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 215
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 219
    :cond_8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    return v1

    .line 223
    :cond_f
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 224
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_20

    return v1

    .line 230
    :cond_20
    invoke-virtual {v0, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static saveBitmapToFile(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;)Z
    .registers 5

    if-eqz p0, :cond_18

    if-nez p1, :cond_5

    goto :goto_18

    .line 177
    :cond_5
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x64

    .line 178
    invoke-virtual {p0, p2, v1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 179
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/utils/FileUtils;->writeToFile([BLjava/io/File;)Z

    move-result p0

    return p0

    :cond_18
    :goto_18
    const/4 p0, 0x0

    return p0
.end method

.method private static writeToFile([BLjava/io/File;)Z
    .registers 4

    const/4 v0, 0x0

    .line 186
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_1e
    .catchall {:try_start_1 .. :try_end_6} :catchall_1c

    .line 187
    :try_start_6
    invoke-virtual {v1, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 188
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_c} :catch_19
    .catchall {:try_start_6 .. :try_end_c} :catchall_16

    const/4 p0, 0x1

    .line 196
    :try_start_d
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_10} :catch_11

    return p0

    :catch_11
    move-exception p1

    .line 198
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return p0

    :catchall_16
    move-exception p0

    move-object v0, v1

    goto :goto_2e

    :catch_19
    move-exception p0

    move-object v0, v1

    goto :goto_1f

    :catchall_1c
    move-exception p0

    goto :goto_2e

    :catch_1e
    move-exception p0

    .line 191
    :goto_1f
    :try_start_1f
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_1c

    if-eqz v0, :cond_2c

    .line 196
    :try_start_24
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_28

    goto :goto_2c

    :catch_28
    move-exception p0

    .line 198
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2c
    :goto_2c
    const/4 p0, 0x0

    return p0

    :goto_2e
    if-eqz v0, :cond_38

    .line 196
    :try_start_30
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_34

    goto :goto_38

    :catch_34
    move-exception p1

    .line 198
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 201
    :cond_38
    :goto_38
    throw p0
.end method
