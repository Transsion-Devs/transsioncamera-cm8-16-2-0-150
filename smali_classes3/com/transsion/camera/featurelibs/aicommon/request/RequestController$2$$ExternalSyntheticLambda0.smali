.class public final synthetic Lcom/transsion/camera/featurelibs/aicommon/request/RequestController$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/featurelibs/aicommon/request/RequestController$2;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/featurelibs/aicommon/request/RequestController$2;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController$2$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/featurelibs/aicommon/request/RequestController$2;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController$2$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/featurelibs/aicommon/request/RequestController$2;

    check-cast p1, Lcom/transsion/camera/app/common/ai/AIRequest;

    invoke-static {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController$2;->$r8$lambda$xIjYxFX4tIxiUTK2miWrq6ummy8(Lcom/transsion/camera/featurelibs/aicommon/request/RequestController$2;Lcom/transsion/camera/app/common/ai/AIRequest;)V

    return-void
.end method
