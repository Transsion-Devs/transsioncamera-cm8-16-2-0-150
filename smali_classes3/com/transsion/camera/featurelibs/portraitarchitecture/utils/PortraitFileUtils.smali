.class public abstract Lcom/transsion/camera/featurelibs/portraitarchitecture/utils/PortraitFileUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 34
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "PortraitFileUtils"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/featurelibs/portraitarchitecture/utils/PortraitFileUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public static chmod777(Ljava/lang/String;)V
    .registers 5

    .line 77
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_e

    .line 79
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 81
    :cond_e
    sget-object v1, Lcom/transsion/camera/featurelibs/portraitarchitecture/utils/PortraitFileUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chmod777 path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    const/4 v1, 0x1

    .line 83
    :try_start_26
    invoke-virtual {v0, v1, p0}, Ljava/io/File;->setReadable(ZZ)Z

    .line 84
    invoke-virtual {v0, v1, p0}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 85
    invoke-virtual {v0, v1, p0}, Ljava/io/File;->setWritable(ZZ)Z
    :try_end_2f
    .catch Ljava/lang/SecurityException; {:try_start_26 .. :try_end_2f} :catch_30

    return-void

    :catch_30
    move-exception p0

    .line 87
    sget-object v0, Lcom/transsion/camera/featurelibs/portraitarchitecture/utils/PortraitFileUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SecurityException  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private static fileProcess(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 65
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 67
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 69
    :cond_e
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 71
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 73
    :cond_1c
    invoke-static {p0}, Lcom/transsion/camera/featurelibs/portraitarchitecture/utils/PortraitFileUtils;->chmod777(Ljava/lang/String;)V

    return-void
.end method

.method private static flagPorcess(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .line 60
    new-instance p1, Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/common/storage/DataStore;-><init>(Landroid/content/Context;)V

    .line 61
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "key_portrait_architecture_update_mode"

    const-string v2, "3"

    invoke-virtual {p1, v1, v2, p0, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static gzipUncompress(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    .line 266
    :try_start_1
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object p0

    .line 267
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_47

    .line 268
    :try_start_e
    new-instance p0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_42

    .line 270
    :try_start_13
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_3d

    const/16 v0, 0x400

    .line 271
    :try_start_1a
    new-array v0, v0, [B

    .line 273
    :goto_1c
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-ltz v3, :cond_29

    const/4 v4, 0x0

    .line 274
    invoke-virtual {v2, v0, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1c

    :catchall_27
    move-exception v0

    goto :goto_4b

    .line 277
    :cond_29
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_1a .. :try_end_33} :catchall_27

    .line 279
    invoke-static {v2}, Lcom/transsion/camera/featurelibs/portraitarchitecture/utils/PortraitFileUtils;->safeClose(Ljava/io/Closeable;)V

    .line 280
    invoke-static {p0}, Lcom/transsion/camera/featurelibs/portraitarchitecture/utils/PortraitFileUtils;->safeClose(Ljava/io/Closeable;)V

    .line 281
    invoke-static {v1}, Lcom/transsion/camera/featurelibs/portraitarchitecture/utils/PortraitFileUtils;->safeClose(Ljava/io/Closeable;)V

    return-object v0

    :catchall_3d
    move-exception v2

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_4b

    :catchall_42
    move-exception p0

    move-object v2, v0

    :goto_44
    move-object v0, p0

    move-object p0, v2

    goto :goto_4b

    :catchall_47
    move-exception p0

    move-object v1, v0

    move-object v2, v1

    goto :goto_44

    .line 279
    :goto_4b
    invoke-static {v2}, Lcom/transsion/camera/featurelibs/portraitarchitecture/utils/PortraitFileUtils;->safeClose(Ljava/io/Closeable;)V

    .line 280
    invoke-static {p0}, Lcom/transsion/camera/featurelibs/portraitarchitecture/utils/PortraitFileUtils;->safeClose(Ljava/io/Closeable;)V

    .line 281
    invoke-static {v1}, Lcom/transsion/camera/featurelibs/portraitarchitecture/utils/PortraitFileUtils;->safeClose(Ljava/io/Closeable;)V

    .line 282
    throw v0
.end method

.method public static readDataByRandomAccessFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    .line 132
    :try_start_1
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 134
    invoke-static {v1}, Lcom/transsion/camera/utils/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 135
    sget-object p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/utils/PortraitFileUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[readDataByRandomAccessFile]  result= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_25} :catch_28
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_25} :catch_26

    return-object v0

    :catch_26
    move-exception p0

    goto :goto_2a

    :catch_28
    move-exception p0

    goto :goto_41

    .line 139
    :goto_2a
    sget-object v1, Lcom/transsion/camera/featurelibs/portraitarchitecture/utils/PortraitFileUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[readDataByRandomAccessFile] IOException  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_57

    .line 137
    :goto_41
    sget-object v1, Lcom/transsion/camera/featurelibs/portraitarchitecture/utils/PortraitFileUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[readDataByRandomAccessFile]  FileNotFoundException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_57
    return-object v0
.end method

.method private static safeClose(Ljava/io/Closeable;)V
    .registers 1

    if-eqz p0, :cond_5

    .line 287
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_5

    :catch_5
    :cond_5
    return-void
.end method

.method public static writeDataByRandomAccessFile(Landroid/content/Context;[BLjava/lang/String;)V
    .registers 8

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 40
    const-string v2, "resourcedata"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 41
    const-string v2, "/data/vendor/camera_portrait/config/resourcedata.json"

    goto :goto_11

    .line 40
    :cond_f
    const-string v2, "/data/vendor/camera_portrait/config/portrait_arch_parameter.json"

    .line 44
    :goto_11
    const-string v3, "/data/vendor/camera_portrait/config/"

    invoke-static {v3, v2}, Lcom/transsion/camera/featurelibs/portraitarchitecture/utils/PortraitFileUtils;->fileProcess(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_49

    .line 47
    :try_start_18
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    invoke-direct {v3, v2, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {v3, p1}, Ljava/io/RandomAccessFile;->write([B)V

    .line 49
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    .line 50
    invoke-static {v2}, Lcom/transsion/camera/featurelibs/portraitarchitecture/utils/PortraitFileUtils;->chmod777(Ljava/lang/String;)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_28} :catch_29

    goto :goto_2d

    :catch_29
    move-exception p1

    .line 52
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 54
    :goto_2d
    sget-object p1, Lcom/transsion/camera/featurelibs/portraitarchitecture/utils/PortraitFileUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "writeYUVByRandomAccessFile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 56
    :cond_49
    invoke-static {p0, p2}, Lcom/transsion/camera/featurelibs/portraitarchitecture/utils/PortraitFileUtils;->flagPorcess(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
