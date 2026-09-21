.class public Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDetailRequestList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/featurelibs/download/Request;",
            ">;"
        }
    .end annotation
.end field

.field private final mDownloadManager:Lcom/transsion/camera/featurelibs/download/DownloadManager;

.field private mRemoteConfigRequest:Lcom/transsion/camera/featurelibs/download/Request;

.field private mRequestBodyParameter:Lcom/transsion/camera/feature/imageryguide/downLoad/RequestBodyParameter;

.field private final mRequestHeadParameter:Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter;

.field private mResponseResourceHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic -$$Nest$fputmRemoteConfigRequest(Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager;Lcom/transsion/camera/featurelibs/download/Request;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager;->mRemoteConfigRequest:Lcom/transsion/camera/featurelibs/download/Request;

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveDetailRequest(Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager;Lcom/transsion/camera/featurelibs/download/Request;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager;->removeDetailRequest(Lcom/transsion/camera/featurelibs/download/Request;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 28
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Guide_DownLoadManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager;->mContext:Landroid/content/Context;

    .line 42
    new-instance v0, Lcom/transsion/camera/featurelibs/download/DownloadManager;

    invoke-direct {v0, p1}, Lcom/transsion/camera/featurelibs/download/DownloadManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager;->mDownloadManager:Lcom/transsion/camera/featurelibs/download/DownloadManager;

    .line 43
    new-instance v0, Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter;

    invoke-direct {v0, p1}, Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager;->mRequestHeadParameter:Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter;

    .line 45
    invoke-direct {p0}, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager;->initRequestBodyParameter()V

    .line 46
    invoke-direct {p0}, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager;->initThread()V

    return-void
.end method

.method private initRequestBodyParameter()V
    .registers 6

    .line 56
    sget-object v0, Lcom/transsion/camera/utils/AreaUtil;->COUNTRY_CODE:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 57
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 58
    :cond_a
    const-string v0, "NG"

    .line 62
    :cond_c
    sget-object v1, Lcom/transsion/camera/feature/imageryguide/ImageryGuideConstant;->AREA_A_DARK_AREA:[Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 63
    const-string v1, "dark"

    goto :goto_24

    .line 64
    :cond_17
    sget-object v1, Lcom/transsion/camera/feature/imageryguide/ImageryGuideConstant;->AREA_B_BROWN_AREA:[Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 65
    const-string v1, "brown"

    goto :goto_24

    .line 64
    :cond_22
    const-string v1, "light"

    .line 68
    :goto_24
    sget-object v2, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initRequestBodyParameter, countryCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ,area :"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 70
    const-string v2, "area"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    new-instance v1, Lcom/transsion/camera/feature/imageryguide/downLoad/RequestBodyParameter;

    invoke-direct {v1, v0}, Lcom/transsion/camera/feature/imageryguide/downLoad/RequestBodyParameter;-><init>(Ljava/util/Map;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager;->mRequestBodyParameter:Lcom/transsion/camera/feature/imageryguide/downLoad/RequestBodyParameter;

    return-void
.end method

.method private initThread()V
    .registers 3

    .line 50
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "GuideResourceResponse"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 52
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager;->mResponseResourceHandler:Landroid/os/Handler;

    return-void
.end method

.method private removeDetailRequest(Lcom/transsion/camera/featurelibs/download/Request;)V
    .registers 2

    .line 124
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager;->mDetailRequestList:Ljava/util/List;

    if-nez p0, :cond_5

    return-void

    .line 127
    :cond_5
    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private stopThread()V
    .registers 2

    .line 189
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager;->mResponseResourceHandler:Landroid/os/Handler;

    if-eqz v0, :cond_e

    .line 190
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    const/4 v0, 0x0

    .line 191
    iput-object v0, p0, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager;->mResponseResourceHandler:Landroid/os/Handler;

    :cond_e
    return-void
.end method


# virtual methods
.method public cancelAllRequest()V
    .registers 3

    .line 179
    sget-object v0, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[cancelAllRequest]: "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 180
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager;->mDownloadManager:Lcom/transsion/camera/featurelibs/download/DownloadManager;

    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/download/DownloadManager;->cancelAll()V

    return-void
.end method

.method public downLoadResourceIfNeed(Lcom/transsion/camera/feature/imageryguide/callBack/IUpdateImageryGuideCallback;Ljava/lang/String;ILjava/lang/String;)Z
    .registers 15

    const/4 v0, 0x0

    if-nez p2, :cond_4

    return v0

    .line 79
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {p2, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v8, 0x1

    add-int/2addr v5, v8

    invoke-virtual {p2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 80
    invoke-static {p4}, Lcom/transsion/camera/feature/imageryguide/utils/FileUtils;->mkDir(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2b

    return v0

    .line 84
    :cond_2b
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_51

    .line 86
    sget-object v1, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file exits, don\'t downLoad."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0

    .line 90
    :cond_51
    sget-object v2, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[downLoadResourceIfNeed] pathRoot: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " ,fileName :"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 91
    new-instance v9, Lcom/transsion/camera/featurelibs/download/Request$Builder;

    invoke-direct {v9, p2, v0}, Lcom/transsion/camera/featurelibs/download/Request$Builder;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager$1;

    iget-object v2, p0, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager;->mResponseResourceHandler:Landroid/os/Handler;

    .line 92
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager$$ExternalSyntheticLambda0;

    invoke-direct {v7, v2}, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager$$ExternalSyntheticLambda0;-><init>(Landroid/os/Handler;)V

    move-object v1, p0

    move-object v3, p2

    move v6, p3

    move-object v4, p4

    move-object v2, v7

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager$1;-><init>(Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/transsion/camera/feature/imageryguide/callBack/IUpdateImageryGuideCallback;)V

    invoke-virtual {v9, v0}, Lcom/transsion/camera/featurelibs/download/Request$Builder;->setRequestResponse(Lcom/transsion/camera/featurelibs/download/IRequestResponse;)Lcom/transsion/camera/featurelibs/download/Request$Builder;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Lcom/transsion/camera/featurelibs/download/Request$Builder;->build()Lcom/transsion/camera/featurelibs/download/Request;

    move-result-object v0

    .line 113
    iget-object v2, p0, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager;->mDownloadManager:Lcom/transsion/camera/featurelibs/download/DownloadManager;

    invoke-virtual {v2, v0}, Lcom/transsion/camera/featurelibs/download/DownloadManager;->request(Lcom/transsion/camera/featurelibs/download/Request;)V

    .line 114
    invoke-static {}, Lcom/transsion/camera/feature/imageryguide/ImageryGuideConstant;->getDetailPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b0

    .line 115
    iget-object v2, p0, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager;->mDetailRequestList:Ljava/util/List;

    if-nez v2, :cond_ab

    .line 116
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager;->mDetailRequestList:Ljava/util/List;

    .line 118
    :cond_ab
    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager;->mDetailRequestList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b0
    return v8
.end method

.method public isNetworkAvailable()Z
    .registers 1

    .line 208
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager;->mDownloadManager:Lcom/transsion/camera/featurelibs/download/DownloadManager;

    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/download/DownloadManager;->isNetworkAvailable()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public onCancelDetail()V
    .registers 6

    .line 196
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager;->mDetailRequestList:Ljava/util/List;

    if-eqz v0, :cond_2c

    .line 197
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_2c

    .line 200
    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager;->mDetailRequestList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 201
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_17
    if-ge v2, v1, :cond_2c

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/transsion/camera/featurelibs/download/Request;

    .line 202
    iget-object v4, p0, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager;->mDownloadManager:Lcom/transsion/camera/featurelibs/download/DownloadManager;

    invoke-virtual {v4, v3}, Lcom/transsion/camera/featurelibs/download/DownloadManager;->cancel(Lcom/transsion/camera/featurelibs/download/Request;)V

    .line 203
    iget-object v4, p0, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager;->mDetailRequestList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_2c
    :goto_2c
    return-void
.end method

.method public onPause()V
    .registers 1

    return-void
.end method

.method public requestJsonDataFormRemote(Ljava/lang/String;Lcom/transsion/camera/feature/imageryguide/callBack/IUpdateImageryGuideCallback;)V
    .registers 9

    .line 131
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager;->mRemoteConfigRequest:Lcom/transsion/camera/featurelibs/download/Request;

    if-eqz v0, :cond_c

    .line 132
    sget-object p0, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "requestJsonDataFormRemoting not request  "

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 135
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager;->mRequestHeadParameter:Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter;

    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter;->updateGAID(Landroid/content/Context;)V

    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 137
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iget-object v2, p0, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager;->mRequestBodyParameter:Lcom/transsion/camera/feature/imageryguide/downLoad/RequestBodyParameter;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 138
    const-string v2, "%s//timestamp=%s"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 139
    invoke-static {v2}, Lcom/transsion/camera/feature/imageryguide/utils/SecureUtil;->getSHA256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 140
    sget-object v3, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[requestJsonDataFormRemote] jsonBody: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ,timestamp :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ,sign :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 143
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 144
    iget-object v5, p0, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager;->mRequestHeadParameter:Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter;

    invoke-virtual {v5, v2}, Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter;->setSign(Ljava/lang/String;)V

    .line 145
    iget-object v2, p0, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager;->mRequestHeadParameter:Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter;

    invoke-virtual {v2, v0}, Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter;->setTimestamp(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager;->mRequestHeadParameter:Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter;

    invoke-static {v0, v4}, Lcom/transsion/camera/feature/imageryguide/utils/StringUtils;->beanToMapConvert(Ljava/lang/Object;Ljava/util/Map;)V

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[requestJsonDataFormRemote] headers: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 149
    new-instance v0, Lcom/transsion/camera/featurelibs/download/Request$Builder;

    const/4 v2, 0x1

    invoke-direct {v0, p1, v2}, Lcom/transsion/camera/featurelibs/download/Request$Builder;-><init>(Ljava/lang/String;I)V

    .line 150
    invoke-virtual {v0, v4}, Lcom/transsion/camera/featurelibs/download/Request$Builder;->setRequestHeaders(Ljava/util/Map;)Lcom/transsion/camera/featurelibs/download/Request$Builder;

    move-result-object p1

    .line 151
    invoke-virtual {p1, v1}, Lcom/transsion/camera/featurelibs/download/Request$Builder;->setRequestJsonBody(Ljava/lang/String;)Lcom/transsion/camera/featurelibs/download/Request$Builder;

    move-result-object p1

    new-instance v0, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager$2;

    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager;->mResponseResourceHandler:Landroid/os/Handler;

    .line 152
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager$$ExternalSyntheticLambda0;-><init>(Landroid/os/Handler;)V

    invoke-direct {v0, p0, v2, p2}, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager$2;-><init>(Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager;Ljava/util/concurrent/Executor;Lcom/transsion/camera/feature/imageryguide/callBack/IUpdateImageryGuideCallback;)V

    invoke-virtual {p1, v0}, Lcom/transsion/camera/featurelibs/download/Request$Builder;->setRequestResponse(Lcom/transsion/camera/featurelibs/download/IRequestResponse;)Lcom/transsion/camera/featurelibs/download/Request$Builder;

    move-result-object p1

    .line 169
    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/download/Request$Builder;->build()Lcom/transsion/camera/featurelibs/download/Request;

    move-result-object p1

    .line 170
    iget-object p2, p0, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager;->mDownloadManager:Lcom/transsion/camera/featurelibs/download/DownloadManager;

    invoke-virtual {p2, p1}, Lcom/transsion/camera/featurelibs/download/DownloadManager;->request(Lcom/transsion/camera/featurelibs/download/Request;)V

    .line 171
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager;->mRemoteConfigRequest:Lcom/transsion/camera/featurelibs/download/Request;

    return-void
.end method

.method public unInit()V
    .registers 1

    .line 184
    invoke-virtual {p0}, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager;->cancelAllRequest()V

    .line 185
    invoke-direct {p0}, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager;->stopThread()V

    return-void
.end method
