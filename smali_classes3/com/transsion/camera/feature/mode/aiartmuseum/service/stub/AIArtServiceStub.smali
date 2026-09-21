.class public Lcom/transsion/camera/feature/mode/aiartmuseum/service/stub/AIArtServiceStub;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/featurelibs/aicommon/service/IAIService;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mExecutingRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ai/AIRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mLockGuard:Ljava/lang/Object;


# direct methods
.method public static synthetic $r8$lambda$51BQ4JT14TA9MW8nvpUY0yZoiuE(Lcom/transsion/camera/feature/mode/aiartmuseum/service/stub/AIArtServiceStub;Lcom/transsion/camera/app/common/ai/AIRequest;Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IRequestCallBack;[B)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/aiartmuseum/service/stub/AIArtServiceStub;->lambda$request$0(Lcom/transsion/camera/app/common/ai/AIRequest;Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IRequestCallBack;[B)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 29
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AIArtServiceStub"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/service/stub/AIArtServiceStub;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/service/stub/AIArtServiceStub;->mLockGuard:Ljava/lang/Object;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/service/stub/AIArtServiceStub;->mExecutingRequests:Ljava/util/List;

    return-void
.end method

.method private synthetic lambda$request$0(Lcom/transsion/camera/app/common/ai/AIRequest;Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IRequestCallBack;[B)V
    .registers 7

    const-wide/16 v0, 0x1388

    .line 51
    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception v0

    .line 53
    sget-object v1, Lcom/transsion/camera/feature/mode/aiartmuseum/service/stub/AIArtServiceStub;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "request"

    invoke-static {v1, v2, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    :goto_e
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/service/stub/AIArtServiceStub;->mLockGuard:Ljava/lang/Object;

    monitor-enter v0

    .line 57
    :try_start_11
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/service/stub/AIArtServiceStub;->mExecutingRequests:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_37

    .line 58
    sget-object p0, Lcom/transsion/camera/feature/mode/aiartmuseum/service/stub/AIArtServiceStub;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onResponse failed, canceledRequest@"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 59
    monitor-exit v0

    return-void

    :catchall_35
    move-exception p0

    goto :goto_49

    .line 62
    :cond_37
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/service/stub/AIArtServiceStub;->mExecutingRequests:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 63
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_11 .. :try_end_3d} :catchall_35

    .line 64
    new-instance p0, Lcom/transsion/camera/app/common/ai/AIResponse;

    const/4 v0, 0x0

    const-string v1, "success"

    invoke-direct {p0, v0, v1, p3}, Lcom/transsion/camera/app/common/ai/AIResponse;-><init>(ILjava/lang/String;[B)V

    invoke-interface {p2, p1, p0}, Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IRequestCallBack;->onResponse(Lcom/transsion/camera/app/common/ai/AIRequest;Lcom/transsion/camera/app/common/ai/AIResponse;)V

    return-void

    .line 63
    :goto_49
    :try_start_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_35

    throw p0
.end method


# virtual methods
.method public cancel(Lcom/transsion/camera/app/common/ai/AIRequest;)V
    .registers 3

    .line 70
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/service/stub/AIArtServiceStub;->mLockGuard:Ljava/lang/Object;

    monitor-enter v0

    .line 71
    :try_start_3
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/service/stub/AIArtServiceStub;->mExecutingRequests:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 72
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public freeService()V
    .registers 2

    .line 77
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/service/stub/AIArtServiceStub;->mLockGuard:Ljava/lang/Object;

    monitor-enter v0

    .line 78
    :try_start_3
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/service/stub/AIArtServiceStub;->mExecutingRequests:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 79
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public request(Lcom/transsion/camera/app/common/ai/AIRequest;Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IRequestCallBack;Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IProgressCallBack;)V
    .registers 6

    .line 38
    invoke-static {p1}, Lcom/transsion/camera/featurelibs/aicommon/helper/RequestCacheHelper;->getRequestJpeg(Lcom/transsion/camera/app/common/ai/AIRequest;)[B

    move-result-object p3

    if-nez p3, :cond_12

    .line 40
    sget-object p0, Lcom/transsion/camera/feature/mode/aiartmuseum/service/stub/AIArtServiceStub;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p3, "requestJpeg is null"

    invoke-static {p0, p3}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 41
    invoke-interface {p2, p1, p0}, Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IRequestCallBack;->onResponse(Lcom/transsion/camera/app/common/ai/AIRequest;Lcom/transsion/camera/app/common/ai/AIResponse;)V

    return-void

    .line 45
    :cond_12
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/service/stub/AIArtServiceStub;->mLockGuard:Ljava/lang/Object;

    monitor-enter v0

    .line 46
    :try_start_15
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/service/stub/AIArtServiceStub;->mExecutingRequests:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_15 .. :try_end_1b} :catchall_2a

    .line 49
    invoke-static {}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->getInstance()Lcom/transsion/camera/utils/threads/WorkThreadPools;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/feature/mode/aiartmuseum/service/stub/AIArtServiceStub$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/aiartmuseum/service/stub/AIArtServiceStub$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/aiartmuseum/service/stub/AIArtServiceStub;Lcom/transsion/camera/app/common/ai/AIRequest;Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IRequestCallBack;[B)V

    const-string p0, "AIArtService"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->execute(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void

    :catchall_2a
    move-exception p0

    .line 47
    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw p0
.end method
