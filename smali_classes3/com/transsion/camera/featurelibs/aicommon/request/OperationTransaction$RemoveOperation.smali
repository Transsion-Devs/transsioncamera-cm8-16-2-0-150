.class public Lcom/transsion/camera/featurelibs/aicommon/request/OperationTransaction$RemoveOperation;
.super Lcom/transsion/camera/featurelibs/aicommon/request/OperationTransaction$BaseOperation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/featurelibs/aicommon/request/OperationTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemoveOperation"
.end annotation


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/common/ai/AIRequest;)V
    .registers 2

    .line 59
    invoke-direct {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/request/OperationTransaction$BaseOperation;-><init>(Lcom/transsion/camera/app/common/ai/AIRequest;)V

    return-void
.end method


# virtual methods
.method public execute(Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;)V
    .registers 3

    .line 64
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/request/OperationTransaction$BaseOperation;->mRequest:Lcom/transsion/camera/app/common/ai/AIRequest;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;->remove(Lcom/transsion/camera/app/common/ai/AIRequest;Z)V

    return-void
.end method
