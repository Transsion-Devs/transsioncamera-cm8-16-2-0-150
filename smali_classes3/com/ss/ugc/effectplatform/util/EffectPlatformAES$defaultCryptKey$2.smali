.class final Lcom/ss/ugc/effectplatform/util/EffectPlatformAES$defaultCryptKey$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ugc/effectplatform/util/EffectPlatformAES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lcom/ss/ugc/effectplatform/util/EffectPlatformAES$defaultCryptKey$2;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/ss/ugc/effectplatform/util/EffectPlatformAES$defaultCryptKey$2;

    invoke-direct {v0}, Lcom/ss/ugc/effectplatform/util/EffectPlatformAES$defaultCryptKey$2;-><init>()V

    sput-object v0, Lcom/ss/ugc/effectplatform/util/EffectPlatformAES$defaultCryptKey$2;->INSTANCE:Lcom/ss/ugc/effectplatform/util/EffectPlatformAES$defaultCryptKey$2;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    .line 21
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/util/EffectPlatformAES$defaultCryptKey$2;->invoke()[B

    move-result-object p0

    return-object p0
.end method

.method public final invoke()[B
    .registers 6

    .line 29
    sget-object p0, Lcom/ss/ugc/effectplatform/util/EffectPlatformAES;->INSTANCE:Lcom/ss/ugc/effectplatform/util/EffectPlatformAES;

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/util/EffectPlatformAES;->getPlatformVersion()Ljava/lang/String;

    move-result-object p0

    .line 30
    sget-object v0, Lbytekn/foundation/logger/Logger;->INSTANCE:Lbytekn/foundation/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initialize-->platformVersion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EffectPlatformAES"

    invoke-virtual {v0, v2, v1}, Lbytekn/foundation/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_75

    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":android"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ss/ugc/effectplatform/extension/ByteArrayExKt;->toByteArrayExt(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lbytekn/foundation/encryption/MD5Kt;->md5([B)[B

    move-result-object v1

    invoke-static {v1}, Lbytekn/foundation/encryption/Hash;->getHex-impl([B)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6d

    const/16 v3, 0x8

    const/16 v4, 0x18

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v3, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "md5: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":android -> "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Lbytekn/foundation/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-static {v1}, Lcom/ss/ugc/effectplatform/extension/ByteArrayExKt;->toByteArrayExt(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0

    .line 34
    :cond_6d
    new-instance p0, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p0, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 32
    :cond_75
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method
