.class final Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$getSpecificImage$1$1$isTimeOut$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$getSpecificImage$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.bytedance.ies.cutsame.veadapter.VEEditorProxy$getSpecificImage$1$1$isTimeOut$1"
    f = "VEEditorProxy.kt"
    l = {
        0x2f
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

.field L$0:Ljava/lang/Object;

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
            "Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$getSpecificImage$1$1$isTimeOut$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$getSpecificImage$1$1$isTimeOut$1;->$block:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$getSpecificImage$1$1$isTimeOut$1;->this$0:Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy;

    iput p3, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$getSpecificImage$1$1$isTimeOut$1;->$timeStamp:I

    iput p4, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$getSpecificImage$1$1$isTimeOut$1;->$width:I

    iput p5, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$getSpecificImage$1$1$isTimeOut$1;->$height:I

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

    new-instance v0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$getSpecificImage$1$1$isTimeOut$1;

    iget-object v1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$getSpecificImage$1$1$isTimeOut$1;->$block:Lkotlin/jvm/functions/Function1;

    iget-object v2, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$getSpecificImage$1$1$isTimeOut$1;->this$0:Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy;

    iget v3, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$getSpecificImage$1$1$isTimeOut$1;->$timeStamp:I

    iget v4, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$getSpecificImage$1$1$isTimeOut$1;->$width:I

    iget v5, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$getSpecificImage$1$1$isTimeOut$1;->$height:I

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$getSpecificImage$1$1$isTimeOut$1;-><init>(Lkotlin/jvm/functions/Function1;Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy;IIILkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$getSpecificImage$1$1$isTimeOut$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$getSpecificImage$1$1$isTimeOut$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$getSpecificImage$1$1$isTimeOut$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$getSpecificImage$1$1$isTimeOut$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 46
    iget v1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$getSpecificImage$1$1$isTimeOut$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1b

    if-ne v1, v2, :cond_13

    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$getSpecificImage$1$1$isTimeOut$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function1;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_36

    .line 48
    :cond_13
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 46
    :cond_1b
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 47
    iget-object p1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$getSpecificImage$1$1$isTimeOut$1;->$block:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$getSpecificImage$1$1$isTimeOut$1;->this$0:Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy;

    iget v3, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$getSpecificImage$1$1$isTimeOut$1;->$timeStamp:I

    iget v4, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$getSpecificImage$1$1$isTimeOut$1;->$width:I

    iget v5, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$getSpecificImage$1$1$isTimeOut$1;->$height:I

    iput-object p1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$getSpecificImage$1$1$isTimeOut$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$getSpecificImage$1$1$isTimeOut$1;->label:I

    # invokes: Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy;->getSpecificImageInternal(IIILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {v1, v3, v4, v5, p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy;->access$getSpecificImageInternal(Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy;IIILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_33

    return-object v0

    :cond_33
    move-object v6, p1

    move-object p1, p0

    move-object p0, v6

    :goto_36
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    .line 48
    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
