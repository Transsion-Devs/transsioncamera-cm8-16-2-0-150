.class public final Lbytekn/foundation/encryption/MD5;
.super Lbytekn/foundation/encryption/Hasher;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbytekn/foundation/encryption/MD5$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lbytekn/foundation/encryption/MD5$Companion;

.field private static final S:[I

.field private static final T:[I


# instance fields
.field private final b:[I

.field private final o:[I

.field private final r:[I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    new-instance v0, Lbytekn/foundation/encryption/MD5$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbytekn/foundation/encryption/MD5$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lbytekn/foundation/encryption/MD5;->Companion:Lbytekn/foundation/encryption/MD5$Companion;

    const/16 v0, 0x10

    .line 13
    new-array v0, v0, [I

    fill-array-data v0, :array_36

    sput-object v0, Lbytekn/foundation/encryption/MD5;->S:[I

    const/16 v0, 0x40

    .line 14
    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_16
    if-ge v2, v0, :cond_32

    const-wide v3, 0x100000000L

    long-to-double v3, v3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    int-to-double v7, v2

    add-double/2addr v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    double-to-long v3, v3

    long-to-int v3, v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_32
    sput-object v1, Lbytekn/foundation/encryption/MD5;->T:[I

    return-void

    nop

    :array_36
    .array-data 4
        0x7
        0xc
        0x11
        0x16
        0x5
        0x9
        0xe
        0x14
        0x4
        0xb
        0x10
        0x17
        0x6
        0xa
        0xf
        0x15
    .end array-data
.end method

.method public constructor <init>()V
    .registers 4

    const/16 v0, 0x40

    const/16 v1, 0x10

    .line 11
    invoke-direct {p0, v0, v1}, Lbytekn/foundation/encryption/Hasher;-><init>(II)V

    const/4 v0, 0x4

    .line 17
    new-array v2, v0, [I

    iput-object v2, p0, Lbytekn/foundation/encryption/MD5;->r:[I

    .line 18
    new-array v0, v0, [I

    iput-object v0, p0, Lbytekn/foundation/encryption/MD5;->o:[I

    .line 19
    new-array v0, v1, [I

    iput-object v0, p0, Lbytekn/foundation/encryption/MD5;->b:[I

    .line 22
    invoke-virtual {p0}, Lbytekn/foundation/encryption/MD5;->coreReset()V

    return-void
.end method


# virtual methods
.method protected coreDigest([B)V
    .registers 5

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_6
    const/16 v1, 0x10

    if-ge v0, v1, :cond_1b

    .line 70
    iget-object v1, p0, Lbytekn/foundation/encryption/MD5;->r:[I

    div-int/lit8 v2, v0, 0x4

    aget v1, v1, v2

    rem-int/lit8 v2, v0, 0x4

    mul-int/lit8 v2, v2, 0x8

    ushr-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_1b
    return-void
.end method

.method protected corePadding(J)[B
    .registers 10

    const/16 v0, 0x8

    int-to-long v1, v0

    add-long v3, p1, v1

    .line 61
    invoke-virtual {p0}, Lbytekn/foundation/encryption/Hasher;->getChunkSize()I

    move-result v5

    int-to-long v5, v5

    div-long/2addr v3, v5

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    mul-long/2addr v1, p1

    .line 63
    invoke-virtual {p0}, Lbytekn/foundation/encryption/Hasher;->getChunkSize()I

    move-result p0

    int-to-long v5, p0

    mul-long/2addr v3, v5

    sub-long/2addr v3, p1

    long-to-int p0, v3

    new-array p1, p0, [B

    const/16 p2, 0x80

    int-to-byte p2, p2

    const/4 v3, 0x0

    .line 64
    aput-byte p2, p1, v3

    :goto_1f
    if-ge v3, v0, :cond_2f

    add-int/lit8 p2, p0, -0x8

    add-int/2addr p2, v3

    mul-int/lit8 v4, v3, 0x8

    ushr-long v4, v1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    .line 65
    aput-byte v4, p1, p2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    :cond_2f
    return-object p1
.end method

.method protected coreReset()V
    .registers 3

    .line 26
    iget-object p0, p0, Lbytekn/foundation/encryption/MD5;->r:[I

    const/4 v0, 0x0

    const v1, 0x67452301

    aput v1, p0, v0

    const-wide v0, 0xefcdab89L

    long-to-int v0, v0

    const/4 v1, 0x1

    .line 27
    aput v0, p0, v1

    const-wide v0, 0x98badcfeL

    long-to-int v0, v0

    const/4 v1, 0x2

    .line 28
    aput v0, p0, v1

    const/4 v0, 0x3

    const v1, 0x10325476

    .line 29
    aput v1, p0, v0

    return-void
.end method

.method protected coreUpdate([B)V
    .registers 13

    const-string v0, "chunk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_7
    const/16 v2, 0x40

    if-ge v1, v2, :cond_1d

    .line 33
    iget-object v2, p0, Lbytekn/foundation/encryption/MD5;->b:[I

    ushr-int/lit8 v3, v1, 0x2

    aget-byte v4, p1, v1

    shl-int/lit8 v4, v4, 0x18

    aget v5, v2, v3

    ushr-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    aput v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1d
    move p1, v0

    :goto_1e
    const/4 v1, 0x4

    if-ge p1, v1, :cond_2c

    .line 34
    iget-object v1, p0, Lbytekn/foundation/encryption/MD5;->o:[I

    iget-object v3, p0, Lbytekn/foundation/encryption/MD5;->r:[I

    aget v3, v3, p1

    aput v3, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1e

    :cond_2c
    move p1, v0

    :goto_2d
    if-ge p1, v2, :cond_b9

    .line 36
    div-int/lit8 v3, p1, 0x10

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v3, :cond_61

    if-eq v3, v6, :cond_54

    if-eq v3, v5, :cond_4a

    if-eq v3, v4, :cond_3e

    move v7, v0

    goto :goto_6d

    .line 41
    :cond_3e
    iget-object v7, p0, Lbytekn/foundation/encryption/MD5;->r:[I

    aget v8, v7, v5

    aget v9, v7, v6

    aget v7, v7, v4

    not-int v7, v7

    or-int/2addr v7, v9

    :goto_48
    xor-int/2addr v7, v8

    goto :goto_6d

    .line 40
    :cond_4a
    iget-object v7, p0, Lbytekn/foundation/encryption/MD5;->r:[I

    aget v8, v7, v6

    aget v9, v7, v5

    xor-int/2addr v8, v9

    aget v7, v7, v4

    goto :goto_48

    .line 39
    :cond_54
    iget-object v7, p0, Lbytekn/foundation/encryption/MD5;->r:[I

    aget v8, v7, v6

    aget v9, v7, v4

    and-int/2addr v8, v9

    aget v7, v7, v5

    not-int v9, v9

    and-int/2addr v7, v9

    or-int/2addr v7, v8

    goto :goto_6d

    .line 38
    :cond_61
    iget-object v7, p0, Lbytekn/foundation/encryption/MD5;->r:[I

    aget v8, v7, v6

    aget v9, v7, v5

    and-int/2addr v9, v8

    not-int v8, v8

    aget v7, v7, v4

    and-int/2addr v7, v8

    or-int/2addr v7, v9

    :goto_6d
    if-eqz v3, :cond_85

    if-eq v3, v6, :cond_81

    if-eq v3, v5, :cond_7c

    if-eq v3, v4, :cond_77

    move v8, v0

    goto :goto_86

    :cond_77
    mul-int/lit8 v8, p1, 0x7

    :goto_79
    and-int/lit8 v8, v8, 0xf

    goto :goto_86

    :cond_7c
    mul-int/lit8 v8, p1, 0x3

    add-int/lit8 v8, v8, 0x5

    goto :goto_79

    :cond_81
    mul-int/lit8 v8, p1, 0x5

    add-int/2addr v8, v6

    goto :goto_79

    :cond_85
    move v8, p1

    .line 51
    :goto_86
    iget-object v9, p0, Lbytekn/foundation/encryption/MD5;->r:[I

    aget v10, v9, v6

    aget v9, v9, v0

    add-int/2addr v9, v7

    iget-object v7, p0, Lbytekn/foundation/encryption/MD5;->b:[I

    aget v7, v7, v8

    add-int/2addr v9, v7

    sget-object v7, Lbytekn/foundation/encryption/MD5;->T:[I

    aget v7, v7, p1

    add-int/2addr v9, v7

    sget-object v7, Lbytekn/foundation/encryption/MD5;->S:[I

    shl-int/lit8 v3, v3, 0x2

    and-int/lit8 v8, p1, 0x3

    or-int/2addr v3, v8

    aget v3, v7, v3

    invoke-static {v9, v3}, Lbytekn/foundation/encryption/EncryptionToolsKt;->rotateLeft(II)I

    move-result v3

    add-int/2addr v10, v3

    .line 52
    iget-object v3, p0, Lbytekn/foundation/encryption/MD5;->r:[I

    aget v7, v3, v4

    aput v7, v3, v0

    .line 53
    aget v7, v3, v5

    aput v7, v3, v4

    .line 54
    aget v4, v3, v6

    aput v4, v3, v5

    .line 55
    aput v10, v3, v6

    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_2d

    :cond_b9
    :goto_b9
    if-ge v0, v1, :cond_c9

    .line 57
    iget-object p1, p0, Lbytekn/foundation/encryption/MD5;->r:[I

    aget v2, p1, v0

    iget-object v3, p0, Lbytekn/foundation/encryption/MD5;->o:[I

    aget v3, v3, v0

    add-int/2addr v2, v3

    aput v2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_b9

    :cond_c9
    return-void
.end method
