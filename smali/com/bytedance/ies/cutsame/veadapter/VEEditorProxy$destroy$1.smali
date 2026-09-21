.class final Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$destroy$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy;->destroy(Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.bytedance.ies.cutsame.veadapter.VEEditorProxy$destroy$1"
    f = "VEEditorProxy.kt"
    l = {
        0x76
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $callback:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy;


# direct methods
.method constructor <init>(Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$destroy$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$destroy$1;->this$0:Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy;

    iput-object p2, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$destroy$1;->$callback:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$destroy$1;

    iget-object v1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$destroy$1;->this$0:Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy;

    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$destroy$1;->$callback:Lkotlin/jvm/functions/Function0;

    invoke-direct {v0, v1, p0, p2}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$destroy$1;-><init>(Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$destroy$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$destroy$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$destroy$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$destroy$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$destroy$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 101
    iget v1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$destroy$1;->label:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_28

    if-ne v1, v2, :cond_20

    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$destroy$1;->L$3:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    iget-object v1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$destroy$1;->L$2:Ljava/lang/Object;

    check-cast v1, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy;

    iget-object v4, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$destroy$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/sync/Mutex;

    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$destroy$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4a

    .line 110
    :cond_20
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 101
    :cond_28
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$destroy$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 102
    # getter for: Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxyKt;->IMAGE_GETTER_MUTEX:Lkotlinx/coroutines/sync/Mutex;
    invoke-static {}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxyKt;->access$getIMAGE_GETTER_MUTEX$p()Lkotlinx/coroutines/sync/Mutex;

    move-result-object v4

    iget-object v1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$destroy$1;->this$0:Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy;

    iget-object v5, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$destroy$1;->$callback:Lkotlin/jvm/functions/Function0;

    .line 118
    iput-object p1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$destroy$1;->L$0:Ljava/lang/Object;

    iput-object v4, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$destroy$1;->L$1:Ljava/lang/Object;

    iput-object v1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$destroy$1;->L$2:Ljava/lang/Object;

    iput-object v5, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$destroy$1;->L$3:Ljava/lang/Object;

    iput v2, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$destroy$1;->label:I

    invoke-interface {v4, v3, p0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_48

    return-object v0

    :cond_48
    move-object p0, p1

    move-object v0, v5

    .line 104
    :goto_4a
    :try_start_4a
    const-string p1, "VEEditorProxy"

    const-string v5, "destroy"

    invoke-static {p1, v5}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    # getter for: Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy;->editor:Lcom/ss/android/vesdk/VEEditor;
    invoke-static {v1}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy;->access$getEditor$p(Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy;)Lcom/ss/android/vesdk/VEEditor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEEditor;->destroy()V

    .line 106
    invoke-interface {p0}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p0

    invoke-static {p0, v3, v2, v3}, Lkotlinx/coroutines/JobKt;->cancel$default(Lkotlin/coroutines/CoroutineContext;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 107
    # getter for: Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy;->singleDispatcher:Lkotlinx/coroutines/ExecutorCoroutineDispatcher;
    invoke-static {v1}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy;->access$getSingleDispatcher$p(Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy;)Lkotlinx/coroutines/ExecutorCoroutineDispatcher;

    move-result-object p0

    invoke-virtual {p0}, Lkotlinx/coroutines/ExecutorCoroutineDispatcher;->close()V

    .line 108
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 109
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_6b
    .catchall {:try_start_4a .. :try_end_6b} :catchall_71

    .line 122
    invoke-interface {v4, v3}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 110
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :catchall_71
    move-exception p0

    .line 122
    invoke-interface {v4, v3}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0
.end method
