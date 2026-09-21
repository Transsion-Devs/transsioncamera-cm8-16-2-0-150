.class public Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IProgressCallBack;
.implements Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IRequestCallBack;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private volatile mCanceled:Z

.field volatile mRequest:Lcom/transsion/camera/app/common/ai/AIRequest;

.field private mRequestCallback:Lcom/transsion/camera/featurelibs/aicommon/request/IRequestCallback;

.field private final mRequestManager:Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;

.field private volatile mRequested:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 29
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "RequestCall"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/ai/AIRequest;Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;)V
    .registers 3

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;->mRequest:Lcom/transsion/camera/app/common/ai/AIRequest;

    .line 43
    iput-object p2, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;->mRequestManager:Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 4

    .line 71
    sget-object v0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancel RequestCall@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 72
    monitor-enter p0

    const/4 v1, 0x1

    .line 73
    :try_start_1c
    iput-boolean v1, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;->mCanceled:Z

    .line 75
    iget-boolean v1, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;->mRequested:Z

    if-nez v1, :cond_49

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancel RequestCall@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not started"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;->mRequestCallback:Lcom/transsion/camera/featurelibs/aicommon/request/IRequestCallback;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/transsion/camera/featurelibs/aicommon/request/IRequestCallback;->onResult(Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;[B)V

    .line 78
    monitor-exit p0

    return-void

    :catchall_47
    move-exception v0

    goto :goto_54

    .line 81
    :cond_49
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;->mRequestManager:Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;

    iget-object v0, v0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;->mAIService:Lcom/transsion/camera/featurelibs/aicommon/service/IAIService;

    iget-object v1, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;->mRequest:Lcom/transsion/camera/app/common/ai/AIRequest;

    invoke-interface {v0, v1}, Lcom/transsion/camera/featurelibs/aicommon/service/IAIService;->cancel(Lcom/transsion/camera/app/common/ai/AIRequest;)V

    .line 82
    monitor-exit p0

    return-void

    :goto_54
    monitor-exit p0
    :try_end_55
    .catchall {:try_start_1c .. :try_end_55} :catchall_47

    throw v0
.end method

.method public canceled()Z
    .registers 2

    .line 86
    monitor-enter p0

    .line 87
    :try_start_1
    iget-boolean v0, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;->mCanceled:Z

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    .line 88
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public executeOn(Ljava/util/concurrent/ExecutorService;)Z
    .registers 5

    .line 57
    sget-object v0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "executeOn RequestCall@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Request@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;->mRequest:Lcom/transsion/camera/app/common/ai/AIRequest;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 61
    :try_start_28
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2b} :catch_2d

    const/4 p0, 0x1

    return p0

    .line 64
    :catch_2d
    iget-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;->mRequestCallback:Lcom/transsion/camera/featurelibs/aicommon/request/IRequestCallback;

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Lcom/transsion/camera/featurelibs/aicommon/request/IRequestCallback;->onResult(Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;[B)V

    const/4 p0, 0x0

    return p0
.end method

.method public onProgress(I)V
    .registers 5

    .line 109
    sget-object v0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProgress "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " RequestCall@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Request@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;->mRequest:Lcom/transsion/camera/app/common/ai/AIRequest;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 109
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;->mRequest:Lcom/transsion/camera/app/common/ai/AIRequest;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/ai/AIRequest;->setProgress(I)V

    .line 112
    iget-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;->mRequestCallback:Lcom/transsion/camera/featurelibs/aicommon/request/IRequestCallback;

    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;->mRequest:Lcom/transsion/camera/app/common/ai/AIRequest;

    invoke-interface {p1, p0}, Lcom/transsion/camera/featurelibs/aicommon/request/IRequestCallback;->onProgress(Lcom/transsion/camera/app/common/ai/AIRequest;)V

    return-void
.end method

.method public onResponse(Lcom/transsion/camera/app/common/ai/AIRequest;Lcom/transsion/camera/app/common/ai/AIResponse;)V
    .registers 6

    .line 117
    sget-object v0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResponse response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " RequestCall@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Request@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;->mRequest:Lcom/transsion/camera/app/common/ai/AIRequest;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 117
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p2, :cond_3a

    .line 121
    invoke-virtual {p2}, Lcom/transsion/camera/app/common/ai/AIResponse;->getStatusCode()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ai/AIRequest;->setResponseCode(I)V

    goto :goto_3e

    :cond_3a
    const/4 v0, -0x1

    .line 123
    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ai/AIRequest;->setResponseCode(I)V

    .line 126
    :goto_3e
    iget-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;->mRequestCallback:Lcom/transsion/camera/featurelibs/aicommon/request/IRequestCallback;

    if-eqz p2, :cond_47

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/ai/AIResponse;->getJpeg()[B

    move-result-object p2

    goto :goto_48

    :cond_47
    const/4 p2, 0x0

    :goto_48
    invoke-interface {p1, p0, p2}, Lcom/transsion/camera/featurelibs/aicommon/request/IRequestCallback;->onResult(Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;[B)V

    return-void
.end method

.method public replaceToReloadedRequest(Lcom/transsion/camera/app/common/ai/AIRequest;)V
    .registers 5

    .line 51
    sget-object v0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "replaceToReloadedRequest oldRequest@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;->mRequest:Lcom/transsion/camera/app/common/ai/AIRequest;

    .line 52
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -> newRequest@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 51
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 53
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;->mRequest:Lcom/transsion/camera/app/common/ai/AIRequest;

    return-void
.end method

.method public run()V
    .registers 4

    .line 93
    sget-object v0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "executingRequest RequestCall@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 95
    monitor-enter p0

    .line 96
    :try_start_1b
    iget-boolean v1, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;->mCanceled:Z

    if-eqz v1, :cond_40

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancel RequestCall@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is canceled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 98
    monitor-exit p0

    return-void

    :catchall_3e
    move-exception v0

    goto :goto_4e

    .line 101
    :cond_40
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;->mRequestManager:Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;

    iget-object v0, v0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;->mAIService:Lcom/transsion/camera/featurelibs/aicommon/service/IAIService;

    iget-object v1, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;->mRequest:Lcom/transsion/camera/app/common/ai/AIRequest;

    invoke-interface {v0, v1, p0, p0}, Lcom/transsion/camera/featurelibs/aicommon/service/IAIService;->request(Lcom/transsion/camera/app/common/ai/AIRequest;Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IRequestCallBack;Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IProgressCallBack;)V

    const/4 v0, 0x1

    .line 103
    iput-boolean v0, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;->mRequested:Z

    .line 104
    monitor-exit p0

    return-void

    :goto_4e
    monitor-exit p0
    :try_end_4f
    .catchall {:try_start_1b .. :try_end_4f} :catchall_3e

    throw v0
.end method

.method public setRequestCallback(Lcom/transsion/camera/featurelibs/aicommon/request/IRequestCallback;)V
    .registers 2

    .line 47
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;->mRequestCallback:Lcom/transsion/camera/featurelibs/aicommon/request/IRequestCallback;

    return-void
.end method
