.class final Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper$startReverse$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper;->startReverse(Landroid/content/Context;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;[B)V
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
    c = "com.bytedance.ies.cutsame.prepare.ReverseVideoHelper$startReverse$1"
    f = "ReverseVideoHelper.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/ies/cutsame/prepare/PrepareMediaItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $isSuccess:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field final synthetic $licenseBuffer:[B

.field final synthetic $onSingleDone:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation
.end field

.field final synthetic $onSingleProgress:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper;Landroid/content/Context;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;[BLkotlin/coroutines/Continuation;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/ies/cutsame/prepare/PrepareMediaItem;",
            ">;",
            "Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper;",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function1;",
            "Lkotlin/jvm/functions/Function1;",
            "Lkotlin/jvm/functions/Function0;",
            "[B",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper$startReverse$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper$startReverse$1;->$data:Ljava/util/List;

    iput-object p2, p0, Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper$startReverse$1;->this$0:Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper;

    iput-object p3, p0, Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper$startReverse$1;->$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper$startReverse$1;->$isSuccess:Lkotlin/jvm/functions/Function1;

    iput-object p5, p0, Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper$startReverse$1;->$onSingleProgress:Lkotlin/jvm/functions/Function1;

    iput-object p6, p0, Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper$startReverse$1;->$onSingleDone:Lkotlin/jvm/functions/Function0;

    iput-object p7, p0, Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper$startReverse$1;->$licenseBuffer:[B

    const/4 p1, 0x2

    invoke-direct {p0, p1, p8}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 12
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

    new-instance v0, Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper$startReverse$1;

    iget-object v1, p0, Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper$startReverse$1;->$data:Ljava/util/List;

    iget-object v2, p0, Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper$startReverse$1;->this$0:Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper;

    iget-object v3, p0, Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper$startReverse$1;->$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper$startReverse$1;->$isSuccess:Lkotlin/jvm/functions/Function1;

    iget-object v5, p0, Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper$startReverse$1;->$onSingleProgress:Lkotlin/jvm/functions/Function1;

    iget-object v6, p0, Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper$startReverse$1;->$onSingleDone:Lkotlin/jvm/functions/Function0;

    iget-object v7, p0, Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper$startReverse$1;->$licenseBuffer:[B

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper$startReverse$1;-><init>(Ljava/util/List;Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper;Landroid/content/Context;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;[BLkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper$startReverse$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper$startReverse$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper$startReverse$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper$startReverse$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 43
    iget v0, p0, Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper$startReverse$1;->label:I

    if-nez v0, :cond_29

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 44
    iget-object p1, p0, Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper$startReverse$1;->$data:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_26

    .line 45
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper$startReverse$1;->this$0:Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper;

    iget-object v1, p0, Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper$startReverse$1;->$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper$startReverse$1;->$data:Ljava/util/List;

    iget-object v4, p0, Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper$startReverse$1;->$isSuccess:Lkotlin/jvm/functions/Function1;

    iget-object v5, p0, Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper$startReverse$1;->$onSingleProgress:Lkotlin/jvm/functions/Function1;

    iget-object v6, p0, Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper$startReverse$1;->$onSingleDone:Lkotlin/jvm/functions/Function0;

    iget-object v7, p0, Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper$startReverse$1;->$licenseBuffer:[B

    const/4 v3, 0x0

    # invokes: Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper;->reverseVideo(Landroid/content/Context;Ljava/util/List;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;[B)V
    invoke-static/range {v0 .. v7}, Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper;->access$reverseVideo(Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper;Landroid/content/Context;Ljava/util/List;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;[B)V

    .line 47
    :cond_26
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_29
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
