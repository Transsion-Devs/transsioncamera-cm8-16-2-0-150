.class final Lcom/bytedance/ugc/recorder/template/VideoCoverChain$onNext$1$mCoverJob$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ugc/recorder/template/VideoCoverChain$onNext$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.bytedance.ugc.recorder.template.VideoCoverChain$onNext$1$mCoverJob$1"
    f = "VideoCoverChain.kt"
    l = {
        0x1e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $nleModel:Lcom/bytedance/ies/nle/editor_jni/NLEModel;

.field label:I

.field final synthetic this$0:Lcom/bytedance/ugc/recorder/template/VideoCoverChain;


# direct methods
.method constructor <init>(Lcom/bytedance/ugc/recorder/template/VideoCoverChain;Lcom/bytedance/ies/nle/editor_jni/NLEModel;Lkotlin/coroutines/Continuation;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/ugc/recorder/template/VideoCoverChain;",
            "Lcom/bytedance/ies/nle/editor_jni/NLEModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/bytedance/ugc/recorder/template/VideoCoverChain$onNext$1$mCoverJob$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bytedance/ugc/recorder/template/VideoCoverChain$onNext$1$mCoverJob$1;->this$0:Lcom/bytedance/ugc/recorder/template/VideoCoverChain;

    iput-object p2, p0, Lcom/bytedance/ugc/recorder/template/VideoCoverChain$onNext$1$mCoverJob$1;->$nleModel:Lcom/bytedance/ies/nle/editor_jni/NLEModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 4
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

    new-instance p1, Lcom/bytedance/ugc/recorder/template/VideoCoverChain$onNext$1$mCoverJob$1;

    iget-object v0, p0, Lcom/bytedance/ugc/recorder/template/VideoCoverChain$onNext$1$mCoverJob$1;->this$0:Lcom/bytedance/ugc/recorder/template/VideoCoverChain;

    iget-object p0, p0, Lcom/bytedance/ugc/recorder/template/VideoCoverChain$onNext$1$mCoverJob$1;->$nleModel:Lcom/bytedance/ies/nle/editor_jni/NLEModel;

    invoke-direct {p1, v0, p0, p2}, Lcom/bytedance/ugc/recorder/template/VideoCoverChain$onNext$1$mCoverJob$1;-><init>(Lcom/bytedance/ugc/recorder/template/VideoCoverChain;Lcom/bytedance/ies/nle/editor_jni/NLEModel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ugc/recorder/template/VideoCoverChain$onNext$1$mCoverJob$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lcom/bytedance/ies/nle/editor_jni/NLEModel;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ugc/recorder/template/VideoCoverChain$onNext$1$mCoverJob$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ugc/recorder/template/VideoCoverChain$onNext$1$mCoverJob$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/bytedance/ugc/recorder/template/VideoCoverChain$onNext$1$mCoverJob$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 29
    iget v1, p0, Lcom/bytedance/ugc/recorder/template/VideoCoverChain$onNext$1$mCoverJob$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p1

    .line 30
    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 29
    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 30
    iget-object p1, p0, Lcom/bytedance/ugc/recorder/template/VideoCoverChain$onNext$1$mCoverJob$1;->this$0:Lcom/bytedance/ugc/recorder/template/VideoCoverChain;

    iget-object v1, p0, Lcom/bytedance/ugc/recorder/template/VideoCoverChain$onNext$1$mCoverJob$1;->$nleModel:Lcom/bytedance/ies/nle/editor_jni/NLEModel;

    iput v2, p0, Lcom/bytedance/ugc/recorder/template/VideoCoverChain$onNext$1$mCoverJob$1;->label:I

    # invokes: Lcom/bytedance/ugc/recorder/template/VideoCoverChain;->setCover(Lcom/bytedance/ies/nle/editor_jni/NLEModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {p1, v1, p0}, Lcom/bytedance/ugc/recorder/template/VideoCoverChain;->access$setCover(Lcom/bytedance/ugc/recorder/template/VideoCoverChain;Lcom/bytedance/ies/nle/editor_jni/NLEModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_27

    return-object v0

    :cond_27
    return-object p0
.end method
