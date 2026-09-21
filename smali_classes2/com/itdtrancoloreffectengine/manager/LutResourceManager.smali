.class public abstract Lcom/itdtrancoloreffectengine/manager/LutResourceManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final COUNT_DOWN:Ljava/util/concurrent/CountDownLatch;

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final sDirInStorage:Ljava/io/File;

.field private static final sVersionFile:Ljava/io/File;


# direct methods
.method static bridge synthetic -$$Nest$sfgetCOUNT_DOWN()Ljava/util/concurrent/CountDownLatch;
    .registers 1

    .line 0
    sget-object v0, Lcom/itdtrancoloreffectengine/manager/LutResourceManager;->COUNT_DOWN:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/itdtrancoloreffectengine/manager/LutResourceManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smensureInit()V
    .registers 0

    .line 0
    invoke-static {}, Lcom/itdtrancoloreffectengine/manager/LutResourceManager;->ensureInit()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 30
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "LutResourceManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/itdtrancoloreffectengine/manager/LutResourceManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 33
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/transsion/camera/app_info/AppInfo;->app:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "lut/vss"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/itdtrancoloreffectengine/manager/LutResourceManager;->sDirInStorage:Ljava/io/File;

    .line 35
    new-instance v1, Ljava/io/File;

    const-string v2, ".version"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v1, Lcom/itdtrancoloreffectengine/manager/LutResourceManager;->sVersionFile:Ljava/io/File;

    .line 38
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v0, Lcom/itdtrancoloreffectengine/manager/LutResourceManager;->COUNT_DOWN:Ljava/util/concurrent/CountDownLatch;

    .line 41
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mTonesAssetSupport:Z

    if-nez v0, :cond_3f

    .line 42
    invoke-static {}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->getInstance()Lcom/transsion/camera/utils/threads/WorkThreadPools;

    move-result-object v0

    new-instance v1, Lcom/itdtrancoloreffectengine/manager/LutResourceManager$1;

    const-string v2, "LutResourceManagerInit"

    invoke-direct {v1, v2}, Lcom/itdtrancoloreffectengine/manager/LutResourceManager$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->execute(Lcom/transsion/camera/utils/threads/WorkTask;)V

    :cond_3f
    return-void
.end method

.method private static copy(Ljava/io/InputStream;Ljava/io/File;)V
    .registers 3

    .line 113
    invoke-static {p1}, Lorg/apache/commons/io/FileUtils;->forceMkdirParent(Ljava/io/File;)V

    .line 114
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :try_start_8
    new-instance p1, Ljava/io/BufferedOutputStream;

    invoke-direct {p1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_1e

    .line 115
    :try_start_d
    invoke-static {p0, p1}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 116
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_17
    .catchall {:try_start_d .. :try_end_17} :catchall_20

    .line 117
    :try_start_17
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1e

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    return-void

    :catchall_1e
    move-exception p0

    goto :goto_2a

    :catchall_20
    move-exception p0

    .line 114
    :try_start_21
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_25

    goto :goto_29

    :catchall_25
    move-exception p1

    :try_start_26
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_29
    throw p0
    :try_end_2a
    .catchall {:try_start_26 .. :try_end_2a} :catchall_1e

    :goto_2a
    :try_start_2a
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_2e

    goto :goto_32

    :catchall_2e
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_32
    throw p0
.end method

.method private static copyAssetsToDir(Ljava/lang/String;Ljava/io/File;)V
    .registers 5

    .line 106
    sget-object v0, Lcom/itdtrancoloreffectengine/manager/LutResourceManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "copyAssetsToDir() called with: assetPath = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], targetFile = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 107
    new-instance v0, Ljava/io/BufferedInputStream;

    sget-object v1, Lcom/transsion/camera/app_info/AppInfo;->app:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 108
    :try_start_32
    invoke-static {v0, p1}, Lcom/itdtrancoloreffectengine/manager/LutResourceManager;->copy(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_39

    .line 109
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_39
    move-exception p0

    .line 107
    :try_start_3a
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_3e

    goto :goto_42

    :catchall_3e
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_42
    throw p0
.end method

.method private static ensureInit()V
    .registers 8

    const/4 v0, 0x3

    .line 91
    invoke-static {}, Lcom/itdtrancoloreffectengine/manager/LutResourceManager;->readVersion()I

    move-result v1

    if-ne v0, v1, :cond_8

    return-void

    .line 92
    :cond_8
    sget-object v0, Lcom/itdtrancoloreffectengine/manager/LutResourceManager;->sDirInStorage:Ljava/io/File;

    invoke-static {v0}, Lorg/apache/commons/io/FileUtils;->deleteDirectory(Ljava/io/File;)V

    .line 93
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tmp_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 95
    sget-object v0, Lcom/transsion/camera/app_info/AppInfo;->app:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v2, "lut/vss"

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_63

    .line 97
    array-length v3, v0

    const/4 v4, 0x0

    :goto_3b
    if-ge v4, v3, :cond_53

    aget-object v5, v0, v4

    .line 98
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v6, v7}, Lcom/itdtrancoloreffectengine/manager/LutResourceManager;->copyAssetsToDir(Ljava/lang/String;Ljava/io/File;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3b

    .line 100
    :cond_53
    new-instance v0, Ljava/io/File;

    const-string v2, ".version"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/itdtrancoloreffectengine/manager/LutResourceManager;->writeVersion(Ljava/io/File;)V

    .line 101
    sget-object v0, Lcom/itdtrancoloreffectengine/manager/LutResourceManager;->sDirInStorage:Ljava/io/File;

    invoke-static {v1, v0}, Lorg/apache/commons/io/FileUtils;->moveDirectory(Ljava/io/File;Ljava/io/File;)V

    return-void

    .line 96
    :cond_63
    new-instance v0, Ljava/io/IOException;

    const-string v1, "can\'t find asset in lut/vss"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getDirInStorage()Ljava/io/File;
    .registers 5

    .line 62
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mTonesAssetSupport:Z

    if-eqz v0, :cond_46

    const/4 v0, 0x0

    .line 65
    :try_start_9
    invoke-static {}, Lcom/transsion/camera/utils/manager/CamAssetManager;->getInstance()Lcom/transsion/camera/utils/manager/CamAssetManager;

    move-result-object v1

    const-string v2, "lut/vss"

    invoke-virtual {v1, v2}, Lcom/transsion/camera/utils/manager/CamAssetManager;->getAssetPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 66
    sget-object v1, Lcom/itdtrancoloreffectengine/manager/LutResourceManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDirInStorage filePath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_2d} :catch_2e

    return-object v0

    :catch_2e
    move-exception v1

    .line 68
    sget-object v2, Lcom/itdtrancoloreffectengine/manager/LutResourceManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getDirInStorage]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v0

    .line 73
    :cond_46
    :try_start_46
    sget-object v0, Lcom/itdtrancoloreffectengine/manager/LutResourceManager;->COUNT_DOWN:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_4b
    .catch Ljava/lang/InterruptedException; {:try_start_46 .. :try_end_4b} :catch_4b

    .line 76
    :catch_4b
    sget-object v0, Lcom/itdtrancoloreffectengine/manager/LutResourceManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDirInStorage: exists = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/itdtrancoloreffectengine/manager/LutResourceManager;->sDirInStorage:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v2
.end method

.method private static readVersion()I
    .registers 2

    .line 81
    sget-object v0, Lcom/itdtrancoloreffectengine/manager/LutResourceManager;->sVersionFile:Ljava/io/File;

    invoke-static {v0}, Lcom/transsion/camera/utils/StringUtils;->readTextSafe(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/StringUtils;->parseIntSafe(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static writeVersion(Ljava/io/File;)V
    .registers 3

    .line 84
    invoke-static {p0}, Lorg/apache/commons/io/FileUtils;->forceMkdirParent(Ljava/io/File;)V

    .line 85
    :try_start_3
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_1d

    .line 86
    :try_start_8
    const-string p0, "3"

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, v0, v1}, Lorg/apache/commons/io/IOUtils;->write(Ljava/lang/String;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_13

    .line 87
    :try_start_f
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_1d

    return-void

    :catchall_13
    move-exception p0

    .line 85
    :try_start_14
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_18

    goto :goto_1c

    :catchall_18
    move-exception v0

    :try_start_19
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1c
    throw p0
    :try_end_1d
    .catchall {:try_start_19 .. :try_end_1d} :catchall_1d

    :catchall_1d
    return-void
.end method
