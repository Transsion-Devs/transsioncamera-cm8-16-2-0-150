.class public Lcom/transsion/camera/featurelibs/aicommon/request/OperationTransaction$MoveOperation;
.super Lcom/transsion/camera/featurelibs/aicommon/request/OperationTransaction$BaseOperation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/featurelibs/aicommon/request/OperationTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MoveOperation"
.end annotation


# instance fields
.field private final mStatus:I


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/common/ai/AIRequest;I)V
    .registers 3

    .line 74
    invoke-direct {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/request/OperationTransaction$BaseOperation;-><init>(Lcom/transsion/camera/app/common/ai/AIRequest;)V

    .line 75
    iput p2, p0, Lcom/transsion/camera/featurelibs/aicommon/request/OperationTransaction$MoveOperation;->mStatus:I

    return-void
.end method


# virtual methods
.method public execute(Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;)V
    .registers 4

    .line 80
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/request/OperationTransaction$BaseOperation;->mRequest:Lcom/transsion/camera/app/common/ai/AIRequest;

    iget p0, p0, Lcom/transsion/camera/featurelibs/aicommon/request/OperationTransaction$MoveOperation;->mStatus:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p0, v1}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;->move(Lcom/transsion/camera/app/common/ai/AIRequest;IZ)V

    return-void
.end method
