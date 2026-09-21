.class public Lcom/transsion/camera/featurelibs/aicommon/request/OperationTransaction;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/featurelibs/aicommon/request/OperationTransaction$MoveOperation;,
        Lcom/transsion/camera/featurelibs/aicommon/request/OperationTransaction$RemoveOperation;,
        Lcom/transsion/camera/featurelibs/aicommon/request/OperationTransaction$BaseOperation;
    }
.end annotation


# instance fields
.field private final mOperations:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/request/OperationTransaction;->mOperations:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addOperation(Lcom/transsion/camera/featurelibs/aicommon/request/OperationTransaction$BaseOperation;)V
    .registers 2

    .line 24
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/request/OperationTransaction;->mOperations:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public operations()Ljava/util/List;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/request/OperationTransaction;->mOperations:Ljava/util/List;

    return-object p0
.end method
