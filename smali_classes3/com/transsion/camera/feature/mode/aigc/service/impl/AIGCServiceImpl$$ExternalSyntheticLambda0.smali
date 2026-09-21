.class public final synthetic Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$ICallback;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;

.field public final synthetic f$1:Lcom/transsion/camera/app/common/ai/AIRequest;

.field public final synthetic f$2:Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IRequestCallBack;

.field public final synthetic f$3:Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IProgressCallBack;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;Lcom/transsion/camera/app/common/ai/AIRequest;Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IRequestCallBack;Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IProgressCallBack;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$$ExternalSyntheticLambda0;->f$1:Lcom/transsion/camera/app/common/ai/AIRequest;

    iput-object p3, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$$ExternalSyntheticLambda0;->f$2:Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IRequestCallBack;

    iput-object p4, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$$ExternalSyntheticLambda0;->f$3:Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IProgressCallBack;

    return-void
.end method


# virtual methods
.method public final onResult()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$$ExternalSyntheticLambda0;->f$1:Lcom/transsion/camera/app/common/ai/AIRequest;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$$ExternalSyntheticLambda0;->f$2:Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IRequestCallBack;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$$ExternalSyntheticLambda0;->f$3:Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IProgressCallBack;

    invoke-static {v0, v1, v2, p0}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->$r8$lambda$U5PB1zZyq99fTh1SGAMSnKkjJNw(Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;Lcom/transsion/camera/app/common/ai/AIRequest;Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IRequestCallBack;Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IProgressCallBack;)V

    return-void
.end method
