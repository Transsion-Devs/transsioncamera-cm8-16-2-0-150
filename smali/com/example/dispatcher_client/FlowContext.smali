.class public final Lcom/example/dispatcher_client/FlowContext;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private callback:Lcom/example/dispatcher_client/ClientProcessCallBack;

.field private final callerPid:I

.field private final callerProcessName:Ljava/lang/String;

.field private final components:Ljava/util/List;

.field private final context:Landroid/content/Context;

.field private final flowBusType:Ljava/lang/String;

.field private flowId:Ljava/lang/String;

.field private final flowParams:Landroid/os/Bundle;

.field private final flowType:Ljava/lang/String;

.field private instanceId:Ljava/lang/String;

.field private final method:Ljava/lang/String;

.field private final streaming:Z

.field private final timeout:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;JZLandroid/os/Bundle;Lcom/example/dispatcher_client/ClientProcessCallBack;Ljava/lang/String;I)V
    .registers 16

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "instanceId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flowId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "method"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flowType"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flowBusType"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "components"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 628
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 629
    iput-object p1, p0, Lcom/example/dispatcher_client/FlowContext;->context:Landroid/content/Context;

    .line 630
    iput-object p2, p0, Lcom/example/dispatcher_client/FlowContext;->instanceId:Ljava/lang/String;

    .line 631
    iput-object p3, p0, Lcom/example/dispatcher_client/FlowContext;->flowId:Ljava/lang/String;

    .line 632
    iput-object p4, p0, Lcom/example/dispatcher_client/FlowContext;->method:Ljava/lang/String;

    .line 633
    iput-object p5, p0, Lcom/example/dispatcher_client/FlowContext;->flowType:Ljava/lang/String;

    .line 634
    iput-object p6, p0, Lcom/example/dispatcher_client/FlowContext;->flowBusType:Ljava/lang/String;

    .line 635
    iput-object p7, p0, Lcom/example/dispatcher_client/FlowContext;->components:Ljava/util/List;

    .line 636
    iput-wide p8, p0, Lcom/example/dispatcher_client/FlowContext;->timeout:J

    .line 637
    iput-boolean p10, p0, Lcom/example/dispatcher_client/FlowContext;->streaming:Z

    .line 638
    iput-object p11, p0, Lcom/example/dispatcher_client/FlowContext;->flowParams:Landroid/os/Bundle;

    .line 639
    iput-object p12, p0, Lcom/example/dispatcher_client/FlowContext;->callback:Lcom/example/dispatcher_client/ClientProcessCallBack;

    .line 640
    iput-object p13, p0, Lcom/example/dispatcher_client/FlowContext;->callerProcessName:Ljava/lang/String;

    .line 641
    iput p14, p0, Lcom/example/dispatcher_client/FlowContext;->callerPid:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/example/dispatcher_client/FlowContext;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/example/dispatcher_client/FlowContext;

    iget-object v1, p0, Lcom/example/dispatcher_client/FlowContext;->context:Landroid/content/Context;

    iget-object v3, p1, Lcom/example/dispatcher_client/FlowContext;->context:Landroid/content/Context;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/example/dispatcher_client/FlowContext;->instanceId:Ljava/lang/String;

    iget-object v3, p1, Lcom/example/dispatcher_client/FlowContext;->instanceId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/example/dispatcher_client/FlowContext;->flowId:Ljava/lang/String;

    iget-object v3, p1, Lcom/example/dispatcher_client/FlowContext;->flowId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Lcom/example/dispatcher_client/FlowContext;->method:Ljava/lang/String;

    iget-object v3, p1, Lcom/example/dispatcher_client/FlowContext;->method:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    return v2

    :cond_38
    iget-object v1, p0, Lcom/example/dispatcher_client/FlowContext;->flowType:Ljava/lang/String;

    iget-object v3, p1, Lcom/example/dispatcher_client/FlowContext;->flowType:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_43

    return v2

    :cond_43
    iget-object v1, p0, Lcom/example/dispatcher_client/FlowContext;->flowBusType:Ljava/lang/String;

    iget-object v3, p1, Lcom/example/dispatcher_client/FlowContext;->flowBusType:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    return v2

    :cond_4e
    iget-object v1, p0, Lcom/example/dispatcher_client/FlowContext;->components:Ljava/util/List;

    iget-object v3, p1, Lcom/example/dispatcher_client/FlowContext;->components:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_59

    return v2

    :cond_59
    iget-wide v3, p0, Lcom/example/dispatcher_client/FlowContext;->timeout:J

    iget-wide v5, p1, Lcom/example/dispatcher_client/FlowContext;->timeout:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_62

    return v2

    :cond_62
    iget-boolean v1, p0, Lcom/example/dispatcher_client/FlowContext;->streaming:Z

    iget-boolean v3, p1, Lcom/example/dispatcher_client/FlowContext;->streaming:Z

    if-eq v1, v3, :cond_69

    return v2

    :cond_69
    iget-object v1, p0, Lcom/example/dispatcher_client/FlowContext;->flowParams:Landroid/os/Bundle;

    iget-object v3, p1, Lcom/example/dispatcher_client/FlowContext;->flowParams:Landroid/os/Bundle;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_74

    return v2

    :cond_74
    iget-object v1, p0, Lcom/example/dispatcher_client/FlowContext;->callback:Lcom/example/dispatcher_client/ClientProcessCallBack;

    iget-object v3, p1, Lcom/example/dispatcher_client/FlowContext;->callback:Lcom/example/dispatcher_client/ClientProcessCallBack;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7f

    return v2

    :cond_7f
    iget-object v1, p0, Lcom/example/dispatcher_client/FlowContext;->callerProcessName:Ljava/lang/String;

    iget-object v3, p1, Lcom/example/dispatcher_client/FlowContext;->callerProcessName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8a

    return v2

    :cond_8a
    iget p0, p0, Lcom/example/dispatcher_client/FlowContext;->callerPid:I

    iget p1, p1, Lcom/example/dispatcher_client/FlowContext;->callerPid:I

    if-eq p0, p1, :cond_91

    return v2

    :cond_91
    return v0
.end method

.method public final getCallback()Lcom/example/dispatcher_client/ClientProcessCallBack;
    .registers 1

    .line 639
    iget-object p0, p0, Lcom/example/dispatcher_client/FlowContext;->callback:Lcom/example/dispatcher_client/ClientProcessCallBack;

    return-object p0
.end method

.method public final getCallerPid()I
    .registers 1

    .line 641
    iget p0, p0, Lcom/example/dispatcher_client/FlowContext;->callerPid:I

    return p0
.end method

.method public final getCallerProcessName()Ljava/lang/String;
    .registers 1

    .line 640
    iget-object p0, p0, Lcom/example/dispatcher_client/FlowContext;->callerProcessName:Ljava/lang/String;

    return-object p0
.end method

.method public final getFlowBusType()Ljava/lang/String;
    .registers 1

    .line 634
    iget-object p0, p0, Lcom/example/dispatcher_client/FlowContext;->flowBusType:Ljava/lang/String;

    return-object p0
.end method

.method public final getFlowId()Ljava/lang/String;
    .registers 1

    .line 631
    iget-object p0, p0, Lcom/example/dispatcher_client/FlowContext;->flowId:Ljava/lang/String;

    return-object p0
.end method

.method public final getFlowType()Ljava/lang/String;
    .registers 1

    .line 633
    iget-object p0, p0, Lcom/example/dispatcher_client/FlowContext;->flowType:Ljava/lang/String;

    return-object p0
.end method

.method public final getInstanceId()Ljava/lang/String;
    .registers 1

    .line 630
    iget-object p0, p0, Lcom/example/dispatcher_client/FlowContext;->instanceId:Ljava/lang/String;

    return-object p0
.end method

.method public final getMethod()Ljava/lang/String;
    .registers 1

    .line 632
    iget-object p0, p0, Lcom/example/dispatcher_client/FlowContext;->method:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/example/dispatcher_client/FlowContext;->context:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/example/dispatcher_client/FlowContext;->instanceId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/example/dispatcher_client/FlowContext;->flowId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/example/dispatcher_client/FlowContext;->method:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/example/dispatcher_client/FlowContext;->flowType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/example/dispatcher_client/FlowContext;->flowBusType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/example/dispatcher_client/FlowContext;->components:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/example/dispatcher_client/FlowContext;->timeout:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/example/dispatcher_client/FlowContext;->streaming:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/example/dispatcher_client/FlowContext;->flowParams:Landroid/os/Bundle;

    const/4 v2, 0x0

    if-nez v1, :cond_57

    move v1, v2

    goto :goto_5b

    :cond_57
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_5b
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/example/dispatcher_client/FlowContext;->callback:Lcom/example/dispatcher_client/ClientProcessCallBack;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/example/dispatcher_client/FlowContext;->callerProcessName:Ljava/lang/String;

    if-nez v1, :cond_6c

    goto :goto_70

    :cond_6c
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_70
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/example/dispatcher_client/FlowContext;->callerPid:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 16

    iget-object v0, p0, Lcom/example/dispatcher_client/FlowContext;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/example/dispatcher_client/FlowContext;->instanceId:Ljava/lang/String;

    iget-object v2, p0, Lcom/example/dispatcher_client/FlowContext;->flowId:Ljava/lang/String;

    iget-object v3, p0, Lcom/example/dispatcher_client/FlowContext;->method:Ljava/lang/String;

    iget-object v4, p0, Lcom/example/dispatcher_client/FlowContext;->flowType:Ljava/lang/String;

    iget-object v5, p0, Lcom/example/dispatcher_client/FlowContext;->flowBusType:Ljava/lang/String;

    iget-object v6, p0, Lcom/example/dispatcher_client/FlowContext;->components:Ljava/util/List;

    iget-wide v7, p0, Lcom/example/dispatcher_client/FlowContext;->timeout:J

    iget-boolean v9, p0, Lcom/example/dispatcher_client/FlowContext;->streaming:Z

    iget-object v10, p0, Lcom/example/dispatcher_client/FlowContext;->flowParams:Landroid/os/Bundle;

    iget-object v11, p0, Lcom/example/dispatcher_client/FlowContext;->callback:Lcom/example/dispatcher_client/ClientProcessCallBack;

    iget-object v12, p0, Lcom/example/dispatcher_client/FlowContext;->callerProcessName:Ljava/lang/String;

    iget p0, p0, Lcom/example/dispatcher_client/FlowContext;->callerPid:I

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "FlowContext(context="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", instanceId="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", flowId="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", method="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", flowType="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", flowBusType="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", components="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", timeout="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", streaming="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", flowParams="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", callback="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", callerProcessName="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", callerPid="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v13, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
