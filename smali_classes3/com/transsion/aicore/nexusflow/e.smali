.class public final Lcom/transsion/aicore/nexusflow/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/transsion/aicore/nexusflow/FlowConfig;

.field public final c:Lcom/transsion/aicore/nexusflow/FlowCallback;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/transsion/aicore/nexusflow/FlowConfig;Lcom/transsion/aicore/nexusflow/FlowCallback;)V
    .registers 5

    const-string v0, "flowId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/transsion/aicore/nexusflow/e;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/transsion/aicore/nexusflow/e;->b:Lcom/transsion/aicore/nexusflow/FlowConfig;

    .line 4
    iput-object p3, p0, Lcom/transsion/aicore/nexusflow/e;->c:Lcom/transsion/aicore/nexusflow/FlowCallback;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/transsion/aicore/nexusflow/e;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/transsion/aicore/nexusflow/e;

    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/e;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/aicore/nexusflow/e;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/e;->b:Lcom/transsion/aicore/nexusflow/FlowConfig;

    iget-object v3, p1, Lcom/transsion/aicore/nexusflow/e;->b:Lcom/transsion/aicore/nexusflow/FlowConfig;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/e;->c:Lcom/transsion/aicore/nexusflow/FlowCallback;

    iget-object p1, p1, Lcom/transsion/aicore/nexusflow/e;->c:Lcom/transsion/aicore/nexusflow/FlowCallback;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2d

    return v2

    :cond_2d
    return v0
.end method

.method public final hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/e;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/e;->b:Lcom/transsion/aicore/nexusflow/FlowConfig;

    invoke-virtual {v1}, Lcom/transsion/aicore/nexusflow/FlowConfig;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/e;->c:Lcom/transsion/aicore/nexusflow/FlowCallback;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/e;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/e;->b:Lcom/transsion/aicore/nexusflow/FlowConfig;

    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/e;->c:Lcom/transsion/aicore/nexusflow/FlowCallback;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PendingFlow(flowId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", config="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", callback="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
