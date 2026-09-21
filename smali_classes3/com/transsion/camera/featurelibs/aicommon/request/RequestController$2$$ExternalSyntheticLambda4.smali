.class public final synthetic Lcom/transsion/camera/featurelibs/aicommon/request/RequestController$2$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/common/ai/AIRequest;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/common/ai/AIRequest;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController$2$$ExternalSyntheticLambda4;->f$0:Lcom/transsion/camera/app/common/ai/AIRequest;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController$2$$ExternalSyntheticLambda4;->f$0:Lcom/transsion/camera/app/common/ai/AIRequest;

    check-cast p1, Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;

    invoke-static {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController$2;->$r8$lambda$8eN_t4RtaqdntXpDf0liSR4Ncts(Lcom/transsion/camera/app/common/ai/AIRequest;Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;)V

    return-void
.end method
