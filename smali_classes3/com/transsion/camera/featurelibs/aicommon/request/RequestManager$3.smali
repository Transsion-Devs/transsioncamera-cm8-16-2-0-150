.class Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager$3;
.super Lcom/transsion/camera/utils/threads/WorkTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;->retry(Lcom/transsion/camera/app/common/ai/AIRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;

.field final synthetic val$request:Lcom/transsion/camera/app/common/ai/AIRequest;


# direct methods
.method constructor <init>(Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;Ljava/lang/String;Lcom/transsion/camera/app/common/ai/AIRequest;)V
    .registers 4

    .line 189
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager$3;->this$0:Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;

    iput-object p3, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager$3;->val$request:Lcom/transsion/camera/app/common/ai/AIRequest;

    invoke-direct {p0, p2}, Lcom/transsion/camera/utils/threads/WorkTask;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public doProcess()V
    .registers 4

    .line 192
    invoke-static {}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "retryExecuted request@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager$3;->val$request:Lcom/transsion/camera/app/common/ai/AIRequest;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager$3;->val$request:Lcom/transsion/camera/app/common/ai/AIRequest;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ai/AIRequest;->getRequestJpegPath()Ljava/lang/String;

    move-result-object v0

    .line 195
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7c

    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager$3;->val$request:Lcom/transsion/camera/app/common/ai/AIRequest;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ai/AIRequest;->getEffectValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_37

    goto :goto_7c

    .line 201
    :cond_37
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager$3;->val$request:Lcom/transsion/camera/app/common/ai/AIRequest;

    invoke-static {v0}, Lcom/transsion/camera/featurelibs/aicommon/helper/RequestCacheHelper;->getRequestJpeg(Lcom/transsion/camera/app/common/ai/AIRequest;)[B

    move-result-object v0

    if-nez v0, :cond_65

    .line 203
    invoke-static {}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "retryExecuted requestJpeg is null, request@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager$3;->val$request:Lcom/transsion/camera/app/common/ai/AIRequest;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager$3;->this$0:Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;

    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager$3;->val$request:Lcom/transsion/camera/app/common/ai/AIRequest;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;->remove(Lcom/transsion/camera/app/common/ai/AIRequest;)V

    return-void

    .line 208
    :cond_65
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager$3;->val$request:Lcom/transsion/camera/app/common/ai/AIRequest;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ai/AIRequest;->setProgress(I)V

    .line 209
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager$3;->val$request:Lcom/transsion/camera/app/common/ai/AIRequest;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/ai/AIRequest;->setRequestTime(J)V

    .line 211
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager$3;->this$0:Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;

    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager$3;->val$request:Lcom/transsion/camera/app/common/ai/AIRequest;

    invoke-static {v0, p0}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;->-$$Nest$mrequestImpl(Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;Lcom/transsion/camera/app/common/ai/AIRequest;)V

    return-void

    .line 196
    :cond_7c
    :goto_7c
    invoke-static {}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "retryExecuted invalidRequest@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager$3;->val$request:Lcom/transsion/camera/app/common/ai/AIRequest;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager$3;->this$0:Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;

    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager$3;->val$request:Lcom/transsion/camera/app/common/ai/AIRequest;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;->remove(Lcom/transsion/camera/app/common/ai/AIRequest;)V

    return-void
.end method
