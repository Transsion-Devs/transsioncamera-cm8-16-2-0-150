.class public abstract Lbytekn/foundation/encryption/Hash;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbytekn/foundation/encryption/Hash$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lbytekn/foundation/encryption/Hash$Companion;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lbytekn/foundation/encryption/Hash$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbytekn/foundation/encryption/Hash$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lbytekn/foundation/encryption/Hash;->Companion:Lbytekn/foundation/encryption/Hash$Companion;

    return-void
.end method

.method public static constructor-impl([B)[B
    .registers 2

    const-string v0, "bytes"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final getHex-impl([B)Ljava/lang/String;
    .registers 2

    .line 77
    sget-object v0, Lbytekn/foundation/encryption/encoding/Hex;->INSTANCE:Lbytekn/foundation/encryption/encoding/Hex;

    invoke-virtual {v0, p0}, Lbytekn/foundation/encryption/encoding/Hex;->encode([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
