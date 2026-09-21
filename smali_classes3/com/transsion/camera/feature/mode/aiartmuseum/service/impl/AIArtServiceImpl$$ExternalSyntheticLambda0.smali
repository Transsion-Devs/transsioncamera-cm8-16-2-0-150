.class public final synthetic Lcom/transsion/camera/feature/mode/aiartmuseum/service/impl/AIArtServiceImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gallery20/sdk/ai_art/network/UpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IProgressCallBack;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IProgressCallBack;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/service/impl/AIArtServiceImpl$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IProgressCallBack;

    return-void
.end method


# virtual methods
.method public final onProgress(D)V
    .registers 3

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/service/impl/AIArtServiceImpl$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IProgressCallBack;

    invoke-static {p0, p1, p2}, Lcom/transsion/camera/feature/mode/aiartmuseum/service/impl/AIArtServiceImpl;->$r8$lambda$7EA7_KSZvAzaVcdO7L4HTW1VD-Y(Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IProgressCallBack;D)V

    return-void
.end method
