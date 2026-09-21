.class public final Lcom/transsion/aicore/nexusflow/FlowDispatcherClient$d;
.super Lcom/transsion/aicore/nexusflow/IDisconnectCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;-><init>(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;


# direct methods
.method public constructor <init>(Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;)V
    .registers 2

    iput-object p1, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient$d;->a:Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;

    .line 1
    invoke-direct {p0}, Lcom/transsion/aicore/nexusflow/IDisconnectCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDisconnected()V
    .registers 7

    .line 1
    sget-object v0, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient$d;->a:Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;

    # getter for: Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->access$getTAG$p(Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "Service disconnected via callback."

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->w$default(Lcom/transsion/aicore/nexusflow/utils/NFLog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 2
    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient$d;->a:Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;

    # invokes: Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->handleServiceDisconnection()V
    invoke-static {p0}, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->access$handleServiceDisconnection(Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;)V

    return-void
.end method
