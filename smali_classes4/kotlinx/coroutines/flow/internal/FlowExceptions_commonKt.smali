.class public final Lkotlinx/coroutines/flow/internal/FlowExceptions_commonKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final checkIndexOverflow(I)I
    .registers 2

    if-ltz p0, :cond_3

    return p0

    .line 30
    :cond_3
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string v0, "Index overflow has happened"

    invoke-direct {p0, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final checkOwnership(Lkotlinx/coroutines/flow/internal/AbortFlowException;Ljava/lang/Object;)V
    .registers 3

    .line 18
    iget-object v0, p0, Lkotlinx/coroutines/flow/internal/AbortFlowException;->owner:Ljava/lang/Object;

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    throw p0
.end method
