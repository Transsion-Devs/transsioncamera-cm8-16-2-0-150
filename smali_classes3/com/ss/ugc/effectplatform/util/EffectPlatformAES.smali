.class public final Lcom/ss/ugc/effectplatform/util/EffectPlatformAES;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/ss/ugc/effectplatform/util/EffectPlatformAES;

.field private static final defaultCryptKey$delegate:Lkotlin/Lazy;

.field private static final iMonitorReport:Lbytekn/foundation/concurrent/SharedReference;

.field private static platformVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 21
    new-instance v0, Lcom/ss/ugc/effectplatform/util/EffectPlatformAES;

    invoke-direct {v0}, Lcom/ss/ugc/effectplatform/util/EffectPlatformAES;-><init>()V

    sput-object v0, Lcom/ss/ugc/effectplatform/util/EffectPlatformAES;->INSTANCE:Lcom/ss/ugc/effectplatform/util/EffectPlatformAES;

    .line 25
    sget-object v0, Lcom/ss/ugc/effectplatform/util/PlatformUtil;->INSTANCE:Lcom/ss/ugc/effectplatform/util/PlatformUtil;

    invoke-virtual {v0}, Lcom/ss/ugc/effectplatform/util/PlatformUtil;->getPlatformSDKVersion()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/ugc/effectplatform/util/EffectPlatformAES;->platformVersion:Ljava/lang/String;

    .line 26
    new-instance v0, Lbytekn/foundation/concurrent/SharedReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbytekn/foundation/concurrent/SharedReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/ss/ugc/effectplatform/util/EffectPlatformAES;->iMonitorReport:Lbytekn/foundation/concurrent/SharedReference;

    .line 28
    sget-object v0, Lcom/ss/ugc/effectplatform/util/EffectPlatformAES$defaultCryptKey$2;->INSTANCE:Lcom/ss/ugc/effectplatform/util/EffectPlatformAES$defaultCryptKey$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/ss/ugc/effectplatform/util/EffectPlatformAES;->defaultCryptKey$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic decrypt$default(Lcom/ss/ugc/effectplatform/util/EffectPlatformAES;Ljava/lang/String;[BILjava/lang/Object;)Ljava/lang/String;
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_8

    .line 49
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/util/EffectPlatformAES;->getDefaultCryptKey()[B

    move-result-object p2

    :cond_8
    invoke-virtual {p0, p1, p2}, Lcom/ss/ugc/effectplatform/util/EffectPlatformAES;->decrypt(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, "cryptKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-static {p2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 p2, 0x2

    const/4 v0, 0x0

    .line 71
    invoke-static {p0, p1, v0, p2, v0}, Lcom/ss/ugc/effectplatform/util/EffectPlatformAES;->decrypt$default(Lcom/ss/ugc/effectplatform/util/EffectPlatformAES;Ljava/lang/String;[BILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 73
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":android"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/ss/ugc/effectplatform/extension/ByteArrayExKt;->toByteArrayExt(Ljava/lang/String;)[B

    move-result-object p2

    invoke-static {p2}, Lbytekn/foundation/encryption/MD5Kt;->md5([B)[B

    move-result-object p2

    invoke-static {p2}, Lbytekn/foundation/encryption/Hash;->getHex-impl([B)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_47

    const/16 v0, 0x8

    const/16 v1, 0x18

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    const-string v0, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/ss/ugc/effectplatform/extension/ByteArrayExKt;->toByteArrayExt(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/ss/ugc/effectplatform/util/EffectPlatformAES;->decrypt(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_47
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final decrypt(Ljava/lang/String;[B)Ljava/lang/String;
    .registers 15

    const-string v0, "cryptKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_7d

    .line 51
    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 52
    const-string p0, ""

    return-object p0

    .line 55
    :cond_11
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    .line 58
    :try_start_16
    sget-object v0, Lbytekn/foundation/encryption/AES;->Companion:Lbytekn/foundation/encryption/AES$Companion;

    sget-object v3, Lbytekn/foundation/encryption/encoding/Base64;->INSTANCE:Lbytekn/foundation/encryption/encoding/Base64;

    invoke-virtual {v3, p1}, Lbytekn/foundation/encryption/encoding/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v3

    sget-object v4, Lbytekn/foundation/encryption/Padding;->PKCS7Padding:Lbytekn/foundation/encryption/Padding;

    invoke-virtual {v0, v3, p2, p2, v4}, Lbytekn/foundation/encryption/AES$Companion;->decryptAesCbc([B[B[BLbytekn/foundation/encryption/Padding;)[B

    move-result-object v0

    sget-object v3, Lbytekn/foundation/io/file/ContentEncoding;->Utf8:Lbytekn/foundation/io/file/ContentEncoding;

    invoke-static {v0, v3}, Lcom/ss/ugc/effectplatform/util/CommonUtilExKt;->convertToEncoding([BLbytekn/foundation/io/file/ContentEncoding;)Ljava/lang/String;

    move-result-object p0
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_2a} :catch_2b

    return-object p0

    :catch_2b
    move-exception v0

    .line 60
    sget-object v3, Lbytekn/foundation/logger/Logger;->INSTANCE:Lbytekn/foundation/logger/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "decrypt failed!, content: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", platformVersion: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/ss/ugc/effectplatform/util/EffectPlatformAES;->platformVersion:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "EffectPlatformAES"

    invoke-virtual {v3, v5, v4, v0}, Lbytekn/foundation/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    sget-object v3, Lcom/ss/ugc/effectplatform/util/EffectPlatformAES;->platformVersion:Ljava/lang/String;

    sget-object v4, Lcom/ss/ugc/effectplatform/util/PlatformUtil;->INSTANCE:Lcom/ss/ugc/effectplatform/util/PlatformUtil;

    invoke-virtual {v4}, Lcom/ss/ugc/effectplatform/util/PlatformUtil;->getPlatformSDKVersion()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    .line 63
    sget-object v3, Lcom/ss/ugc/effectplatform/util/EffectPlatformAES;->iMonitorReport:Lbytekn/foundation/concurrent/SharedReference;

    invoke-virtual {v3}, Lbytekn/foundation/concurrent/SharedReference;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/ss/ugc/effectplatform/monitor/IMonitorReport;

    if-eqz v5, :cond_7d

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2}, Lbytekn/foundation/utils/CommonExtensionKt;->getStackTraceString(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v8

    .line 64
    sget-object v10, Lcom/ss/ugc/effectplatform/util/EffectPlatformAES;->platformVersion:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/util/EffectPlatformAES;->getDefaultCryptKey()[B

    move-result-object p0

    invoke-static {p0, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    xor-int/lit8 v11, p0, 0x1

    move-object v6, p1

    .line 63
    invoke-static/range {v5 .. v11}, Lcom/ss/ugc/effectplatform/monitor/MobExtensionKt;->mobDecryptError(Lcom/ss/ugc/effectplatform/monitor/IMonitorReport;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    :cond_7d
    return-object v1
.end method

.method public final getDefaultCryptKey()[B
    .registers 1

    sget-object p0, Lcom/ss/ugc/effectplatform/util/EffectPlatformAES;->defaultCryptKey$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method public final getIMonitorReport()Lbytekn/foundation/concurrent/SharedReference;
    .registers 1

    .line 26
    sget-object p0, Lcom/ss/ugc/effectplatform/util/EffectPlatformAES;->iMonitorReport:Lbytekn/foundation/concurrent/SharedReference;

    return-object p0
.end method

.method public final getPlatformVersion()Ljava/lang/String;
    .registers 1

    .line 25
    sget-object p0, Lcom/ss/ugc/effectplatform/util/EffectPlatformAES;->platformVersion:Ljava/lang/String;

    return-object p0
.end method
