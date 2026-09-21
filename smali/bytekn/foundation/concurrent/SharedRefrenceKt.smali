.class public abstract Lbytekn/foundation/concurrent/SharedRefrenceKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final getValue(Lbytekn/foundation/concurrent/SharedReference;)Ljava/lang/Object;
    .registers 2

    const-string v0, "$this$value"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0}, Lbytekn/foundation/concurrent/SharedReference;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final setValue(Lbytekn/foundation/concurrent/SharedReference;Ljava/lang/Object;)V
    .registers 3

    const-string v0, "$this$value"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0, p1}, Lbytekn/foundation/concurrent/SharedReference;->set(Ljava/lang/Object;)V

    return-void
.end method
