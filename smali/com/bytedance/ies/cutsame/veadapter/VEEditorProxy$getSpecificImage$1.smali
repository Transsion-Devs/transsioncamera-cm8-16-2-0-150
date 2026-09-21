.class final Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$getSpecificImage$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy;->getSpecificImage(IIILkotlin/jvm/functions/Function1;)V
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
    c = "com.bytedance.ies.cutsame.veadapter.VEEditorProxy$getSpecificImage$1"
    f = "VEEditorProxy.kt"
    l = {
        0x76,
        0x2e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $block:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field final synthetic $height:I

.field final synthetic $timeStamp:I

.field final synthetic $width:I

.field I$0:I

.field I$1:I

.field I$2:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function1;Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy;IIILkotlin/coroutines/Continuation;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1;",
            "Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy;",
            "III",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$getSpecificImage$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$getSpecificImage$1;->$block:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$getSpecificImage$1;->this$0:Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy;

    iput p3, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$getSpecificImage$1;->$timeStamp:I

    iput p4, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$getSpecificImage$1;->$width:I

    iput p5, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$getSpecificImage$1;->$height:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 10
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

    new-instance v0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$getSpecificImage$1;

    iget-object v1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$getSpecificImage$1;->$block:Lkotlin/jvm/functions/Function1;

    iget-object v2, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$getSpecificImage$1;->this$0:Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy;

    iget v3, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$getSpecificImage$1;->$timeStamp:I

    iget v4, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$getSpecificImage$1;->$width:I

    iget v5, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$getSpecificImage$1;->$height:I

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$getSpecificImage$1;-><init>(Lkotlin/jvm/functions/Function1;Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy;IIILkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$getSpecificImage$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$getSpecificImage$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$getSpecificImage$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$getSpecificImage$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 15

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 44
    iget v1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$getSpecificImage$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_45

    if-eq v1, v3, :cond_28

    if-ne v1, v2, :cond_20

    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$getSpecificImage$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$getSpecificImage$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/sync/Mutex;

    :try_start_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1c

    goto/16 :goto_8c

    :catchall_1c
    move-exception v0

    move-object p1, v0

    goto/16 :goto_ab

    .line 53
    :cond_20
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 44
    :cond_28
    iget v1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$getSpecificImage$1;->I$2:I

    iget v3, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$getSpecificImage$1;->I$1:I

    iget v5, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$getSpecificImage$1;->I$0:I

    iget-object v6, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$getSpecificImage$1;->L$2:Ljava/lang/Object;

    check-cast v6, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy;

    iget-object v7, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$getSpecificImage$1;->L$1:Ljava/lang/Object;

    check-cast v7, Lkotlin/jvm/functions/Function1;

    iget-object v8, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$getSpecificImage$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/sync/Mutex;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, v7

    move-object v7, v6

    move-object v6, p1

    move v10, v1

    move v9, v3

    move-object p1, v8

    :goto_43
    move v8, v5

    goto :goto_71

    :cond_45
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 45
    # getter for: Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxyKt;->IMAGE_GETTER_MUTEX:Lkotlinx/coroutines/sync/Mutex;
    invoke-static {}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxyKt;->access$getIMAGE_GETTER_MUTEX$p()Lkotlinx/coroutines/sync/Mutex;

    move-result-object p1

    iget-object v7, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$getSpecificImage$1;->$block:Lkotlin/jvm/functions/Function1;

    iget-object v6, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$getSpecificImage$1;->this$0:Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy;

    iget v5, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$getSpecificImage$1;->$timeStamp:I

    iget v1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$getSpecificImage$1;->$width:I

    iget v8, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$getSpecificImage$1;->$height:I

    .line 118
    iput-object p1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$getSpecificImage$1;->L$0:Ljava/lang/Object;

    iput-object v7, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$getSpecificImage$1;->L$1:Ljava/lang/Object;

    iput-object v6, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$getSpecificImage$1;->L$2:Ljava/lang/Object;

    iput v5, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$getSpecificImage$1;->I$0:I

    iput v1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$getSpecificImage$1;->I$1:I

    iput v8, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$getSpecificImage$1;->I$2:I

    iput v3, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$getSpecificImage$1;->label:I

    invoke-interface {p1, v4, p0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_6b

    goto :goto_87

    :cond_6b
    move-object v9, v7

    move-object v7, v6

    move-object v6, v9

    move v9, v1

    move v10, v8

    goto :goto_43

    .line 46
    :goto_71
    :try_start_71
    new-instance v5, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$getSpecificImage$1$1$isTimeOut$1;

    const/4 v11, 0x0

    invoke-direct/range {v5 .. v11}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$getSpecificImage$1$1$isTimeOut$1;-><init>(Lkotlin/jvm/functions/Function1;Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy;IIILkotlin/coroutines/Continuation;)V

    iput-object p1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$getSpecificImage$1;->L$0:Ljava/lang/Object;

    iput-object v6, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$getSpecificImage$1;->L$1:Ljava/lang/Object;

    iput-object v4, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$getSpecificImage$1;->L$2:Ljava/lang/Object;

    iput v2, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$getSpecificImage$1;->label:I

    const-wide/16 v1, 0x1388

    invoke-static {v1, v2, v5, p0}, Lkotlinx/coroutines/TimeoutKt;->withTimeoutOrNull(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0
    :try_end_85
    .catchall {:try_start_71 .. :try_end_85} :catchall_a6

    if-ne p0, v0, :cond_88

    :goto_87
    return-object v0

    :cond_88
    move-object v0, p1

    move-object p1, p0

    move-object p0, v0

    move-object v0, v6

    .line 44
    :goto_8c
    :try_start_8c
    check-cast p1, Ljava/lang/Boolean;

    .line 50
    const-string v1, "VEEditorProxy"

    const-string v2, "getSpecificImage: time end "

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_9e

    .line 51
    invoke-interface {v0, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :cond_9e
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_a0
    .catchall {:try_start_8c .. :try_end_a0} :catchall_1c

    .line 122
    invoke-interface {p0, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 53
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :catchall_a6
    move-exception v0

    move-object p0, v0

    move-object v12, p1

    move-object p1, p0

    move-object p0, v12

    .line 122
    :goto_ab
    invoke-interface {p0, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method
