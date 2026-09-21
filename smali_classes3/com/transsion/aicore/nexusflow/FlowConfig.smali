.class public final Lcom/transsion/aicore/nexusflow/FlowConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private callback:Lcom/transsion/aicore/nexusflow/FlowCallback;

.field private final callerPid:I

.field private final callerProcessName:Ljava/lang/String;

.field private final disableTimeout:Z

.field private final executionMode:Lcom/transsion/aicore/nexusflow/ExecutionMode;

.field private final executionPolicy:Ljava/lang/String;

.field private final instanceFlowId:Ljava/lang/String;

.field private instanceId:Ljava/lang/String;

.field private final method:Ljava/lang/String;

.field private final params:Landroid/os/Bundle;

.field private final streaming:Z

.field private final tempFiles:Ljava/util/List;

.field private final timeoutMs:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/transsion/aicore/nexusflow/ExecutionMode;ZLcom/transsion/aicore/nexusflow/FlowCallback;JZLjava/util/List;Ljava/lang/String;)V
    .registers 16

    const-string v0, "method"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callerProcessName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "instanceId"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "instanceFlowId"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executionMode"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tempFiles"

    invoke-static {p13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executionPolicy"

    invoke-static {p14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/transsion/aicore/nexusflow/FlowConfig;->method:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/transsion/aicore/nexusflow/FlowConfig;->params:Landroid/os/Bundle;

    .line 4
    iput-object p3, p0, Lcom/transsion/aicore/nexusflow/FlowConfig;->callerProcessName:Ljava/lang/String;

    .line 5
    iput p4, p0, Lcom/transsion/aicore/nexusflow/FlowConfig;->callerPid:I

    .line 6
    iput-object p5, p0, Lcom/transsion/aicore/nexusflow/FlowConfig;->instanceId:Ljava/lang/String;

    .line 7
    iput-object p6, p0, Lcom/transsion/aicore/nexusflow/FlowConfig;->instanceFlowId:Ljava/lang/String;

    .line 8
    iput-object p7, p0, Lcom/transsion/aicore/nexusflow/FlowConfig;->executionMode:Lcom/transsion/aicore/nexusflow/ExecutionMode;

    .line 9
    iput-boolean p8, p0, Lcom/transsion/aicore/nexusflow/FlowConfig;->streaming:Z

    .line 10
    iput-object p9, p0, Lcom/transsion/aicore/nexusflow/FlowConfig;->callback:Lcom/transsion/aicore/nexusflow/FlowCallback;

    .line 11
    iput-wide p10, p0, Lcom/transsion/aicore/nexusflow/FlowConfig;->timeoutMs:J

    .line 12
    iput-boolean p12, p0, Lcom/transsion/aicore/nexusflow/FlowConfig;->disableTimeout:Z

    .line 13
    iput-object p13, p0, Lcom/transsion/aicore/nexusflow/FlowConfig;->tempFiles:Ljava/util/List;

    .line 14
    iput-object p14, p0, Lcom/transsion/aicore/nexusflow/FlowConfig;->executionPolicy:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/transsion/aicore/nexusflow/ExecutionMode;ZLcom/transsion/aicore/nexusflow/FlowCallback;JZLjava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 35

    move/from16 v0, p15

    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_a

    const-wide/16 v1, 0x7530

    move-wide v13, v1

    goto :goto_c

    :cond_a
    move-wide/from16 v13, p10

    :goto_c
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_13

    const/4 v1, 0x0

    move v15, v1

    goto :goto_15

    :cond_13
    move/from16 v15, p12

    :goto_15
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_20

    .line 15
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    move-object/from16 v16, v1

    goto :goto_22

    :cond_20
    move-object/from16 v16, p13

    :goto_22
    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_3f

    .line 16
    const-string v0, "preemptive"

    move-object/from16 v17, v0

    :goto_2a
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v11, p8

    move-object/from16 v12, p9

    goto :goto_42

    :cond_3f
    move-object/from16 v17, p14

    goto :goto_2a

    .line 17
    :goto_42
    invoke-direct/range {v3 .. v17}, Lcom/transsion/aicore/nexusflow/FlowConfig;-><init>(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/transsion/aicore/nexusflow/ExecutionMode;ZLcom/transsion/aicore/nexusflow/FlowCallback;JZLjava/util/List;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/transsion/aicore/nexusflow/FlowConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/transsion/aicore/nexusflow/FlowConfig;

    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/FlowConfig;->method:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/aicore/nexusflow/FlowConfig;->method:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/FlowConfig;->params:Landroid/os/Bundle;

    iget-object v3, p1, Lcom/transsion/aicore/nexusflow/FlowConfig;->params:Landroid/os/Bundle;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/FlowConfig;->callerProcessName:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/aicore/nexusflow/FlowConfig;->callerProcessName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget v1, p0, Lcom/transsion/aicore/nexusflow/FlowConfig;->callerPid:I

    iget v3, p1, Lcom/transsion/aicore/nexusflow/FlowConfig;->callerPid:I

    if-eq v1, v3, :cond_34

    return v2

    :cond_34
    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/FlowConfig;->instanceId:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/aicore/nexusflow/FlowConfig;->instanceId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    return v2

    :cond_3f
    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/FlowConfig;->instanceFlowId:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/aicore/nexusflow/FlowConfig;->instanceFlowId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4a

    return v2

    :cond_4a
    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/FlowConfig;->executionMode:Lcom/transsion/aicore/nexusflow/ExecutionMode;

    iget-object v3, p1, Lcom/transsion/aicore/nexusflow/FlowConfig;->executionMode:Lcom/transsion/aicore/nexusflow/ExecutionMode;

    if-eq v1, v3, :cond_51

    return v2

    :cond_51
    iget-boolean v1, p0, Lcom/transsion/aicore/nexusflow/FlowConfig;->streaming:Z

    iget-boolean v3, p1, Lcom/transsion/aicore/nexusflow/FlowConfig;->streaming:Z

    if-eq v1, v3, :cond_58

    return v2

    :cond_58
    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/FlowConfig;->callback:Lcom/transsion/aicore/nexusflow/FlowCallback;

    iget-object v3, p1, Lcom/transsion/aicore/nexusflow/FlowConfig;->callback:Lcom/transsion/aicore/nexusflow/FlowCallback;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_63

    return v2

    :cond_63
    iget-wide v3, p0, Lcom/transsion/aicore/nexusflow/FlowConfig;->timeoutMs:J

    iget-wide v5, p1, Lcom/transsion/aicore/nexusflow/FlowConfig;->timeoutMs:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_6c

    return v2

    :cond_6c
    iget-boolean v1, p0, Lcom/transsion/aicore/nexusflow/FlowConfig;->disableTimeout:Z

    iget-boolean v3, p1, Lcom/transsion/aicore/nexusflow/FlowConfig;->disableTimeout:Z

    if-eq v1, v3, :cond_73

    return v2

    :cond_73
    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/FlowConfig;->tempFiles:Ljava/util/List;

    iget-object v3, p1, Lcom/transsion/aicore/nexusflow/FlowConfig;->tempFiles:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7e

    return v2

    :cond_7e
    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/FlowConfig;->executionPolicy:Ljava/lang/String;

    iget-object p1, p1, Lcom/transsion/aicore/nexusflow/FlowConfig;->executionPolicy:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_89

    return v2

    :cond_89
    return v0
.end method

.method public final getCallback()Lcom/transsion/aicore/nexusflow/FlowCallback;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/FlowConfig;->callback:Lcom/transsion/aicore/nexusflow/FlowCallback;

    return-object p0
.end method

.method public final getCallerPid()I
    .registers 1

    .line 1
    iget p0, p0, Lcom/transsion/aicore/nexusflow/FlowConfig;->callerPid:I

    return p0
.end method

.method public final getCallerProcessName()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/FlowConfig;->callerProcessName:Ljava/lang/String;

    return-object p0
.end method

.method public final getDisableTimeout()Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/transsion/aicore/nexusflow/FlowConfig;->disableTimeout:Z

    return p0
.end method

.method public final getExecutionMode()Lcom/transsion/aicore/nexusflow/ExecutionMode;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/FlowConfig;->executionMode:Lcom/transsion/aicore/nexusflow/ExecutionMode;

    return-object p0
.end method

.method public final getExecutionPolicy()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/FlowConfig;->executionPolicy:Ljava/lang/String;

    return-object p0
.end method

.method public final getFlowId()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/FlowConfig;->instanceFlowId:Ljava/lang/String;

    return-object p0
.end method

.method public final getInstanceId()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/FlowConfig;->instanceId:Ljava/lang/String;

    return-object p0
.end method

.method public final getMethod()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/FlowConfig;->method:Ljava/lang/String;

    return-object p0
.end method

.method public final getParams()Landroid/os/Bundle;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/FlowConfig;->params:Landroid/os/Bundle;

    return-object p0
.end method

.method public final getStreaming()Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/transsion/aicore/nexusflow/FlowConfig;->streaming:Z

    return p0
.end method

.method public final getTempFiles()Ljava/util/List;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/FlowConfig;->tempFiles:Ljava/util/List;

    return-object p0
.end method

.method public final getTimeoutMs()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/transsion/aicore/nexusflow/FlowConfig;->timeoutMs:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/FlowConfig;->method:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/FlowConfig;->params:Landroid/os/Bundle;

    const/4 v2, 0x0

    if-nez v1, :cond_f

    move v1, v2

    goto :goto_13

    :cond_f
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_13
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/FlowConfig;->callerProcessName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/transsion/aicore/nexusflow/FlowConfig;->callerPid:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/FlowConfig;->instanceId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/FlowConfig;->instanceFlowId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/FlowConfig;->executionMode:Lcom/transsion/aicore/nexusflow/ExecutionMode;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lcom/transsion/aicore/nexusflow/FlowConfig;->streaming:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/FlowConfig;->callback:Lcom/transsion/aicore/nexusflow/FlowCallback;

    if-nez v1, :cond_51

    goto :goto_55

    :cond_51
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_55
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/transsion/aicore/nexusflow/FlowConfig;->timeoutMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lcom/transsion/aicore/nexusflow/FlowConfig;->disableTimeout:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/FlowConfig;->tempFiles:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/FlowConfig;->executionPolicy:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 16

    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/FlowConfig;->method:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/FlowConfig;->params:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/transsion/aicore/nexusflow/FlowConfig;->callerProcessName:Ljava/lang/String;

    iget v3, p0, Lcom/transsion/aicore/nexusflow/FlowConfig;->callerPid:I

    iget-object v4, p0, Lcom/transsion/aicore/nexusflow/FlowConfig;->instanceId:Ljava/lang/String;

    iget-object v5, p0, Lcom/transsion/aicore/nexusflow/FlowConfig;->instanceFlowId:Ljava/lang/String;

    iget-object v6, p0, Lcom/transsion/aicore/nexusflow/FlowConfig;->executionMode:Lcom/transsion/aicore/nexusflow/ExecutionMode;

    iget-boolean v7, p0, Lcom/transsion/aicore/nexusflow/FlowConfig;->streaming:Z

    iget-object v8, p0, Lcom/transsion/aicore/nexusflow/FlowConfig;->callback:Lcom/transsion/aicore/nexusflow/FlowCallback;

    iget-wide v9, p0, Lcom/transsion/aicore/nexusflow/FlowConfig;->timeoutMs:J

    iget-boolean v11, p0, Lcom/transsion/aicore/nexusflow/FlowConfig;->disableTimeout:Z

    iget-object v12, p0, Lcom/transsion/aicore/nexusflow/FlowConfig;->tempFiles:Ljava/util/List;

    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/FlowConfig;->executionPolicy:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "FlowConfig(method="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", params="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", callerProcessName="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", callerPid="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", instanceId="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", instanceFlowId="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", executionMode="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", streaming="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", callback="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", timeoutMs="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", disableTimeout="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", tempFiles="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", executionPolicy="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v13, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
