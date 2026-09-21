.class public final Lkotlinx/coroutines/internal/LocalAtomics_commonKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final getValue(Ljava/util/concurrent/atomic/AtomicInteger;)I
    .registers 1

    .line 20
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0
.end method

.method public static final setValue(Ljava/util/concurrent/atomic/AtomicInteger;I)V
    .registers 2

    .line 21
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method
