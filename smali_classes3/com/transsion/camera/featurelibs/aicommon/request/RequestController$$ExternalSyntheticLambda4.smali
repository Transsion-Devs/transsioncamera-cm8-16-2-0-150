.class public final synthetic Lcom/transsion/camera/featurelibs/aicommon/request/RequestController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController$$ExternalSyntheticLambda4;->f$0:Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController$$ExternalSyntheticLambda4;->f$0:Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;

    check-cast p1, Lcom/transsion/camera/featurelibs/aicommon/request/OperationTransaction$BaseOperation;

    invoke-static {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;->$r8$lambda$X1aj9gyunoQEOJt_xMmWMoHd5Mw(Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;Lcom/transsion/camera/featurelibs/aicommon/request/OperationTransaction$BaseOperation;)V

    return-void
.end method
