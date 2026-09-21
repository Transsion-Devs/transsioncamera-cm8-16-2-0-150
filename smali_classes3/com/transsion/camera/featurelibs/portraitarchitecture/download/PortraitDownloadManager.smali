.class public Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager$RequestType;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mContext:Landroid/content/Context;

.field mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field private final mDownloadManager:Lcom/transsion/camera/featurelibs/download/DownloadManager;

.field private mProbeRequestBodyParameter:Lcom/transsion/camera/featurelibs/portraitarchitecture/download/ProbeRequestBodyParameter;

.field private mRequestBodyParameter:Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestBodyParameter;

.field private mRequestHeadParameter:Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestHeadParameter;


# direct methods
.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 23
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "PDM"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager;->mContext:Landroid/content/Context;

    .line 32
    new-instance v0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestHeadParameter;

    invoke-direct {v0, p1}, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestHeadParameter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager;->mRequestHeadParameter:Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestHeadParameter;

    .line 33
    new-instance v0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestBodyParameter;

    invoke-direct {v0, p1, p2}, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestBodyParameter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager;->mRequestBodyParameter:Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestBodyParameter;

    .line 34
    new-instance p2, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/ProbeRequestBodyParameter;

    invoke-direct {p2, p1}, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/ProbeRequestBodyParameter;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager;->mProbeRequestBodyParameter:Lcom/transsion/camera/featurelibs/portraitarchitecture/download/ProbeRequestBodyParameter;

    .line 35
    new-instance p2, Lcom/transsion/camera/featurelibs/download/DownloadManager;

    invoke-direct {p2, p1}, Lcom/transsion/camera/featurelibs/download/DownloadManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager;->mDownloadManager:Lcom/transsion/camera/featurelibs/download/DownloadManager;

    .line 36
    new-instance p2, Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-direct {p2, p1}, Lcom/transsion/camera/app/common/storage/DataStore;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-void
.end method

.method private beanToMapConvert(Ljava/lang/Object;Ljava/util/Map;)Ljava/util/Map;
    .registers 8

    .line 188
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 189
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p0

    .line 191
    :try_start_8
    array-length v0, p0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_24

    aget-object v2, p0, v1

    .line 192
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    .line 193
    invoke-virtual {v2, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 194
    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 195
    invoke-interface {p2, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_21} :catch_25

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_24
    return-object p2

    :catch_25
    move-exception p0

    .line 198
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private getUriByType(Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager$RequestType;)Ljava/lang/String;
    .registers 3

    .line 171
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager;->isConectTestServer()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 172
    sget-object v0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager$RequestType;->REQUEST_TYPE_PARAMETER:Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager$RequestType;

    if-ne p1, v0, :cond_17

    .line 173
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/transsion/camera/app/common/R$string;->portrait_remote_parameter_url_test:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 174
    :cond_17
    sget-object v0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager$RequestType;->REQUEST_TYPE_RESOURCE:Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager$RequestType;

    if-ne p1, v0, :cond_4a

    .line 175
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/transsion/camera/app/common/R$string;->portrait_remote_resource_url_test:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 178
    :cond_28
    sget-object v0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager$RequestType;->REQUEST_TYPE_PARAMETER:Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager$RequestType;

    if-ne p1, v0, :cond_39

    .line 179
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/transsion/camera/app/common/R$string;->portrait_remote_parameter_url:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 180
    :cond_39
    sget-object v0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager$RequestType;->REQUEST_TYPE_RESOURCE:Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager$RequestType;

    if-ne p1, v0, :cond_4a

    .line 181
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/transsion/camera/app/common/R$string;->portrait_remote_resource_url:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4a
    const/4 p0, 0x0

    return-object p0
.end method

.method private isConectTestServer()Z
    .registers 4

    .line 204
    const-string p0, "debug.camera.portrait_test_server"

    const-string v0, ""

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    .line 205
    sget-object v0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[isConectTestServer] isTestServer :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0
.end method


# virtual methods
.method public probe(Landroid/os/Handler;Lcom/transsion/camera/featurelibs/portraitarchitecture/callback/IUpdatePortraitCallback;)V
    .registers 9

    .line 129
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager;->mRequestHeadParameter:Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestHeadParameter;

    iget-object v1, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestHeadParameter;->updataGAID(Landroid/content/Context;)V

    .line 130
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager;->mProbeRequestBodyParameter:Lcom/transsion/camera/featurelibs/portraitarchitecture/download/ProbeRequestBodyParameter;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 132
    const-string v2, "%s//timestamp=%s"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 133
    invoke-static {v2}, Lcom/transsion/camera/featurelibs/portraitarchitecture/utils/SecureUtil;->getSHA256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 134
    sget-object v3, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "probe jsonBody = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  sign =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "    timestamp = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 136
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 137
    iget-object v5, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager;->mRequestHeadParameter:Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestHeadParameter;

    invoke-virtual {v5, v2}, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestHeadParameter;->setSign(Ljava/lang/String;)V

    .line 138
    iget-object v2, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager;->mRequestHeadParameter:Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestHeadParameter;

    invoke-virtual {v2, v1}, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestHeadParameter;->setTimestamp(Ljava/lang/String;)V

    .line 139
    iget-object v1, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager;->mRequestHeadParameter:Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestHeadParameter;

    invoke-direct {p0, v1, v4}, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager;->beanToMapConvert(Ljava/lang/Object;Ljava/util/Map;)Ljava/util/Map;

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "probe headers = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 142
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager;->isConectTestServer()Z

    move-result v1

    if-eqz v1, :cond_89

    .line 143
    iget-object v1, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/app/common/R$string;->portrait_remote_probe_url_test:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_95

    .line 145
    :cond_89
    iget-object v1, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/app/common/R$string;->portrait_remote_probe_url:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 147
    :goto_95
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "probe mRemoteUrl = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 148
    new-instance v2, Lcom/transsion/camera/featurelibs/download/Request$Builder;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Lcom/transsion/camera/featurelibs/download/Request$Builder;-><init>(Ljava/lang/String;I)V

    .line 149
    invoke-virtual {v2, v4}, Lcom/transsion/camera/featurelibs/download/Request$Builder;->setRequestHeaders(Ljava/util/Map;)Lcom/transsion/camera/featurelibs/download/Request$Builder;

    move-result-object v1

    .line 150
    invoke-virtual {v1, v0}, Lcom/transsion/camera/featurelibs/download/Request$Builder;->setRequestJsonBody(Ljava/lang/String;)Lcom/transsion/camera/featurelibs/download/Request$Builder;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager$3;

    .line 151
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager$$ExternalSyntheticLambda0;-><init>(Landroid/os/Handler;)V

    invoke-direct {v1, p0, v2, p2}, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager$3;-><init>(Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager;Ljava/util/concurrent/Executor;Lcom/transsion/camera/featurelibs/portraitarchitecture/callback/IUpdatePortraitCallback;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/featurelibs/download/Request$Builder;->setRequestResponse(Lcom/transsion/camera/featurelibs/download/IRequestResponse;)Lcom/transsion/camera/featurelibs/download/Request$Builder;

    move-result-object p1

    .line 164
    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/download/Request$Builder;->build()Lcom/transsion/camera/featurelibs/download/Request;

    move-result-object p1

    .line 165
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager;->mDownloadManager:Lcom/transsion/camera/featurelibs/download/DownloadManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/featurelibs/download/DownloadManager;->request(Lcom/transsion/camera/featurelibs/download/Request;)V

    return-void
.end method

.method public updateException(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 10

    .line 82
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager;->mRequestHeadParameter:Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestHeadParameter;

    iget-object v1, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestHeadParameter;->updataGAID(Landroid/content/Context;)V

    .line 83
    new-instance v0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/ExceptionRequestBodyParameter;

    invoke-direct {v0}, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/ExceptionRequestBodyParameter;-><init>()V

    .line 84
    invoke-virtual {v0, p2}, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/ExceptionRequestBodyParameter;->setType(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v0, p3}, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/ExceptionRequestBodyParameter;->setVersion(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0, p4}, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/ExceptionRequestBodyParameter;->setErrorCode(I)V

    .line 87
    invoke-virtual {v0, p5}, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/ExceptionRequestBodyParameter;->setErroeMsg(Ljava/lang/String;)V

    .line 88
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    .line 90
    const-string p4, "%s//timestamp=%s"

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p5

    invoke-static {p4, p5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    .line 91
    invoke-static {p4}, Lcom/transsion/camera/featurelibs/portraitarchitecture/utils/SecureUtil;->getSHA256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 92
    sget-object p5, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " jsonBody = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  sign =  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    timestamp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p5, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 95
    iget-object v1, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager;->mRequestHeadParameter:Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestHeadParameter;

    invoke-virtual {v1, p4}, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestHeadParameter;->setSign(Ljava/lang/String;)V

    .line 96
    iget-object p4, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager;->mRequestHeadParameter:Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestHeadParameter;

    invoke-virtual {p4, p3}, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestHeadParameter;->setTimestamp(Ljava/lang/String;)V

    .line 97
    iget-object p3, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager;->mRequestHeadParameter:Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestHeadParameter;

    invoke-direct {p0, p3, v0}, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager;->beanToMapConvert(Ljava/lang/Object;Ljava/util/Map;)Ljava/util/Map;

    .line 98
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, " headers = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p5, p3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 100
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager;->isConectTestServer()Z

    move-result p3

    if-eqz p3, :cond_98

    .line 101
    iget-object p3, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/transsion/camera/app/common/R$string;->portrait_remote_exception_url_test:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_a4

    .line 103
    :cond_98
    iget-object p3, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/transsion/camera/app/common/R$string;->portrait_remote_exception_url:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 106
    :goto_a4
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mRemoteUrl = "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p5, p4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 107
    iget-object p4, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p5

    iget-object v1, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "portrait_update_time"

    invoke-virtual {p4, v3, p5, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 108
    new-instance p4, Lcom/transsion/camera/featurelibs/download/Request$Builder;

    const/4 p5, 0x1

    invoke-direct {p4, p3, p5}, Lcom/transsion/camera/featurelibs/download/Request$Builder;-><init>(Ljava/lang/String;I)V

    .line 109
    invoke-virtual {p4, v0}, Lcom/transsion/camera/featurelibs/download/Request$Builder;->setRequestHeaders(Ljava/util/Map;)Lcom/transsion/camera/featurelibs/download/Request$Builder;

    move-result-object p3

    .line 110
    invoke-virtual {p3, p2}, Lcom/transsion/camera/featurelibs/download/Request$Builder;->setRequestJsonBody(Ljava/lang/String;)Lcom/transsion/camera/featurelibs/download/Request$Builder;

    move-result-object p2

    new-instance p3, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager$2;

    .line 111
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p4, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager$$ExternalSyntheticLambda0;

    invoke-direct {p4, p1}, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager$$ExternalSyntheticLambda0;-><init>(Landroid/os/Handler;)V

    invoke-direct {p3, p0, p4}, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager$2;-><init>(Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager;Ljava/util/concurrent/Executor;)V

    invoke-virtual {p2, p3}, Lcom/transsion/camera/featurelibs/download/Request$Builder;->setRequestResponse(Lcom/transsion/camera/featurelibs/download/IRequestResponse;)Lcom/transsion/camera/featurelibs/download/Request$Builder;

    move-result-object p1

    .line 122
    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/download/Request$Builder;->build()Lcom/transsion/camera/featurelibs/download/Request;

    move-result-object p1

    .line 123
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager;->mDownloadManager:Lcom/transsion/camera/featurelibs/download/DownloadManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/featurelibs/download/DownloadManager;->request(Lcom/transsion/camera/featurelibs/download/Request;)V

    return-void
.end method

.method public updatePortraitConfig(Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager$RequestType;Ljava/lang/String;Landroid/os/Handler;Lcom/transsion/camera/featurelibs/portraitarchitecture/callback/IUpdatePortraitCallback;Z)V
    .registers 13

    .line 41
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v1, "0"

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "portrait_update_time"

    invoke-virtual {v0, v3, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager;->mRequestHeadParameter:Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestHeadParameter;

    iget-object v2, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestHeadParameter;->updataGAID(Landroid/content/Context;)V

    .line 43
    iget-object v1, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager;->mRequestBodyParameter:Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestBodyParameter;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestBodyParameter;->updateData(Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager;->mRequestBodyParameter:Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestBodyParameter;

    invoke-virtual {v0, p2}, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestBodyParameter;->setVersion(Ljava/lang/String;)V

    .line 45
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    iget-object v0, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager;->mRequestBodyParameter:Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestBodyParameter;

    invoke-virtual {p2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 47
    const-string v1, "%s//timestamp=%s"

    filled-new-array {p2, v0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 48
    invoke-static {v1}, Lcom/transsion/camera/featurelibs/portraitarchitecture/utils/SecureUtil;->getSHA256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 49
    sget-object v2, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[updatePortraitConfig] type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "  jsonBody = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "  sign =  "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "    timestamp = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 51
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 52
    iget-object v6, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager;->mRequestHeadParameter:Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestHeadParameter;

    invoke-virtual {v6, v1}, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestHeadParameter;->setSign(Ljava/lang/String;)V

    .line 53
    iget-object v1, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager;->mRequestHeadParameter:Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestHeadParameter;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestHeadParameter;->setTimestamp(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager;->mRequestHeadParameter:Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestHeadParameter;

    invoke-direct {p0, v0, v4}, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager;->beanToMapConvert(Ljava/lang/Object;Ljava/util/Map;)Ljava/util/Map;

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " headers = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 57
    invoke-direct {p0, p1}, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager;->getUriByType(Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager$RequestType;)Ljava/lang/String;

    move-result-object v0

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "  mRemoteUrl = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v5}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v2, v5, v6}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 60
    new-instance v1, Lcom/transsion/camera/featurelibs/download/Request$Builder;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/transsion/camera/featurelibs/download/Request$Builder;-><init>(Ljava/lang/String;I)V

    .line 61
    invoke-virtual {v1, v4}, Lcom/transsion/camera/featurelibs/download/Request$Builder;->setRequestHeaders(Ljava/util/Map;)Lcom/transsion/camera/featurelibs/download/Request$Builder;

    move-result-object v0

    .line 62
    invoke-virtual {v0, p2}, Lcom/transsion/camera/featurelibs/download/Request$Builder;->setRequestJsonBody(Ljava/lang/String;)Lcom/transsion/camera/featurelibs/download/Request$Builder;

    move-result-object p2

    new-instance v0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager$1;

    .line 63
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, p3}, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager$$ExternalSyntheticLambda0;-><init>(Landroid/os/Handler;)V

    move-object v1, p0

    move-object v3, p1

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager$1;-><init>(Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager;Ljava/util/concurrent/Executor;Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager$RequestType;Lcom/transsion/camera/featurelibs/portraitarchitecture/callback/IUpdatePortraitCallback;Z)V

    invoke-virtual {p2, v0}, Lcom/transsion/camera/featurelibs/download/Request$Builder;->setRequestResponse(Lcom/transsion/camera/featurelibs/download/IRequestResponse;)Lcom/transsion/camera/featurelibs/download/Request$Builder;

    move-result-object p0

    .line 76
    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/download/Request$Builder;->build()Lcom/transsion/camera/featurelibs/download/Request;

    move-result-object p0

    .line 77
    iget-object p1, v1, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/PortraitDownloadManager;->mDownloadManager:Lcom/transsion/camera/featurelibs/download/DownloadManager;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/featurelibs/download/DownloadManager;->request(Lcom/transsion/camera/featurelibs/download/Request;)V

    return-void
.end method
