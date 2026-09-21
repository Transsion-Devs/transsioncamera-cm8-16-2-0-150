.class public Lcom/transsion/camera/featurelibs/download/DownloadManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/featurelibs/download/control/IRequestControl;


# instance fields
.field private mFileRequestControl:Lcom/transsion/camera/featurelibs/download/control/IRequestControl;

.field private final mNetworkHelper:Lcom/transsion/camera/featurelibs/download/NetworkHelper;

.field private final mRequestControl:Lcom/transsion/camera/featurelibs/download/control/IRequestControl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;

    invoke-direct {v0}, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/download/DownloadManager;->mRequestControl:Lcom/transsion/camera/featurelibs/download/control/IRequestControl;

    .line 21
    new-instance v0, Lcom/transsion/camera/featurelibs/download/NetworkHelper;

    invoke-direct {v0, p1}, Lcom/transsion/camera/featurelibs/download/NetworkHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/download/DownloadManager;->mNetworkHelper:Lcom/transsion/camera/featurelibs/download/NetworkHelper;

    return-void
.end method

.method private findSuitableControl(Lcom/transsion/camera/featurelibs/download/Request;)Lcom/transsion/camera/featurelibs/download/control/IRequestControl;
    .registers 3

    .line 25
    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/download/Request;->getUrl()Ljava/net/URL;

    move-result-object p1

    if-eqz p1, :cond_23

    .line 27
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p1

    const-string v0, "file"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_20

    .line 28
    iget-object p1, p0, Lcom/transsion/camera/featurelibs/download/DownloadManager;->mFileRequestControl:Lcom/transsion/camera/featurelibs/download/control/IRequestControl;

    if-nez p1, :cond_1d

    .line 29
    new-instance p1, Lcom/transsion/camera/featurelibs/download/control/FileRequestControl;

    invoke-direct {p1}, Lcom/transsion/camera/featurelibs/download/control/FileRequestControl;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/featurelibs/download/DownloadManager;->mFileRequestControl:Lcom/transsion/camera/featurelibs/download/control/IRequestControl;

    .line 31
    :cond_1d
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/download/DownloadManager;->mFileRequestControl:Lcom/transsion/camera/featurelibs/download/control/IRequestControl;

    return-object p0

    .line 33
    :cond_20
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/download/DownloadManager;->mRequestControl:Lcom/transsion/camera/featurelibs/download/control/IRequestControl;

    return-object p0

    :cond_23
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public cancel(Lcom/transsion/camera/featurelibs/download/Request;)V
    .registers 2

    if-eqz p1, :cond_b

    .line 63
    invoke-direct {p0, p1}, Lcom/transsion/camera/featurelibs/download/DownloadManager;->findSuitableControl(Lcom/transsion/camera/featurelibs/download/Request;)Lcom/transsion/camera/featurelibs/download/control/IRequestControl;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 65
    invoke-interface {p0, p1}, Lcom/transsion/camera/featurelibs/download/control/IRequestControl;->cancel(Lcom/transsion/camera/featurelibs/download/Request;)V

    :cond_b
    return-void
.end method

.method public cancelAll()V
    .registers 2

    .line 72
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/download/DownloadManager;->mFileRequestControl:Lcom/transsion/camera/featurelibs/download/control/IRequestControl;

    if-eqz v0, :cond_7

    .line 73
    invoke-interface {v0}, Lcom/transsion/camera/featurelibs/download/control/IRequestControl;->cancelAll()V

    .line 75
    :cond_7
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/download/DownloadManager;->mRequestControl:Lcom/transsion/camera/featurelibs/download/control/IRequestControl;

    invoke-interface {p0}, Lcom/transsion/camera/featurelibs/download/control/IRequestControl;->cancelAll()V

    return-void
.end method

.method public isNetworkAvailable()Z
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/download/DownloadManager;->mNetworkHelper:Lcom/transsion/camera/featurelibs/download/NetworkHelper;

    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/download/NetworkHelper;->isNetworkAvailable()Z

    move-result p0

    return p0
.end method

.method public request(Lcom/transsion/camera/featurelibs/download/Request;)V
    .registers 4

    if-eqz p1, :cond_13

    .line 50
    invoke-direct {p0, p1}, Lcom/transsion/camera/featurelibs/download/DownloadManager;->findSuitableControl(Lcom/transsion/camera/featurelibs/download/Request;)Lcom/transsion/camera/featurelibs/download/control/IRequestControl;

    move-result-object p0

    if-eqz p0, :cond_c

    .line 52
    invoke-interface {p0, p1}, Lcom/transsion/camera/featurelibs/download/control/IRequestControl;->request(Lcom/transsion/camera/featurelibs/download/Request;)V

    return-void

    :cond_c
    const/4 p0, 0x2

    .line 54
    const-string v0, ""

    const/4 v1, 0x1

    invoke-virtual {p1, v1, p0, v0}, Lcom/transsion/camera/featurelibs/download/Request;->onError(IILjava/lang/String;)V

    :cond_13
    return-void
.end method
