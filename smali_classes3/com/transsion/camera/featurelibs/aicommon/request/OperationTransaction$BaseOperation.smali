.class public abstract Lcom/transsion/camera/featurelibs/aicommon/request/OperationTransaction$BaseOperation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/featurelibs/aicommon/request/OperationTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BaseOperation"
.end annotation


# instance fields
.field final mRequest:Lcom/transsion/camera/app/common/ai/AIRequest;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/common/ai/AIRequest;)V
    .registers 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/request/OperationTransaction$BaseOperation;->mRequest:Lcom/transsion/camera/app/common/ai/AIRequest;

    return-void
.end method


# virtual methods
.method public abstract execute(Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;)V
.end method
