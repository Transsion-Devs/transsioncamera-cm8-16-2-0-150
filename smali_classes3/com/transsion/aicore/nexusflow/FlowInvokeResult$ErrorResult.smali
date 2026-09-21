.class public final Lcom/transsion/aicore/nexusflow/FlowInvokeResult$ErrorResult;
.super Lcom/transsion/aicore/nexusflow/FlowInvokeResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/aicore/nexusflow/FlowInvokeResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ErrorResult"
.end annotation


# instance fields
.field private final errorCode:I

.field private final errorMessage:Ljava/lang/String;

.field private final flowId:Ljava/lang/String;

.field private final instanceId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    const-string v0, "flowId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "instanceId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorMessage"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/transsion/aicore/nexusflow/FlowInvokeResult;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    iput-object p1, p0, Lcom/transsion/aicore/nexusflow/FlowInvokeResult$ErrorResult;->flowId:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/transsion/aicore/nexusflow/FlowInvokeResult$ErrorResult;->instanceId:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/transsion/aicore/nexusflow/FlowInvokeResult$ErrorResult;->errorMessage:Ljava/lang/String;

    .line 6
    iput p4, p0, Lcom/transsion/aicore/nexusflow/FlowInvokeResult$ErrorResult;->errorCode:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 7

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_5

    const/4 p4, -0x1

    .line 1
    :cond_5
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/aicore/nexusflow/FlowInvokeResult$ErrorResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/transsion/aicore/nexusflow/FlowInvokeResult$ErrorResult;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/transsion/aicore/nexusflow/FlowInvokeResult$ErrorResult;

    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/FlowInvokeResult$ErrorResult;->flowId:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/aicore/nexusflow/FlowInvokeResult$ErrorResult;->flowId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/FlowInvokeResult$ErrorResult;->instanceId:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/aicore/nexusflow/FlowInvokeResult$ErrorResult;->instanceId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/FlowInvokeResult$ErrorResult;->errorMessage:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/aicore/nexusflow/FlowInvokeResult$ErrorResult;->errorMessage:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget p0, p0, Lcom/transsion/aicore/nexusflow/FlowInvokeResult$ErrorResult;->errorCode:I

    iget p1, p1, Lcom/transsion/aicore/nexusflow/FlowInvokeResult$ErrorResult;->errorCode:I

    if-eq p0, p1, :cond_34

    return v2

    :cond_34
    return v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/FlowInvokeResult$ErrorResult;->flowId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/FlowInvokeResult$ErrorResult;->instanceId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/FlowInvokeResult$ErrorResult;->errorMessage:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/transsion/aicore/nexusflow/FlowInvokeResult$ErrorResult;->errorCode:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/FlowInvokeResult$ErrorResult;->flowId:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/FlowInvokeResult$ErrorResult;->instanceId:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/aicore/nexusflow/FlowInvokeResult$ErrorResult;->errorMessage:Ljava/lang/String;

    iget p0, p0, Lcom/transsion/aicore/nexusflow/FlowInvokeResult$ErrorResult;->errorCode:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ErrorResult(flowId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", instanceId="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", errorMessage="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", errorCode="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
