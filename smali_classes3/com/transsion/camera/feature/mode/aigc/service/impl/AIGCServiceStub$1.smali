.class Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceStub$1;
.super Lcom/transsion/camera/utils/threads/WorkTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceStub;->request(Lcom/transsion/camera/app/common/ai/AIRequest;Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IRequestCallBack;Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IProgressCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceStub;

.field final synthetic val$request:Lcom/transsion/camera/app/common/ai/AIRequest;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceStub;Ljava/lang/String;Lcom/transsion/camera/app/common/ai/AIRequest;)V
    .registers 4

    .line 56
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceStub$1;->this$0:Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceStub;

    iput-object p3, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceStub$1;->val$request:Lcom/transsion/camera/app/common/ai/AIRequest;

    invoke-direct {p0, p2}, Lcom/transsion/camera/utils/threads/WorkTask;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public doProcess()V
    .registers 6

    .line 59
    invoke-static {}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceStub;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "requestProcess"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceStub$1;->this$0:Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceStub;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceStub;->-$$Nest$fgetmCallBackWrapperMap(Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceStub;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceStub$1;->val$request:Lcom/transsion/camera/app/common/ai/AIRequest;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/aigc/service/impl/CallBackWrapper;

    if-eqz v0, :cond_2b

    .line 63
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceStub$1;->val$request:Lcom/transsion/camera/app/common/ai/AIRequest;

    new-instance v1, Lcom/transsion/camera/app/common/ai/AIResponse;

    const-string v2, "success"

    .line 64
    invoke-static {p0}, Lcom/transsion/camera/featurelibs/aicommon/helper/RequestCacheHelper;->getRequestJpeg(Lcom/transsion/camera/app/common/ai/AIRequest;)[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v2, v3}, Lcom/transsion/camera/app/common/ai/AIResponse;-><init>(ILjava/lang/String;[B)V

    .line 63
    invoke-virtual {v0, p0, v1}, Lcom/transsion/camera/feature/mode/aigc/service/impl/CallBackWrapper;->onResponse(Lcom/transsion/camera/app/common/ai/AIRequest;Lcom/transsion/camera/app/common/ai/AIResponse;)V

    return-void

    .line 68
    :cond_2b
    invoke-static {}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceStub;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestProcess canceled, request@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceStub$1;->val$request:Lcom/transsion/camera/app/common/ai/AIRequest;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
