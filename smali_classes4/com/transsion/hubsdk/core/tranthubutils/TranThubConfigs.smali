.class public Lcom/transsion/hubsdk/core/tranthubutils/TranThubConfigs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/tranthubutils/ITranConfigsAdapter;


# instance fields
.field private mManager:Lcom/transsion/hubsdk/tranthubutils/TranConfigs;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lcom/transsion/hubsdk/tranthubutils/TranConfigs;

    invoke-direct {v0}, Lcom/transsion/hubsdk/tranthubutils/TranConfigs;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/tranthubutils/TranThubConfigs;->mManager:Lcom/transsion/hubsdk/tranthubutils/TranConfigs;

    return-void
.end method


# virtual methods
.method public getAsset(Ljava/lang/String;)Ljava/io/File;
    .registers 2

    .line 43
    iget-object p0, p0, Lcom/transsion/hubsdk/core/tranthubutils/TranThubConfigs;->mManager:Lcom/transsion/hubsdk/tranthubutils/TranConfigs;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 46
    :cond_6
    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/tranthubutils/TranConfigs;->getAsset(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getAsset(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 3

    .line 91
    iget-object p0, p0, Lcom/transsion/hubsdk/core/tranthubutils/TranThubConfigs;->mManager:Lcom/transsion/hubsdk/tranthubutils/TranConfigs;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 94
    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/tranthubutils/TranConfigs;->getAsset(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getConfigs(Ljava/lang/String;)Ljava/io/File;
    .registers 2

    .line 27
    iget-object p0, p0, Lcom/transsion/hubsdk/core/tranthubutils/TranThubConfigs;->mManager:Lcom/transsion/hubsdk/tranthubutils/TranConfigs;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 30
    :cond_6
    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/tranthubutils/TranConfigs;->getConfigs(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getConfigs(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 3

    .line 75
    iget-object p0, p0, Lcom/transsion/hubsdk/core/tranthubutils/TranThubConfigs;->mManager:Lcom/transsion/hubsdk/tranthubutils/TranConfigs;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 78
    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/tranthubutils/TranConfigs;->getConfigs(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getConfigsList(Ljava/lang/String;)Ljava/util/List;
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

    .line 35
    iget-object p0, p0, Lcom/transsion/hubsdk/core/tranthubutils/TranThubConfigs;->mManager:Lcom/transsion/hubsdk/tranthubutils/TranConfigs;

    if-nez p0, :cond_7

    .line 36
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 38
    :cond_7
    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/tranthubutils/TranConfigs;->getConfigsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getConfigsList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
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

    .line 83
    iget-object p0, p0, Lcom/transsion/hubsdk/core/tranthubutils/TranThubConfigs;->mManager:Lcom/transsion/hubsdk/tranthubutils/TranConfigs;

    if-nez p0, :cond_7

    .line 84
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 86
    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/tranthubutils/TranConfigs;->getConfigsList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getLibrary(Ljava/lang/String;)Ljava/io/File;
    .registers 2

    .line 67
    iget-object p0, p0, Lcom/transsion/hubsdk/core/tranthubutils/TranThubConfigs;->mManager:Lcom/transsion/hubsdk/tranthubutils/TranConfigs;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 70
    :cond_6
    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/tranthubutils/TranConfigs;->getLibrary(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getMedia(Ljava/lang/String;)Ljava/io/File;
    .registers 2

    .line 51
    iget-object p0, p0, Lcom/transsion/hubsdk/core/tranthubutils/TranThubConfigs;->mManager:Lcom/transsion/hubsdk/tranthubutils/TranConfigs;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 54
    :cond_6
    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/tranthubutils/TranConfigs;->getMedia(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getNativeLibrary(Ljava/lang/String;Z)Ljava/io/File;
    .registers 3

    .line 59
    iget-object p0, p0, Lcom/transsion/hubsdk/core/tranthubutils/TranThubConfigs;->mManager:Lcom/transsion/hubsdk/tranthubutils/TranConfigs;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 62
    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/tranthubutils/TranConfigs;->getNativeLibrary(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public initialize(Ljava/lang/String;)V
    .registers 2

    .line 19
    iget-object p0, p0, Lcom/transsion/hubsdk/core/tranthubutils/TranThubConfigs;->mManager:Lcom/transsion/hubsdk/tranthubutils/TranConfigs;

    if-nez p0, :cond_5

    return-void

    .line 22
    :cond_5
    invoke-static {p1}, Lcom/transsion/hubsdk/tranthubutils/TranConfigs;->initialize(Ljava/lang/String;)V

    return-void
.end method
