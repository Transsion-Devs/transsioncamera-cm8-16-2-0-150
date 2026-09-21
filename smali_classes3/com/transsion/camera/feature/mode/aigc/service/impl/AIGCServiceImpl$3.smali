.class Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->requestLocked(Lcom/transsion/camera/app/common/ai/AIRequest;Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IRequestCallBack;Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IProgressCallBack;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;

.field final synthetic val$requestCallBack:Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IRequestCallBack;


# direct methods
.method public static synthetic $r8$lambda$2IX_T19IZrmwXWgdJ7knGm3Cp7w(Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$3;Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$RequestHolder;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$3;->lambda$onResponse$0(Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$RequestHolder;)V

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IRequestCallBack;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 495
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$3;->this$0:Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$3;->val$requestCallBack:Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IRequestCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onResponse$0(Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$RequestHolder;)V
    .registers 2

    .line 500
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$3;->this$0:Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->-$$Nest$fgetmRequestMap(Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$RequestHolder;->-$$Nest$fgetmRequestId(Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$RequestHolder;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/transsion/camera/app/common/ai/AIRequest;Lcom/transsion/camera/app/common/ai/AIResponse;)V
    .registers 6

    .line 498
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$3;->this$0:Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->-$$Nest$fgetmLockGuard(Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 499
    :try_start_7
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$3;->this$0:Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->-$$Nest$fgetmRequestHolderMap(Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$RequestHolder;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$3$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$3$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$3;)V

    .line 500
    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 501
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_26

    .line 503
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$3;->val$requestCallBack:Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IRequestCallBack;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IRequestCallBack;->onResponse(Lcom/transsion/camera/app/common/ai/AIRequest;Lcom/transsion/camera/app/common/ai/AIResponse;)V

    return-void

    :catchall_26
    move-exception p0

    .line 501
    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw p0
.end method
