.class public final Lcom/transsion/aicore/nexusflow/FlowInvokeResult$SyncResult;
.super Lcom/transsion/aicore/nexusflow/FlowInvokeResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/aicore/nexusflow/FlowInvokeResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SyncResult"
.end annotation


# instance fields
.field private final errorMessage:Ljava/lang/String;

.field private final flowId:Ljava/lang/String;

.field private final instanceId:Ljava/lang/String;

.field private final isSuccess:Z

.field private final result:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 7

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flowId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "instanceId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Lcom/transsion/aicore/nexusflow/FlowInvokeResult;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 4
    iput-object p1, p0, Lcom/transsion/aicore/nexusflow/FlowInvokeResult$SyncResult;->result:Landroid/os/Bundle;

    .line 5
    iput-object p2, p0, Lcom/transsion/aicore/nexusflow/FlowInvokeResult$SyncResult;->flowId:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lcom/transsion/aicore/nexusflow/FlowInvokeResult$SyncResult;->instanceId:Ljava/lang/String;

    .line 7
    iput-boolean p4, p0, Lcom/transsion/aicore/nexusflow/FlowInvokeResult$SyncResult;->isSuccess:Z

    .line 8
    iput-object p5, p0, Lcom/transsion/aicore/nexusflow/FlowInvokeResult$SyncResult;->errorMessage:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 14

    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_6

    .line 1
    const-string p2, ""

    :cond_6
    move-object v2, p2

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_c

    const/4 p4, 0x1

    :cond_c
    move v4, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_12

    const/4 p5, 0x0

    :cond_12
    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v5, p5

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/transsion/aicore/nexusflow/FlowInvokeResult$SyncResult;-><init>(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/transsion/aicore/nexusflow/FlowInvokeResult$SyncResult;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/transsion/aicore/nexusflow/FlowInvokeResult$SyncResult;

    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/FlowInvokeResult$SyncResult;->result:Landroid/os/Bundle;

    iget-object v3, p1, Lcom/transsion/aicore/nexusflow/FlowInvokeResult$SyncResult;->result:Landroid/os/Bundle;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/FlowInvokeResult$SyncResult;->flowId:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/aicore/nexusflow/FlowInvokeResult$SyncResult;->flowId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/FlowInvokeResult$SyncResult;->instanceId:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/aicore/nexusflow/FlowInvokeResult$SyncResult;->instanceId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-boolean v1, p0, Lcom/transsion/aicore/nexusflow/FlowInvokeResult$SyncResult;->isSuccess:Z

    iget-boolean v3, p1, Lcom/transsion/aicore/nexusflow/FlowInvokeResult$SyncResult;->isSuccess:Z

    if-eq v1, v3, :cond_34

    return v2

    :cond_34
    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/FlowInvokeResult$SyncResult;->errorMessage:Ljava/lang/String;

    iget-object p1, p1, Lcom/transsion/aicore/nexusflow/FlowInvokeResult$SyncResult;->errorMessage:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3f

    return v2

    :cond_3f
    return v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/FlowInvokeResult$SyncResult;->result:Landroid/os/Bundle;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/FlowInvokeResult$SyncResult;->flowId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/FlowInvokeResult$SyncResult;->instanceId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/transsion/aicore/nexusflow/FlowInvokeResult$SyncResult;->isSuccess:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/FlowInvokeResult$SyncResult;->errorMessage:Ljava/lang/String;

    if-nez p0, :cond_29

    const/4 p0, 0x0

    goto :goto_2d

    :cond_29
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    :goto_2d
    add-int/2addr v1, p0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/FlowInvokeResult$SyncResult;->result:Landroid/os/Bundle;

    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/FlowInvokeResult$SyncResult;->flowId:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/aicore/nexusflow/FlowInvokeResult$SyncResult;->instanceId:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/transsion/aicore/nexusflow/FlowInvokeResult$SyncResult;->isSuccess:Z

    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/FlowInvokeResult$SyncResult;->errorMessage:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SyncResult(result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", flowId="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", instanceId="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", isSuccess="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", errorMessage="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
