.class Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$1$1;
.super Lcom/transsion/camera/utils/threads/WorkTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$1;->onComponentResult(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$1;

.field final synthetic val$generateData:Lcom/transsion/aicore/cv/ipc/data/GenerateData;

.field final synthetic val$requestHolder:Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$RequestHolder;

.field final synthetic val$requestId:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$1;Ljava/lang/String;Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$RequestHolder;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/aicore/cv/ipc/data/GenerateData;)V
    .registers 7

    .line 200
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$1$1;->this$1:Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$1;

    iput-object p3, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$1$1;->val$requestHolder:Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$RequestHolder;

    iput-object p4, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$1$1;->val$url:Ljava/lang/String;

    iput-object p5, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$1$1;->val$requestId:Ljava/lang/String;

    iput-object p6, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$1$1;->val$generateData:Lcom/transsion/aicore/cv/ipc/data/GenerateData;

    invoke-direct {p0, p2}, Lcom/transsion/camera/utils/threads/WorkTask;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public doProcess()V
    .registers 9

    .line 203
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$1$1;->val$requestHolder:Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$RequestHolder;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$RequestHolder;->-$$Nest$fgetmCanceled(Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$RequestHolder;)Z

    move-result v0

    const-string v1, "generate downloadResult mCanceled!"

    if-eqz v0, :cond_12

    .line 204
    invoke-static {}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 208
    :cond_12
    invoke-static {}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v2, "generate downloadResult start"

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 209
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 210
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$1$1;->this$1:Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$1;

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$1$1;->val$url:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$1;->-$$Nest$mdownloadResult(Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$1;Ljava/lang/String;)[B

    move-result-object v0

    .line 211
    invoke-static {}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "generate downloadResult end: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", jpeg: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_46

    .line 212
    array-length v2, v0

    goto :goto_47

    :cond_46
    const/4 v2, 0x0

    :goto_47
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 211
    invoke-static {v4, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 214
    invoke-static {}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "request requestId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$1$1;->val$requestId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", elapseTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$1$1;->val$requestHolder:Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$RequestHolder;

    invoke-static {v6}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$RequestHolder;->-$$Nest$fgetmStartTime(Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$RequestHolder;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 214
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 217
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$1$1;->val$requestHolder:Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$RequestHolder;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$RequestHolder;->-$$Nest$fgetmCanceled(Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$RequestHolder;)Z

    move-result v2

    if-eqz v2, :cond_8e

    .line 218
    invoke-static {}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 222
    :cond_8e
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$1$1;->val$requestHolder:Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$RequestHolder;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$RequestHolder;->-$$Nest$fgetmCallBackWrapper(Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$RequestHolder;)Lcom/transsion/camera/feature/mode/aigc/service/impl/CallBackWrapper;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$1$1;->val$requestHolder:Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$RequestHolder;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$RequestHolder;->-$$Nest$fgetmRequest(Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$RequestHolder;)Lcom/transsion/camera/app/common/ai/AIRequest;

    move-result-object v2

    new-instance v3, Lcom/transsion/camera/app/common/ai/AIResponse;

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$1$1;->val$generateData:Lcom/transsion/aicore/cv/ipc/data/GenerateData;

    .line 223
    invoke-virtual {v4}, Lcom/transsion/aicore/cv/ipc/data/GenerateData;->getCode()I

    move-result v4

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$1$1;->val$generateData:Lcom/transsion/aicore/cv/ipc/data/GenerateData;

    invoke-virtual {p0}, Lcom/transsion/aicore/cv/ipc/data/GenerateData;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, v4, p0, v0}, Lcom/transsion/camera/app/common/ai/AIResponse;-><init>(ILjava/lang/String;[B)V

    .line 222
    invoke-virtual {v1, v2, v3}, Lcom/transsion/camera/feature/mode/aigc/service/impl/CallBackWrapper;->onResponse(Lcom/transsion/camera/app/common/ai/AIRequest;Lcom/transsion/camera/app/common/ai/AIResponse;)V

    return-void
.end method
