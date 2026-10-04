.class public abstract Lcom/transsion/camera/utils/AssetLoaderUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static IS_RESOURCE_LOADED:Z

.field private static RESOURCES_LOADER:Landroid/content/res/loader/ResourcesLoader;

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 19
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/utils/AssetLoaderUtil;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/utils/AssetLoaderUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/4 v0, 0x0

    .line 20
    sput-object v0, Lcom/transsion/camera/utils/AssetLoaderUtil;->RESOURCES_LOADER:Landroid/content/res/loader/ResourcesLoader;

    const/4 v0, 0x0

    .line 21
    sput-boolean v0, Lcom/transsion/camera/utils/AssetLoaderUtil;->IS_RESOURCE_LOADED:Z

    return-void
.end method

.method public static addResourcesLoader(Landroid/content/Context;)V
    .registers 6

    .line 48
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 49
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 50
    sget-object v2, Lcom/transsion/camera/utils/AssetLoaderUtil;->RESOURCES_LOADER:Landroid/content/res/loader/ResourcesLoader;

    filled-new-array {v2}, [Landroid/content/res/loader/ResourcesLoader;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->addLoaders([Landroid/content/res/loader/ResourcesLoader;)V

    .line 51
    sget-object p0, Lcom/transsion/camera/utils/AssetLoaderUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addResourcesProvider end:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_31} :catch_32

    return-void

    :catch_32
    move-exception p0

    .line 53
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static clearResourcesLoader()V
    .registers 2

    .line 69
    sget-object v0, Lcom/transsion/camera/utils/AssetLoaderUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "clear resourcesLoader!"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 70
    sget-object v0, Lcom/transsion/camera/utils/AssetLoaderUtil;->RESOURCES_LOADER:Landroid/content/res/loader/ResourcesLoader;

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    .line 71
    sput-object v0, Lcom/transsion/camera/utils/AssetLoaderUtil;->RESOURCES_LOADER:Landroid/content/res/loader/ResourcesLoader;

    :cond_e
    return-void
.end method

.method public static getIsLoaderResource()Z
    .registers 1

    .line 76
    sget-boolean v0, Lcom/transsion/camera/utils/AssetLoaderUtil;->IS_RESOURCE_LOADED:Z

    return v0
.end method

.method public static getIsSupportAssets()Z
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.method public static initResourcesLoader()Z
    .registers 8

    const/4 v0, 0x0

    .line 28
    :try_start_1
    const-string v1, "read_assets_path"

    invoke-static {v1}, Lcom/transsion/camera/utils/CameraUtil;->getStringResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 29
    sget-object v2, Lcom/transsion/camera/utils/AssetLoaderUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ASSETS_PATH: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 30
    new-instance v3, Landroid/content/res/loader/ResourcesLoader;

    invoke-direct {v3}, Landroid/content/res/loader/ResourcesLoader;-><init>()V

    sput-object v3, Lcom/transsion/camera/utils/AssetLoaderUtil;->RESOURCES_LOADER:Landroid/content/res/loader/ResourcesLoader;

    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 32
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 33
    invoke-static {v5, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_33} :catch_61

    .line 34
    :try_start_33
    invoke-static {v1}, Landroid/content/res/loader/ResourcesProvider;->loadFromApk(Landroid/os/ParcelFileDescriptor;)Landroid/content/res/loader/ResourcesProvider;

    move-result-object v5

    .line 35
    sget-object v6, Lcom/transsion/camera/utils/AssetLoaderUtil;->RESOURCES_LOADER:Landroid/content/res/loader/ResourcesLoader;

    invoke-virtual {v6, v5}, Landroid/content/res/loader/ResourcesLoader;->addProvider(Landroid/content/res/loader/ResourcesProvider;)V

    .line 36
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "init end:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v3

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ms."

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_5a
    .catchall {:try_start_33 .. :try_end_5a} :catchall_64

    const/4 v0, 0x1

    if-eqz v1, :cond_63

    .line 38
    :try_start_5d
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_60} :catch_61

    return v0

    :catch_61
    move-exception v1

    goto :goto_70

    :cond_63
    return v0

    :catchall_64
    move-exception v2

    if-eqz v1, :cond_6f

    .line 33
    :try_start_67
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_6b

    goto :goto_6f

    :catchall_6b
    move-exception v1

    :try_start_6c
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6f
    :goto_6f
    throw v2
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_70} :catch_61

    .line 40
    :goto_70
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public static removeResourcesLoader(Landroid/content/Context;)V
    .registers 6

    .line 59
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 61
    sget-object v2, Lcom/transsion/camera/utils/AssetLoaderUtil;->RESOURCES_LOADER:Landroid/content/res/loader/ResourcesLoader;

    filled-new-array {v2}, [Landroid/content/res/loader/ResourcesLoader;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->removeLoaders([Landroid/content/res/loader/ResourcesLoader;)V

    .line 62
    sget-object p0, Lcom/transsion/camera/utils/AssetLoaderUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeResourcesProvider end:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_31} :catch_32

    return-void

    :catch_32
    move-exception p0

    .line 64
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static setIsLoaderResource(Z)V
    .registers 1

    .line 80
    sput-boolean p0, Lcom/transsion/camera/utils/AssetLoaderUtil;->IS_RESOURCE_LOADED:Z

    return-void
.end method
