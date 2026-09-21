.class Lcom/transsion/camera/feature/mode/aigc/service/impl/CallBackWrapper$1;
.super Lcom/transsion/camera/utils/threads/WorkTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/aigc/service/impl/CallBackWrapper;->onProgress(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/aigc/service/impl/CallBackWrapper;

.field final synthetic val$progress:I


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/aigc/service/impl/CallBackWrapper;Ljava/lang/String;I)V
    .registers 4

    .line 60
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/CallBackWrapper$1;->this$0:Lcom/transsion/camera/feature/mode/aigc/service/impl/CallBackWrapper;

    iput p3, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/CallBackWrapper$1;->val$progress:I

    invoke-direct {p0, p2}, Lcom/transsion/camera/utils/threads/WorkTask;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public doProcess()V
    .registers 4

    .line 63
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/CallBackWrapper$1;->this$0:Lcom/transsion/camera/feature/mode/aigc/service/impl/CallBackWrapper;

    iget-object v0, v0, Lcom/transsion/camera/feature/mode/aigc/service/impl/CallBackWrapper;->mProgressCallBack:Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IProgressCallBack;

    if-eqz v0, :cond_b

    .line 64
    iget v1, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/CallBackWrapper$1;->val$progress:I

    invoke-interface {v0, v1}, Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IProgressCallBack;->onProgress(I)V

    .line 67
    :cond_b
    iget v0, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/CallBackWrapper$1;->val$progress:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_39

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/CallBackWrapper$1;->this$0:Lcom/transsion/camera/feature/mode/aigc/service/impl/CallBackWrapper;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/aigc/service/impl/CallBackWrapper;->-$$Nest$fgetmResponded(Lcom/transsion/camera/feature/mode/aigc/service/impl/CallBackWrapper;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 68
    invoke-static {}, Lcom/transsion/camera/feature/mode/aigc/service/impl/CallBackWrapper;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onProgressResponse"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/CallBackWrapper$1;->this$0:Lcom/transsion/camera/feature/mode/aigc/service/impl/CallBackWrapper;

    iget-object v1, v0, Lcom/transsion/camera/feature/mode/aigc/service/impl/CallBackWrapper;->mRequestCallBack:Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IRequestCallBack;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/aigc/service/impl/CallBackWrapper;->-$$Nest$fgetmRequest(Lcom/transsion/camera/feature/mode/aigc/service/impl/CallBackWrapper;)Lcom/transsion/camera/app/common/ai/AIRequest;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/CallBackWrapper$1;->this$0:Lcom/transsion/camera/feature/mode/aigc/service/impl/CallBackWrapper;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/aigc/service/impl/CallBackWrapper;->-$$Nest$fgetmResponse(Lcom/transsion/camera/feature/mode/aigc/service/impl/CallBackWrapper;)Lcom/transsion/camera/app/common/ai/AIResponse;

    move-result-object p0

    invoke-interface {v1, v0, p0}, Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IRequestCallBack;->onResponse(Lcom/transsion/camera/app/common/ai/AIRequest;Lcom/transsion/camera/app/common/ai/AIResponse;)V

    :cond_39
    return-void
.end method
