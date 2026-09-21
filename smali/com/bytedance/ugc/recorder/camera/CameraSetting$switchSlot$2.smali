.class final Lcom/bytedance/ugc/recorder/camera/CameraSetting$switchSlot$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ugc/recorder/camera/CameraSetting;->switchSlot(Landroid/content/Context;Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;Lcom/bytedance/ies/nle/editor_jni/NLEModel;ZZ)Lcom/bytedance/ies/nle/editor_jni/NLEModel;
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
    c = "com.bytedance.ugc.recorder.camera.CameraSetting$switchSlot$2"
    f = "CameraSetting.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $newModel:Lcom/bytedance/ies/nle/editor_jni/NLEModel;

.field label:I

.field final synthetic this$0:Lcom/bytedance/ugc/recorder/camera/CameraSetting;


# direct methods
.method constructor <init>(Lcom/bytedance/ugc/recorder/camera/CameraSetting;Lcom/bytedance/ies/nle/editor_jni/NLEModel;Lkotlin/coroutines/Continuation;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/ugc/recorder/camera/CameraSetting;",
            "Lcom/bytedance/ies/nle/editor_jni/NLEModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/bytedance/ugc/recorder/camera/CameraSetting$switchSlot$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bytedance/ugc/recorder/camera/CameraSetting$switchSlot$2;->this$0:Lcom/bytedance/ugc/recorder/camera/CameraSetting;

    iput-object p2, p0, Lcom/bytedance/ugc/recorder/camera/CameraSetting$switchSlot$2;->$newModel:Lcom/bytedance/ies/nle/editor_jni/NLEModel;

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

    new-instance p1, Lcom/bytedance/ugc/recorder/camera/CameraSetting$switchSlot$2;

    iget-object v0, p0, Lcom/bytedance/ugc/recorder/camera/CameraSetting$switchSlot$2;->this$0:Lcom/bytedance/ugc/recorder/camera/CameraSetting;

    iget-object p0, p0, Lcom/bytedance/ugc/recorder/camera/CameraSetting$switchSlot$2;->$newModel:Lcom/bytedance/ies/nle/editor_jni/NLEModel;

    invoke-direct {p1, v0, p0, p2}, Lcom/bytedance/ugc/recorder/camera/CameraSetting$switchSlot$2;-><init>(Lcom/bytedance/ugc/recorder/camera/CameraSetting;Lcom/bytedance/ies/nle/editor_jni/NLEModel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ugc/recorder/camera/CameraSetting$switchSlot$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ugc/recorder/camera/CameraSetting$switchSlot$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ugc/recorder/camera/CameraSetting$switchSlot$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/bytedance/ugc/recorder/camera/CameraSetting$switchSlot$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 117
    iget v0, p0, Lcom/bytedance/ugc/recorder/camera/CameraSetting$switchSlot$2;->label:I

    if-nez v0, :cond_19

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 118
    iget-object p1, p0, Lcom/bytedance/ugc/recorder/camera/CameraSetting$switchSlot$2;->this$0:Lcom/bytedance/ugc/recorder/camera/CameraSetting;

    iget-object p0, p0, Lcom/bytedance/ugc/recorder/camera/CameraSetting$switchSlot$2;->$newModel:Lcom/bytedance/ies/nle/editor_jni/NLEModel;

    const-string v0, "newModel"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/bytedance/ugc/recorder/camera/CameraSetting;->changeModel(Lcom/bytedance/ies/nle/editor_jni/NLEModel;)V

    .line 119
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_19
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
