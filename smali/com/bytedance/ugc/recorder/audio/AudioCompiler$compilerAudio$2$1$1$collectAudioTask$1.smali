.class final Lcom/bytedance/ugc/recorder/audio/AudioCompiler$compilerAudio$2$1$1$collectAudioTask$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ugc/recorder/audio/AudioCompiler$compilerAudio$2$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.bytedance.ugc.recorder.audio.AudioCompiler$compilerAudio$2$1$1$collectAudioTask$1"
    f = "AudioCompiler.kt"
    l = {
        0x4b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $audioModel:Lcom/bytedance/ies/nle/editor_jni/NLEModel;

.field J$0:J

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/bytedance/ugc/recorder/audio/AudioCompiler;


# direct methods
.method constructor <init>(Lcom/bytedance/ugc/recorder/audio/AudioCompiler;Lcom/bytedance/ies/nle/editor_jni/NLEModel;Lkotlin/coroutines/Continuation;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/ugc/recorder/audio/AudioCompiler;",
            "Lcom/bytedance/ies/nle/editor_jni/NLEModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/bytedance/ugc/recorder/audio/AudioCompiler$compilerAudio$2$1$1$collectAudioTask$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bytedance/ugc/recorder/audio/AudioCompiler$compilerAudio$2$1$1$collectAudioTask$1;->this$0:Lcom/bytedance/ugc/recorder/audio/AudioCompiler;

    iput-object p2, p0, Lcom/bytedance/ugc/recorder/audio/AudioCompiler$compilerAudio$2$1$1$collectAudioTask$1;->$audioModel:Lcom/bytedance/ies/nle/editor_jni/NLEModel;

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

    new-instance p1, Lcom/bytedance/ugc/recorder/audio/AudioCompiler$compilerAudio$2$1$1$collectAudioTask$1;

    iget-object v0, p0, Lcom/bytedance/ugc/recorder/audio/AudioCompiler$compilerAudio$2$1$1$collectAudioTask$1;->this$0:Lcom/bytedance/ugc/recorder/audio/AudioCompiler;

    iget-object p0, p0, Lcom/bytedance/ugc/recorder/audio/AudioCompiler$compilerAudio$2$1$1$collectAudioTask$1;->$audioModel:Lcom/bytedance/ies/nle/editor_jni/NLEModel;

    invoke-direct {p1, v0, p0, p2}, Lcom/bytedance/ugc/recorder/audio/AudioCompiler$compilerAudio$2$1$1$collectAudioTask$1;-><init>(Lcom/bytedance/ugc/recorder/audio/AudioCompiler;Lcom/bytedance/ies/nle/editor_jni/NLEModel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ugc/recorder/audio/AudioCompiler$compilerAudio$2$1$1$collectAudioTask$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ugc/recorder/audio/AudioCompiler$compilerAudio$2$1$1$collectAudioTask$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ugc/recorder/audio/AudioCompiler$compilerAudio$2$1$1$collectAudioTask$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/bytedance/ugc/recorder/audio/AudioCompiler$compilerAudio$2$1$1$collectAudioTask$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 71
    iget v1, p0, Lcom/bytedance/ugc/recorder/audio/AudioCompiler$compilerAudio$2$1$1$collectAudioTask$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_21

    if-ne v1, v2, :cond_19

    iget-wide v0, p0, Lcom/bytedance/ugc/recorder/audio/AudioCompiler$compilerAudio$2$1$1$collectAudioTask$1;->J$0:J

    iget-object v2, p0, Lcom/bytedance/ugc/recorder/audio/AudioCompiler$compilerAudio$2$1$1$collectAudioTask$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p0, p0, Lcom/bytedance/ugc/recorder/audio/AudioCompiler$compilerAudio$2$1$1$collectAudioTask$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_44

    .line 79
    :cond_19
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 71
    :cond_21
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 72
    new-instance p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 74
    iget-object v1, p0, Lcom/bytedance/ugc/recorder/audio/AudioCompiler$compilerAudio$2$1$1$collectAudioTask$1;->this$0:Lcom/bytedance/ugc/recorder/audio/AudioCompiler;

    iget-object v3, p0, Lcom/bytedance/ugc/recorder/audio/AudioCompiler$compilerAudio$2$1$1$collectAudioTask$1;->$audioModel:Lcom/bytedance/ies/nle/editor_jni/NLEModel;

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 75
    iput-object p1, p0, Lcom/bytedance/ugc/recorder/audio/AudioCompiler$compilerAudio$2$1$1$collectAudioTask$1;->L$0:Ljava/lang/Object;

    iput-object p1, p0, Lcom/bytedance/ugc/recorder/audio/AudioCompiler$compilerAudio$2$1$1$collectAudioTask$1;->L$1:Ljava/lang/Object;

    iput-wide v4, p0, Lcom/bytedance/ugc/recorder/audio/AudioCompiler$compilerAudio$2$1$1$collectAudioTask$1;->J$0:J

    iput v2, p0, Lcom/bytedance/ugc/recorder/audio/AudioCompiler$compilerAudio$2$1$1$collectAudioTask$1;->label:I

    # invokes: Lcom/bytedance/ugc/recorder/audio/AudioCompiler;->compileOnlyAudio(Lcom/bytedance/ies/nle/editor_jni/NLEModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {v1, v3, p0}, Lcom/bytedance/ugc/recorder/audio/AudioCompiler;->access$compileOnlyAudio(Lcom/bytedance/ugc/recorder/audio/AudioCompiler;Lcom/bytedance/ies/nle/editor_jni/NLEModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_40

    return-object v0

    :cond_40
    move-object v2, p1

    move-wide v0, v4

    move-object p1, p0

    move-object p0, v2

    .line 71
    :goto_44
    iput-object p1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 77
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "collect bg audio time = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/ugc/nlerecorder/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 79
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-object p0
.end method
