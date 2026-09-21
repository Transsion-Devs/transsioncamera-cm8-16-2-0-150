.class Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/featurelibs/aicommon/request/IRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;->requestImpl(Lcom/transsion/camera/app/common/ai/AIRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;

.field final synthetic val$request:Lcom/transsion/camera/app/common/ai/AIRequest;

.field final synthetic val$requestCall:Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;


# direct methods
.method public static synthetic $r8$lambda$yUCcEx7rLJ6fM9Vbq78_JThDHzg(Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager$2;Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;Lcom/transsion/camera/app/common/ai/AIRequest;Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;Landroid/net/Uri;Ljava/lang/String;[B)V
    .registers 7

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager$2;->lambda$onResult$0(Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;Lcom/transsion/camera/app/common/ai/AIRequest;Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;Landroid/net/Uri;Ljava/lang/String;[B)V

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;Lcom/transsion/camera/app/common/ai/AIRequest;)V
    .registers 4

    .line 103
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager$2;->this$0:Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;

    iput-object p2, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager$2;->val$requestCall:Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;

    iput-object p3, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager$2;->val$request:Lcom/transsion/camera/app/common/ai/AIRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onResult$0(Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;Lcom/transsion/camera/app/common/ai/AIRequest;Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;Landroid/net/Uri;Ljava/lang/String;[B)V
    .registers 10

    if-nez p4, :cond_c

    .line 131
    invoke-static {}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string p2, "saveResult failed uri is null"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_34

    .line 133
    :cond_c
    iget-object v0, p1, Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;->mRequest:Lcom/transsion/camera/app/common/ai/AIRequest;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/ai/AIRequest;->setResponseTime(J)V

    .line 134
    iget-object v0, p1, Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;->mRequest:Lcom/transsion/camera/app/common/ai/AIRequest;

    invoke-virtual {v0, p5}, Lcom/transsion/camera/app/common/ai/AIRequest;->setResponseJpegPath(Ljava/lang/String;)V

    .line 135
    iget-object p5, p1, Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;->mRequest:Lcom/transsion/camera/app/common/ai/AIRequest;

    invoke-virtual {p4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Lcom/transsion/camera/app/common/ai/AIRequest;->setResponseJpegUri(Ljava/lang/String;)V

    .line 137
    iget-object p5, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager$2;->this$0:Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;

    invoke-static {p5, p4, p6}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;->-$$Nest$mupdateThumbnail(Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;Landroid/net/Uri;[B)V

    .line 139
    iget-object p1, p1, Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;->mRequest:Lcom/transsion/camera/app/common/ai/AIRequest;

    invoke-static {p1}, Lcom/transsion/camera/featurelibs/aicommon/helper/RequestCacheHelper;->remove(Lcom/transsion/camera/app/common/ai/AIRequest;)V

    .line 141
    iget-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager$2;->this$0:Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;

    iget-object p1, p1, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;->mAIManager:Lcom/transsion/camera/app/common/ai/IAIManager;

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/ai/IAIManager;->captureSuccess(Lcom/transsion/camera/app/common/ai/AIRequest;)V

    .line 143
    :goto_34
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager$2;->this$0:Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;

    invoke-static {p0}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;->-$$Nest$fgetmRequestController(Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;)Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;->finish(Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;)V

    return-void
.end method


# virtual methods
.method public onProgress(Lcom/transsion/camera/app/common/ai/AIRequest;)V
    .registers 2

    .line 149
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager$2;->this$0:Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;

    invoke-static {p0}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;->-$$Nest$fgetmRequestController(Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;)Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;->updateProgress(Lcom/transsion/camera/app/common/ai/AIRequest;)V

    return-void
.end method

.method public onResult(Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;[B)V
    .registers 9

    .line 106
    invoke-static {}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResult request@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;->mRequest:Lcom/transsion/camera/app/common/ai/AIRequest;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez p2, :cond_35

    .line 109
    invoke-static {}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string p2, "onResult failed"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 110
    iget-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager$2;->this$0:Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;

    invoke-static {p1}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;->-$$Nest$fgetmRequestController(Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;)Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager$2;->val$requestCall:Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;->finish(Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;)V

    return-void

    .line 114
    :cond_35
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager$2;->val$request:Lcom/transsion/camera/app/common/ai/AIRequest;

    invoke-static {v0}, Lcom/transsion/camera/featurelibs/aicommon/helper/RequestCacheHelper;->getRequestJpeg(Lcom/transsion/camera/app/common/ai/AIRequest;)[B

    move-result-object v0

    if-nez v0, :cond_52

    .line 116
    invoke-static {}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string p2, "getRequestJpeg failed"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 117
    iget-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager$2;->this$0:Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;

    invoke-static {p1}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;->-$$Nest$fgetmRequestController(Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;)Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager$2;->val$requestCall:Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;->finish(Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;)V

    return-void

    .line 121
    :cond_52
    iget-object v1, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager$2;->this$0:Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;

    iget-object v1, v1, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;->mAIManager:Lcom/transsion/camera/app/common/ai/IAIManager;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/ai/IAIManager;->getFeature()Lcom/transsion/camera/app/common/ai/IAIFeature;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/featurelibs/aicommon/watermark/WatermarkInfo;

    iget-object v3, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager$2;->val$request:Lcom/transsion/camera/app/common/ai/AIRequest;

    .line 122
    invoke-virtual {v3}, Lcom/transsion/camera/app/common/ai/AIRequest;->getWatermark()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager$2;->this$0:Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;

    iget-object v4, v4, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;->mAIManager:Lcom/transsion/camera/app/common/ai/IAIManager;

    invoke-interface {v4}, Lcom/transsion/camera/app/common/ai/IAIManager;->getFeature()Lcom/transsion/camera/app/common/ai/IAIFeature;

    move-result-object v4

    iget-object v5, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager$2;->val$request:Lcom/transsion/camera/app/common/ai/AIRequest;

    invoke-virtual {v5}, Lcom/transsion/camera/app/common/ai/AIRequest;->getEffectValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/transsion/camera/app/common/ai/IAIFeature;->getWatermarkDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0}, Lcom/transsion/camera/featurelibs/aicommon/watermark/WatermarkInfo;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 121
    invoke-static {v1, p2, v2}, Lcom/transsion/camera/featurelibs/aicommon/watermark/WatermarkService;->addWatermark(Lcom/transsion/camera/app/common/ai/IAIFeature;[BLcom/transsion/camera/featurelibs/aicommon/watermark/WatermarkInfo;)[B

    move-result-object p2

    if-nez p2, :cond_92

    .line 124
    invoke-static {}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string p2, "addWatermark failed"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 125
    iget-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager$2;->this$0:Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;

    invoke-static {p1}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;->-$$Nest$fgetmRequestController(Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;)Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager$2;->val$requestCall:Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;->finish(Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;)V

    return-void

    .line 129
    :cond_92
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager$2;->this$0:Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;

    invoke-static {v0}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;->-$$Nest$fgetmAIMediaSaver(Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;)Lcom/transsion/camera/featurelibs/aicommon/saver/AIMediaSaver;

    move-result-object v0

    iget-object v1, p1, Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;->mRequest:Lcom/transsion/camera/app/common/ai/AIRequest;

    iget-object v2, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager$2;->val$request:Lcom/transsion/camera/app/common/ai/AIRequest;

    iget-object v3, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager$2;->val$requestCall:Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;

    new-instance v4, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager$2$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, p1, v2, v3}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager$2$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager$2;Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;Lcom/transsion/camera/app/common/ai/AIRequest;Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;)V

    invoke-virtual {v0, v1, p2, v4}, Lcom/transsion/camera/featurelibs/aicommon/saver/AIMediaSaver;->saveResult(Lcom/transsion/camera/app/common/ai/AIRequest;[BLcom/transsion/camera/featurelibs/aicommon/saver/AIMediaSaver$ISaverListener;)V

    return-void
.end method
