.class public Lcom/google/mediapipe/framework/AssetCache;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final MEDIAPIPE_ASSET_CACHE_DIR:Ljava/lang/String; = "mediapipe_asset_cache"

.field private static assetCache:Lcom/google/mediapipe/framework/AssetCache;

.field private static final logger:Lcom/google/common/flogger/FluentLogger;


# instance fields
.field private appVersionCode:I

.field private context:Landroid/content/Context;

.field private versionDatabase:Lcom/google/mediapipe/framework/AssetCacheDbHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 41
    invoke-static {}, Lcom/google/common/flogger/FluentLogger;->forEnclosingClass()Lcom/google/common/flogger/FluentLogger;

    move-result-object v0

    sput-object v0, Lcom/google/mediapipe/framework/AssetCache;->logger:Lcom/google/common/flogger/FluentLogger;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    iput-object p1, p0, Lcom/google/mediapipe/framework/AssetCache;->context:Landroid/content/Context;

    .line 174
    new-instance v0, Lcom/google/mediapipe/framework/AssetCacheDbHelper;

    invoke-direct {v0, p1}, Lcom/google/mediapipe/framework/AssetCacheDbHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/mediapipe/framework/AssetCache;->versionDatabase:Lcom/google/mediapipe/framework/AssetCacheDbHelper;

    .line 176
    :try_start_c
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 177
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    iput p1, p0, Lcom/google/mediapipe/framework/AssetCache;->appVersionCode:I

    .line 178
    sget-object p1, Lcom/google/mediapipe/framework/AssetCache;->logger:Lcom/google/common/flogger/FluentLogger;

    invoke-virtual {p1}, Lcom/google/common/flogger/AbstractLogger;->atInfo()Lcom/google/common/flogger/LoggingApi;

    move-result-object p1

    check-cast p1, Lcom/google/common/flogger/FluentLogger$Api;

    const-string v0, "Current app version code: %d"

    iget v1, p0, Lcom/google/mediapipe/framework/AssetCache;->appVersionCode:I

    invoke-interface {p1, v0, v1}, Lcom/google/common/flogger/LoggingApi;->log(Ljava/lang/String;I)V
    :try_end_2c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_2c} :catch_34

    .line 183
    iget-object p1, p0, Lcom/google/mediapipe/framework/AssetCache;->versionDatabase:Lcom/google/mediapipe/framework/AssetCacheDbHelper;

    iget p0, p0, Lcom/google/mediapipe/framework/AssetCache;->appVersionCode:I

    invoke-virtual {p1, p0}, Lcom/google/mediapipe/framework/AssetCacheDbHelper;->invalidateCache(I)V

    return-void

    :catch_34
    move-exception p0

    .line 180
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Can\'t get app version code."

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static declared-synchronized create(Landroid/content/Context;)Lcom/google/mediapipe/framework/AssetCache;
    .registers 3

    const-class v0, Lcom/google/mediapipe/framework/AssetCache;

    monitor-enter v0

    .line 55
    :try_start_3
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v1, Lcom/google/mediapipe/framework/AssetCache;->assetCache:Lcom/google/mediapipe/framework/AssetCache;

    if-nez v1, :cond_14

    .line 57
    new-instance v1, Lcom/google/mediapipe/framework/AssetCache;

    invoke-direct {v1, p0}, Lcom/google/mediapipe/framework/AssetCache;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/google/mediapipe/framework/AssetCache;->assetCache:Lcom/google/mediapipe/framework/AssetCache;

    goto :goto_14

    :catchall_12
    move-exception p0

    goto :goto_18

    .line 59
    :cond_14
    :goto_14
    sget-object p0, Lcom/google/mediapipe/framework/AssetCache;->assetCache:Lcom/google/mediapipe/framework/AssetCache;
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_12

    monitor-exit v0

    return-object p0

    :goto_18
    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_12

    throw p0
.end method

.method public static declared-synchronized getAssetCache()Lcom/google/mediapipe/framework/AssetCache;
    .registers 2

    const-class v0, Lcom/google/mediapipe/framework/AssetCache;

    monitor-enter v0

    .line 81
    :try_start_3
    sget-object v1, Lcom/google/mediapipe/framework/AssetCache;->assetCache:Lcom/google/mediapipe/framework/AssetCache;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    :try_start_8
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public static declared-synchronized purgeCache(Landroid/content/Context;)V
    .registers 3

    const-class v0, Lcom/google/mediapipe/framework/AssetCache;

    monitor-enter v0

    .line 69
    :try_start_3
    new-instance v1, Lcom/google/mediapipe/framework/AssetCacheDbHelper;

    invoke-direct {v1, p0}, Lcom/google/mediapipe/framework/AssetCacheDbHelper;-><init>(Landroid/content/Context;)V

    const/4 p0, -0x1

    .line 70
    invoke-virtual {v1, p0}, Lcom/google/mediapipe/framework/AssetCacheDbHelper;->invalidateCache(I)V

    .line 71
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_11

    .line 72
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw p0
.end method

.method private static writeStreamToFile(Ljava/io/InputStream;Ljava/io/File;)V
    .registers 5

    const/4 v0, 0x0

    .line 191
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_1d

    const/16 p1, 0x3e8

    .line 192
    :try_start_8
    new-array p1, p1, [B

    .line 194
    :goto_a
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_1a

    const/4 v2, -0x1

    if-ne v0, v2, :cond_15

    .line 202
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    return-void

    :cond_15
    const/4 v2, 0x0

    .line 198
    :try_start_16
    invoke-virtual {v1, p1, v2, v0}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_1a

    goto :goto_a

    :catchall_1a
    move-exception p0

    move-object v0, v1

    goto :goto_1e

    :catchall_1d
    move-exception p0

    :goto_1e
    if-eqz v0, :cond_23

    .line 202
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 204
    :cond_23
    throw p0
.end method


# virtual methods
.method public declared-synchronized getAbsolutePathFromAsset(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    monitor-enter p0

    .line 120
    :try_start_1
    iget-object v0, p0, Lcom/google/mediapipe/framework/AssetCache;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 121
    invoke-virtual {p0}, Lcom/google/mediapipe/framework/AssetCache;->getDefaultMediaPipeCacheDir()Ljava/io/File;

    move-result-object v1

    .line 122
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 123
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 125
    new-instance v3, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3a

    iget v1, p0, Lcom/google/mediapipe/framework/AssetCache;->appVersionCode:I

    if-eqz v1, :cond_3a

    iget-object v2, p0, Lcom/google/mediapipe/framework/AssetCache;->versionDatabase:Lcom/google/mediapipe/framework/AssetCacheDbHelper;

    .line 128
    invoke-virtual {v2, p1, v1}, Lcom/google/mediapipe/framework/AssetCacheDbHelper;->checkVersion(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 129
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_38

    monitor-exit p0

    return-object p1

    :catchall_38
    move-exception p1

    goto :goto_78

    :cond_3a
    const/4 v1, 0x0

    .line 133
    :try_start_3b
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3f} :catch_59
    .catchall {:try_start_3b .. :try_end_3f} :catchall_38

    .line 134
    :try_start_3f
    invoke-static {v0, v3}, Lcom/google/mediapipe/framework/AssetCache;->writeStreamToFile(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_57
    .catchall {:try_start_3f .. :try_end_42} :catchall_38

    .line 147
    :try_start_42
    iget v0, p0, Lcom/google/mediapipe/framework/AssetCache;->appVersionCode:I

    if-eqz v0, :cond_51

    .line 148
    iget-object v0, p0, Lcom/google/mediapipe/framework/AssetCache;->versionDatabase:Lcom/google/mediapipe/framework/AssetCacheDbHelper;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/mediapipe/framework/AssetCache;->appVersionCode:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/mediapipe/framework/AssetCacheDbHelper;->insertAsset(Ljava/lang/String;Ljava/lang/String;I)V

    .line 150
    :cond_51
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1
    :try_end_55
    .catchall {:try_start_42 .. :try_end_55} :catchall_38

    monitor-exit p0

    return-object p1

    :catch_57
    move-exception v2

    goto :goto_5b

    :catch_59
    move-exception v2

    move-object v0, v1

    .line 136
    :goto_5b
    :try_start_5b
    sget-object v3, Lcom/google/mediapipe/framework/AssetCache;->logger:Lcom/google/common/flogger/FluentLogger;

    invoke-virtual {v3}, Lcom/google/common/flogger/AbstractLogger;->atSevere()Lcom/google/common/flogger/LoggingApi;

    move-result-object v3

    check-cast v3, Lcom/google/common/flogger/FluentLogger$Api;

    invoke-interface {v3, v2}, Lcom/google/common/flogger/LoggingApi;->withCause(Ljava/lang/Throwable;)Lcom/google/common/flogger/LoggingApi;

    move-result-object v2

    check-cast v2, Lcom/google/common/flogger/FluentLogger$Api;

    const-string v3, "Unable to unpack: %s"

    invoke-interface {v2, v3, p1}, Lcom/google/common/flogger/LoggingApi;->log(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_6e
    .catchall {:try_start_5b .. :try_end_6e} :catchall_38

    if-eqz v0, :cond_76

    .line 139
    :try_start_70
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_73} :catch_74
    .catchall {:try_start_70 .. :try_end_73} :catchall_38

    goto :goto_76

    .line 142
    :catch_74
    monitor-exit p0

    return-object v1

    .line 144
    :cond_76
    :goto_76
    monitor-exit p0

    return-object v1

    :goto_78
    :try_start_78
    monitor-exit p0
    :try_end_79
    .catchall {:try_start_78 .. :try_end_79} :catchall_38

    throw p1
.end method

.method public declared-synchronized getAvailableAssets()[Ljava/lang/String;
    .registers 3

    monitor-enter p0

    .line 158
    :try_start_1
    invoke-virtual {p0}, Lcom/google/mediapipe/framework/AssetCache;->getDefaultMediaPipeCacheDir()Ljava/io/File;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 160
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    monitor-exit p0

    return-object v0

    :catchall_11
    move-exception v0

    goto :goto_18

    :cond_13
    const/4 v0, 0x0

    .line 162
    :try_start_14
    new-array v0, v0, [Ljava/lang/String;
    :try_end_16
    .catchall {:try_start_14 .. :try_end_16} :catchall_11

    monitor-exit p0

    return-object v0

    :goto_18
    :try_start_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_11

    throw v0
.end method

.method public getDefaultMediaPipeCacheDir()Ljava/io/File;
    .registers 3

    .line 169
    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/google/mediapipe/framework/AssetCache;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "mediapipe_asset_cache"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public declared-synchronized loadAllAssets(Ljava/lang/String;)V
    .registers 8

    monitor-enter p0

    .line 89
    :try_start_1
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lcom/google/mediapipe/framework/AssetCache;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_f

    .line 94
    :try_start_a
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_e} :catch_11
    .catchall {:try_start_a .. :try_end_e} :catchall_f

    goto :goto_26

    :catchall_f
    move-exception p1

    goto :goto_64

    :catch_11
    move-exception v0

    .line 96
    :try_start_12
    sget-object v1, Lcom/google/mediapipe/framework/AssetCache;->logger:Lcom/google/common/flogger/FluentLogger;

    invoke-virtual {v1}, Lcom/google/common/flogger/AbstractLogger;->atSevere()Lcom/google/common/flogger/LoggingApi;

    move-result-object v1

    check-cast v1, Lcom/google/common/flogger/FluentLogger$Api;

    invoke-interface {v1, v0}, Lcom/google/common/flogger/LoggingApi;->withCause(Ljava/lang/Throwable;)Lcom/google/common/flogger/LoggingApi;

    move-result-object v0

    check-cast v0, Lcom/google/common/flogger/FluentLogger$Api;

    const-string v1, "Unable to get files in assets path: %s"

    invoke-interface {v0, v1, p1}, Lcom/google/common/flogger/LoggingApi;->log(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_26
    if-eqz v0, :cond_55

    .line 98
    array-length v1, v0

    if-nez v1, :cond_2c

    goto :goto_55

    .line 103
    :cond_2c
    array-length v1, v0

    const/4 v2, 0x0

    :goto_2e
    if-ge v2, v1, :cond_53

    aget-object v3, v0, v2

    .line 106
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_39

    goto :goto_4d

    :cond_39
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 107
    :goto_4d
    invoke-virtual {p0, v3}, Lcom/google/mediapipe/framework/AssetCache;->getAbsolutePathFromAsset(Ljava/lang/String;)Ljava/lang/String;
    :try_end_50
    .catchall {:try_start_12 .. :try_end_50} :catchall_f

    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    .line 109
    :cond_53
    monitor-exit p0

    return-void

    .line 99
    :cond_55
    :goto_55
    :try_start_55
    sget-object p1, Lcom/google/mediapipe/framework/AssetCache;->logger:Lcom/google/common/flogger/FluentLogger;

    invoke-virtual {p1}, Lcom/google/common/flogger/AbstractLogger;->atWarning()Lcom/google/common/flogger/LoggingApi;

    move-result-object p1

    check-cast p1, Lcom/google/common/flogger/FluentLogger$Api;

    const-string v0, "No files to load"

    invoke-interface {p1, v0}, Lcom/google/common/flogger/LoggingApi;->log(Ljava/lang/String;)V
    :try_end_62
    .catchall {:try_start_55 .. :try_end_62} :catchall_f

    .line 100
    monitor-exit p0

    return-void

    :goto_64
    :try_start_64
    monitor-exit p0
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_f

    throw p1
.end method
