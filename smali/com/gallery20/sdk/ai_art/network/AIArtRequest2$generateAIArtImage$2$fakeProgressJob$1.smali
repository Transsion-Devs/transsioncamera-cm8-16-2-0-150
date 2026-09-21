.class final Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2$fakeProgressJob$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.gallery20.sdk.ai_art.network.AIArtRequest2$generateAIArtImage$2$fakeProgressJob$1"
    f = "AIArtRequest2.kt"
    l = {
        0xb9
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $progress:Lkotlin/jvm/internal/Ref$DoubleRef;

.field J$0:J

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$DoubleRef;Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;Lkotlin/coroutines/Continuation;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$DoubleRef;",
            "Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2$fakeProgressJob$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2$fakeProgressJob$1;->$progress:Lkotlin/jvm/internal/Ref$DoubleRef;

    iput-object p2, p0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2$fakeProgressJob$1;->this$0:Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;

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

    new-instance v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2$fakeProgressJob$1;

    iget-object v1, p0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2$fakeProgressJob$1;->$progress:Lkotlin/jvm/internal/Ref$DoubleRef;

    iget-object p0, p0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2$fakeProgressJob$1;->this$0:Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;

    invoke-direct {v0, v1, p0, p2}, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2$fakeProgressJob$1;-><init>(Lkotlin/jvm/internal/Ref$DoubleRef;Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2$fakeProgressJob$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2$fakeProgressJob$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2$fakeProgressJob$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2$fakeProgressJob$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2$fakeProgressJob$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 20

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 182
    iget v2, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2$fakeProgressJob$1;->label:I

    const-wide/16 v3, 0x64

    const/4 v5, 0x1

    if-eqz v2, :cond_21

    if-ne v2, v5, :cond_19

    iget-wide v6, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2$fakeProgressJob$1;->J$0:J

    iget-object v2, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2$fakeProgressJob$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_44

    :cond_19
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2$fakeProgressJob$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    const-wide/16 v6, 0x0

    .line 184
    :goto_2a
    invoke-static {v2}, Lkotlinx/coroutines/CoroutineScopeKt;->isActive(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result v8

    if-eqz v8, :cond_ec

    const-wide/32 v8, 0xea60

    cmp-long v8, v6, v8

    if-gez v8, :cond_ec

    .line 185
    iput-object v2, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2$fakeProgressJob$1;->L$0:Ljava/lang/Object;

    iput-wide v6, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2$fakeProgressJob$1;->J$0:J

    iput v5, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2$fakeProgressJob$1;->label:I

    invoke-static {v3, v4, v0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v1, :cond_44

    return-object v1

    :cond_44
    :goto_44
    add-long v8, v6, v3

    const-wide/16 v10, 0x4e20

    cmp-long v12, v8, v10

    if-gez v12, :cond_5b

    .line 189
    iget-object v6, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2$fakeProgressJob$1;->$progress:Lkotlin/jvm/internal/Ref$DoubleRef;

    iget-wide v12, v6, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    # invokes: Lcom/gallery20/sdk/ai_art/network/AIArtRequest2Kt;->calculateSmartProgress(JJ)D
    invoke-static {v8, v9, v10, v11}, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2Kt;->access$calculateSmartProgress(JJ)D

    move-result-wide v10

    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    iput-wide v10, v6, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    goto :goto_c9

    :cond_5b
    const-wide/16 v10, 0x7530

    cmp-long v10, v8, v10

    const/16 v11, 0x64

    const-wide v12, 0x408f400000000000L    # 1000.0

    if-gez v10, :cond_83

    .line 193
    iget-object v10, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2$fakeProgressJob$1;->$progress:Lkotlin/jvm/internal/Ref$DoubleRef;

    iget-wide v14, v10, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    const-wide/16 v16, -0x4dbc

    add-long v6, v6, v16

    long-to-double v6, v6

    div-double/2addr v6, v12

    int-to-double v11, v11

    div-double/2addr v6, v11

    int-to-double v11, v5

    div-double/2addr v6, v11

    const-wide v11, 0x3fe999999999999aL    # 0.8

    add-double/2addr v6, v11

    invoke-static {v14, v15, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    iput-wide v6, v10, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    goto :goto_c9

    :cond_83
    const-wide/32 v14, 0x9c40

    cmp-long v10, v8, v14

    if-gez v10, :cond_a6

    .line 197
    iget-object v10, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2$fakeProgressJob$1;->$progress:Lkotlin/jvm/internal/Ref$DoubleRef;

    iget-wide v14, v10, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    const-wide/16 v16, -0x74cc

    add-long v6, v6, v16

    long-to-double v6, v6

    div-double/2addr v6, v12

    int-to-double v11, v11

    div-double/2addr v6, v11

    const/4 v11, 0x2

    int-to-double v11, v11

    div-double/2addr v6, v11

    const-wide v11, 0x3feccccccccccccdL    # 0.9

    add-double/2addr v6, v11

    invoke-static {v14, v15, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    iput-wide v6, v10, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    goto :goto_c9

    :cond_a6
    const-wide/32 v14, 0xd6d8

    cmp-long v10, v8, v14

    if-gez v10, :cond_c9

    .line 201
    iget-object v10, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2$fakeProgressJob$1;->$progress:Lkotlin/jvm/internal/Ref$DoubleRef;

    iget-wide v14, v10, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    const-wide/32 v16, -0x9bdc

    add-long v6, v6, v16

    long-to-double v6, v6

    div-double/2addr v6, v12

    int-to-double v11, v11

    div-double/2addr v6, v11

    const/4 v11, 0x3

    int-to-double v11, v11

    div-double/2addr v6, v11

    const-wide v11, 0x3fee666666666666L    # 0.95

    add-double/2addr v6, v11

    invoke-static {v14, v15, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    iput-wide v6, v10, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    .line 204
    :cond_c9
    :goto_c9
    iget-object v6, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2$fakeProgressJob$1;->$progress:Lkotlin/jvm/internal/Ref$DoubleRef;

    iget-wide v10, v6, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    const-wide/16 v12, 0x0

    const-wide v14, 0x3fefae147ae147aeL    # 0.99

    invoke-static/range {v10 .. v15}, Lkotlin/ranges/RangesKt;->coerceIn(DDD)D

    move-result-wide v10

    iput-wide v10, v6, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    .line 205
    iget-object v6, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2$fakeProgressJob$1;->this$0:Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;

    # getter for: Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;->listener:Lcom/gallery20/sdk/ai_art/network/UpdateListener;
    invoke-static {v6}, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;->access$getListener$p(Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;)Lcom/gallery20/sdk/ai_art/network/UpdateListener;

    move-result-object v6

    if-eqz v6, :cond_e9

    iget-object v7, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2$fakeProgressJob$1;->$progress:Lkotlin/jvm/internal/Ref$DoubleRef;

    iget-wide v10, v7, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    invoke-interface {v6, v10, v11}, Lcom/gallery20/sdk/ai_art/network/UpdateListener;->onProgress(D)V

    :cond_e9
    move-wide v6, v8

    goto/16 :goto_2a

    .line 207
    :cond_ec
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
