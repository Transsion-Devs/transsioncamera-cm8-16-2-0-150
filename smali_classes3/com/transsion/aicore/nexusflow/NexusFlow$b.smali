.class public final Lcom/transsion/aicore/nexusflow/NexusFlow$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/example/dispatcher_client/ClientProcessCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/aicore/nexusflow/NexusFlow;->dispatchLocalIfNeed(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Lkotlin/jvm/functions/Function1;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/transsion/aicore/nexusflow/NexusFlow;

.field public final synthetic c:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/transsion/aicore/nexusflow/NexusFlow;Lkotlin/jvm/functions/Function1;)V
    .registers 4

    iput-object p1, p0, Lcom/transsion/aicore/nexusflow/NexusFlow$b;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/aicore/nexusflow/NexusFlow$b;->b:Lcom/transsion/aicore/nexusflow/NexusFlow;

    iput-object p3, p0, Lcom/transsion/aicore/nexusflow/NexusFlow$b;->c:Lkotlin/jvm/functions/Function1;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(Landroid/os/Bundle;)V
    .registers 5

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/NexusFlow$b;->a:Ljava/lang/String;

    const-string v1, "FLOW_INIT"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    const-string v0, "success"

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 2
    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/NexusFlow$b;->b:Lcom/transsion/aicore/nexusflow/NexusFlow;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/aicore/nexusflow/NexusFlow;->access$setLocalMode$p(Lcom/transsion/aicore/nexusflow/NexusFlow;Z)V

    goto :goto_2e

    .line 3
    :cond_1f
    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/NexusFlow$b;->a:Ljava/lang/String;

    const-string v2, "FLOW_DEINIT"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 4
    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/NexusFlow$b;->b:Lcom/transsion/aicore/nexusflow/NexusFlow;

    invoke-static {v0, v1}, Lcom/transsion/aicore/nexusflow/NexusFlow;->access$setLocalMode$p(Lcom/transsion/aicore/nexusflow/NexusFlow;Z)V

    .line 6
    :cond_2e
    :goto_2e
    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/NexusFlow$b;->c:Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_35

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_35
    return-void
.end method
