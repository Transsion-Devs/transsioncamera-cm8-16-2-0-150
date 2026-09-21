.class public final Lcom/transsion/aicore/nexusflow/FlowResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final errorMessage:Ljava/lang/String;

.field private final flowId:Ljava/lang/String;

.field private final instanceId:Ljava/lang/String;

.field private final isSuccess:Z

.field private final method:Ljava/lang/String;

.field private final result:Landroid/os/Bundle;

.field private final timestamp:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;Ljava/lang/String;J)V
    .registers 10

    const-string v0, "flowId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "instanceId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "method"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/transsion/aicore/nexusflow/FlowResult;->flowId:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/transsion/aicore/nexusflow/FlowResult;->instanceId:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/transsion/aicore/nexusflow/FlowResult;->method:Ljava/lang/String;

    .line 5
    iput-boolean p4, p0, Lcom/transsion/aicore/nexusflow/FlowResult;->isSuccess:Z

    .line 6
    iput-object p5, p0, Lcom/transsion/aicore/nexusflow/FlowResult;->result:Landroid/os/Bundle;

    .line 7
    iput-object p6, p0, Lcom/transsion/aicore/nexusflow/FlowResult;->errorMessage:Ljava/lang/String;

    .line 8
    iput-wide p7, p0, Lcom/transsion/aicore/nexusflow/FlowResult;->timestamp:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/transsion/aicore/nexusflow/FlowResult;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/transsion/aicore/nexusflow/FlowResult;

    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/FlowResult;->flowId:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/aicore/nexusflow/FlowResult;->flowId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/FlowResult;->instanceId:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/aicore/nexusflow/FlowResult;->instanceId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/FlowResult;->method:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/aicore/nexusflow/FlowResult;->method:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-boolean v1, p0, Lcom/transsion/aicore/nexusflow/FlowResult;->isSuccess:Z

    iget-boolean v3, p1, Lcom/transsion/aicore/nexusflow/FlowResult;->isSuccess:Z

    if-eq v1, v3, :cond_34

    return v2

    :cond_34
    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/FlowResult;->result:Landroid/os/Bundle;

    iget-object v3, p1, Lcom/transsion/aicore/nexusflow/FlowResult;->result:Landroid/os/Bundle;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    return v2

    :cond_3f
    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/FlowResult;->errorMessage:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/aicore/nexusflow/FlowResult;->errorMessage:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4a

    return v2

    :cond_4a
    iget-wide v3, p0, Lcom/transsion/aicore/nexusflow/FlowResult;->timestamp:J

    iget-wide p0, p1, Lcom/transsion/aicore/nexusflow/FlowResult;->timestamp:J

    cmp-long p0, v3, p0

    if-eqz p0, :cond_53

    return v2

    :cond_53
    return v0
.end method

.method public final getResult()Landroid/os/Bundle;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/FlowResult;->result:Landroid/os/Bundle;

    return-object p0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/FlowResult;->flowId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/FlowResult;->instanceId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/FlowResult;->method:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/transsion/aicore/nexusflow/FlowResult;->isSuccess:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/FlowResult;->result:Landroid/os/Bundle;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/FlowResult;->errorMessage:Ljava/lang/String;

    if-nez v1, :cond_32

    const/4 v1, 0x0

    goto :goto_36

    :cond_32
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_36
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/transsion/aicore/nexusflow/FlowResult;->timestamp:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final isSuccess()Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/transsion/aicore/nexusflow/FlowResult;->isSuccess:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 10

    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/FlowResult;->flowId:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/FlowResult;->instanceId:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/aicore/nexusflow/FlowResult;->method:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/transsion/aicore/nexusflow/FlowResult;->isSuccess:Z

    iget-object v4, p0, Lcom/transsion/aicore/nexusflow/FlowResult;->result:Landroid/os/Bundle;

    iget-object v5, p0, Lcom/transsion/aicore/nexusflow/FlowResult;->errorMessage:Ljava/lang/String;

    iget-wide v6, p0, Lcom/transsion/aicore/nexusflow/FlowResult;->timestamp:J

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FlowResult(flowId="

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", instanceId="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", method="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", isSuccess="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", result="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", errorMessage="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", timestamp="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
