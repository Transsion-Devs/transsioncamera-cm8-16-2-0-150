.class final Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;->generateAIArtImage(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.gallery20.sdk.ai_art.network.AIArtRequest2$generateAIArtImage$2"
    f = "AIArtRequest2.kt"
    l = {
        0xeb,
        0xf4,
        0x101,
        0x10a,
        0x10b,
        0x11b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field I$0:I

.field J$0:J

.field J$1:J

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field L$6:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;


# direct methods
.method public static synthetic $r8$lambda$AMj53nDQmxSV2qwv_43Z3zP4PS0(DLkotlin/jvm/internal/Ref$DoubleRef;Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;JJ)V
    .registers 8

    .line 0
    invoke-static/range {p0 .. p7}, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->invokeSuspend$lambda$9(DLkotlin/jvm/internal/Ref$DoubleRef;Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$AXOoK41TILwKnz6RS8UhVEwKdBU(JJ)V
    .registers 4

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->invokeSuspend$lambda$5(JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$oSQ5_TjBf4WS2Ab826FCsylJVv4(JJ)V
    .registers 4

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->invokeSuspend$lambda$4(JJ)V

    return-void
.end method

.method constructor <init>(Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->this$0:Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$4(JJ)V
    .registers 4

    return-void
.end method

.method private static final invokeSuspend$lambda$5(JJ)V
    .registers 4

    return-void
.end method

.method private static final invokeSuspend$lambda$9(DLkotlin/jvm/internal/Ref$DoubleRef;Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;JJ)V
    .registers 14

    const-wide/16 v0, 0x0

    cmp-long v0, p6, v0

    if-gtz v0, :cond_7

    goto :goto_2c

    :cond_7
    const/4 v0, 0x1

    int-to-double v0, v0

    sub-double/2addr v0, p0

    long-to-double p4, p4

    mul-double/2addr v0, p4

    long-to-double p4, p6

    div-double/2addr v0, p4

    add-double/2addr p0, v0

    .line 286
    iget-wide p4, p2, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    invoke-static {p4, p5, p0, p1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p2, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 287
    invoke-static/range {v0 .. v5}, Lkotlin/ranges/RangesKt;->coerceIn(DDD)D

    move-result-wide p0

    iput-wide p0, p2, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    .line 288
    # getter for: Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;->listener:Lcom/gallery20/sdk/ai_art/network/UpdateListener;
    invoke-static {p3}, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;->access$getListener$p(Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;)Lcom/gallery20/sdk/ai_art/network/UpdateListener;

    move-result-object p0

    if-eqz p0, :cond_2c

    iget-wide p1, p2, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    invoke-interface {p0, p1, p2}, Lcom/gallery20/sdk/ai_art/network/UpdateListener;->onProgress(D)V

    :cond_2c
    :goto_2c
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

    new-instance v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;

    iget-object p0, p0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->this$0:Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;

    invoke-direct {v0, p0, p2}, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;-><init>(Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "-[B>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 38

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 177
    iget v2, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->label:I

    const-string v4, "webui/upload/ai_art_"

    const-string v5, "persist.gallery.debug_ai_art"

    const-string v6, " bytes, "

    const-string v7, "image process: "

    const-string v10, "/sdcard/ai_art/"

    const-string v12, "ms"

    const-string v13, "AIArtRequest"

    packed-switch v2, :pswitch_data_7ba

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_21
    iget-wide v1, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->J$1:J

    iget-wide v3, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->J$0:J

    iget-object v7, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->L$2:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v15, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->L$1:Ljava/lang/Object;

    check-cast v15, Lcom/gallery20/sdk/ai_art/network/bean/ProcessResultBean;

    iget-object v9, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->L$0:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/Job;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v20, v5

    move-object/from16 v22, v6

    move-object v11, v9

    move-object/from16 v25, v10

    move-object/from16 v6, p1

    move-wide v8, v3

    move-object/from16 p1, v13

    move-wide v4, v1

    move-object v1, v12

    goto/16 :goto_62a

    :pswitch_44
    iget-wide v3, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->J$1:J

    move-wide/from16 v16, v3

    iget-wide v2, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->J$0:J

    iget-object v4, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->L$4:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v15, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->L$3:Ljava/lang/Object;

    check-cast v15, Lcom/gallery20/sdk/ai_art/network/AIArtApiService;

    iget-object v9, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->L$2:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/Job;

    iget-object v11, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->L$1:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/internal/Ref$DoubleRef;

    iget-object v8, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->L$0:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/CoroutineScope;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v20, v5

    move-object/from16 v22, v6

    move-object/from16 v24, v7

    move-object/from16 v25, v10

    move-object v14, v11

    move-wide/from16 v5, v16

    move-object v10, v4

    move-object v11, v9

    move-object v4, v15

    move-object v15, v8

    move-wide v8, v2

    move-object v3, v1

    move-object v1, v12

    move-object/from16 v12, p1

    goto/16 :goto_579

    :pswitch_77
    iget-wide v2, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->J$1:J

    iget-wide v8, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->J$0:J

    iget-object v4, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->L$4:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v11, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->L$3:Ljava/lang/Object;

    check-cast v11, Lcom/gallery20/sdk/ai_art/network/AIArtApiService;

    iget-object v15, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->L$2:Ljava/lang/Object;

    check-cast v15, Lkotlinx/coroutines/Job;

    iget-object v14, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->L$1:Ljava/lang/Object;

    check-cast v14, Lkotlin/jvm/internal/Ref$DoubleRef;

    move-wide/from16 v19, v2

    iget-object v2, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, v1

    move-object/from16 v22, v6

    move-object/from16 v24, v7

    move-wide v6, v8

    move-object/from16 v25, v10

    move-object v1, v12

    move-object v9, v15

    move-object v8, v2

    move-object v10, v4

    move-object v15, v11

    move-wide/from16 v34, v19

    move-object/from16 v20, v5

    move-wide/from16 v4, v34

    :goto_a7
    move-object v11, v14

    goto/16 :goto_552

    :pswitch_aa
    iget-wide v2, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->J$1:J

    iget-wide v8, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->J$0:J

    iget-object v4, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->L$3:Ljava/lang/Object;

    check-cast v4, Lcom/gallery20/sdk/ai_art/network/AIArtApiService;

    iget-object v11, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->L$2:Ljava/lang/Object;

    check-cast v11, Lkotlinx/coroutines/Job;

    iget-object v14, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->L$1:Ljava/lang/Object;

    check-cast v14, Lkotlin/jvm/internal/Ref$DoubleRef;

    iget-object v15, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->L$0:Ljava/lang/Object;

    check-cast v15, Lkotlinx/coroutines/CoroutineScope;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v20, v5

    move-object/from16 v22, v6

    move-object/from16 v24, v7

    move-wide v6, v8

    move-object/from16 v25, v10

    move-object/from16 v5, p1

    move-wide v8, v2

    move-object v3, v1

    move-object v1, v12

    goto/16 :goto_4c5

    :pswitch_d1
    iget-wide v2, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->J$1:J

    iget-wide v8, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->J$0:J

    iget-object v4, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->L$5:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v11, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->L$4:Ljava/lang/Object;

    check-cast v11, Landroid/graphics/RectF;

    iget-object v14, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->L$3:Ljava/lang/Object;

    check-cast v14, Lkotlinx/coroutines/Job;

    iget-object v15, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->L$2:Ljava/lang/Object;

    check-cast v15, Lkotlin/jvm/internal/Ref$DoubleRef;

    move-wide/from16 v19, v2

    iget-object v2, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->L$1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->L$0:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v17, v4

    move-object/from16 v22, v6

    move-object/from16 v24, v7

    move-wide v6, v8

    move-object/from16 v25, v10

    move-wide/from16 v8, v19

    move-object v4, v3

    move-object/from16 v20, v5

    move-object v3, v1

    move-object v1, v12

    move-object v12, v15

    move-object v15, v2

    move-object/from16 v2, p1

    goto/16 :goto_402

    :pswitch_108
    iget v2, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->I$0:I

    iget-wide v8, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->J$1:J

    iget-wide v14, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->J$0:J

    iget-object v3, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->L$6:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v11, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->L$5:Ljava/lang/Object;

    check-cast v11, Landroid/graphics/RectF;

    move/from16 v17, v2

    iget-object v2, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->L$4:Ljava/lang/Object;

    check-cast v2, [B

    move-object/from16 v19, v2

    iget-object v2, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->L$3:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/Job;

    move-object/from16 v20, v2

    iget-object v2, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->L$2:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/internal/Ref$DoubleRef;

    move-object/from16 v21, v2

    iget-object v2, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->L$1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object/from16 v22, v2

    iget-object v2, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v24, v7

    move-object/from16 v25, v10

    move-object v10, v11

    move-object/from16 v23, v12

    move-object/from16 v12, v21

    move-object v11, v3

    move-object v3, v1

    move-object/from16 v34, v6

    move-object v6, v2

    move-wide v1, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v22

    move-object/from16 v20, v5

    move-object/from16 v22, v34

    move-object/from16 v5, v19

    goto/16 :goto_36a

    :pswitch_152
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->L$0:Ljava/lang/Object;

    move-object/from16 v19, v2

    check-cast v19, Lkotlinx/coroutines/CoroutineScope;

    .line 178
    # getter for: Lcom/gallery20/sdk/ai_art/network/AIArtRequest2Kt;->templateIdMap:Ljava/util/Map;
    invoke-static {}, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2Kt;->access$getTemplateIdMap$p()Ljava/util/Map;

    move-result-object v2

    iget-object v3, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->this$0:Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;

    # getter for: Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;->template:Ljava/lang/String;
    invoke-static {v3}, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;->access$getTemplate$p(Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_173

    iget-object v2, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->this$0:Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;

    # getter for: Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;->template:Ljava/lang/String;
    invoke-static {v2}, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;->access$getTemplate$p(Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;)Ljava/lang/String;

    move-result-object v2

    .line 179
    :cond_173
    iget-object v3, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->this$0:Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;

    # getter for: Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;->bitmap:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;->access$getBitmap$p(Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_18c

    iget-object v3, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->this$0:Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;

    # getter for: Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;->jpeg:[B
    invoke-static {v3}, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;->access$getJpeg$p(Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;)[B

    move-result-object v3

    if-eqz v3, :cond_184

    goto :goto_18c

    :cond_184
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "provide bitmap or jpeg"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_18c
    :goto_18c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 181
    new-instance v3, Lkotlin/jvm/internal/Ref$DoubleRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$DoubleRef;-><init>()V

    .line 182
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v20

    new-instance v11, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2$fakeProgressJob$1;

    iget-object v14, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->this$0:Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;

    const/4 v15, 0x0

    invoke-direct {v11, v3, v14, v15}, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2$fakeProgressJob$1;-><init>(Lkotlin/jvm/internal/Ref$DoubleRef;Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;Lkotlin/coroutines/Continuation;)V

    const/16 v23, 0x2

    const/16 v24, 0x0

    const/16 v21, 0x0

    move-object/from16 v22, v11

    invoke-static/range {v19 .. v24}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v11

    move-object/from16 v14, v19

    .line 209
    iget-object v15, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->this$0:Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;

    # getter for: Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;->bitmap:Landroid/graphics/Bitmap;
    invoke-static {v15}, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;->access$getBitmap$p(Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;)Landroid/graphics/Bitmap;

    move-result-object v15

    if-nez v15, :cond_1c4

    iget-object v15, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->this$0:Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;

    # getter for: Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;->jpeg:[B
    invoke-static {v15}, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;->access$getJpeg$p(Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;)[B

    move-result-object v15

    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    # invokes: Lcom/gallery20/sdk/ai_art/network/AIArtRequest2Kt;->decodeBitmapWithoutWatermark([B)Landroid/graphics/Bitmap;
    invoke-static {v15}, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2Kt;->access$decodeBitmapWithoutWatermark([B)Landroid/graphics/Bitmap;

    move-result-object v15

    :cond_1c4
    move-object/from16 v17, v1

    const/16 v1, 0x3e8

    .line 210
    invoke-static {v15, v1}, Lcom/gallery20/sdk/ai_art/ext/CommonExtKt;->scaleToAndCropBitmapToMultipleOf8KeepRatio(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object/from16 p1, v11

    const/16 v11, 0x50

    move-object/from16 v19, v3

    .line 211
    invoke-static {v1, v11}, Lcom/gallery20/base/CommonExtKt;->toJpegBytes(Landroid/graphics/Bitmap;I)[B

    move-result-object v3

    .line 212
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v2

    const-string v2, "generateAIArtImage: scaledBitmap size = "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x78

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Lcom/gallery20/base/LogExtKt;->ld(Ljava/lang/String;Ljava/lang/Object;)V

    .line 213
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v11, v3

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-object v11, v6

    move-object/from16 v24, v7

    sub-long v6, v22, v8

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Lcom/gallery20/base/LogExtKt;->ld(Ljava/lang/String;Ljava/lang/Object;)V

    .line 214
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 215
    iget-object v2, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->this$0:Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;

    # getter for: Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;->faceBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;->access$getFaceBitmap$p(Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v22, v11

    if-eqz v2, :cond_237

    const/16 v11, 0x50

    invoke-static {v2, v11}, Lcom/gallery20/base/CommonExtKt;->toJpegBytes(Landroid/graphics/Bitmap;I)[B

    move-result-object v2

    :goto_235
    const/4 v11, 0x0

    goto :goto_239

    :cond_237
    const/4 v2, 0x0

    goto :goto_235

    .line 216
    :goto_239
    invoke-static {v5, v11}, Lcom/transsion/hubsdk/api/os/TranSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    if-eqz v20, :cond_298

    .line 217
    new-instance v11, Ljava/io/File;

    move-object/from16 v20, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v23, v12

    const-string v12, "_input.jpg"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v11, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 218
    invoke-virtual {v11}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_269

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    move-result v5

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    .line 219
    :cond_269
    invoke-static {v11, v3}, Lkotlin/io/FilesKt;->writeBytes(Ljava/io/File;[B)V

    if-eqz v2, :cond_29c

    .line 222
    new-instance v5, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, "_input_face.jpg"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v5, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 223
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v11

    if-eqz v11, :cond_294

    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    move-result v11

    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    .line 224
    :cond_294
    invoke-static {v5, v2}, Lkotlin/io/FilesKt;->writeBytes(Ljava/io/File;[B)V

    goto :goto_29c

    :cond_298
    move-object/from16 v20, v5

    move-object/from16 v23, v12

    .line 228
    :cond_29c
    :goto_29c
    iget-object v5, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->this$0:Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;

    # getter for: Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;->faceBitmap:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;->access$getFaceBitmap$p(Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;)Landroid/graphics/Bitmap;

    move-result-object v5

    filled-new-array {v15, v1, v5}, [Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOfNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    iget-object v5, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->this$0:Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;

    .line 350
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 865
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2b7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2d6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    move-object v15, v12

    check-cast v15, Landroid/graphics/Bitmap;

    move-object/from16 v25, v1

    .line 228
    # getter for: Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;->bitmap:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;->access$getBitmap$p(Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v15, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d3

    .line 865
    invoke-interface {v11, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_2d3
    move-object/from16 v1, v25

    goto :goto_2b7

    .line 353
    :cond_2d6
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v5, 0x0

    :goto_2db
    if-ge v5, v1, :cond_2e9

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    add-int/lit8 v5, v5, 0x1

    check-cast v12, Landroid/graphics/Bitmap;

    .line 228
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_2db

    .line 230
    :cond_2e9
    iget-object v1, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->this$0:Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;

    # getter for: Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;->faceRect:Landroid/graphics/RectF;
    invoke-static {v1}, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;->access$getFaceRect$p(Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;)Landroid/graphics/RectF;

    move-result-object v1

    if-eqz v2, :cond_2f5

    if-eqz v1, :cond_2f5

    const/4 v5, 0x1

    goto :goto_2f6

    :cond_2f5
    const/4 v5, 0x0

    .line 232
    :goto_2f6
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "toString(...)"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ".jpg"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 234
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v25, v10

    const-string v10, "image uploadToCloudStorage start: "

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v13, v10}, Lcom/gallery20/base/LogExtKt;->ld(Ljava/lang/String;Ljava/lang/Object;)V

    .line 235
    new-instance v10, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2$$ExternalSyntheticLambda0;

    invoke-direct {v10}, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2$$ExternalSyntheticLambda0;-><init>()V

    iput-object v14, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->L$0:Ljava/lang/Object;

    move-object/from16 v15, v21

    iput-object v15, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->L$1:Ljava/lang/Object;

    move-object/from16 v21, v14

    move-object/from16 v14, v19

    iput-object v14, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->L$2:Ljava/lang/Object;

    move-object/from16 v14, p1

    iput-object v14, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->L$3:Ljava/lang/Object;

    iput-object v2, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->L$4:Ljava/lang/Object;

    iput-object v1, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->L$5:Ljava/lang/Object;

    iput-object v11, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->L$6:Ljava/lang/Object;

    iput-wide v8, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->J$0:J

    iput-wide v6, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->J$1:J

    iput v5, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->I$0:I

    move-object/from16 p1, v1

    const/4 v1, 0x1

    iput v1, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->label:I

    invoke-static {v12, v3, v10, v0}, Lcom/gallery20/sdk/ai_art/network/OSSExtKt;->uploadToCloudStorage(Ljava/lang/String;[BLcom/gallery20/sdk/ai_art/network/ProgressCallback;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v3, v17

    if-ne v1, v3, :cond_35d

    goto/16 :goto_627

    :cond_35d
    move-object/from16 v10, p1

    move-object/from16 p1, v1

    move/from16 v17, v5

    move-object/from16 v12, v19

    move-object v5, v2

    move-wide v1, v8

    move-wide v8, v6

    move-object/from16 v6, v21

    .line 177
    :goto_36a
    move-object/from16 v7, p1

    check-cast v7, Ljava/lang/String;

    move-wide/from16 v26, v8

    .line 236
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "image uploadToCloudStorage end: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v13, v8}, Lcom/gallery20/base/LogExtKt;->ld(Ljava/lang/String;Ljava/lang/Object;)V

    .line 237
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "upload image: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    move-wide/from16 v30, v1

    sub-long v1, v28, v26

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v1, v23

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Lcom/gallery20/base/LogExtKt;->ld(Ljava/lang/String;Ljava/lang/Object;)V

    .line 238
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    if-eqz v17, :cond_45a

    .line 241
    invoke-static {v6}, Lkotlinx/coroutines/CoroutineScopeKt;->ensureActive(Lkotlinx/coroutines/CoroutineScope;)V

    .line 242
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_face.jpg"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 243
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "face image uploadToCloudStorage start: "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v13, v4}, Lcom/gallery20/base/LogExtKt;->ld(Ljava/lang/String;Ljava/lang/Object;)V

    .line 244
    new-instance v4, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2$$ExternalSyntheticLambda1;-><init>()V

    iput-object v6, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->L$0:Ljava/lang/Object;

    iput-object v15, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->L$1:Ljava/lang/Object;

    iput-object v12, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->L$2:Ljava/lang/Object;

    iput-object v14, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->L$3:Ljava/lang/Object;

    iput-object v10, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->L$4:Ljava/lang/Object;

    iput-object v7, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->L$5:Ljava/lang/Object;

    const/4 v11, 0x0

    iput-object v11, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->L$6:Ljava/lang/Object;

    move-object/from16 p1, v6

    move-object/from16 v17, v7

    move-wide/from16 v6, v30

    iput-wide v6, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->J$0:J

    iput-wide v8, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->J$1:J

    const/4 v11, 0x2

    iput v11, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->label:I

    invoke-static {v2, v5, v4, v0}, Lcom/gallery20/sdk/ai_art/network/OSSExtKt;->uploadToCloudStorage(Ljava/lang/String;[BLcom/gallery20/sdk/ai_art/network/ProgressCallback;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v3, :cond_3ff

    goto/16 :goto_627

    :cond_3ff
    move-object/from16 v4, p1

    move-object v11, v10

    .line 177
    :goto_402
    check-cast v2, Ljava/lang/String;

    .line 245
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "face image uploadToCloudStorage end: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13, v5}, Lcom/gallery20/base/LogExtKt;->ld(Ljava/lang/String;Ljava/lang/Object;)V

    .line 246
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "upload face image: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    sub-long v8, v26, v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13, v5}, Lcom/gallery20/base/LogExtKt;->ld(Ljava/lang/String;Ljava/lang/Object;)V

    .line 247
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 248
    new-instance v26, Lcom/gallery20/sdk/ai_art/network/RequestParams$FaceInfo;

    iget v5, v11, Landroid/graphics/RectF;->left:F

    iget v10, v11, Landroid/graphics/RectF;->top:F

    move-object/from16 v31, v2

    iget v2, v11, Landroid/graphics/RectF;->right:F

    iget v11, v11, Landroid/graphics/RectF;->bottom:F

    move/from16 v29, v2

    move/from16 v27, v5

    move/from16 v28, v10

    move/from16 v30, v11

    invoke-direct/range {v26 .. v31}, Lcom/gallery20/sdk/ai_art/network/RequestParams$FaceInfo;-><init>(FFFFLjava/lang/String;)V

    move-object/from16 v28, v15

    move-object/from16 v33, v26

    move-object v15, v4

    :goto_455
    move-object v11, v14

    move-object/from16 v27, v17

    move-object v14, v12

    goto :goto_467

    :cond_45a
    move-object/from16 p1, v6

    move-object/from16 v17, v7

    move-wide/from16 v6, v30

    move-object/from16 v28, v15

    const/16 v33, 0x0

    move-object/from16 v15, p1

    goto :goto_455

    .line 250
    :goto_467
    invoke-static {v15}, Lkotlinx/coroutines/CoroutineScopeKt;->ensureActive(Lkotlinx/coroutines/CoroutineScope;)V

    .line 254
    const-class v2, Lcom/gallery20/sdk/ai_art/network/AIArtApiService;

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static {v2, v5, v5, v4, v5}, Lorg/koin/java/KoinJavaComponent;->get$default(Ljava/lang/Class;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v4, v10

    check-cast v4, Lcom/gallery20/sdk/ai_art/network/AIArtApiService;

    .line 256
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v10, "yyyy-MM-dd HH:mm:ss"

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v5, v10, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iget-object v10, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->this$0:Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;

    invoke-virtual {v10}, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;->getDebugTime()Ljava/util/Calendar;

    move-result-object v10

    if-nez v10, :cond_48b

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    :cond_48b
    invoke-virtual {v5, v10}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    .line 257
    new-instance v26, Lcom/gallery20/sdk/ai_art/network/RequestParams;

    invoke-static/range {v29 .. v29}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v5, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->this$0:Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;

    # getter for: Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;->iso:Ljava/lang/String;
    invoke-static {v5}, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;->access$getIso$p(Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;)Ljava/lang/String;

    move-result-object v31

    iget-object v5, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->this$0:Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;

    # getter for: Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;->focusLength35mm:Ljava/lang/String;
    invoke-static {v5}, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;->access$getFocusLength35mm$p(Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;)Ljava/lang/String;

    move-result-object v32

    const-string v30, ""

    invoke-direct/range {v26 .. v33}, Lcom/gallery20/sdk/ai_art/network/RequestParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gallery20/sdk/ai_art/network/RequestParams$FaceInfo;)V

    move-object/from16 v5, v26

    iput-object v15, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->L$0:Ljava/lang/Object;

    iput-object v14, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->L$1:Ljava/lang/Object;

    iput-object v11, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->L$2:Ljava/lang/Object;

    iput-object v4, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->L$3:Ljava/lang/Object;

    const/4 v10, 0x0

    iput-object v10, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->L$4:Ljava/lang/Object;

    iput-object v10, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->L$5:Ljava/lang/Object;

    iput-object v10, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->L$6:Ljava/lang/Object;

    iput-wide v6, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->J$0:J

    iput-wide v8, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->J$1:J

    const/4 v10, 0x3

    iput v10, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->label:I

    invoke-interface {v4, v5, v0}, Lcom/gallery20/sdk/ai_art/network/AIArtApiService;->generate(Lcom/gallery20/sdk/ai_art/network/RequestParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v3, :cond_4c5

    goto/16 :goto_627

    .line 177
    :cond_4c5
    :goto_4c5
    check-cast v5, Lcom/gallery20/sdk/ai_art/network/bean/GenerateResultBean;

    .line 258
    iget-boolean v10, v5, Lcom/gallery20/sdk/ai_art/network/bean/GenerateResultBean;->success:Z

    if-eqz v10, :cond_7b2

    .line 259
    iget-object v10, v5, Lcom/gallery20/sdk/ai_art/network/bean/GenerateResultBean;->data:Lcom/gallery20/sdk/ai_art/network/bean/GenerateResultBean$DataBean;

    if-eqz v10, :cond_792

    iget-object v10, v10, Lcom/gallery20/sdk/ai_art/network/bean/GenerateResultBean$DataBean;->indexId:Ljava/lang/String;

    if-eqz v10, :cond_792

    invoke-static {v10}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_4da

    goto :goto_4db

    :cond_4da
    const/4 v10, 0x0

    :goto_4db
    if-eqz v10, :cond_792

    .line 260
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "image to image process generateId: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13, v5}, Lcom/gallery20/base/LogExtKt;->ld(Ljava/lang/String;Ljava/lang/Object;)V

    .line 261
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "send image process request: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    sub-long v8, v17, v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13, v5}, Lcom/gallery20/base/LogExtKt;->ld(Ljava/lang/String;Ljava/lang/Object;)V

    .line 262
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-wide/from16 v34, v8

    move-wide v8, v6

    move-wide/from16 v5, v34

    .line 264
    :goto_517
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    sub-long v17, v17, v8

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->abs(J)J

    move-result-wide v17

    const-wide/32 v26, 0xea60

    cmp-long v7, v17, v26

    if-gtz v7, :cond_78a

    .line 265
    invoke-static {v15}, Lkotlinx/coroutines/CoroutineScopeKt;->ensureActive(Lkotlinx/coroutines/CoroutineScope;)V

    .line 266
    iput-object v15, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->L$0:Ljava/lang/Object;

    iput-object v14, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->L$1:Ljava/lang/Object;

    iput-object v11, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->L$2:Ljava/lang/Object;

    iput-object v4, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->L$3:Ljava/lang/Object;

    iput-object v10, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->L$4:Ljava/lang/Object;

    iput-wide v8, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->J$0:J

    iput-wide v5, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->J$1:J

    const/4 v7, 0x4

    iput v7, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->label:I

    move-object v7, v4

    move-wide/from16 v17, v5

    const-wide/16 v4, 0x7d0

    invoke-static {v4, v5, v0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_549

    goto/16 :goto_627

    :cond_549
    move-object v4, v15

    move-object v15, v7

    move-wide v6, v8

    move-object v8, v4

    move-object v9, v11

    move-wide/from16 v4, v17

    goto/16 :goto_a7

    .line 267
    :goto_552
    new-instance v12, Lcom/gallery20/sdk/ai_art/network/QueryParams;

    invoke-direct {v12, v10}, Lcom/gallery20/sdk/ai_art/network/QueryParams;-><init>(Ljava/lang/String;)V

    iput-object v8, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->L$0:Ljava/lang/Object;

    iput-object v11, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->L$1:Ljava/lang/Object;

    iput-object v9, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->L$2:Ljava/lang/Object;

    iput-object v15, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->L$3:Ljava/lang/Object;

    iput-object v10, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->L$4:Ljava/lang/Object;

    iput-wide v6, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->J$0:J

    iput-wide v4, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->J$1:J

    const/4 v14, 0x5

    iput v14, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->label:I

    invoke-interface {v15, v12, v0}, Lcom/gallery20/sdk/ai_art/network/AIArtApiService;->queryResult(Lcom/gallery20/sdk/ai_art/network/QueryParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v3, :cond_570

    goto/16 :goto_627

    :cond_570
    move-object v14, v11

    move-object v11, v9

    move-object/from16 v34, v15

    move-object v15, v8

    move-wide v8, v6

    move-wide v5, v4

    move-object/from16 v4, v34

    .line 177
    :goto_579
    move-object v7, v12

    check-cast v7, Lcom/gallery20/sdk/ai_art/network/bean/ProcessResultBean;

    .line 268
    iget-object v12, v7, Lcom/gallery20/sdk/ai_art/network/bean/ProcessResultBean;->transitServiceStatus:Ljava/lang/String;

    const-string v2, "PROCESSING"

    invoke-static {v12, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5a5

    .line 269
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "image to image process result processResult: "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v12, Lcom/google/gson/Gson;

    invoke-direct {v12}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v12, v7}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Lcom/gallery20/base/LogExtKt;->ld(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_517

    .line 275
    :cond_5a5
    iget-boolean v2, v7, Lcom/gallery20/sdk/ai_art/network/bean/ProcessResultBean;->success:Z

    if-eqz v2, :cond_782

    .line 276
    iget-object v2, v7, Lcom/gallery20/sdk/ai_art/network/bean/ProcessResultBean;->data:Lcom/gallery20/sdk/ai_art/network/bean/ProcessResultBean$DataBean;

    if-eqz v2, :cond_77a

    iget-object v2, v2, Lcom/gallery20/sdk/ai_art/network/bean/ProcessResultBean$DataBean;->bucketName:Ljava/lang/String;

    if-eqz v2, :cond_77a

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5b9

    move-object v15, v2

    goto :goto_5ba

    :cond_5b9
    const/4 v15, 0x0

    :goto_5ba
    if-eqz v15, :cond_77a

    .line 277
    iget-object v2, v7, Lcom/gallery20/sdk/ai_art/network/bean/ProcessResultBean;->data:Lcom/gallery20/sdk/ai_art/network/bean/ProcessResultBean$DataBean;

    if-eqz v2, :cond_75a

    iget-object v2, v2, Lcom/gallery20/sdk/ai_art/network/bean/ProcessResultBean$DataBean;->imageUrl:Ljava/lang/String;

    if-eqz v2, :cond_75a

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5cb

    goto :goto_5cc

    :cond_5cb
    const/4 v2, 0x0

    :goto_5cc
    if-eqz v2, :cond_75a

    .line 278
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v10, v24

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    sub-long v5, v23, v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v13, v4}, Lcom/gallery20/base/LogExtKt;->ld(Ljava/lang/String;Ljava/lang/Object;)V

    .line 279
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 281
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "downloadFromCloudStorage start: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v13, v6}, Lcom/gallery20/base/LogExtKt;->ld(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v6, v13

    .line 282
    iget-wide v12, v14, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    .line 283
    iget-object v10, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->this$0:Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;

    move-object/from16 p1, v6

    new-instance v6, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2$$ExternalSyntheticLambda2;

    invoke-direct {v6, v12, v13, v14, v10}, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2$$ExternalSyntheticLambda2;-><init>(DLkotlin/jvm/internal/Ref$DoubleRef;Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;)V

    iput-object v11, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->L$0:Ljava/lang/Object;

    iput-object v7, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->L$1:Ljava/lang/Object;

    iput-object v2, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->L$2:Ljava/lang/Object;

    const/4 v10, 0x0

    iput-object v10, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->L$3:Ljava/lang/Object;

    iput-object v10, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->L$4:Ljava/lang/Object;

    iput-wide v8, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->J$0:J

    iput-wide v4, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->J$1:J

    const/4 v10, 0x6

    iput v10, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->label:I

    invoke-static {v15, v2, v6, v0}, Lcom/gallery20/sdk/ai_art/network/OSSExtKt;->downloadFromCloudStorage(Ljava/lang/String;Ljava/lang/String;Lcom/gallery20/sdk/ai_art/network/ProgressCallback;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v3, :cond_628

    :goto_627
    return-object v3

    :cond_628
    move-object v15, v7

    move-object v7, v2

    .line 177
    :goto_62a
    check-cast v6, [B

    .line 290
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "downloadFromCloudStorage end: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lcom/gallery20/base/LogExtKt;->ld(Ljava/lang/String;Ljava/lang/Object;)V

    .line 291
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "download image: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v7, v6

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v7, v22

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v4

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/gallery20/base/LogExtKt;->ld(Ljava/lang/String;Ljava/lang/Object;)V

    .line 292
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 293
    array-length v2, v6

    if-eqz v2, :cond_752

    const/4 v2, 0x1

    const/4 v10, 0x0

    .line 294
    invoke-static {v11, v10, v2, v10}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 295
    iget-object v0, v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;->this$0:Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;

    # getter for: Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;->listener:Lcom/gallery20/sdk/ai_art/network/UpdateListener;
    invoke-static {v0}, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;->access$getListener$p(Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;)Lcom/gallery20/sdk/ai_art/network/UpdateListener;

    move-result-object v0

    if-eqz v0, :cond_681

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-interface {v0, v4, v5}, Lcom/gallery20/sdk/ai_art/network/UpdateListener;->onProgress(D)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_681
    move-object/from16 v0, v20

    const/4 v11, 0x0

    .line 296
    invoke-static {v0, v11}, Lcom/transsion/hubsdk/api/os/TranSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6ed

    .line 297
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v4, v25

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "_output.jpg"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 298
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_6b2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    .line 299
    :cond_6b2
    invoke-static {v0, v6}, Lkotlin/io/FilesKt;->writeBytes(Ljava/io/File;[B)V

    .line 301
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v4, 0x5f

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v4, v15, Lcom/gallery20/sdk/ai_art/network/bean/ProcessResultBean;->data:Lcom/gallery20/sdk/ai_art/network/bean/ProcessResultBean$DataBean;

    if-eqz v4, :cond_6d2

    iget-wide v4, v4, Lcom/gallery20/sdk/ai_art/network/bean/ProcessResultBean$DataBean;->id:J

    invoke-static {v4, v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v4

    goto :goto_6d3

    :cond_6d2
    move-object v4, v10

    :goto_6d3
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 302
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_6ea

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    .line 303
    :cond_6ea
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 306
    :cond_6ed
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v15, Lcom/gallery20/sdk/ai_art/network/bean/ProcessResultBean;->data:Lcom/gallery20/sdk/ai_art/network/bean/ProcessResultBean$DataBean;

    if-eqz v2, :cond_6fd

    iget-wide v4, v2, Lcom/gallery20/sdk/ai_art/network/bean/ProcessResultBean$DataBean;->id:J

    invoke-static {v4, v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v14

    goto :goto_6fe

    :cond_6fd
    move-object v14, v10

    :goto_6fe
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " total time: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v8

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/gallery20/base/LogExtKt;->ld(Ljava/lang/String;Ljava/lang/Object;)V

    .line 308
    iget-object v0, v15, Lcom/gallery20/sdk/ai_art/network/bean/ProcessResultBean;->data:Lcom/gallery20/sdk/ai_art/network/bean/ProcessResultBean$DataBean;

    if-eqz v0, :cond_751

    .line 309
    iget-boolean v1, v0, Lcom/gallery20/sdk/ai_art/network/bean/ProcessResultBean$DataBean;->inputImageResizeFlag:Z

    if-eqz v1, :cond_751

    iget v1, v0, Lcom/gallery20/sdk/ai_art/network/bean/ProcessResultBean$DataBean;->originalWidth:I

    if-lez v1, :cond_751

    iget v1, v0, Lcom/gallery20/sdk/ai_art/network/bean/ProcessResultBean$DataBean;->originalHeight:I

    if-lez v1, :cond_751

    .line 310
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "final resize to origin end: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/gallery20/sdk/ai_art/network/bean/ProcessResultBean$DataBean;->originalWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x78

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/gallery20/sdk/ai_art/network/bean/ProcessResultBean$DataBean;->originalHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/gallery20/base/LogExtKt;->ld(Ljava/lang/String;Ljava/lang/Object;)V

    .line 311
    iget v1, v0, Lcom/gallery20/sdk/ai_art/network/bean/ProcessResultBean$DataBean;->originalWidth:I

    iget v0, v0, Lcom/gallery20/sdk/ai_art/network/bean/ProcessResultBean$DataBean;->originalHeight:I

    # invokes: Lcom/gallery20/sdk/ai_art/network/AIArtRequest2Kt;->toTargetSize([BII)[B
    invoke-static {v6, v1, v0}, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2Kt;->access$toTargetSize([BII)[B

    move-result-object v0

    return-object v0

    :cond_751
    return-object v6

    .line 293
    :cond_752
    new-instance v0, Ljava/io/IOException;

    const-string v1, "empty bytes"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 277
    :cond_75a
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "empty image url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, v7}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 276
    :cond_77a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "empty bucket name"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 275
    :cond_782
    new-instance v0, Lcom/gallery20/sdk/ai_art/network/AIArtProcessException;

    iget-object v1, v7, Lcom/gallery20/sdk/ai_art/network/bean/ProcessResultBean;->errorCode:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/gallery20/sdk/ai_art/network/AIArtProcessException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :cond_78a
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    const-string v1, "process timeout"

    invoke-direct {v0, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    :cond_792
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "empty id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, v5}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :cond_7b2
    new-instance v0, Lcom/gallery20/sdk/ai_art/network/AIArtProcessException;

    iget-object v1, v5, Lcom/gallery20/sdk/ai_art/network/bean/GenerateResultBean;->errorCode:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/gallery20/sdk/ai_art/network/AIArtProcessException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_7ba
    .packed-switch 0x0
        :pswitch_152
        :pswitch_108
        :pswitch_d1
        :pswitch_aa
        :pswitch_77
        :pswitch_44
        :pswitch_21
    .end packed-switch
.end method
