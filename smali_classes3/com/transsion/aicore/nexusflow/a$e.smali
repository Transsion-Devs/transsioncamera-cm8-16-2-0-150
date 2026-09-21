.class public final Lcom/transsion/aicore/nexusflow/a$e;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/aicore/nexusflow/a;->a(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ParcelFileDescriptor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/os/ParcelFileDescriptor;

.field public final synthetic b:Lcom/transsion/aicore/nexusflow/FlowCallback;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/os/ParcelFileDescriptor;Lcom/transsion/aicore/nexusflow/FlowCallback;Ljava/lang/String;Landroid/os/Bundle;Lkotlin/coroutines/Continuation;)V
    .registers 6

    iput-object p1, p0, Lcom/transsion/aicore/nexusflow/a$e;->a:Landroid/os/ParcelFileDescriptor;

    iput-object p2, p0, Lcom/transsion/aicore/nexusflow/a$e;->b:Lcom/transsion/aicore/nexusflow/FlowCallback;

    iput-object p3, p0, Lcom/transsion/aicore/nexusflow/a$e;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/transsion/aicore/nexusflow/a$e;->d:Landroid/os/Bundle;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 9

    new-instance v0, Lcom/transsion/aicore/nexusflow/a$e;

    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/a$e;->a:Landroid/os/ParcelFileDescriptor;

    iget-object v2, p0, Lcom/transsion/aicore/nexusflow/a$e;->b:Lcom/transsion/aicore/nexusflow/FlowCallback;

    iget-object v3, p0, Lcom/transsion/aicore/nexusflow/a$e;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/transsion/aicore/nexusflow/a$e;->d:Landroid/os/Bundle;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/transsion/aicore/nexusflow/a$e;-><init>(Landroid/os/ParcelFileDescriptor;Lcom/transsion/aicore/nexusflow/FlowCallback;Ljava/lang/String;Landroid/os/Bundle;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/aicore/nexusflow/a$e;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/transsion/aicore/nexusflow/a$e;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/transsion/aicore/nexusflow/a$e;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    sget-object p1, Lcom/transsion/aicore/nexusflow/SafeExecutor;->INSTANCE:Lcom/transsion/aicore/nexusflow/SafeExecutor;

    const-string p1, "FlowManager"

    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/a$e;->a:Landroid/os/ParcelFileDescriptor;

    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/a$e;->b:Lcom/transsion/aicore/nexusflow/FlowCallback;

    iget-object v2, p0, Lcom/transsion/aicore/nexusflow/a$e;->c:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/a$e;->d:Landroid/os/Bundle;

    .line 3
    :try_start_12
    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v3, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_17
    .catch Landroid/os/DeadObjectException; {:try_start_12 .. :try_end_17} :catch_3e
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_17} :catch_3c
    .catch Ljava/lang/Error; {:try_start_12 .. :try_end_17} :catch_3a
    .catchall {:try_start_12 .. :try_end_17} :catchall_38

    const/16 v0, 0x780

    .line 4
    :try_start_19
    new-array v0, v0, [B

    .line 5
    invoke-virtual {v3, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_30

    .line 7
    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    const-string v4, "copyOf(...)"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2, p0, v0}, Lcom/transsion/aicore/nexusflow/FlowCallback;->onComponentTrickle(Ljava/lang/String;Landroid/os/Bundle;[B)V

    goto :goto_30

    :catchall_2e
    move-exception p0

    goto :goto_40

    .line 9
    :cond_30
    :goto_30
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_32
    .catchall {:try_start_19 .. :try_end_32} :catchall_2e

    const/4 p0, 0x0

    .line 10
    :try_start_33
    invoke-static {v3, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_36
    .catch Landroid/os/DeadObjectException; {:try_start_33 .. :try_end_36} :catch_3e
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_36} :catch_3c
    .catch Ljava/lang/Error; {:try_start_33 .. :try_end_36} :catch_3a
    .catchall {:try_start_33 .. :try_end_36} :catchall_38

    goto/16 :goto_b1

    :catchall_38
    move-exception p0

    goto :goto_46

    :catch_3a
    move-exception p0

    goto :goto_61

    :catch_3c
    move-exception p0

    goto :goto_7c

    :catch_3e
    move-exception p0

    goto :goto_97

    .line 11
    :goto_40
    :try_start_40
    throw p0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_41

    :catchall_41
    move-exception v0

    :try_start_42
    invoke-static {v3, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_46
    .catch Landroid/os/DeadObjectException; {:try_start_42 .. :try_end_46} :catch_3e
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_46} :catch_3c
    .catch Ljava/lang/Error; {:try_start_42 .. :try_end_46} :catch_3a
    .catchall {:try_start_42 .. :try_end_46} :catchall_38

    .line 12
    :goto_46
    sget-object v0, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Safe execution failed with Throwable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b1

    .line 13
    :goto_61
    sget-object v0, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Safe execution failed with Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b1

    .line 14
    :goto_7c
    sget-object v0, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Safe execution failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b1

    .line 15
    :goto_97
    sget-object v0, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Safe execution failed due to DeadObjectException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    :goto_b1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
