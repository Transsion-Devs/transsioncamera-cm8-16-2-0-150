.class public final Lcom/transsion/aicore/nexusflow/FlowBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/aicore/nexusflow/FlowBuilder$a;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/transsion/aicore/nexusflow/FlowBuilder$a;

.field private static final counter:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private final applicationContext:Landroid/content/Context;

.field private callback:Lcom/transsion/aicore/nexusflow/FlowCallback;

.field private callerPid:I

.field private callerProcessName:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private disableTimeout:Z

.field private executionMode:Lcom/transsion/aicore/nexusflow/ExecutionMode;

.field private executionPolicy:Ljava/lang/String;

.field private flowInstanceId:Ljava/lang/String;

.field private final instanceId:Ljava/lang/String;

.field private isStreaming:Z

.field private method:Ljava/lang/String;

.field private params:Landroid/os/Bundle;

.field private final tempFiles:Ljava/util/List;

.field private timeoutMs:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/transsion/aicore/nexusflow/FlowBuilder$a;

    invoke-direct {v0}, Lcom/transsion/aicore/nexusflow/FlowBuilder$a;-><init>()V

    sput-object v0, Lcom/transsion/aicore/nexusflow/FlowBuilder;->Companion:Lcom/transsion/aicore/nexusflow/FlowBuilder$a;

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/transsion/aicore/nexusflow/FlowBuilder;->counter:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "instanceId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/transsion/aicore/nexusflow/FlowBuilder;->context:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/transsion/aicore/nexusflow/FlowBuilder;->instanceId:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "getApplicationContext(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/aicore/nexusflow/FlowBuilder;->applicationContext:Landroid/content/Context;

    .line 7
    const-string p1, "preemptive"

    iput-object p1, p0, Lcom/transsion/aicore/nexusflow/FlowBuilder;->executionPolicy:Ljava/lang/String;

    .line 8
    const-string p1, " "

    iput-object p1, p0, Lcom/transsion/aicore/nexusflow/FlowBuilder;->method:Ljava/lang/String;

    const/4 p1, -0x1

    .line 12
    iput p1, p0, Lcom/transsion/aicore/nexusflow/FlowBuilder;->callerPid:I

    .line 13
    sget-object p1, Lcom/transsion/aicore/nexusflow/ExecutionMode;->ASYNC:Lcom/transsion/aicore/nexusflow/ExecutionMode;

    iput-object p1, p0, Lcom/transsion/aicore/nexusflow/FlowBuilder;->executionMode:Lcom/transsion/aicore/nexusflow/ExecutionMode;

    .line 15
    const-string p1, ""

    iput-object p1, p0, Lcom/transsion/aicore/nexusflow/FlowBuilder;->flowInstanceId:Ljava/lang/String;

    const-wide/16 p1, 0x7530

    .line 16
    iput-wide p1, p0, Lcom/transsion/aicore/nexusflow/FlowBuilder;->timeoutMs:J

    .line 20
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/aicore/nexusflow/FlowBuilder;->tempFiles:Ljava/util/List;

    .line 24
    sget-object p0, Lcom/transsion/aicore/nexusflow/SafeExecutor;->INSTANCE:Lcom/transsion/aicore/nexusflow/SafeExecutor;

    const-string p0, "FlowBuilder"

    .line 34
    :try_start_3e
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_40
    .catch Landroid/os/DeadObjectException; {:try_start_3e .. :try_end_40} :catch_95
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_40} :catch_79
    .catch Ljava/lang/Error; {:try_start_3e .. :try_end_40} :catch_5d
    .catchall {:try_start_3e .. :try_end_40} :catchall_41

    return-void

    :catchall_41
    move-exception p1

    .line 35
    sget-object p2, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Safe execution failed with Throwable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p0, v0, p1}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b0

    :catch_5d
    move-exception p1

    .line 36
    sget-object p2, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Safe execution failed with Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p0, v0, p1}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b0

    :catch_79
    move-exception p1

    .line 37
    sget-object p2, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Safe execution failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p0, v0, p1}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b0

    :catch_95
    move-exception p1

    .line 38
    sget-object p2, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Safe execution failed due to DeadObjectException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p0, v0, p1}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_b0
    return-void
.end method

.method public static final synthetic access$getCounter$cp()Ljava/util/concurrent/atomic/AtomicLong;
    .registers 1

    .line 1
    sget-object v0, Lcom/transsion/aicore/nexusflow/FlowBuilder;->counter:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method private final cleanupTempFiles()V
    .registers 11

    .line 1
    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/FlowBuilder;->tempFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11f

    .line 2
    sget-object v0, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/FlowBuilder;->tempFiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cleaning up "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " temporary files..."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NexusFlow.Builder"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/FlowBuilder;->tempFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_31
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 4
    sget-object v3, Lcom/transsion/aicore/nexusflow/SafeExecutor;->INSTANCE:Lcom/transsion/aicore/nexusflow/SafeExecutor;

    .line 5
    :try_start_3f
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_91

    .line 6
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_74

    .line 8
    sget-object v4, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    .line 9
    const-string v5, "NexusFlow.Builder"

    .line 10
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to delete temporary file: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v7, 0x0

    .line 11
    invoke-static/range {v4 .. v9}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->w$default(Lcom/transsion/aicore/nexusflow/utils/NFLog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_8e

    :catchall_6b
    move-exception v0

    goto :goto_aa

    :catch_6d
    move-exception v0

    goto :goto_c6

    :catch_6f
    move-exception v0

    goto :goto_e2

    :catch_71
    move-exception v0

    goto/16 :goto_fe

    .line 16
    :cond_74
    sget-object v3, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    .line 18
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Successfully deleted temporary file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-virtual {v3, v2, v0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_8e
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_31

    .line 25
    :cond_91
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Temporary file already deleted or does not exist: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a9
    .catch Landroid/os/DeadObjectException; {:try_start_3f .. :try_end_a9} :catch_71
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_a9} :catch_6f
    .catch Ljava/lang/Error; {:try_start_3f .. :try_end_a9} :catch_6d
    .catchall {:try_start_3f .. :try_end_a9} :catchall_6b

    goto :goto_31

    .line 26
    :goto_aa
    sget-object v3, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Safe execution failed with Throwable: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4, v0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_31

    .line 27
    :goto_c6
    sget-object v3, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Safe execution failed with Error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4, v0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_31

    .line 28
    :goto_e2
    sget-object v3, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Safe execution failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4, v0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_31

    .line 29
    :goto_fe
    sget-object v3, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Safe execution failed due to DeadObjectException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4, v0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_31

    .line 30
    :cond_11a
    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/FlowBuilder;->tempFiles:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_11f
    return-void
.end method

.method private final createDefaultErrorConfig()Lcom/transsion/aicore/nexusflow/FlowConfig;
    .registers 18

    move-object/from16 v0, p0

    .line 1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2
    const-string v1, "success"

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3
    const-string v1, "error"

    const-string v3, "FlowBuilder failed to build FlowConfig"

    invoke-virtual {v2, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    const-string v1, "ErrorCode"

    const-string v3, "BUILDER_ERROR"

    invoke-virtual {v2, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v1, v0, Lcom/transsion/aicore/nexusflow/FlowBuilder;->applicationContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/aicore/nexusflow/FlowBuilder;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 10
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    .line 11
    iget-object v5, v0, Lcom/transsion/aicore/nexusflow/FlowBuilder;->instanceId:Ljava/lang/String;

    .line 13
    sget-object v7, Lcom/transsion/aicore/nexusflow/ExecutionMode;->ASYNC:Lcom/transsion/aicore/nexusflow/ExecutionMode;

    .line 18
    iget-object v13, v0, Lcom/transsion/aicore/nexusflow/FlowBuilder;->tempFiles:Ljava/util/List;

    .line 19
    new-instance v0, Lcom/transsion/aicore/nexusflow/FlowConfig;

    const/16 v15, 0x1000

    const/16 v16, 0x0

    const-string v1, "UNKNOWN_METHOD"

    const-string v6, "-1"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x1

    const/4 v14, 0x0

    invoke-direct/range {v0 .. v16}, Lcom/transsion/aicore/nexusflow/FlowConfig;-><init>(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/transsion/aicore/nexusflow/ExecutionMode;ZLcom/transsion/aicore/nexusflow/FlowCallback;JZLjava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method private final getProcessName(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    .line 1
    sget-object p0, Lcom/transsion/aicore/nexusflow/SafeExecutor;->INSTANCE:Lcom/transsion/aicore/nexusflow/SafeExecutor;

    const-string p0, "NexusFlow.Builder"

    .line 2
    :try_start_4
    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "getProcessName(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_d
    .catch Landroid/os/DeadObjectException; {:try_start_4 .. :try_end_d} :catch_14
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_d} :catch_12
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_d} :catch_10
    .catchall {:try_start_4 .. :try_end_d} :catchall_e

    return-object p1

    :catchall_e
    move-exception p1

    goto :goto_16

    :catch_10
    move-exception p1

    goto :goto_31

    :catch_12
    move-exception p1

    goto :goto_4c

    :catch_14
    move-exception p1

    goto :goto_67

    .line 3
    :goto_16
    sget-object v0, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Safe execution failed with Throwable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1, p1}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_81

    .line 4
    :goto_31
    sget-object v0, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Safe execution failed with Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1, p1}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_81

    .line 5
    :goto_4c
    sget-object v0, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Safe execution failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1, p1}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_81

    .line 6
    :goto_67
    sget-object v0, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Safe execution failed due to DeadObjectException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1, p1}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_81
    const-string/jumbo p0, "unknown"

    return-object p0
.end method


# virtual methods
.method public final build()Lcom/transsion/aicore/nexusflow/FlowConfig;
    .registers 20

    move-object/from16 v0, p0

    .line 1
    sget-object v1, Lcom/transsion/aicore/nexusflow/SafeExecutor;->INSTANCE:Lcom/transsion/aicore/nexusflow/SafeExecutor;

    .line 2
    invoke-direct {v0}, Lcom/transsion/aicore/nexusflow/FlowBuilder;->createDefaultErrorConfig()Lcom/transsion/aicore/nexusflow/FlowConfig;

    move-result-object v1

    .line 3
    const-string v2, "FlowBuilder"

    .line 6
    :try_start_a
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 11
    iget-object v3, v0, Lcom/transsion/aicore/nexusflow/FlowBuilder;->params:Landroid/os/Bundle;

    if-eqz v3, :cond_2b

    .line 12
    invoke-virtual {v5, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_2b

    :catchall_17
    move-exception v0

    move-object/from16 v18, v1

    goto/16 :goto_cf

    :catch_1c
    move-exception v0

    move-object/from16 v18, v1

    goto/16 :goto_ea

    :catch_21
    move-exception v0

    move-object/from16 v18, v1

    goto/16 :goto_105

    :catch_26
    move-exception v0

    move-object/from16 v18, v1

    goto/16 :goto_120

    .line 15
    :cond_2b
    :goto_2b
    iget-object v3, v0, Lcom/transsion/aicore/nexusflow/FlowBuilder;->flowInstanceId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_37

    .line 16
    iget-object v3, v0, Lcom/transsion/aicore/nexusflow/FlowBuilder;->flowInstanceId:Ljava/lang/String;

    :goto_35
    move-object v9, v3

    goto :goto_41

    .line 18
    :cond_37
    sget-object v3, Lcom/transsion/aicore/nexusflow/FlowBuilder;->Companion:Lcom/transsion/aicore/nexusflow/FlowBuilder$a;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/transsion/aicore/nexusflow/FlowBuilder$a;->a()Ljava/lang/String;

    move-result-object v3

    goto :goto_35

    .line 23
    :goto_41
    iget-object v3, v0, Lcom/transsion/aicore/nexusflow/FlowBuilder;->callerProcessName:Ljava/lang/String;

    if-nez v3, :cond_4b

    iget-object v3, v0, Lcom/transsion/aicore/nexusflow/FlowBuilder;->applicationContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/transsion/aicore/nexusflow/FlowBuilder;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    :cond_4b
    move-object v6, v3

    .line 24
    iget v3, v0, Lcom/transsion/aicore/nexusflow/FlowBuilder;->callerPid:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_53

    :goto_51
    move v7, v3

    goto :goto_58

    :cond_53
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    goto :goto_51

    .line 26
    :goto_58
    sget-object v10, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    .line 27
    const-string v3, "NexusFlow.Builder"

    .line 28
    iget-object v4, v0, Lcom/transsion/aicore/nexusflow/FlowBuilder;->method:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Building FlowConfig: flowId="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", method=\'"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\', pid="

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", processName=\'"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 29
    invoke-virtual {v10, v3, v4}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iget-object v3, v0, Lcom/transsion/aicore/nexusflow/FlowBuilder;->method:Ljava/lang/String;

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a5

    .line 37
    const-string v11, "NexusFlow.Builder"

    const-string v12, "Method is blank or invalid. Using \'UNKNOWN_METHOD\'."

    const/4 v14, 0x4

    const/4 v15, 0x0

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->w$default(Lcom/transsion/aicore/nexusflow/utils/NFLog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 38
    const-string v3, "UNKNOWN_METHOD"

    :goto_a3
    move-object v4, v3

    goto :goto_a8

    .line 40
    :cond_a5
    iget-object v3, v0, Lcom/transsion/aicore/nexusflow/FlowBuilder;->method:Ljava/lang/String;

    goto :goto_a3

    .line 44
    :goto_a8
    new-instance v3, Lcom/transsion/aicore/nexusflow/FlowConfig;

    .line 49
    iget-object v8, v0, Lcom/transsion/aicore/nexusflow/FlowBuilder;->instanceId:Ljava/lang/String;

    .line 51
    iget-object v10, v0, Lcom/transsion/aicore/nexusflow/FlowBuilder;->executionMode:Lcom/transsion/aicore/nexusflow/ExecutionMode;

    .line 52
    iget-boolean v11, v0, Lcom/transsion/aicore/nexusflow/FlowBuilder;->isStreaming:Z

    .line 53
    iget-object v12, v0, Lcom/transsion/aicore/nexusflow/FlowBuilder;->callback:Lcom/transsion/aicore/nexusflow/FlowCallback;

    .line 54
    iget-wide v13, v0, Lcom/transsion/aicore/nexusflow/FlowBuilder;->timeoutMs:J

    .line 55
    iget-boolean v15, v0, Lcom/transsion/aicore/nexusflow/FlowBuilder;->disableTimeout:Z
    :try_end_b6
    .catch Landroid/os/DeadObjectException; {:try_start_a .. :try_end_b6} :catch_26
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_b6} :catch_21
    .catch Ljava/lang/Error; {:try_start_a .. :try_end_b6} :catch_1c
    .catchall {:try_start_a .. :try_end_b6} :catchall_17

    move-object/from16 v18, v1

    .line 56
    :try_start_b8
    iget-object v1, v0, Lcom/transsion/aicore/nexusflow/FlowBuilder;->tempFiles:Ljava/util/List;

    move-object/from16 v16, v1

    .line 57
    iget-object v1, v0, Lcom/transsion/aicore/nexusflow/FlowBuilder;->executionPolicy:Ljava/lang/String;

    move-object/from16 v17, v1

    .line 58
    invoke-direct/range {v3 .. v17}, Lcom/transsion/aicore/nexusflow/FlowConfig;-><init>(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/transsion/aicore/nexusflow/ExecutionMode;ZLcom/transsion/aicore/nexusflow/FlowCallback;JZLjava/util/List;Ljava/lang/String;)V

    .line 75
    invoke-direct {v0}, Lcom/transsion/aicore/nexusflow/FlowBuilder;->cleanupTempFiles()V
    :try_end_c6
    .catch Landroid/os/DeadObjectException; {:try_start_b8 .. :try_end_c6} :catch_cd
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_c6} :catch_cb
    .catch Ljava/lang/Error; {:try_start_b8 .. :try_end_c6} :catch_c9
    .catchall {:try_start_b8 .. :try_end_c6} :catchall_c7

    return-object v3

    :catchall_c7
    move-exception v0

    goto :goto_cf

    :catch_c9
    move-exception v0

    goto :goto_ea

    :catch_cb
    move-exception v0

    goto :goto_105

    :catch_cd
    move-exception v0

    goto :goto_120

    .line 76
    :goto_cf
    sget-object v1, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Safe execution failed with Throwable: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_13a

    .line 77
    :goto_ea
    sget-object v1, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Safe execution failed with Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_13a

    .line 78
    :goto_105
    sget-object v1, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Safe execution failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_13a

    .line 79
    :goto_120
    sget-object v1, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Safe execution failed due to DeadObjectException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_13a
    return-object v18
.end method

.method public final callback(Lcom/transsion/aicore/nexusflow/FlowCallback;)Lcom/transsion/aicore/nexusflow/FlowBuilder;
    .registers 7

    .line 1
    sget-object v0, Lcom/transsion/aicore/nexusflow/SafeExecutor;->INSTANCE:Lcom/transsion/aicore/nexusflow/SafeExecutor;

    const-string v0, "FlowBuilder"

    .line 2
    :try_start_4
    iput-object p1, p0, Lcom/transsion/aicore/nexusflow/FlowBuilder;->callback:Lcom/transsion/aicore/nexusflow/FlowCallback;
    :try_end_6
    .catch Landroid/os/DeadObjectException; {:try_start_4 .. :try_end_6} :catch_5b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_6} :catch_3f
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_6} :catch_23
    .catchall {:try_start_4 .. :try_end_6} :catchall_7

    return-object p0

    :catchall_7
    move-exception p1

    .line 3
    sget-object v1, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Safe execution failed with Throwable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2, p1}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_76

    :catch_23
    move-exception p1

    .line 4
    sget-object v1, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Safe execution failed with Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2, p1}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_76

    :catch_3f
    move-exception p1

    .line 5
    sget-object v1, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Safe execution failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2, p1}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_76

    :catch_5b
    move-exception p1

    .line 6
    sget-object v1, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Safe execution failed due to DeadObjectException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2, p1}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_76
    return-object p0
.end method

.method public final setCallerProcessInfo(Ljava/lang/String;I)Lcom/transsion/aicore/nexusflow/FlowBuilder;
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/transsion/aicore/nexusflow/FlowBuilder;->callerProcessName:Ljava/lang/String;

    .line 2
    iput p2, p0, Lcom/transsion/aicore/nexusflow/FlowBuilder;->callerPid:I

    return-object p0
.end method

.method public final setFlowInstanceId(Ljava/lang/String;)Lcom/transsion/aicore/nexusflow/FlowBuilder;
    .registers 3

    const-string v0, "flowInstanceId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/transsion/aicore/nexusflow/FlowBuilder;->flowInstanceId:Ljava/lang/String;

    return-object p0
.end method

.method public final setMethod(Ljava/lang/String;)Lcom/transsion/aicore/nexusflow/FlowBuilder;
    .registers 3

    const-string v0, "method"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/transsion/aicore/nexusflow/FlowBuilder;->method:Ljava/lang/String;

    return-object p0
.end method

.method public final setParams(Landroid/os/Bundle;)Lcom/transsion/aicore/nexusflow/FlowBuilder;
    .registers 3

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/transsion/aicore/nexusflow/FlowBuilder;->params:Landroid/os/Bundle;

    return-object p0
.end method

.method public final timeout(J)Lcom/transsion/aicore/nexusflow/FlowBuilder;
    .registers 10

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_9

    .line 1
    iput-wide p1, p0, Lcom/transsion/aicore/nexusflow/FlowBuilder;->timeoutMs:J

    return-object p0

    .line 3
    :cond_9
    sget-object v1, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to set invalid timeoutMs: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ". Using previous value."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 6
    const-string v2, "FlowBuilder"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->w$default(Lcom/transsion/aicore/nexusflow/utils/NFLog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-object p0
.end method
