.class public abstract Lbytekn/foundation/concurrent/lock/AtomicReferenceKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final getValue(Lbytekn/foundation/concurrent/lock/AtomicReference;)Ljava/lang/Object;
    .registers 2

    const-string v0, "$this$value"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0}, Lbytekn/foundation/concurrent/lock/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
