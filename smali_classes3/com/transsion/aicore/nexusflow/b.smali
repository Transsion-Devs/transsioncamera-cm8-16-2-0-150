.class public final Lcom/transsion/aicore/nexusflow/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/example/dispatcher_client/ClientProcessCallBack;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/transsion/aicore/nexusflow/a;

.field public final synthetic c:Lcom/transsion/aicore/nexusflow/FlowCallback;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/transsion/aicore/nexusflow/a;Lcom/transsion/aicore/nexusflow/FlowCallback;)V
    .registers 4

    iput-object p1, p0, Lcom/transsion/aicore/nexusflow/b;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/aicore/nexusflow/b;->b:Lcom/transsion/aicore/nexusflow/a;

    iput-object p3, p0, Lcom/transsion/aicore/nexusflow/b;->c:Lcom/transsion/aicore/nexusflow/FlowCallback;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(Landroid/os/Bundle;)V
    .registers 7

    const-string v0, "FlowManager"

    const-string v1, "result"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_7
    sget-object v1, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    iget-object v2, p0, Lcom/transsion/aicore/nexusflow/b;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Local-Bridge] onResult called for flowId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/b;->b:Lcom/transsion/aicore/nexusflow/a;

    iget-object v2, p0, Lcom/transsion/aicore/nexusflow/b;->a:Ljava/lang/String;

    const/4 v3, 0x0

    .line 3
    invoke-virtual {v1, v2, p1, v3}, Lcom/transsion/aicore/nexusflow/a;->a(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ParcelFileDescriptor;)V
    :try_end_27
    .catchall {:try_start_7 .. :try_end_27} :catchall_28

    return-void

    :catchall_28
    move-exception p1

    .line 4
    sget-object v1, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    const-string v2, "Error in local dispatch onResult"

    invoke-virtual {v1, v0, v2, p1}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/b;->c:Lcom/transsion/aicore/nexusflow/FlowCallback;

    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/b;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Local Bridge Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/transsion/aicore/nexusflow/FlowCallback;->onFlowError(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/transsion/aicore/nexusflow/b;->b:Lcom/transsion/aicore/nexusflow/a;

    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/b;->a:Ljava/lang/String;

    .line 8
    invoke-virtual {p1, p0}, Lcom/transsion/aicore/nexusflow/a;->a(Ljava/lang/String;)V

    return-void
.end method
