.class final Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils$optimizeMediaSize$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils;->optimizeMediaSize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/Integer;[BLcom/bytedance/ies/cutsame/prepare/OnOptimizeListener;)V
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
    c = "com.bytedance.ies.cutsame.prepare.VEEditorUtils$optimizeMediaSize$1"
    f = "VEEditorUtils.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $height:I

.field final synthetic $inputPath:Ljava/lang/String;

.field final synthetic $licenseBuffer:[B

.field final synthetic $onOptimizeListener:Lcom/bytedance/ies/cutsame/prepare/OnOptimizeListener;

.field final synthetic $outBps:Ljava/lang/Integer;

.field final synthetic $outputPath:Ljava/lang/String;

.field final synthetic $width:I

.field final synthetic $workSpacePath:Ljava/lang/String;

.field label:I


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;IILcom/bytedance/ies/cutsame/prepare/OnOptimizeListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;[BLkotlin/coroutines/Continuation;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "II",
            "Lcom/bytedance/ies/cutsame/prepare/OnOptimizeListener;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "[B",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils$optimizeMediaSize$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils$optimizeMediaSize$1;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils$optimizeMediaSize$1;->$inputPath:Ljava/lang/String;

    iput p3, p0, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils$optimizeMediaSize$1;->$width:I

    iput p4, p0, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils$optimizeMediaSize$1;->$height:I

    iput-object p5, p0, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils$optimizeMediaSize$1;->$onOptimizeListener:Lcom/bytedance/ies/cutsame/prepare/OnOptimizeListener;

    iput-object p6, p0, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils$optimizeMediaSize$1;->$outputPath:Ljava/lang/String;

    iput-object p7, p0, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils$optimizeMediaSize$1;->$workSpacePath:Ljava/lang/String;

    iput-object p8, p0, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils$optimizeMediaSize$1;->$outBps:Ljava/lang/Integer;

    iput-object p9, p0, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils$optimizeMediaSize$1;->$licenseBuffer:[B

    const/4 p1, 0x2

    invoke-direct {p0, p1, p10}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 14
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

    new-instance v0, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils$optimizeMediaSize$1;

    iget-object v1, p0, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils$optimizeMediaSize$1;->$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils$optimizeMediaSize$1;->$inputPath:Ljava/lang/String;

    iget v3, p0, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils$optimizeMediaSize$1;->$width:I

    iget v4, p0, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils$optimizeMediaSize$1;->$height:I

    iget-object v5, p0, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils$optimizeMediaSize$1;->$onOptimizeListener:Lcom/bytedance/ies/cutsame/prepare/OnOptimizeListener;

    iget-object v6, p0, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils$optimizeMediaSize$1;->$outputPath:Ljava/lang/String;

    iget-object v7, p0, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils$optimizeMediaSize$1;->$workSpacePath:Ljava/lang/String;

    iget-object v8, p0, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils$optimizeMediaSize$1;->$outBps:Ljava/lang/Integer;

    iget-object v9, p0, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils$optimizeMediaSize$1;->$licenseBuffer:[B

    move-object v10, p2

    invoke-direct/range {v0 .. v10}, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils$optimizeMediaSize$1;-><init>(Landroid/content/Context;Ljava/lang/String;IILcom/bytedance/ies/cutsame/prepare/OnOptimizeListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;[BLkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils$optimizeMediaSize$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils$optimizeMediaSize$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils$optimizeMediaSize$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils$optimizeMediaSize$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 21

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 112
    iget v1, v0, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils$optimizeMediaSize$1;->label:I

    if-nez v1, :cond_4a

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 113
    sget-object v1, Lcom/bytedance/ies/cutsame/util/MediaUtil;->INSTANCE:Lcom/bytedance/ies/cutsame/util/MediaUtil;

    iget-object v2, v0, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils$optimizeMediaSize$1;->$context:Landroid/content/Context;

    iget-object v3, v0, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils$optimizeMediaSize$1;->$inputPath:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/ies/cutsame/util/MediaUtil;->isImage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 114
    sget-object v2, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils;->INSTANCE:Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils;

    iget-object v3, v0, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils$optimizeMediaSize$1;->$context:Landroid/content/Context;

    iget-object v4, v0, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils$optimizeMediaSize$1;->$inputPath:Ljava/lang/String;

    iget v5, v0, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils$optimizeMediaSize$1;->$width:I

    iget v6, v0, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils$optimizeMediaSize$1;->$height:I

    iget-object v7, v0, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils$optimizeMediaSize$1;->$onOptimizeListener:Lcom/bytedance/ies/cutsame/prepare/OnOptimizeListener;

    iget-object v8, v0, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils$optimizeMediaSize$1;->$outputPath:Ljava/lang/String;

    # invokes: Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils;->optimizeImage(Landroid/content/Context;Ljava/lang/String;IILcom/bytedance/ies/cutsame/prepare/OnOptimizeListener;Ljava/lang/String;)V
    invoke-static/range {v2 .. v8}, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils;->access$optimizeImage(Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils;Landroid/content/Context;Ljava/lang/String;IILcom/bytedance/ies/cutsame/prepare/OnOptimizeListener;Ljava/lang/String;)V

    goto :goto_47

    .line 116
    :cond_2a
    sget-object v9, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils;->INSTANCE:Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils;

    .line 117
    iget-object v10, v0, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils$optimizeMediaSize$1;->$context:Landroid/content/Context;

    .line 118
    iget-object v11, v0, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils$optimizeMediaSize$1;->$inputPath:Ljava/lang/String;

    .line 119
    iget v12, v0, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils$optimizeMediaSize$1;->$width:I

    .line 120
    iget v13, v0, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils$optimizeMediaSize$1;->$height:I

    .line 121
    iget-object v14, v0, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils$optimizeMediaSize$1;->$onOptimizeListener:Lcom/bytedance/ies/cutsame/prepare/OnOptimizeListener;

    .line 122
    iget-object v15, v0, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils$optimizeMediaSize$1;->$outputPath:Ljava/lang/String;

    .line 123
    iget-object v1, v0, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils$optimizeMediaSize$1;->$workSpacePath:Ljava/lang/String;

    .line 124
    iget-object v2, v0, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils$optimizeMediaSize$1;->$outBps:Ljava/lang/Integer;

    .line 125
    iget-object v0, v0, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils$optimizeMediaSize$1;->$licenseBuffer:[B

    move-object/from16 v18, v0

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    .line 116
    # invokes: Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils;->optimizeVideo(Landroid/content/Context;Ljava/lang/String;IILcom/bytedance/ies/cutsame/prepare/OnOptimizeListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;[B)V
    invoke-static/range {v9 .. v18}, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils;->access$optimizeVideo(Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils;Landroid/content/Context;Ljava/lang/String;IILcom/bytedance/ies/cutsame/prepare/OnOptimizeListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;[B)V

    .line 128
    :goto_47
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :cond_4a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
