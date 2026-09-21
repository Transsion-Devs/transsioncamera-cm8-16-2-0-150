.class public Lcom/transsion/camera/app/common/assets/AssetsLoaderManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/transsion/camera/app/common/assets/AssetsLoaderManager;

.field private static RESOURCES_LOADER:Landroid/content/res/loader/ResourcesLoader;

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 16
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/common/assets/AssetsLoaderManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/assets/AssetsLoaderManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/4 v0, 0x0

    .line 17
    sput-object v0, Lcom/transsion/camera/app/common/assets/AssetsLoaderManager;->RESOURCES_LOADER:Landroid/content/res/loader/ResourcesLoader;

    .line 28
    new-instance v0, Lcom/transsion/camera/app/common/assets/AssetsLoaderManager;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/assets/AssetsLoaderManager;-><init>()V

    sput-object v0, Lcom/transsion/camera/app/common/assets/AssetsLoaderManager;->INSTANCE:Lcom/transsion/camera/app/common/assets/AssetsLoaderManager;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addResourcesLoader(Landroid/content/Context;)V
    .registers 6

    .line 91
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 92
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 93
    sget-object v2, Lcom/transsion/camera/app/common/assets/AssetsLoaderManager;->RESOURCES_LOADER:Landroid/content/res/loader/ResourcesLoader;

    filled-new-array {v2}, [Landroid/content/res/loader/ResourcesLoader;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->addLoaders([Landroid/content/res/loader/ResourcesLoader;)V

    .line 94
    sget-object p0, Lcom/transsion/camera/app/common/assets/AssetsLoaderManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

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

    .line 96
    sget-object v0, Lcom/transsion/camera/app/common/assets/AssetsLoaderManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addResourcesLoader Error !!! :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lcom/transsion/camera/app/common/assets/AssetsLoaderManager;
    .registers 1

    .line 33
    sget-object v0, Lcom/transsion/camera/app/common/assets/AssetsLoaderManager;->RESOURCES_LOADER:Landroid/content/res/loader/ResourcesLoader;

    if-nez v0, :cond_b

    .line 34
    new-instance v0, Landroid/content/res/loader/ResourcesLoader;

    invoke-direct {v0}, Landroid/content/res/loader/ResourcesLoader;-><init>()V

    sput-object v0, Lcom/transsion/camera/app/common/assets/AssetsLoaderManager;->RESOURCES_LOADER:Landroid/content/res/loader/ResourcesLoader;

    .line 36
    :cond_b
    sget-object v0, Lcom/transsion/camera/app/common/assets/AssetsLoaderManager;->INSTANCE:Lcom/transsion/camera/app/common/assets/AssetsLoaderManager;

    return-object v0
.end method


# virtual methods
.method public initResourcesLoader(Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;)V
    .registers 6

    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 43
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eqz p0, :cond_2d

    const/4 v2, 0x1

    if-eq p0, v2, :cond_28

    const/4 v2, 0x2

    if-eq p0, v2, :cond_23

    const/4 v2, 0x3

    if-eq p0, v2, :cond_1e

    const/4 v2, 0x5

    if-eq p0, v2, :cond_19

    const/4 p0, 0x0

    move-object v2, p0

    goto :goto_31

    .line 55
    :cond_19
    const-string p0, "system_ext/app/TranssionCamera/VoiceCaptureAssets/VoiceCaptureAssets.apk"

    const-string v2, "sdcard/Download/VoiceCaptureAssets.apk"

    goto :goto_31

    .line 63
    :cond_1e
    const-string p0, "system_ext/app/TranssionCamera/QRCodeAssets/QRCodeAssets.apk"

    const-string v2, "sdcard/Download/QRCodeAssets.apk"

    goto :goto_31

    .line 59
    :cond_23
    const-string p0, "system_ext/app/TranssionCamera/VlogModeAassets/VlogModeAassets.apk"

    const-string v2, "sdcard/Download/VlogModeAassets.apk"

    goto :goto_31

    .line 51
    :cond_28
    const-string p0, "system_ext/app/TranssionCamera/MakeUpAssets3D/MakeUpAssets3D.apk"

    const-string v2, "sdcard/Download/MakeUpAssets3D.apk"

    goto :goto_31

    .line 47
    :cond_2d
    const-string p0, "system_ext/app/TranssionCamera/MakeUpAssets/MakeUpAssets.apk"

    const-string v2, "sdcard/Download/MakeUpAssets.apk"

    .line 68
    :goto_31
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_54

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_54

    .line 69
    sget-object p0, Lcom/transsion/camera/app/common/assets/AssetsLoaderManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initResourcesLoader Error !!! , mode :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 74
    :cond_54
    :try_start_54
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_73

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_6e

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result p0

    if-nez p0, :cond_73

    goto :goto_6e

    :catch_6c
    move-exception p0

    goto :goto_9d

    .line 76
    :cond_6e
    :goto_6e
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 78
    :cond_73
    sget-object p0, Lcom/transsion/camera/app/common/assets/AssetsLoaderManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ASSETS_PATH: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/high16 p0, 0x10000000

    .line 79
    invoke-static {p1, p0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    .line 80
    invoke-static {p0}, Landroid/content/res/loader/ResourcesProvider;->loadFromApk(Landroid/os/ParcelFileDescriptor;)Landroid/content/res/loader/ResourcesProvider;

    move-result-object p0

    .line 81
    sget-object p1, Lcom/transsion/camera/app/common/assets/AssetsLoaderManager;->RESOURCES_LOADER:Landroid/content/res/loader/ResourcesLoader;

    invoke-virtual {p1, p0}, Landroid/content/res/loader/ResourcesLoader;->addProvider(Landroid/content/res/loader/ResourcesProvider;)V
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_9c} :catch_6c

    goto :goto_b7

    .line 83
    :goto_9d
    sget-object p1, Lcom/transsion/camera/app/common/assets/AssetsLoaderManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initResourcesLoader assets read Error !!! :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 85
    :goto_b7
    sget-object p0, Lcom/transsion/camera/app/common/assets/AssetsLoaderManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init end:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
