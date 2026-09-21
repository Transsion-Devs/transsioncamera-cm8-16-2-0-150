.class public final Lcom/transsion/aicore/nexusflow/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/aicore/nexusflow/FlowResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/aicore/nexusflow/a;->a(Ljava/lang/String;Lcom/transsion/aicore/nexusflow/FlowConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/transsion/aicore/nexusflow/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/transsion/aicore/nexusflow/a;)V
    .registers 3

    iput-object p1, p0, Lcom/transsion/aicore/nexusflow/a$c;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/aicore/nexusflow/a$c;->b:Lcom/transsion/aicore/nexusflow/a;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/String;)V
    .registers 11

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/a$c;->b:Lcom/transsion/aicore/nexusflow/a;

    .line 2
    iget-object v0, v0, Lcom/transsion/aicore/nexusflow/a;->h:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/a$c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/aicore/nexusflow/FlowConfig;

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 4
    invoke-virtual {v0}, Lcom/transsion/aicore/nexusflow/FlowConfig;->getExecutionMode()Lcom/transsion/aicore/nexusflow/ExecutionMode;

    move-result-object v0

    goto :goto_1a

    :cond_19
    move-object v0, v1

    :goto_1a
    sget-object v2, Lcom/transsion/aicore/nexusflow/ExecutionMode;->SYNC:Lcom/transsion/aicore/nexusflow/ExecutionMode;

    if-ne v0, v2, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    .line 5
    :goto_21
    sget-object v2, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    .line 7
    iget-object v3, p0, Lcom/transsion/aicore/nexusflow/a$c;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SYNC_DEBUG] Flow error for flowId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", error: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mode isSync: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    .line 8
    const-string v3, "FlowManager"

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e$default(Lcom/transsion/aicore/nexusflow/utils/NFLog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 13
    sget-object v3, Lcom/transsion/aicore/nexusflow/utils/BundleUtils;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/BundleUtils;

    if-eqz v0, :cond_55

    const/16 v4, -0x3ec

    goto :goto_57

    :cond_55
    const/16 v4, -0x3ed

    :goto_57
    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v5, p1

    .line 14
    invoke-static/range {v3 .. v8}, Lcom/transsion/aicore/nexusflow/utils/BundleUtils;->createErrorBundle$default(Lcom/transsion/aicore/nexusflow/utils/BundleUtils;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Landroid/os/Bundle;

    move-result-object p1

    .line 17
    iget-object v3, p0, Lcom/transsion/aicore/nexusflow/a$c;->a:Ljava/lang/String;

    .line 18
    const-string v4, "flowId"

    invoke-virtual {p1, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    const-string v3, "flow_status"

    const-string v4, "ERROR"

    invoke-virtual {p1, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "FlowManager"

    if-eqz v0, :cond_96

    .line 29
    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/a$c;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SYNC_DEBUG] Completing sync waiter with error for flowId: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 30
    invoke-virtual {v2, v3, v0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/a$c;->b:Lcom/transsion/aicore/nexusflow/a;

    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/a$c;->a:Ljava/lang/String;

    .line 35
    invoke-virtual {v0, v1, p1}, Lcom/transsion/aicore/nexusflow/a;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 36
    iget-object p1, p0, Lcom/transsion/aicore/nexusflow/a$c;->b:Lcom/transsion/aicore/nexusflow/a;

    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/a$c;->a:Ljava/lang/String;

    .line 37
    invoke-virtual {p1, p0}, Lcom/transsion/aicore/nexusflow/a;->a(Ljava/lang/String;)V

    return-void

    .line 38
    :cond_96
    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/a$c;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[ASYNC_DEBUG] Handling flow error for flowId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/a$c;->b:Lcom/transsion/aicore/nexusflow/a;

    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/a$c;->a:Ljava/lang/String;

    .line 40
    invoke-virtual {v0, p0, p1, v1}, Lcom/transsion/aicore/nexusflow/a;->a(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ParcelFileDescriptor;)V

    return-void
.end method

.method public final onResult(Landroid/os/Bundle;)V
    .registers 8

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-string v0, "flowId"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/a$c;->a:Ljava/lang/String;

    .line 3
    :cond_f
    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/a$c;->b:Lcom/transsion/aicore/nexusflow/a;

    .line 4
    iget-object v1, v1, Lcom/transsion/aicore/nexusflow/a;->h:Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/aicore/nexusflow/FlowConfig;

    const/4 v2, 0x0

    if-eqz v1, :cond_21

    .line 6
    invoke-virtual {v1}, Lcom/transsion/aicore/nexusflow/FlowConfig;->getExecutionMode()Lcom/transsion/aicore/nexusflow/ExecutionMode;

    move-result-object v1

    goto :goto_22

    :cond_21
    move-object v1, v2

    :goto_22
    sget-object v3, Lcom/transsion/aicore/nexusflow/ExecutionMode;->SYNC:Lcom/transsion/aicore/nexusflow/ExecutionMode;

    if-ne v1, v3, :cond_28

    const/4 v1, 0x1

    goto :goto_29

    :cond_28
    const/4 v1, 0x0

    .line 7
    :goto_29
    sget-object v3, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    .line 9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SYNC_DEBUG] Flow result received for flowId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", mode: isSync: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 10
    const-string v5, "FlowManager"

    invoke-virtual {v3, v5, v4}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_6a

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SYNC_DEBUG] Completing sync waiter for flowId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 19
    invoke-virtual {v3, v5, v1}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/a$c;->b:Lcom/transsion/aicore/nexusflow/a;

    .line 24
    invoke-virtual {v1, v0, p1}, Lcom/transsion/aicore/nexusflow/a;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 25
    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/a$c;->b:Lcom/transsion/aicore/nexusflow/a;

    .line 26
    invoke-virtual {p0, v0}, Lcom/transsion/aicore/nexusflow/a;->a(Ljava/lang/String;)V

    return-void

    .line 27
    :cond_6a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ASYNC_DEBUG] Handling flow result for flowId: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v5, v1}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/a$c;->b:Lcom/transsion/aicore/nexusflow/a;

    .line 29
    invoke-virtual {p0, v0, p1, v2}, Lcom/transsion/aicore/nexusflow/a;->a(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ParcelFileDescriptor;)V

    return-void
.end method

.method public final onStreamResult(Landroid/os/Bundle;Landroid/os/ParcelFileDescriptor;)V
    .registers 11

    .line 1
    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/a$c;->b:Lcom/transsion/aicore/nexusflow/a;

    .line 2
    iget-object v0, v0, Lcom/transsion/aicore/nexusflow/a;->h:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/a$c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/aicore/nexusflow/FlowConfig;

    if-eqz v0, :cond_13

    .line 4
    invoke-virtual {v0}, Lcom/transsion/aicore/nexusflow/FlowConfig;->getExecutionMode()Lcom/transsion/aicore/nexusflow/ExecutionMode;

    move-result-object v0

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    sget-object v1, Lcom/transsion/aicore/nexusflow/ExecutionMode;->SYNC:Lcom/transsion/aicore/nexusflow/ExecutionMode;

    if-ne v0, v1, :cond_36

    .line 6
    sget-object v2, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/a$c;->a:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Sync flow received stream result, ignoring. flowId="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, "FlowManager"

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->w$default(Lcom/transsion/aicore/nexusflow/utils/NFLog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-void

    :cond_36
    if-eqz p1, :cond_40

    .line 9
    const-string v0, "flowId"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_42

    :cond_40
    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/a$c;->a:Ljava/lang/String;

    .line 10
    :cond_42
    sget-object v1, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Flow stream result received for flowId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FlowManager"

    invoke-virtual {v1, v3, v2}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_61

    .line 11
    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/a$c;->b:Lcom/transsion/aicore/nexusflow/a;

    .line 12
    invoke-virtual {p0, v0, p1, p2}, Lcom/transsion/aicore/nexusflow/a;->a(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ParcelFileDescriptor;)V

    :cond_61
    return-void
.end method
