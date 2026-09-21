.class public abstract Lbytekn/foundation/encryption/HasherFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final create:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;)V
    .registers 3

    const-string v0, "create"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbytekn/foundation/encryption/HasherFactory;->create:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final digest([B)[B
    .registers 4

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-object p0, p0, Lbytekn/foundation/encryption/HasherFactory;->create:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lbytekn/foundation/encryption/Hasher;

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lbytekn/foundation/encryption/Hasher;->update([BII)Lbytekn/foundation/encryption/Hasher;

    invoke-virtual {p0}, Lbytekn/foundation/encryption/Hasher;->digest()[B

    move-result-object p0

    return-object p0
.end method
