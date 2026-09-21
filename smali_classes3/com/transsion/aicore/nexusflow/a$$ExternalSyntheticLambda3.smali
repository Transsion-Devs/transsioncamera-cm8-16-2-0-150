.class public final synthetic Lcom/transsion/aicore/nexusflow/a$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/transsion/aicore/nexusflow/FlowConfig;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/aicore/nexusflow/FlowConfig;Ljava/lang/String;Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/aicore/nexusflow/a$$ExternalSyntheticLambda3;->f$0:Lcom/transsion/aicore/nexusflow/FlowConfig;

    iput-object p2, p0, Lcom/transsion/aicore/nexusflow/a$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/aicore/nexusflow/a$$ExternalSyntheticLambda3;->f$2:Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/a$$ExternalSyntheticLambda3;->f$0:Lcom/transsion/aicore/nexusflow/FlowConfig;

    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/a$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/a$$ExternalSyntheticLambda3;->f$2:Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;

    check-cast p1, Landroid/os/Bundle;

    invoke-static {v0, v1, p0, p1}, Lcom/transsion/aicore/nexusflow/a;->a(Lcom/transsion/aicore/nexusflow/FlowConfig;Ljava/lang/String;Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;Landroid/os/Bundle;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method
