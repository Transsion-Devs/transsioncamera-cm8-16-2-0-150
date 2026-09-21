.class public final synthetic Lcom/transsion/camera/feature/mode/aiartmuseum/service/impl/AIArtServiceImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/feature/mode/aiartmuseum/service/impl/AIArtServiceImpl;

.field public final synthetic f$1:Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;

.field public final synthetic f$2:Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IRequestCallBack;

.field public final synthetic f$3:Lcom/transsion/camera/app/common/ai/AIRequest;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/feature/mode/aiartmuseum/service/impl/AIArtServiceImpl;Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IRequestCallBack;Lcom/transsion/camera/app/common/ai/AIRequest;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/service/impl/AIArtServiceImpl$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/camera/feature/mode/aiartmuseum/service/impl/AIArtServiceImpl;

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/service/impl/AIArtServiceImpl$$ExternalSyntheticLambda1;->f$1:Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;

    iput-object p3, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/service/impl/AIArtServiceImpl$$ExternalSyntheticLambda1;->f$2:Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IRequestCallBack;

    iput-object p4, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/service/impl/AIArtServiceImpl$$ExternalSyntheticLambda1;->f$3:Lcom/transsion/camera/app/common/ai/AIRequest;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/service/impl/AIArtServiceImpl$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/camera/feature/mode/aiartmuseum/service/impl/AIArtServiceImpl;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/service/impl/AIArtServiceImpl$$ExternalSyntheticLambda1;->f$1:Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/service/impl/AIArtServiceImpl$$ExternalSyntheticLambda1;->f$2:Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IRequestCallBack;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/service/impl/AIArtServiceImpl$$ExternalSyntheticLambda1;->f$3:Lcom/transsion/camera/app/common/ai/AIRequest;

    invoke-static {v0, v1, v2, p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/service/impl/AIArtServiceImpl;->$r8$lambda$OTmrF-_HxO2EOmmhOOK-fZVbCH0(Lcom/transsion/camera/feature/mode/aiartmuseum/service/impl/AIArtServiceImpl;Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IRequestCallBack;Lcom/transsion/camera/app/common/ai/AIRequest;)V

    return-void
.end method
