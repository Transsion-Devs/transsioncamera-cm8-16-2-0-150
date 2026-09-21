.class public Lcom/transsion/hubsdk/tranthubutils/TranConfigs;
.super Ljava/lang/Object;
.source "TranConfigs.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initialize(Ljava/lang/String;)V
    .registers 2
    .param p0, "nameSpace"    # Ljava/lang/String;

    .line 26
    invoke-static {}, Lcom/transsion/hubsdk/thubutils/ITranConfigs;->Instance()Lcom/transsion/hubsdk/thubutils/ITranConfigs;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/transsion/hubsdk/thubutils/ITranConfigs;->initialize(Ljava/lang/String;)V

    .line 27
    return-void
.end method


# virtual methods
.method public getAsset(Ljava/lang/String;)Ljava/io/File;
    .registers 3
    .param p1, "subPath"    # Ljava/lang/String;

    .line 90
    invoke-static {}, Lcom/transsion/hubsdk/thubutils/ITranConfigs;->Instance()Lcom/transsion/hubsdk/thubutils/ITranConfigs;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/transsion/hubsdk/thubutils/ITranConfigs;->getAsset(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getAsset(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 4
    .param p1, "nameSpace"    # Ljava/lang/String;
    .param p2, "subPath"    # Ljava/lang/String;

    .line 94
    invoke-static {}, Lcom/transsion/hubsdk/thubutils/ITranConfigs;->Instance()Lcom/transsion/hubsdk/thubutils/ITranConfigs;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/transsion/hubsdk/thubutils/ITranConfigs;->getAsset(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getConfigs(Ljava/lang/String;)Ljava/io/File;
    .registers 3
    .param p1, "subPath"    # Ljava/lang/String;

    .line 44
    invoke-static {}, Lcom/transsion/hubsdk/thubutils/ITranConfigs;->Instance()Lcom/transsion/hubsdk/thubutils/ITranConfigs;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/transsion/hubsdk/thubutils/ITranConfigs;->getConfigs(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getConfigs(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 4
    .param p1, "nameSpace"    # Ljava/lang/String;
    .param p2, "subPath"    # Ljava/lang/String;

    .line 48
    invoke-static {}, Lcom/transsion/hubsdk/thubutils/ITranConfigs;->Instance()Lcom/transsion/hubsdk/thubutils/ITranConfigs;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/transsion/hubsdk/thubutils/ITranConfigs;->getConfigs(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getConfigsList(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .param p1, "subPath"    # Ljava/lang/String;
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

    .line 68
    invoke-static {}, Lcom/transsion/hubsdk/thubutils/ITranConfigs;->Instance()Lcom/transsion/hubsdk/thubutils/ITranConfigs;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/transsion/hubsdk/thubutils/ITranConfigs;->getConfigsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getConfigsList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .param p1, "nameSpace"    # Ljava/lang/String;
    .param p2, "subPath"    # Ljava/lang/String;
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

    .line 72
    invoke-static {}, Lcom/transsion/hubsdk/thubutils/ITranConfigs;->Instance()Lcom/transsion/hubsdk/thubutils/ITranConfigs;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/transsion/hubsdk/thubutils/ITranConfigs;->getConfigsList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLibrary(Ljava/lang/String;)Ljava/io/File;
    .registers 3
    .param p1, "subPath"    # Ljava/lang/String;

    .line 152
    invoke-static {}, Lcom/transsion/hubsdk/thubutils/ITranConfigs;->Instance()Lcom/transsion/hubsdk/thubutils/ITranConfigs;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/transsion/hubsdk/thubutils/ITranConfigs;->getLibrary(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getMedia(Ljava/lang/String;)Ljava/io/File;
    .registers 3
    .param p1, "subPath"    # Ljava/lang/String;

    .line 112
    invoke-static {}, Lcom/transsion/hubsdk/thubutils/ITranConfigs;->Instance()Lcom/transsion/hubsdk/thubutils/ITranConfigs;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/transsion/hubsdk/thubutils/ITranConfigs;->getMedia(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getNativeLibrary(Ljava/lang/String;Z)Ljava/io/File;
    .registers 4
    .param p1, "subPath"    # Ljava/lang/String;
    .param p2, "is64"    # Z

    .line 134
    invoke-static {}, Lcom/transsion/hubsdk/thubutils/ITranConfigs;->Instance()Lcom/transsion/hubsdk/thubutils/ITranConfigs;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/transsion/hubsdk/thubutils/ITranConfigs;->getNativeLibrary(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
