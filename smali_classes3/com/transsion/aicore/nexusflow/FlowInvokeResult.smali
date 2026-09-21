.class public abstract Lcom/transsion/aicore/nexusflow/FlowInvokeResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/aicore/nexusflow/FlowInvokeResult$AsyncResult;,
        Lcom/transsion/aicore/nexusflow/FlowInvokeResult$ErrorResult;,
        Lcom/transsion/aicore/nexusflow/FlowInvokeResult$SyncResult;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/transsion/aicore/nexusflow/FlowInvokeResult;-><init>()V

    return-void
.end method
