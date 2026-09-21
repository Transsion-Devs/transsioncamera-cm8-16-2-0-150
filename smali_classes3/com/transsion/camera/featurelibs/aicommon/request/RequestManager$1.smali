.class Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager$1;
.super Lcom/transsion/camera/utils/threads/WorkTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;->request(Lcom/transsion/camera/app/common/ai/AIRequest;)V
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

    .line 93
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager$1;->this$0:Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;

    iput-object p3, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager$1;->val$request:Lcom/transsion/camera/app/common/ai/AIRequest;

    invoke-direct {p0, p2}, Lcom/transsion/camera/utils/threads/WorkTask;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public doProcess()V
    .registers 2

    .line 96
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager$1;->this$0:Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;

    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager$1;->val$request:Lcom/transsion/camera/app/common/ai/AIRequest;

    invoke-static {v0, p0}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;->-$$Nest$mrequestImpl(Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;Lcom/transsion/camera/app/common/ai/AIRequest;)V

    return-void
.end method
