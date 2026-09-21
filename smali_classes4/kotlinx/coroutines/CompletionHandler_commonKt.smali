.class public final Lkotlinx/coroutines/CompletionHandler_commonKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final synthetic isHandlerOf(Lkotlin/jvm/functions/Function1;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x3

    .line 47
    const-string v1, "T"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    invoke-static {p0}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
