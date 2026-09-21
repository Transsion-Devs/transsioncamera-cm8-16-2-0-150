.class public abstract Lbytekn/foundation/encryption/MD5Kt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final md5([B)[B
    .registers 2

    const-string v0, "$this$md5"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    sget-object v0, Lbytekn/foundation/encryption/MD5;->Companion:Lbytekn/foundation/encryption/MD5$Companion;

    invoke-static {p0, v0}, Lbytekn/foundation/encryption/HasherKt;->hash([BLbytekn/foundation/encryption/HasherFactory;)[B

    move-result-object p0

    return-object p0
.end method
