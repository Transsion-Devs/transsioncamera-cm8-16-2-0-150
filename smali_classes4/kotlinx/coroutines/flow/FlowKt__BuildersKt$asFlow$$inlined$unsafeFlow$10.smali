.class public final Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/Flow;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/FlowKt__BuildersKt;->asFlow(Lkotlin/ranges/LongRange;)Lkotlinx/coroutines/flow/Flow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/Flow<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $this_asFlow$inlined:Lkotlin/ranges/LongRange;


# direct methods
.method public constructor <init>(Lkotlin/ranges/LongRange;)V
    .registers 2

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/FlowCollector<",
            "-",
            "Ljava/lang/Long;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of p1, p2, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$10$1;

    if-eqz p1, :cond_13

    move-object p1, p2

    check-cast p1, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$10$1;

    iget v0, p1, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$10$1;->label:I

    const/high16 v1, -0x80000000

    and-int v2, v0, v1

    if-eqz v2, :cond_13

    sub-int/2addr v0, v1

    iput v0, p1, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$10$1;->label:I

    goto :goto_18

    :cond_13
    new-instance p1, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$10$1;

    invoke-direct {p1, p0, p2}, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$10$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$10;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p0, p1, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$10$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 104
    iget p2, p1, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$10$1;->label:I

    const/4 v0, 0x0

    if-eqz p2, :cond_45

    const/4 v1, 0x1

    if-ne p2, v1, :cond_3d

    iget-object p2, p1, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$10$1;->L$1:Ljava/lang/Object;

    check-cast p2, Ljava/util/Iterator;

    iget-object p1, p1, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$10$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1855
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-nez p0, :cond_39

    .line 107
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 1855
    :cond_39
    invoke-static {p2}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    throw v0

    .line 104
    :cond_3d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_45
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1855
    throw v0
.end method
