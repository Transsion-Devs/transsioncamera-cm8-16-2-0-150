.class public Lcom/transsion/camera/feature/mode/aiartmuseum/service/AIArtService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/featurelibs/aicommon/service/IAIService;


# static fields
.field private static final MOCK_STUB_SERVICE:Z = false

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mDelegate:Lcom/transsion/camera/featurelibs/aicommon/service/IAIService;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 25
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AIArtService"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/service/AIArtService;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {}, Lcom/transsion/camera/feature/mode/aiartmuseum/service/impl/AIArtServiceImpl;->getInstance()Lcom/transsion/camera/feature/mode/aiartmuseum/service/impl/AIArtServiceImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/service/AIArtService;->mDelegate:Lcom/transsion/camera/featurelibs/aicommon/service/IAIService;

    return-void
.end method


# virtual methods
.method public cancel(Lcom/transsion/camera/app/common/ai/AIRequest;)V
    .registers 5

    .line 48
    sget-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/service/AIArtService;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancel request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 49
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/service/AIArtService;->mDelegate:Lcom/transsion/camera/featurelibs/aicommon/service/IAIService;

    invoke-interface {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/service/IAIService;->cancel(Lcom/transsion/camera/app/common/ai/AIRequest;)V

    return-void
.end method

.method public freeService()V
    .registers 3

    .line 54
    sget-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/service/AIArtService;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "freeService"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 55
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/service/AIArtService;->mDelegate:Lcom/transsion/camera/featurelibs/aicommon/service/IAIService;

    invoke-interface {p0}, Lcom/transsion/camera/featurelibs/aicommon/service/IAIService;->freeService()V

    return-void
.end method

.method public request(Lcom/transsion/camera/app/common/ai/AIRequest;Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IRequestCallBack;Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IProgressCallBack;)V
    .registers 7

    .line 42
    sget-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/service/AIArtService;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/service/AIArtService;->mDelegate:Lcom/transsion/camera/featurelibs/aicommon/service/IAIService;

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/camera/featurelibs/aicommon/service/IAIService;->request(Lcom/transsion/camera/app/common/ai/AIRequest;Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IRequestCallBack;Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IProgressCallBack;)V

    return-void
.end method
