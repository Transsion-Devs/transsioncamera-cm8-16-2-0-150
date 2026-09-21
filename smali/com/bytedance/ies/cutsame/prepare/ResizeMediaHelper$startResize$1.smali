.class final Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper$startResize$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper;->startResize(Landroid/content/Context;Ljava/util/List;[BLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V
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
    c = "com.bytedance.ies.cutsame.prepare.ResizeMediaHelper$startResize$1"
    f = "ResizeMediaHelper.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $cancelCallback:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation
.end field

.field final synthetic $context:Landroid/content/Context;

.field final synthetic $isSuccess:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field final synthetic $licenseBuffer:[B

.field final synthetic $list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/ies/cutsame/prepare/PrepareMediaItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $singleDoneCallback:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation
.end field

.field final synthetic $singleProgressCallback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper;


# direct methods
.method constructor <init>(Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper;Landroid/content/Context;Ljava/util/List;[BLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper;",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/bytedance/ies/cutsame/prepare/PrepareMediaItem;",
            ">;[B",
            "Lkotlin/jvm/functions/Function1;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function1;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper$startResize$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper$startResize$1;->this$0:Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper;

    iput-object p2, p0, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper$startResize$1;->$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper$startResize$1;->$list:Ljava/util/List;

    iput-object p4, p0, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper$startResize$1;->$licenseBuffer:[B

    iput-object p5, p0, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper$startResize$1;->$singleProgressCallback:Lkotlin/jvm/functions/Function1;

    iput-object p6, p0, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper$startResize$1;->$singleDoneCallback:Lkotlin/jvm/functions/Function0;

    iput-object p7, p0, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper$startResize$1;->$isSuccess:Lkotlin/jvm/functions/Function1;

    iput-object p8, p0, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper$startResize$1;->$cancelCallback:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p9}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 13
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

    new-instance v0, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper$startResize$1;

    iget-object v1, p0, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper$startResize$1;->this$0:Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper;

    iget-object v2, p0, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper$startResize$1;->$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper$startResize$1;->$list:Ljava/util/List;

    iget-object v4, p0, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper$startResize$1;->$licenseBuffer:[B

    iget-object v5, p0, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper$startResize$1;->$singleProgressCallback:Lkotlin/jvm/functions/Function1;

    iget-object v6, p0, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper$startResize$1;->$singleDoneCallback:Lkotlin/jvm/functions/Function0;

    iget-object v7, p0, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper$startResize$1;->$isSuccess:Lkotlin/jvm/functions/Function1;

    iget-object v8, p0, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper$startResize$1;->$cancelCallback:Lkotlin/jvm/functions/Function0;

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper$startResize$1;-><init>(Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper;Landroid/content/Context;Ljava/util/List;[BLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper$startResize$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper$startResize$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper$startResize$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper$startResize$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 50
    iget v0, p0, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper$startResize$1;->label:I

    if-nez v0, :cond_21

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 51
    iget-object v1, p0, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper$startResize$1;->this$0:Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper;

    .line 52
    iget-object v2, p0, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper$startResize$1;->$context:Landroid/content/Context;

    .line 53
    iget-object v3, p0, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper$startResize$1;->$list:Ljava/util/List;

    .line 55
    iget-object v5, p0, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper$startResize$1;->$licenseBuffer:[B

    .line 56
    iget-object v6, p0, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper$startResize$1;->$singleProgressCallback:Lkotlin/jvm/functions/Function1;

    .line 57
    iget-object v7, p0, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper$startResize$1;->$singleDoneCallback:Lkotlin/jvm/functions/Function0;

    .line 58
    iget-object v8, p0, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper$startResize$1;->$isSuccess:Lkotlin/jvm/functions/Function1;

    .line 59
    iget-object v9, p0, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper$startResize$1;->$cancelCallback:Lkotlin/jvm/functions/Function0;

    const/4 v4, 0x0

    .line 51
    # invokes: Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper;->resizeMediaDatas(Landroid/content/Context;Ljava/util/List;I[BLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V
    invoke-static/range {v1 .. v9}, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper;->access$resizeMediaDatas(Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper;Landroid/content/Context;Ljava/util/List;I[BLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    .line 61
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_21
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
