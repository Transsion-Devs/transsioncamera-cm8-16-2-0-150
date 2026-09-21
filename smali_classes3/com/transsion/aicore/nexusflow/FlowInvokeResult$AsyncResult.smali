.class public final Lcom/transsion/aicore/nexusflow/FlowInvokeResult$AsyncResult;
.super Lcom/transsion/aicore/nexusflow/FlowInvokeResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/aicore/nexusflow/FlowInvokeResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AsyncResult"
.end annotation


# instance fields
.field private final errorMessage:Ljava/lang/String;

.field private final flowId:Ljava/lang/String;

.field private final instanceId:Ljava/lang/String;

.field private final isSuccess:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 6

    const-string v0, "flowId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "instanceId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/transsion/aicore/nexusflow/FlowInvokeResult;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    iput-object p1, p0, Lcom/transsion/aicore/nexusflow/FlowInvokeResult$AsyncResult;->flowId:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/transsion/aicore/nexusflow/FlowInvokeResult$AsyncResult;->instanceId:Ljava/lang/String;

    .line 5
    iput-boolean p3, p0, Lcom/transsion/aicore/nexusflow/FlowInvokeResult$AsyncResult;->isSuccess:Z

    .line 6
    iput-object p4, p0, Lcom/transsion/aicore/nexusflow/FlowInvokeResult$AsyncResult;->errorMessage:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 7

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_5

    const/4 p3, 0x1

    :cond_5
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_a

    const/4 p4, 0x0

    .line 1
    :cond_a
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/aicore/nexusflow/FlowInvokeResult$AsyncResult;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/transsion/aicore/nexusflow/FlowInvokeResult$AsyncResult;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/transsion/aicore/nexusflow/FlowInvokeResult$AsyncResult;

    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/FlowInvokeResult$AsyncResult;->flowId:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/aicore/nexusflow/FlowInvokeResult$AsyncResult;->flowId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/FlowInvokeResult$AsyncResult;->instanceId:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/aicore/nexusflow/FlowInvokeResult$AsyncResult;->instanceId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-boolean v1, p0, Lcom/transsion/aicore/nexusflow/FlowInvokeResult$AsyncResult;->isSuccess:Z

    iget-boolean v3, p1, Lcom/transsion/aicore/nexusflow/FlowInvokeResult$AsyncResult;->isSuccess:Z

    if-eq v1, v3, :cond_29

    return v2

    :cond_29
    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/FlowInvokeResult$AsyncResult;->errorMessage:Ljava/lang/String;

    iget-object p1, p1, Lcom/transsion/aicore/nexusflow/FlowInvokeResult$AsyncResult;->errorMessage:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_34

    return v2

    :cond_34
    return v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/FlowInvokeResult$AsyncResult;->flowId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/FlowInvokeResult$AsyncResult;->instanceId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lcom/transsion/aicore/nexusflow/FlowInvokeResult$AsyncResult;->isSuccess:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/FlowInvokeResult$AsyncResult;->errorMessage:Ljava/lang/String;

    if-nez p0, :cond_20

    const/4 p0, 0x0

    goto :goto_24

    :cond_20
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    :goto_24
    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/FlowInvokeResult$AsyncResult;->flowId:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/FlowInvokeResult$AsyncResult;->instanceId:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/transsion/aicore/nexusflow/FlowInvokeResult$AsyncResult;->isSuccess:Z

    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/FlowInvokeResult$AsyncResult;->errorMessage:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AsyncResult(flowId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", instanceId="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", isSuccess="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", errorMessage="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
