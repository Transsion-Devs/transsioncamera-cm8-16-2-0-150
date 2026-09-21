.class public Lcom/transsion/camera/feature/mode/aiartmuseum/service/impl/AIArtServiceImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/featurelibs/aicommon/service/IAIService;


# static fields
.field private static final CODE_FAIL:I = 0x2

.field private static final CODE_SUCCESS:I = 0x0

.field private static final PROGRESS_COEFFICIENT:I = 0x64

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final sInstance:Lcom/transsion/camera/feature/mode/aiartmuseum/service/impl/AIArtServiceImpl;


# instance fields
.field private final mExecutingRequestMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/transsion/camera/app/common/ai/AIRequest;",
            "Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$7EA7_KSZvAzaVcdO7L4HTW1VD-Y(Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IProgressCallBack;D)V
    .registers 5

    if-eqz p0, :cond_9

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double/2addr p1, v0

    double-to-int p1, p1

    .line 74
    invoke-interface {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IProgressCallBack;->onProgress(I)V

    :cond_9
    return-void
.end method

.method public static synthetic $r8$lambda$8Me8zu8adMLJ1Vnn_4pQ4Quapss(Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;)V
    .registers 4

    .line 140
    :try_start_0
    invoke-virtual {p0}, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;->cancel()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p0

    .line 142
    sget-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/service/impl/AIArtServiceImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancel exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OTmrF-_HxO2EOmmhOOK-fZVbCH0(Lcom/transsion/camera/feature/mode/aiartmuseum/service/impl/AIArtServiceImpl;Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IRequestCallBack;Lcom/transsion/camera/app/common/ai/AIRequest;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/aiartmuseum/service/impl/AIArtServiceImpl;->lambda$request$1(Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IRequestCallBack;Lcom/transsion/camera/app/common/ai/AIRequest;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 38
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AIArtServiceImpl"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/service/impl/AIArtServiceImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 45
    new-instance v0, Lcom/transsion/camera/feature/mode/aiartmuseum/service/impl/AIArtServiceImpl;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/service/impl/AIArtServiceImpl;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/service/impl/AIArtServiceImpl;->sInstance:Lcom/transsion/camera/feature/mode/aiartmuseum/service/impl/AIArtServiceImpl;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/service/impl/AIArtServiceImpl;->mExecutingRequestMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 50
    sget-object p0, Lcom/transsion/camera/app_info/AppInfo;->app:Landroid/app/Application;

    invoke-static {p0}, Lcom/gallery20/sdk/ai_art/network/AIArtNetModuleKt;->initKoinWithAIArtModule(Landroid/content/Context;)V

    return-void
.end method

.method public static getInstance()Lcom/transsion/camera/feature/mode/aiartmuseum/service/impl/AIArtServiceImpl;
    .registers 1

    .line 54
    sget-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/service/impl/AIArtServiceImpl;->sInstance:Lcom/transsion/camera/feature/mode/aiartmuseum/service/impl/AIArtServiceImpl;

    return-object v0
.end method

.method private synthetic lambda$request$1(Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IRequestCallBack;Lcom/transsion/camera/app/common/ai/AIRequest;)V
    .registers 11

    .line 81
    const-string v0, "failed"

    const-string v1, "requestExecuteEnd"

    const/4 v2, 0x0

    .line 84
    :try_start_5
    sget-object v3, Lcom/transsion/camera/feature/mode/aiartmuseum/service/impl/AIArtServiceImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v4, "requestExecuteStart"

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 86
    invoke-virtual {p1}, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;->generateAIArtImageJava()[B

    move-result-object p1

    if-eqz p1, :cond_20

    .line 88
    new-instance v4, Lcom/transsion/camera/app/common/ai/AIResponse;

    const-string v5, "success"

    const/4 v6, 0x0

    invoke-direct {v4, v6, v5, p1}, Lcom/transsion/camera/app/common/ai/AIResponse;-><init>(ILjava/lang/String;[B)V

    goto :goto_26

    :catchall_1b
    move-exception p1

    goto :goto_73

    :catch_1d
    move-exception p1

    move-object v4, v2

    goto :goto_33

    .line 90
    :cond_20
    new-instance v4, Lcom/transsion/camera/app/common/ai/AIResponse;

    const/4 p1, 0x2

    invoke-direct {v4, p1, v0, v2}, Lcom/transsion/camera/app/common/ai/AIResponse;-><init>(ILjava/lang/String;[B)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_26} :catch_1d
    .catchall {:try_start_5 .. :try_end_26} :catchall_1b

    .line 93
    :goto_26
    :try_start_26
    invoke-interface {p2, p3, v4}, Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IRequestCallBack;->onResponse(Lcom/transsion/camera/app/common/ai/AIRequest;Lcom/transsion/camera/app/common/ai/AIResponse;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_29} :catch_32
    .catchall {:try_start_26 .. :try_end_29} :catchall_1b

    .line 109
    :goto_29
    invoke-static {v3, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 110
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/service/impl/AIArtServiceImpl;->mExecutingRequestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catch_32
    move-exception p1

    .line 95
    :goto_33
    :try_start_33
    sget-object v3, Lcom/transsion/camera/feature/mode/aiartmuseum/service/impl/AIArtServiceImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "request exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 97
    instance-of v5, p1, Ljava/util/concurrent/ExecutionException;

    if-eqz v5, :cond_6f

    .line 98
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    .line 99
    instance-of v5, p1, Lcom/gallery20/sdk/ai_art/network/AIArtProcessException;

    if-eqz v5, :cond_6f

    .line 100
    check-cast p1, Lcom/gallery20/sdk/ai_art/network/AIArtProcessException;

    .line 101
    const-string v5, "TIMESTAMP_EXPIRED"

    invoke-virtual {p1}, Lcom/gallery20/sdk/ai_art/network/AIArtProcessException;->getErrorCode()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6f

    .line 102
    new-instance v4, Lcom/transsion/camera/app/common/ai/AIResponse;

    const p1, 0x49444

    invoke-direct {v4, p1, v0, v2}, Lcom/transsion/camera/app/common/ai/AIResponse;-><init>(ILjava/lang/String;[B)V

    .line 107
    :cond_6f
    invoke-interface {p2, p3, v4}, Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IRequestCallBack;->onResponse(Lcom/transsion/camera/app/common/ai/AIRequest;Lcom/transsion/camera/app/common/ai/AIResponse;)V
    :try_end_72
    .catchall {:try_start_33 .. :try_end_72} :catchall_1b

    goto :goto_29

    .line 109
    :goto_73
    sget-object p2, Lcom/transsion/camera/feature/mode/aiartmuseum/service/impl/AIArtServiceImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-static {p2, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 110
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/service/impl/AIArtServiceImpl;->mExecutingRequestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    throw p1
.end method


# virtual methods
.method public cancel(Lcom/transsion/camera/app/common/ai/AIRequest;)V
    .registers 6

    .line 119
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/service/impl/AIArtServiceImpl;->mExecutingRequestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;

    if-nez v0, :cond_12

    .line 121
    sget-object p0, Lcom/transsion/camera/feature/mode/aiartmuseum/service/impl/AIArtServiceImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "cancel requestFuture not found"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 126
    :cond_12
    :try_start_12
    invoke-virtual {v0}, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;->cancel()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_16

    goto :goto_2d

    :catch_16
    move-exception v0

    .line 128
    sget-object v1, Lcom/transsion/camera/feature/mode/aiartmuseum/service/impl/AIArtServiceImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancel exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 131
    :goto_2d
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/service/impl/AIArtServiceImpl;->mExecutingRequestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public freeService()V
    .registers 3

    .line 136
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/service/impl/AIArtServiceImpl;->mExecutingRequestMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 137
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/feature/mode/aiartmuseum/service/impl/AIArtServiceImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/transsion/camera/feature/mode/aiartmuseum/service/impl/AIArtServiceImpl$$ExternalSyntheticLambda2;-><init>()V

    .line 138
    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 145
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/service/impl/AIArtServiceImpl;->mExecutingRequestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public request(Lcom/transsion/camera/app/common/ai/AIRequest;Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IRequestCallBack;Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IProgressCallBack;)V
    .registers 8

    .line 61
    sget-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/service/impl/AIArtServiceImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "requestStart"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 63
    invoke-static {p1}, Lcom/transsion/camera/featurelibs/aicommon/helper/RequestCacheHelper;->getRequestJpeg(Lcom/transsion/camera/app/common/ai/AIRequest;)[B

    move-result-object v1

    if-nez v1, :cond_17

    .line 65
    const-string p0, "requestJpeg is null"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 66
    invoke-interface {p2, p1, p0}, Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IRequestCallBack;->onResponse(Lcom/transsion/camera/app/common/ai/AIRequest;Lcom/transsion/camera/app/common/ai/AIResponse;)V

    return-void

    .line 70
    :cond_17
    new-instance v2, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ai/AIRequest;->getEffectValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v2, v1}, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;->setJpeg([B)V

    .line 72
    new-instance v1, Lcom/transsion/camera/feature/mode/aiartmuseum/service/impl/AIArtServiceImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p3}, Lcom/transsion/camera/feature/mode/aiartmuseum/service/impl/AIArtServiceImpl$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IProgressCallBack;)V

    invoke-virtual {v2, v1}, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;->setListener(Lcom/gallery20/sdk/ai_art/network/UpdateListener;)V

    .line 78
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/service/impl/AIArtServiceImpl;->mExecutingRequestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p3, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    invoke-static {}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->getInstance()Lcom/transsion/camera/utils/threads/WorkThreadPools;

    move-result-object p3

    new-instance v1, Lcom/transsion/camera/feature/mode/aiartmuseum/service/impl/AIArtServiceImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v2, p2, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/service/impl/AIArtServiceImpl$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/aiartmuseum/service/impl/AIArtServiceImpl;Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IRequestCallBack;Lcom/transsion/camera/app/common/ai/AIRequest;)V

    const-string p0, "AIArtService"

    invoke-virtual {p3, v1, p0}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->execute(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 114
    const-string p0, "requestEnd"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
