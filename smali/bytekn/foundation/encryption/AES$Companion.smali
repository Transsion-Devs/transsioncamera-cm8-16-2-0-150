.class public final Lbytekn/foundation/encryption/AES$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbytekn/foundation/encryption/AES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 109
    invoke-direct {p0}, Lbytekn/foundation/encryption/AES$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$toIntArray(Lbytekn/foundation/encryption/AES$Companion;[B)[I
    .registers 2

    .line 109
    invoke-direct {p0, p1}, Lbytekn/foundation/encryption/AES$Companion;->toIntArray([B)[I

    move-result-object p0

    return-object p0
.end method

.method private final getIV([B)[B
    .registers 4

    const/16 p0, 0x10

    .line 187
    new-array v0, p0, [B

    if-eqz p1, :cond_e

    .line 189
    array-length v1, p1

    if-ge v1, p0, :cond_a

    array-length p0, p1

    :cond_a
    const/4 v1, 0x0

    .line 190
    invoke-static {p1, v1, v0, v1, p0}, Lbytekn/foundation/encryption/EncryptionToolsKt;->arraycopy([BI[BII)[B

    :cond_e
    return-object v0
.end method

.method private final toByteArray([I)[B
    .registers 9

    .line 174
    array-length p0, p1

    mul-int/lit8 p0, p0, 0x4

    new-array p0, p0, [B

    .line 176
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v1, v0, :cond_31

    .line 177
    aget v3, p1, v1

    add-int/lit8 v4, v2, 0x1

    shr-int/lit8 v5, v3, 0x18

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    .line 178
    aput-byte v5, p0, v2

    add-int/lit8 v5, v2, 0x2

    shr-int/lit8 v6, v3, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    .line 179
    aput-byte v6, p0, v4

    add-int/lit8 v4, v2, 0x3

    shr-int/lit8 v6, v3, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    .line 180
    aput-byte v6, p0, v5

    add-int/lit8 v2, v2, 0x4

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    .line 181
    aput-byte v3, p0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_31
    return-object p0
.end method

.method private final toIntArray([B)[I
    .registers 9

    .line 161
    array-length p0, p1

    div-int/lit8 p0, p0, 0x4

    new-array v0, p0, [I

    const/4 v1, 0x0

    move v2, v1

    :goto_7
    if-ge v1, p0, :cond_2f

    add-int/lit8 v3, v2, 0x1

    .line 164
    aget-byte v4, p1, v2

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v2, 0x2

    .line 165
    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v6, v2, 0x3

    .line 166
    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v2, v2, 0x4

    .line 167
    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v5, v6

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v3, v5

    shl-int/lit8 v4, v4, 0x18

    or-int/2addr v3, v4

    .line 168
    aput v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_2f
    return-object v0
.end method


# virtual methods
.method public final decryptAesCbc([B[B[BLbytekn/foundation/encryption/Padding;)[B
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    const-string v4, "data"

    move-object/from16 v5, p1

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "key"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "iv"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "padding"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    new-instance v4, Lbytekn/foundation/encryption/AES;

    invoke-direct {v4, v1}, Lbytekn/foundation/encryption/AES;-><init>([B)V

    .line 257
    invoke-direct/range {p0 .. p1}, Lbytekn/foundation/encryption/AES$Companion;->toIntArray([B)[I

    move-result-object v1

    .line 258
    array-length v5, v1

    .line 259
    invoke-direct {v0, v2}, Lbytekn/foundation/encryption/AES$Companion;->getIV([B)[B

    move-result-object v2

    invoke-direct {v0, v2}, Lbytekn/foundation/encryption/AES$Companion;->toIntArray([B)[I

    move-result-object v2

    const/4 v6, 0x0

    .line 261
    aget v7, v2, v6

    const/4 v8, 0x1

    .line 262
    aget v8, v2, v8

    const/4 v9, 0x2

    .line 263
    aget v9, v2, v9

    const/4 v10, 0x3

    .line 264
    aget v2, v2, v10

    .line 266
    invoke-static {v6, v5}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v5

    const/4 v6, 0x4

    invoke-static {v5, v6}, Lkotlin/ranges/RangesKt;->step(Lkotlin/ranges/IntProgression;I)Lkotlin/ranges/IntProgression;

    move-result-object v5

    invoke-virtual {v5}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v6

    invoke-virtual {v5}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v10

    invoke-virtual {v5}, Lkotlin/ranges/IntProgression;->getStep()I

    move-result v5

    if-ltz v5, :cond_56

    if-gt v6, v10, :cond_87

    goto :goto_58

    :cond_56
    if-lt v6, v10, :cond_87

    .line 267
    :goto_58
    aget v11, v1, v6

    add-int/lit8 v12, v6, 0x1

    .line 268
    aget v13, v1, v12

    add-int/lit8 v14, v6, 0x2

    .line 269
    aget v15, v1, v14

    add-int/lit8 v16, v6, 0x3

    .line 270
    aget v17, v1, v16

    .line 272
    invoke-virtual {v4, v1, v6}, Lbytekn/foundation/encryption/AES;->decryptBlock([II)V

    .line 274
    aget v18, v1, v6

    xor-int v7, v18, v7

    aput v7, v1, v6

    .line 275
    aget v7, v1, v12

    xor-int/2addr v7, v8

    aput v7, v1, v12

    .line 276
    aget v7, v1, v14

    xor-int/2addr v7, v9

    aput v7, v1, v14

    .line 277
    aget v7, v1, v16

    xor-int/2addr v2, v7

    aput v2, v1, v16

    if-eq v6, v10, :cond_87

    add-int/2addr v6, v5

    move v7, v11

    move v8, v13

    move v9, v15

    move/from16 v2, v17

    goto :goto_58

    .line 284
    :cond_87
    sget-object v2, Lbytekn/foundation/encryption/Padding;->Companion:Lbytekn/foundation/encryption/Padding$Companion;

    invoke-direct {v0, v1}, Lbytekn/foundation/encryption/AES$Companion;->toByteArray([I)[B

    move-result-object v0

    invoke-virtual {v2, v0, v3}, Lbytekn/foundation/encryption/Padding$Companion;->removePadding([BLbytekn/foundation/encryption/Padding;)[B

    move-result-object v0

    return-object v0
.end method
