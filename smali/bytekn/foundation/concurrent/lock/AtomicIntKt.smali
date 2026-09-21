.class public abstract Lbytekn/foundation/concurrent/lock/AtomicIntKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final getValue(Lbytekn/foundation/concurrent/lock/AtomicInt;)I
    .registers 2

    const-string v0, "$this$value"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Lbytekn/foundation/concurrent/lock/AtomicInt;->get()I

    move-result p0

    return p0
.end method

.method public static final setValue(Lbytekn/foundation/concurrent/lock/AtomicInt;I)V
    .registers 3

    const-string v0, "$this$value"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0, p1}, Lbytekn/foundation/concurrent/lock/AtomicInt;->set(I)V

    return-void
.end method
