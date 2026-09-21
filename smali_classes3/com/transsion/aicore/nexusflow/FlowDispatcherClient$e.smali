.class public final Lcom/transsion/aicore/nexusflow/FlowDispatcherClient$e;
.super Lcom/transsion/aicore/nexusflow/IFlowCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->triggerFlow(Landroid/os/Bundle;Lcom/transsion/aicore/nexusflow/FlowResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;

.field public final synthetic b:Lcom/transsion/aicore/nexusflow/FlowResultCallback;


# direct methods
.method public constructor <init>(Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;Lcom/transsion/aicore/nexusflow/FlowResultCallback;)V
    .registers 3

    iput-object p1, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient$e;->a:Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;

    iput-object p2, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient$e;->b:Lcom/transsion/aicore/nexusflow/FlowResultCallback;

    .line 1
    invoke-direct {p0}, Lcom/transsion/aicore/nexusflow/IFlowCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(Landroid/os/Bundle;)V
    .registers 10

    const-string v1, "FlowResultCallback"

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_7
    sget-object v2, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient$e;->a:Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;

    # getter for: Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->access$getTAG$p(Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received onResult callback with result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/transsion/aicore/nexusflow/SafeExecutor;->INSTANCE:Lcom/transsion/aicore/nexusflow/SafeExecutor;

    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient$e;->b:Lcom/transsion/aicore/nexusflow/FlowResultCallback;

    if-nez v0, :cond_38

    .line 3
    const-string v3, "FlowResultCallback"

    const-string v4, "Callback is null, skipping execution"

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->w$default(Lcom/transsion/aicore/nexusflow/utils/NFLog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V
    :try_end_33
    .catchall {:try_start_7 .. :try_end_33} :catchall_34

    return-void

    :catchall_34
    move-exception v0

    move-object p1, v0

    goto/16 :goto_b0

    .line 4
    :cond_38
    :try_start_38
    invoke-interface {v0, p1}, Lcom/transsion/aicore/nexusflow/FlowResultCallback;->onResult(Landroid/os/Bundle;)V
    :try_end_3b
    .catch Landroid/os/DeadObjectException; {:try_start_38 .. :try_end_3b} :catch_93
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3b} :catch_76
    .catch Ljava/lang/Error; {:try_start_38 .. :try_end_3b} :catch_59
    .catchall {:try_start_38 .. :try_end_3b} :catchall_3c

    return-void

    :catchall_3c
    move-exception v0

    move-object p1, v0

    .line 5
    :try_start_3e
    sget-object v0, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    .line 7
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Safe callback execution failed with Throwable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-virtual {v0, v1, v2, p1}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_bd

    :catch_59
    move-exception v0

    move-object p1, v0

    .line 9
    sget-object v0, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    .line 11
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Safe callback execution failed with Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 12
    invoke-virtual {v0, v1, v2, p1}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_bd

    :catch_76
    move-exception v0

    move-object p1, v0

    .line 13
    sget-object v0, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Safe callback execution failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_bd

    :catch_93
    move-exception v0

    move-object p1, v0

    .line 14
    sget-object v0, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    .line 16
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Safe callback execution failed due to DeadObjectException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 17
    invoke-virtual {v0, v1, v2, p1}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_af
    .catchall {:try_start_3e .. :try_end_af} :catchall_34

    goto :goto_bd

    .line 18
    :goto_b0
    sget-object v0, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient$e;->a:Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;

    # getter for: Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->TAG:Ljava/lang/String;
    invoke-static {p0}, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->access$getTAG$p(Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Critical error inside onResult binder callback"

    invoke-virtual {v0, p0, v1, p1}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_bd
    return-void
.end method

.method public final onStreamResult(Landroid/os/Bundle;Landroid/os/ParcelFileDescriptor;)V
    .registers 11

    const-string v1, "FlowResultCallback"

    .line 1
    :try_start_2
    sget-object v2, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient$e;->a:Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;

    # getter for: Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->access$getTAG$p(Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Received onStreamResult callback"

    invoke-virtual {v2, v0, v3}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/transsion/aicore/nexusflow/SafeExecutor;->INSTANCE:Lcom/transsion/aicore/nexusflow/SafeExecutor;

    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient$e;->b:Lcom/transsion/aicore/nexusflow/FlowResultCallback;

    if-nez v0, :cond_24

    .line 3
    const-string v3, "FlowResultCallback"

    const-string v4, "Callback is null, skipping execution"

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->w$default(Lcom/transsion/aicore/nexusflow/utils/NFLog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V
    :try_end_1f
    .catchall {:try_start_2 .. :try_end_1f} :catchall_20

    return-void

    :catchall_20
    move-exception v0

    move-object p1, v0

    goto/16 :goto_9c

    .line 4
    :cond_24
    :try_start_24
    invoke-interface {v0, p1, p2}, Lcom/transsion/aicore/nexusflow/FlowResultCallback;->onStreamResult(Landroid/os/Bundle;Landroid/os/ParcelFileDescriptor;)V
    :try_end_27
    .catch Landroid/os/DeadObjectException; {:try_start_24 .. :try_end_27} :catch_7f
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_27} :catch_62
    .catch Ljava/lang/Error; {:try_start_24 .. :try_end_27} :catch_45
    .catchall {:try_start_24 .. :try_end_27} :catchall_28

    return-void

    :catchall_28
    move-exception v0

    move-object p1, v0

    .line 5
    :try_start_2a
    sget-object p2, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    .line 7
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Safe callback execution failed with Throwable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-virtual {p2, v1, v0, p1}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a9

    :catch_45
    move-exception v0

    move-object p1, v0

    .line 9
    sget-object p2, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    .line 11
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Safe callback execution failed with Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-virtual {p2, v1, v0, p1}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a9

    :catch_62
    move-exception v0

    move-object p1, v0

    .line 13
    sget-object p2, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Safe callback execution failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, v0, p1}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a9

    :catch_7f
    move-exception v0

    move-object p1, v0

    .line 14
    sget-object p2, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    .line 16
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Safe callback execution failed due to DeadObjectException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-virtual {p2, v1, v0, p1}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9b
    .catchall {:try_start_2a .. :try_end_9b} :catchall_20

    goto :goto_a9

    .line 18
    :goto_9c
    sget-object p2, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient$e;->a:Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;

    # getter for: Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->TAG:Ljava/lang/String;
    invoke-static {p0}, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->access$getTAG$p(Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Critical error inside onStreamResult binder callback"

    invoke-virtual {p2, p0, v0, p1}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_a9
    return-void
.end method
