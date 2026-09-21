.class public final Lbytekn/foundation/encryption/encoding/Base64;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DECODE:[I

.field public static final INSTANCE:Lbytekn/foundation/encryption/encoding/Base64;

# The value of this static final field might be set in the static constructor
.field private static final TABLE:Ljava/lang/String; = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/="


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 8
    new-instance v0, Lbytekn/foundation/encryption/encoding/Base64;

    invoke-direct {v0}, Lbytekn/foundation/encryption/encoding/Base64;-><init>()V

    sput-object v0, Lbytekn/foundation/encryption/encoding/Base64;->INSTANCE:Lbytekn/foundation/encryption/encoding/Base64;

    .line 9
    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/="

    sput-object v0, Lbytekn/foundation/encryption/encoding/Base64;->TABLE:Ljava/lang/String;

    const/16 v0, 0x100

    .line 10
    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    :goto_11
    const/16 v3, 0xff

    if-gt v2, v3, :cond_1b

    const/4 v3, -0x1

    .line 11
    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 12
    :cond_1b
    sget-object v2, Lbytekn/foundation/encryption/encoding/Base64;->TABLE:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    :goto_21
    if-ge v1, v2, :cond_2e

    .line 13
    sget-object v3, Lbytekn/foundation/encryption/encoding/Base64;->TABLE:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aput v1, v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 10
    :cond_2e
    sput-object v0, Lbytekn/foundation/encryption/encoding/Base64;->DECODE:[I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final readU8([BI)I
    .registers 3

    .line 88
    aget-byte p0, p1, p2

    and-int/lit16 p0, p0, 0xff

    return p0
.end method


# virtual methods
.method public final decode([B[B)I
    .registers 12

    const-string v0, "src"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    .line 34
    :goto_c
    array-length v2, p1

    if-ge v0, v2, :cond_63

    .line 35
    sget-object v2, Lbytekn/foundation/encryption/encoding/Base64;->DECODE:[I

    invoke-direct {p0, p1, v0}, Lbytekn/foundation/encryption/encoding/Base64;->readU8([BI)I

    move-result v3

    aget v3, v2, v3

    if-gez v3, :cond_1c

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_1c
    add-int/lit8 v3, v0, 0x1

    .line 41
    invoke-direct {p0, p1, v0}, Lbytekn/foundation/encryption/encoding/Base64;->readU8([BI)I

    move-result v4

    aget v4, v2, v4

    add-int/lit8 v5, v0, 0x2

    .line 42
    invoke-direct {p0, p1, v3}, Lbytekn/foundation/encryption/encoding/Base64;->readU8([BI)I

    move-result v3

    aget v3, v2, v3

    add-int/lit8 v6, v0, 0x3

    .line 43
    invoke-direct {p0, p1, v5}, Lbytekn/foundation/encryption/encoding/Base64;->readU8([BI)I

    move-result v5

    aget v5, v2, v5

    add-int/lit8 v0, v0, 0x4

    .line 44
    invoke-direct {p0, p1, v6}, Lbytekn/foundation/encryption/encoding/Base64;->readU8([BI)I

    move-result v6

    aget v2, v2, v6

    add-int/lit8 v6, v1, 0x1

    shl-int/lit8 v4, v4, 0x2

    shr-int/lit8 v7, v3, 0x4

    or-int/2addr v4, v7

    int-to-byte v4, v4

    .line 45
    aput-byte v4, p2, v1

    const/16 v4, 0x40

    if-ge v5, v4, :cond_61

    add-int/lit8 v7, v1, 0x2

    shl-int/lit8 v3, v3, 0x4

    shr-int/lit8 v8, v5, 0x2

    or-int/2addr v3, v8

    int-to-byte v3, v3

    .line 47
    aput-byte v3, p2, v6

    if-ge v2, v4, :cond_5f

    add-int/lit8 v1, v1, 0x3

    shl-int/lit8 v3, v5, 0x6

    or-int/2addr v2, v3

    int-to-byte v2, v2

    .line 49
    aput-byte v2, p2, v7

    goto :goto_c

    :cond_5f
    move v1, v7

    goto :goto_c

    :cond_61
    move v1, v6

    goto :goto_c

    :cond_63
    return v1
.end method

.method public final decode(Ljava/lang/String;)[B
    .registers 6

    const-string v0, "str"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v0, :cond_18

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 22
    :cond_18
    new-array p1, v0, [B

    .line 23
    invoke-virtual {p0, v1, p1}, Lbytekn/foundation/encryption/encoding/Base64;->decode([B[B)I

    move-result p0

    invoke-static {p1, p0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    const-string p1, "java.util.Arrays.copyOf(this, newSize)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
