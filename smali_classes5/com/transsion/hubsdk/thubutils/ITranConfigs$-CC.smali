.class public final synthetic Lcom/transsion/hubsdk/thubutils/ITranConfigs$-CC;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static $default$getAsset(Lcom/transsion/hubsdk/thubutils/ITranConfigs;Ljava/lang/String;)Ljava/io/File;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public static $default$getAsset(Lcom/transsion/hubsdk/thubutils/ITranConfigs;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 3

    const/4 p1, 0x0

    return-object p1
.end method

.method public static $default$getConfigs(Lcom/transsion/hubsdk/thubutils/ITranConfigs;Ljava/lang/String;)Ljava/io/File;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public static $default$getConfigs(Lcom/transsion/hubsdk/thubutils/ITranConfigs;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 3

    const/4 p1, 0x0

    return-object p1
.end method

.method public static $default$getConfigsList(Lcom/transsion/hubsdk/thubutils/ITranConfigs;Ljava/lang/String;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public static $default$getConfigsList(Lcom/transsion/hubsdk/thubutils/ITranConfigs;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public static $default$getLibrary(Lcom/transsion/hubsdk/thubutils/ITranConfigs;Ljava/lang/String;)Ljava/io/File;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public static $default$getMedia(Lcom/transsion/hubsdk/thubutils/ITranConfigs;Ljava/lang/String;)Ljava/io/File;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public static $default$getNativeLibrary(Lcom/transsion/hubsdk/thubutils/ITranConfigs;Ljava/lang/String;Z)Ljava/io/File;
    .registers 3

    const/4 p1, 0x0

    return-object p1
.end method

.method public static $default$initialize(Lcom/transsion/hubsdk/thubutils/ITranConfigs;Ljava/lang/String;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/transsion/hubsdk/thubutils/ITranConfigs;->CLASS_PATH:Ljava/lang/String;

    return-void
.end method

.method public static Instance()Lcom/transsion/hubsdk/thubutils/ITranConfigs;
    .registers 2

    .line 1
    sget-object v0, Lcom/transsion/hubsdk/thubutils/ITranConfigs;->CLASS_INFO:Lthubutils/a;

    const-string v1, "/system/framework/thubutils.jar"

    invoke-virtual {v0, v1}, Lthubutils/a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/hubsdk/thubutils/ITranConfigs;

    return-object v0
.end method

.method public static synthetic a()Lcom/transsion/hubsdk/thubutils/ITranConfigs;
    .registers 1

    .line 1
    new-instance v0, Lcom/transsion/hubsdk/thubutils/ITranConfigs$a;

    invoke-direct {v0}, Lcom/transsion/hubsdk/thubutils/ITranConfigs$a;-><init>()V

    return-object v0
.end method
