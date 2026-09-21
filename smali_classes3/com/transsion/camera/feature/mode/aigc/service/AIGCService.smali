.class public Lcom/transsion/camera/feature/mode/aigc/service/AIGCService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/featurelibs/aicommon/service/IAIService;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mDelegate:Lcom/transsion/camera/featurelibs/aicommon/service/IAIService;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 30
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AIGCService"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/aigc/service/AIGCService;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AIGCService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 37
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 39
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->aigcStubService()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 40
    new-instance v1, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceStub;

    invoke-direct {v1, v0}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceStub;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/aigc/service/AIGCService;->mDelegate:Lcom/transsion/camera/featurelibs/aicommon/service/IAIService;

    return-void

    .line 42
    :cond_1f
    new-instance v1, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;

    invoke-direct {v1, v0}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/aigc/service/AIGCService;->mDelegate:Lcom/transsion/camera/featurelibs/aicommon/service/IAIService;

    return-void
.end method


# virtual methods
.method public cancel(Lcom/transsion/camera/app/common/ai/AIRequest;)V
    .registers 5

    .line 56
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/service/AIGCService;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancel request@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 57
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/service/AIGCService;->mDelegate:Lcom/transsion/camera/featurelibs/aicommon/service/IAIService;

    invoke-interface {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/service/IAIService;->cancel(Lcom/transsion/camera/app/common/ai/AIRequest;)V

    return-void
.end method

.method public freeService()V
    .registers 3

    .line 62
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/service/AIGCService;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "freeService"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 63
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/service/AIGCService;->mDelegate:Lcom/transsion/camera/featurelibs/aicommon/service/IAIService;

    invoke-interface {p0}, Lcom/transsion/camera/featurelibs/aicommon/service/IAIService;->freeService()V

    return-void
.end method

.method public request(Lcom/transsion/camera/app/common/ai/AIRequest;Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IRequestCallBack;Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IProgressCallBack;)V
    .registers 7

    .line 50
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/service/AIGCService;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request request@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 51
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/service/AIGCService;->mDelegate:Lcom/transsion/camera/featurelibs/aicommon/service/IAIService;

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/camera/featurelibs/aicommon/service/IAIService;->request(Lcom/transsion/camera/app/common/ai/AIRequest;Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IRequestCallBack;Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IProgressCallBack;)V

    return-void
.end method
