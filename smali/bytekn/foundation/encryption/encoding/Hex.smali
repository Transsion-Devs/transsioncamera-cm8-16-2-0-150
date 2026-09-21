.class public final Lbytekn/foundation/encryption/encoding/Hex;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
# The value of this static final field might be set in the static constructor
.field private static final DIGITS:Ljava/lang/String; = "0123456789ABCDEF"

.field private static final DIGITS_LOWER:Ljava/lang/String;

.field private static final DIGITS_UPPER:Ljava/lang/String;

.field public static final INSTANCE:Lbytekn/foundation/encryption/encoding/Hex;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 7
    new-instance v0, Lbytekn/foundation/encryption/encoding/Hex;

    invoke-direct {v0}, Lbytekn/foundation/encryption/encoding/Hex;-><init>()V

    sput-object v0, Lbytekn/foundation/encryption/encoding/Hex;->INSTANCE:Lbytekn/foundation/encryption/encoding/Hex;

    .line 8
    const-string v0, "0123456789ABCDEF"

    sput-object v0, Lbytekn/foundation/encryption/encoding/Hex;->DIGITS:Ljava/lang/String;

    .line 9
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "(this as java.lang.String).toUpperCase()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v1, Lbytekn/foundation/encryption/encoding/Hex;->DIGITS_UPPER:Ljava/lang/String;

    .line 10
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "(this as java.lang.String).toLowerCase()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lbytekn/foundation/encryption/encoding/Hex;->DIGITS_LOWER:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final encodeBase([BLjava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 38
    array-length p0, p1

    mul-int/lit8 p0, p0, 0x2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 39
    array-length p0, p1

    const/4 v1, 0x0

    :goto_a
    if-ge v1, p0, :cond_27

    .line 40
    aget-byte v2, p1, v1

    and-int/lit16 v3, v2, 0xff

    ushr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    .line 41
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v2, v2, 0xf

    .line 42
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 38
    :cond_27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StringBuilder(capacity).\u2026builderAction).toString()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public final encode([B)Ljava/lang/String;
    .registers 3

    const-string v0, "src"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    sget-object v0, Lbytekn/foundation/encryption/encoding/Hex;->DIGITS_LOWER:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lbytekn/foundation/encryption/encoding/Hex;->encodeBase([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
