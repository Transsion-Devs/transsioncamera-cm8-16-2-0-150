.class Lcom/transsion/camera/feature/mode/aigc/service/impl/CallBackWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IProgressCallBack;
.implements Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IRequestCallBack;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mAIProgress:Lcom/transsion/camera/featurelibs/aicommon/progress/IAIProgress;

.field final mProgressCallBack:Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IProgressCallBack;

.field private mRequest:Lcom/transsion/camera/app/common/ai/AIRequest;

.field final mRequestCallBack:Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IRequestCallBack;

.field private final mResponded:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mResponse:Lcom/transsion/camera/app/common/ai/AIResponse;


# direct methods
.method static bridge synthetic -$$Nest$fgetmRequest(Lcom/transsion/camera/feature/mode/aigc/service/impl/CallBackWrapper;)Lcom/transsion/camera/app/common/ai/AIRequest;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/CallBackWrapper;->mRequest:Lcom/transsion/camera/app/common/ai/AIRequest;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmResponded(Lcom/transsion/camera/feature/mode/aigc/service/impl/CallBackWrapper;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/CallBackWrapper;->mResponded:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmResponse(Lcom/transsion/camera/feature/mode/aigc/service/impl/CallBackWrapper;)Lcom/transsion/camera/app/common/ai/AIResponse;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/CallBackWrapper;->mResponse:Lcom/transsion/camera/app/common/ai/AIResponse;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/service/impl/CallBackWrapper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 34
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "CallBackWrapper"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/aigc/service/impl/CallBackWrapper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Landroid/os/Looper;Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IProgressCallBack;Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IRequestCallBack;)V
    .registers 6

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/CallBackWrapper;->mResponded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 48
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/CallBackWrapper;->mProgressCallBack:Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IProgressCallBack;

    .line 49
    iput-object p3, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/CallBackWrapper;->mRequestCallBack:Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IRequestCallBack;

    .line 51
    new-instance p2, Lcom/transsion/camera/featurelibs/aicommon/progress/AIProgress;

    invoke-direct {p2, p1}, Lcom/transsion/camera/featurelibs/aicommon/progress/AIProgress;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/CallBackWrapper;->mAIProgress:Lcom/transsion/camera/featurelibs/aicommon/progress/IAIProgress;

    .line 52
    new-instance p1, Lcom/transsion/camera/feature/mode/aigc/service/impl/CallBackWrapper$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/aigc/service/impl/CallBackWrapper$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/aigc/service/impl/CallBackWrapper;)V

    invoke-interface {p2, p1}, Lcom/transsion/camera/featurelibs/aicommon/progress/IAIProgress;->setProgressListener(Lcom/transsion/camera/featurelibs/aicommon/progress/IAIProgress$IProgressListener;)V

    .line 53
    invoke-interface {p2}, Lcom/transsion/camera/featurelibs/aicommon/progress/IAIProgress;->startProgress()V

    return-void
.end method


# virtual methods
.method public cancel(Lcom/transsion/camera/app/common/ai/AIRequest;)V
    .registers 5

    .line 92
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/service/impl/CallBackWrapper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancel mRequest@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mResponded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/CallBackWrapper;->mResponded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/CallBackWrapper;->mResponded:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 94
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/CallBackWrapper;->mAIProgress:Lcom/transsion/camera/featurelibs/aicommon/progress/IAIProgress;

    invoke-interface {v0}, Lcom/transsion/camera/featurelibs/aicommon/progress/IAIProgress;->terminateProgress()V

    .line 95
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/CallBackWrapper;->mRequestCallBack:Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IRequestCallBack;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IRequestCallBack;->onResponse(Lcom/transsion/camera/app/common/ai/AIRequest;Lcom/transsion/camera/app/common/ai/AIResponse;)V

    :cond_39
    return-void
.end method

.method public onProgress(I)V
    .registers 5

    .line 58
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/service/impl/CallBackWrapper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProgress progress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 60
    invoke-static {}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->getInstance()Lcom/transsion/camera/utils/threads/WorkThreadPools;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/feature/mode/aigc/service/impl/CallBackWrapper$1;

    const-string v2, "AIGCProgress"

    invoke-direct {v1, p0, v2, p1}, Lcom/transsion/camera/feature/mode/aigc/service/impl/CallBackWrapper$1;-><init>(Lcom/transsion/camera/feature/mode/aigc/service/impl/CallBackWrapper;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->execute(Lcom/transsion/camera/utils/threads/WorkTask;)V

    return-void
.end method

.method public onResponse(Lcom/transsion/camera/app/common/ai/AIRequest;Lcom/transsion/camera/app/common/ai/AIResponse;)V
    .registers 6

    .line 77
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/service/impl/CallBackWrapper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResponse request@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p2, :cond_2a

    .line 79
    invoke-virtual {p2}, Lcom/transsion/camera/app/common/ai/AIResponse;->getJpeg()[B

    move-result-object v0

    if-nez v0, :cond_3f

    :cond_2a
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/CallBackWrapper;->mResponded:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 80
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 81
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/CallBackWrapper;->mAIProgress:Lcom/transsion/camera/featurelibs/aicommon/progress/IAIProgress;

    invoke-interface {v0}, Lcom/transsion/camera/featurelibs/aicommon/progress/IAIProgress;->terminateProgress()V

    .line 82
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/CallBackWrapper;->mRequestCallBack:Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IRequestCallBack;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IRequestCallBack;->onResponse(Lcom/transsion/camera/app/common/ai/AIRequest;Lcom/transsion/camera/app/common/ai/AIResponse;)V

    return-void

    .line 86
    :cond_3f
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/CallBackWrapper;->mRequest:Lcom/transsion/camera/app/common/ai/AIRequest;

    .line 87
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/CallBackWrapper;->mResponse:Lcom/transsion/camera/app/common/ai/AIResponse;

    .line 88
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/CallBackWrapper;->mAIProgress:Lcom/transsion/camera/featurelibs/aicommon/progress/IAIProgress;

    invoke-interface {p0}, Lcom/transsion/camera/featurelibs/aicommon/progress/IAIProgress;->finishProgress()V

    return-void
.end method
