.class final Lcom/bytedance/ugc/recorder/audio/AudioCompiler$compilerAudio$2$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ugc/recorder/audio/AudioCompiler$compilerAudio$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.bytedance.ugc.recorder.audio.AudioCompiler$compilerAudio$2$1$1"
    f = "AudioCompiler.kt"
    l = {
        0x52
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $cont:Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/Continuation<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $fourceUpdate:Z

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/bytedance/ugc/recorder/audio/AudioCompiler;


# direct methods
.method constructor <init>(Lcom/bytedance/ugc/recorder/audio/AudioCompiler;ZLkotlin/coroutines/Continuation;Lkotlin/coroutines/Continuation;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/ugc/recorder/audio/AudioCompiler;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/bytedance/ugc/recorder/audio/AudioCompiler$compilerAudio$2$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bytedance/ugc/recorder/audio/AudioCompiler$compilerAudio$2$1$1;->this$0:Lcom/bytedance/ugc/recorder/audio/AudioCompiler;

    iput-boolean p2, p0, Lcom/bytedance/ugc/recorder/audio/AudioCompiler$compilerAudio$2$1$1;->$fourceUpdate:Z

    iput-object p3, p0, Lcom/bytedance/ugc/recorder/audio/AudioCompiler$compilerAudio$2$1$1;->$cont:Lkotlin/coroutines/Continuation;

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

    new-instance v0, Lcom/bytedance/ugc/recorder/audio/AudioCompiler$compilerAudio$2$1$1;

    iget-object v1, p0, Lcom/bytedance/ugc/recorder/audio/AudioCompiler$compilerAudio$2$1$1;->this$0:Lcom/bytedance/ugc/recorder/audio/AudioCompiler;

    iget-boolean v2, p0, Lcom/bytedance/ugc/recorder/audio/AudioCompiler$compilerAudio$2$1$1;->$fourceUpdate:Z

    iget-object p0, p0, Lcom/bytedance/ugc/recorder/audio/AudioCompiler$compilerAudio$2$1$1;->$cont:Lkotlin/coroutines/Continuation;

    invoke-direct {v0, v1, v2, p0, p2}, Lcom/bytedance/ugc/recorder/audio/AudioCompiler$compilerAudio$2$1$1;-><init>(Lcom/bytedance/ugc/recorder/audio/AudioCompiler;ZLkotlin/coroutines/Continuation;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/bytedance/ugc/recorder/audio/AudioCompiler$compilerAudio$2$1$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ugc/recorder/audio/AudioCompiler$compilerAudio$2$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ugc/recorder/audio/AudioCompiler$compilerAudio$2$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ugc/recorder/audio/AudioCompiler$compilerAudio$2$1$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/bytedance/ugc/recorder/audio/AudioCompiler$compilerAudio$2$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 62
    iget v1, p0, Lcom/bytedance/ugc/recorder/audio/AudioCompiler$compilerAudio$2$1$1;->label:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_19

    if-ne v1, v2, :cond_11

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_8b

    .line 96
    :cond_11
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 62
    :cond_19
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/bytedance/ugc/recorder/audio/AudioCompiler$compilerAudio$2$1$1;->L$0:Ljava/lang/Object;

    move-object v4, p1

    check-cast v4, Lkotlinx/coroutines/CoroutineScope;

    .line 63
    iget-object p1, p0, Lcom/bytedance/ugc/recorder/audio/AudioCompiler$compilerAudio$2$1$1;->this$0:Lcom/bytedance/ugc/recorder/audio/AudioCompiler;

    # getter for: Lcom/bytedance/ugc/recorder/audio/AudioCompiler;->md5Id:Ljava/lang/String;
    invoke-static {p1}, Lcom/bytedance/ugc/recorder/audio/AudioCompiler;->access$getMd5Id$p(Lcom/bytedance/ugc/recorder/audio/AudioCompiler;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "AudioCompiler: collect bg uuid = "

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/ugc/nlerecorder/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 65
    iget-object p1, p0, Lcom/bytedance/ugc/recorder/audio/AudioCompiler$compilerAudio$2$1$1;->this$0:Lcom/bytedance/ugc/recorder/audio/AudioCompiler;

    invoke-virtual {p1}, Lcom/bytedance/ugc/recorder/audio/AudioCompiler;->getAudioCacheManager()Lcom/bytedance/ugc/recorder/audio/AudioCacheManager;

    move-result-object p1

    iget-object v1, p0, Lcom/bytedance/ugc/recorder/audio/AudioCompiler$compilerAudio$2$1$1;->this$0:Lcom/bytedance/ugc/recorder/audio/AudioCompiler;

    # getter for: Lcom/bytedance/ugc/recorder/audio/AudioCompiler;->md5Id:Ljava/lang/String;
    invoke-static {v1}, Lcom/bytedance/ugc/recorder/audio/AudioCompiler;->access$getMd5Id$p(Lcom/bytedance/ugc/recorder/audio/AudioCompiler;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/bytedance/ugc/recorder/audio/AudioCacheManager;->getAudioCacheById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 66
    const-string v1, "AudioCompiler: collect bg cachePath = "

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/ugc/nlerecorder/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 68
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6d

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_6d

    iget-boolean v1, p0, Lcom/bytedance/ugc/recorder/audio/AudioCompiler$compilerAudio$2$1$1;->$fourceUpdate:Z

    if-eqz v1, :cond_5f

    goto :goto_6d

    .line 93
    :cond_5f
    iget-object p0, p0, Lcom/bytedance/ugc/recorder/audio/AudioCompiler$compilerAudio$2$1$1;->$cont:Lkotlin/coroutines/Continuation;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto/16 :goto_ea

    .line 70
    :cond_6d
    :goto_6d
    iget-object p1, p0, Lcom/bytedance/ugc/recorder/audio/AudioCompiler$compilerAudio$2$1$1;->this$0:Lcom/bytedance/ugc/recorder/audio/AudioCompiler;

    # invokes: Lcom/bytedance/ugc/recorder/audio/AudioCompiler;->prepareAudioModel()Lcom/bytedance/ies/nle/editor_jni/NLEModel;
    invoke-static {p1}, Lcom/bytedance/ugc/recorder/audio/AudioCompiler;->access$prepareAudioModel(Lcom/bytedance/ugc/recorder/audio/AudioCompiler;)Lcom/bytedance/ies/nle/editor_jni/NLEModel;

    move-result-object p1

    .line 71
    new-instance v7, Lcom/bytedance/ugc/recorder/audio/AudioCompiler$compilerAudio$2$1$1$collectAudioTask$1;

    iget-object v1, p0, Lcom/bytedance/ugc/recorder/audio/AudioCompiler$compilerAudio$2$1$1;->this$0:Lcom/bytedance/ugc/recorder/audio/AudioCompiler;

    invoke-direct {v7, v1, p1, v3}, Lcom/bytedance/ugc/recorder/audio/AudioCompiler$compilerAudio$2$1$1$collectAudioTask$1;-><init>(Lcom/bytedance/ugc/recorder/audio/AudioCompiler;Lcom/bytedance/ies/nle/editor_jni/NLEModel;Lkotlin/coroutines/Continuation;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object p1

    .line 82
    iput v2, p0, Lcom/bytedance/ugc/recorder/audio/AudioCompiler$compilerAudio$2$1$1;->label:I

    invoke-interface {p1, p0}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8b

    return-object v0

    .line 62
    :cond_8b
    :goto_8b
    check-cast p1, Lkotlin/Pair;

    if-nez p1, :cond_90

    goto :goto_df

    .line 84
    :cond_90
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-nez v0, :cond_df

    if-nez p1, :cond_a0

    move-object v0, v3

    goto :goto_a6

    :cond_a0
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_a6
    if-eqz v0, :cond_df

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_af

    goto :goto_df

    :cond_af
    if-nez p1, :cond_b2

    goto :goto_c8

    .line 85
    :cond_b2
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_bb

    goto :goto_c8

    :cond_bb
    iget-object v1, p0, Lcom/bytedance/ugc/recorder/audio/AudioCompiler$compilerAudio$2$1$1;->this$0:Lcom/bytedance/ugc/recorder/audio/AudioCompiler;

    .line 86
    invoke-virtual {v1}, Lcom/bytedance/ugc/recorder/audio/AudioCompiler;->getAudioCacheManager()Lcom/bytedance/ugc/recorder/audio/AudioCacheManager;

    move-result-object v2

    # getter for: Lcom/bytedance/ugc/recorder/audio/AudioCompiler;->md5Id:Ljava/lang/String;
    invoke-static {v1}, Lcom/bytedance/ugc/recorder/audio/AudioCompiler;->access$getMd5Id$p(Lcom/bytedance/ugc/recorder/audio/AudioCompiler;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Lcom/bytedance/ugc/recorder/audio/AudioCacheManager;->putAudioCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :goto_c8
    iget-object p0, p0, Lcom/bytedance/ugc/recorder/audio/AudioCompiler$compilerAudio$2$1$1;->$cont:Lkotlin/coroutines/Continuation;

    if-nez p1, :cond_cd

    goto :goto_d4

    :cond_cd
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    :goto_d4
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_ea

    .line 90
    :cond_df
    :goto_df
    iget-object p0, p0, Lcom/bytedance/ugc/recorder/audio/AudioCompiler$compilerAudio$2$1$1;->$cont:Lkotlin/coroutines/Continuation;

    const-string p1, ""

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 96
    :goto_ea
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
