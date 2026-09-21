.class public final Lkotlinx/coroutines/CompletionHandlerKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final getAsHandler(Lkotlinx/coroutines/CancelHandlerBase;)Lkotlin/jvm/functions/Function1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CancelHandlerBase;",
            ")",
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation

    .line 0
    return-object p0
.end method

.method public static final getAsHandler(Lkotlinx/coroutines/CompletionHandlerBase;)Lkotlin/jvm/functions/Function1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CompletionHandlerBase;",
            ")",
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation

    .line 0
    return-object p0
.end method

.method public static final invokeIt(Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 22
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
