.class public abstract Lcom/transsion/camera/utils/AssetLoaderUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ASSETS_PATH:Ljava/lang/String;

.field private static IS_RESOURCE_LOADED:Z

.field private static final IS_SUPPORT_ASSETS:Z

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

    .line 23
    const-string v0, "build_assets_apk"

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/transsion/camera/utils/AssetLoaderUtil;->IS_SUPPORT_ASSETS:Z

    .line 25
    const-string v0, "read_assets_path"

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getStringResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/utils/AssetLoaderUtil;->ASSETS_PATH:Ljava/lang/String;

    return-void
.end method

.method public static addResourcesLoader(Landroid/content/Context;)V
    .registers 6

    .line 49
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 51
    sget-object v2, Lcom/transsion/camera/utils/AssetLoaderUtil;->RESOURCES_LOADER:Landroid/content/res/loader/ResourcesLoader;

    filled-new-array {v2}, [Landroid/content/res/loader/ResourcesLoader;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->addLoaders([Landroid/content/res/loader/ResourcesLoader;)V

    .line 52
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

    .line 54
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static clearResourcesLoader()V
    .registers 2

    .line 70
    sget-object v0, Lcom/transsion/camera/utils/AssetLoaderUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "clear resourcesLoader!"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 71
    sget-object v0, Lcom/transsion/camera/utils/AssetLoaderUtil;->RESOURCES_LOADER:Landroid/content/res/loader/ResourcesLoader;

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    .line 72
    sput-object v0, Lcom/transsion/camera/utils/AssetLoaderUtil;->RESOURCES_LOADER:Landroid/content/res/loader/ResourcesLoader;

    :cond_e
    return-void
.end method

.method public static getIsLoaderResource()Z
    .registers 1

    .line 77
    sget-boolean v0, Lcom/transsion/camera/utils/AssetLoaderUtil;->IS_RESOURCE_LOADED:Z

    return v0
.end method

.method public static getIsSupportAssets()Z
    .registers 1

    .line 85
    sget-boolean v0, Lcom/transsion/camera/utils/AssetLoaderUtil;->IS_SUPPORT_ASSETS:Z

    return v0
.end method

.method public static initResourcesLoader()Z
    .registers 8

    const/4 v0, 0x0

    .line 30
    :try_start_1
    sget-object v1, Lcom/transsion/camera/utils/AssetLoaderUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ASSETS_PATH: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/transsion/camera/utils/AssetLoaderUtil;->ASSETS_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 31
    new-instance v2, Landroid/content/res/loader/ResourcesLoader;

    invoke-direct {v2}, Landroid/content/res/loader/ResourcesLoader;-><init>()V

    sput-object v2, Lcom/transsion/camera/utils/AssetLoaderUtil;->RESOURCES_LOADER:Landroid/content/res/loader/ResourcesLoader;

    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 33
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10000000

    .line 34
    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_2f} :catch_5d

    .line 35
    :try_start_2f
    invoke-static {v2}, Landroid/content/res/loader/ResourcesProvider;->loadFromApk(Landroid/os/ParcelFileDescriptor;)Landroid/content/res/loader/ResourcesProvider;

    move-result-object v3

    .line 36
    sget-object v6, Lcom/transsion/camera/utils/AssetLoaderUtil;->RESOURCES_LOADER:Landroid/content/res/loader/ResourcesLoader;

    invoke-virtual {v6, v3}, Landroid/content/res/loader/ResourcesLoader;->addProvider(Landroid/content/res/loader/ResourcesProvider;)V

    .line 37
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "init end:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ms."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_56
    .catchall {:try_start_2f .. :try_end_56} :catchall_60

    const/4 v0, 0x1

    if-eqz v2, :cond_5f

    .line 39
    :try_start_59
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_5d

    return v0

    :catch_5d
    move-exception v1

    goto :goto_6c

    :cond_5f
    return v0

    :catchall_60
    move-exception v1

    if-eqz v2, :cond_6b

    .line 34
    :try_start_63
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_67

    goto :goto_6b

    :catchall_67
    move-exception v2

    :try_start_68
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6b
    :goto_6b
    throw v1
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6c} :catch_5d

    .line 41
    :goto_6c
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public static removeResourcesLoader(Landroid/content/Context;)V
    .registers 6

    .line 60
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 61
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 62
    sget-object v2, Lcom/transsion/camera/utils/AssetLoaderUtil;->RESOURCES_LOADER:Landroid/content/res/loader/ResourcesLoader;

    filled-new-array {v2}, [Landroid/content/res/loader/ResourcesLoader;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->removeLoaders([Landroid/content/res/loader/ResourcesLoader;)V

    .line 63
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

    .line 65
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static setIsLoaderResource(Z)V
    .registers 1

    .line 81
    sput-boolean p0, Lcom/transsion/camera/utils/AssetLoaderUtil;->IS_RESOURCE_LOADED:Z

    return-void
.end method
