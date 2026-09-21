.class final Lcom/bytedance/ugc/recorder/template/VideoCoverChain$onNext$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ugc/recorder/template/VideoCoverChain;->onNext(Lcom/bytedance/ies/nle/editor_jni/NLEModel;)Lcom/bytedance/ies/nle/editor_jni/NLEModel;
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
    c = "com.bytedance.ugc.recorder.template.VideoCoverChain$onNext$1"
    f = "VideoCoverChain.kt"
    l = {
        0x20
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $nleModel:Lcom/bytedance/ies/nle/editor_jni/NLEModel;

.field final synthetic $resule:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/bytedance/ugc/recorder/template/VideoCoverChain;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/bytedance/ugc/recorder/template/VideoCoverChain;Lcom/bytedance/ies/nle/editor_jni/NLEModel;Lkotlin/coroutines/Continuation;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef;",
            "Lcom/bytedance/ugc/recorder/template/VideoCoverChain;",
            "Lcom/bytedance/ies/nle/editor_jni/NLEModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/bytedance/ugc/recorder/template/VideoCoverChain$onNext$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bytedance/ugc/recorder/template/VideoCoverChain$onNext$1;->$resule:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcom/bytedance/ugc/recorder/template/VideoCoverChain$onNext$1;->this$0:Lcom/bytedance/ugc/recorder/template/VideoCoverChain;

    iput-object p3, p0, Lcom/bytedance/ugc/recorder/template/VideoCoverChain$onNext$1;->$nleModel:Lcom/bytedance/ies/nle/editor_jni/NLEModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6
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

    new-instance v0, Lcom/bytedance/ugc/recorder/template/VideoCoverChain$onNext$1;

    iget-object v1, p0, Lcom/bytedance/ugc/recorder/template/VideoCoverChain$onNext$1;->$resule:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, p0, Lcom/bytedance/ugc/recorder/template/VideoCoverChain$onNext$1;->this$0:Lcom/bytedance/ugc/recorder/template/VideoCoverChain;

    iget-object p0, p0, Lcom/bytedance/ugc/recorder/template/VideoCoverChain$onNext$1;->$nleModel:Lcom/bytedance/ies/nle/editor_jni/NLEModel;

    invoke-direct {v0, v1, v2, p0, p2}, Lcom/bytedance/ugc/recorder/template/VideoCoverChain$onNext$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/bytedance/ugc/recorder/template/VideoCoverChain;Lcom/bytedance/ies/nle/editor_jni/NLEModel;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/bytedance/ugc/recorder/template/VideoCoverChain$onNext$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ugc/recorder/template/VideoCoverChain$onNext$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ugc/recorder/template/VideoCoverChain$onNext$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ugc/recorder/template/VideoCoverChain$onNext$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/bytedance/ugc/recorder/template/VideoCoverChain$onNext$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 27
    iget v1, p0, Lcom/bytedance/ugc/recorder/template/VideoCoverChain$onNext$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1b

    if-ne v1, v2, :cond_13

    iget-object p0, p0, Lcom/bytedance/ugc/recorder/template/VideoCoverChain$onNext$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4b

    .line 33
    :cond_13
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 27
    :cond_1b
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/bytedance/ugc/recorder/template/VideoCoverChain$onNext$1;->L$0:Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    .line 29
    sget-object p1, Lcom/bytedance/ugc/recorder/template/BgAudioChain;->Companion:Lcom/bytedance/ugc/recorder/template/BgAudioChain$Companion;

    invoke-virtual {p1}, Lcom/bytedance/ugc/recorder/template/BgAudioChain$Companion;->getIoExecutors()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/ExecutorsKt;->from(Ljava/util/concurrent/ExecutorService;)Lkotlinx/coroutines/ExecutorCoroutineDispatcher;

    move-result-object v4

    new-instance v6, Lcom/bytedance/ugc/recorder/template/VideoCoverChain$onNext$1$mCoverJob$1;

    iget-object p1, p0, Lcom/bytedance/ugc/recorder/template/VideoCoverChain$onNext$1;->this$0:Lcom/bytedance/ugc/recorder/template/VideoCoverChain;

    iget-object v1, p0, Lcom/bytedance/ugc/recorder/template/VideoCoverChain$onNext$1;->$nleModel:Lcom/bytedance/ies/nle/editor_jni/NLEModel;

    const/4 v5, 0x0

    invoke-direct {v6, p1, v1, v5}, Lcom/bytedance/ugc/recorder/template/VideoCoverChain$onNext$1$mCoverJob$1;-><init>(Lcom/bytedance/ugc/recorder/template/VideoCoverChain;Lcom/bytedance/ies/nle/editor_jni/NLEModel;Lkotlin/coroutines/Continuation;)V

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object p1

    .line 32
    iget-object v1, p0, Lcom/bytedance/ugc/recorder/template/VideoCoverChain$onNext$1;->$resule:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object v1, p0, Lcom/bytedance/ugc/recorder/template/VideoCoverChain$onNext$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/bytedance/ugc/recorder/template/VideoCoverChain$onNext$1;->label:I

    invoke-interface {p1, p0}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4a

    return-object v0

    :cond_4a
    move-object p0, v1

    .line 27
    :goto_4b
    iput-object p1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 33
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
