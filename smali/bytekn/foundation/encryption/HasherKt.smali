.class public abstract Lbytekn/foundation/encryption/HasherKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final hash([BLbytekn/foundation/encryption/HasherFactory;)[B
    .registers 3

    const-string v0, "$this$hash"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "algo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p1, p0}, Lbytekn/foundation/encryption/HasherFactory;->digest([B)[B

    move-result-object p0

    return-object p0
.end method
