.class public final Lbytekn/foundation/encryption/AES;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbytekn/foundation/encryption/AES$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lbytekn/foundation/encryption/AES$Companion;

.field private static final INV_SBOX:[I

.field private static final INV_SUB_MIX_0:[I

.field private static final INV_SUB_MIX_1:[I

.field private static final INV_SUB_MIX_2:[I

.field private static final INV_SUB_MIX_3:[I

.field private static final RCON:[I

.field private static final SBOX:[I

.field private static final SUB_MIX_0:[I

.field private static final SUB_MIX_1:[I

.field private static final SUB_MIX_2:[I

.field private static final SUB_MIX_3:[I


# instance fields
.field private final invKeySchedule:[I

.field private final keySchedule:[I

.field private final keySize:I

.field private final keyWords:[I

.field private final ksRows:I

.field private final numRounds:I


# direct methods
.method static constructor <clinit>()V
    .registers 14

    new-instance v0, Lbytekn/foundation/encryption/AES$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbytekn/foundation/encryption/AES$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lbytekn/foundation/encryption/AES;->Companion:Lbytekn/foundation/encryption/AES$Companion;

    const/16 v0, 0x100

    .line 110
    new-array v1, v0, [I

    sput-object v1, Lbytekn/foundation/encryption/AES;->SBOX:[I

    .line 111
    new-array v1, v0, [I

    sput-object v1, Lbytekn/foundation/encryption/AES;->INV_SBOX:[I

    .line 112
    new-array v1, v0, [I

    sput-object v1, Lbytekn/foundation/encryption/AES;->SUB_MIX_0:[I

    .line 113
    new-array v1, v0, [I

    sput-object v1, Lbytekn/foundation/encryption/AES;->SUB_MIX_1:[I

    .line 114
    new-array v1, v0, [I

    sput-object v1, Lbytekn/foundation/encryption/AES;->SUB_MIX_2:[I

    .line 115
    new-array v1, v0, [I

    sput-object v1, Lbytekn/foundation/encryption/AES;->SUB_MIX_3:[I

    .line 116
    new-array v1, v0, [I

    sput-object v1, Lbytekn/foundation/encryption/AES;->INV_SUB_MIX_0:[I

    .line 117
    new-array v1, v0, [I

    sput-object v1, Lbytekn/foundation/encryption/AES;->INV_SUB_MIX_1:[I

    .line 118
    new-array v1, v0, [I

    sput-object v1, Lbytekn/foundation/encryption/AES;->INV_SUB_MIX_2:[I

    .line 119
    new-array v1, v0, [I

    sput-object v1, Lbytekn/foundation/encryption/AES;->INV_SUB_MIX_3:[I

    const/16 v1, 0xb

    .line 120
    new-array v1, v1, [I

    fill-array-data v1, :array_e4

    sput-object v1, Lbytekn/foundation/encryption/AES;->RCON:[I

    .line 125
    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_3f
    if-ge v3, v0, :cond_51

    const/16 v4, 0x80

    if-lt v3, v4, :cond_4a

    shl-int/lit8 v4, v3, 0x1

    xor-int/lit16 v4, v4, 0x11b

    goto :goto_4c

    :cond_4a
    shl-int/lit8 v4, v3, 0x1

    .line 126
    :goto_4c
    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3f

    :cond_51
    move v3, v2

    move v4, v3

    :goto_53
    if-ge v2, v0, :cond_e3

    shl-int/lit8 v5, v3, 0x1

    xor-int/2addr v5, v3

    shl-int/lit8 v6, v3, 0x2

    xor-int/2addr v5, v6

    shl-int/lit8 v6, v3, 0x3

    xor-int/2addr v5, v6

    shl-int/lit8 v6, v3, 0x4

    xor-int/2addr v5, v6

    ushr-int/lit8 v6, v5, 0x8

    and-int/lit16 v5, v5, 0xff

    xor-int/2addr v5, v6

    xor-int/lit8 v5, v5, 0x63

    .line 134
    sget-object v6, Lbytekn/foundation/encryption/AES;->SBOX:[I

    aput v5, v6, v4

    .line 135
    sget-object v6, Lbytekn/foundation/encryption/AES;->INV_SBOX:[I

    aput v4, v6, v5

    .line 136
    aget v6, v1, v4

    .line 137
    aget v7, v1, v6

    .line 138
    aget v8, v1, v7

    .line 140
    aget v9, v1, v5

    mul-int/lit16 v9, v9, 0x101

    const v10, 0x1010100

    mul-int v11, v5, v10

    xor-int/2addr v9, v11

    .line 141
    sget-object v11, Lbytekn/foundation/encryption/AES;->SUB_MIX_0:[I

    shl-int/lit8 v12, v9, 0x18

    ushr-int/lit8 v13, v9, 0x8

    or-int/2addr v12, v13

    aput v12, v11, v4

    .line 142
    sget-object v11, Lbytekn/foundation/encryption/AES;->SUB_MIX_1:[I

    shl-int/lit8 v12, v9, 0x10

    ushr-int/lit8 v13, v9, 0x10

    or-int/2addr v12, v13

    aput v12, v11, v4

    .line 143
    sget-object v11, Lbytekn/foundation/encryption/AES;->SUB_MIX_2:[I

    shl-int/lit8 v12, v9, 0x8

    ushr-int/lit8 v13, v9, 0x18

    or-int/2addr v12, v13

    aput v12, v11, v4

    .line 144
    sget-object v11, Lbytekn/foundation/encryption/AES;->SUB_MIX_3:[I

    aput v9, v11, v4

    const v9, 0x1010101

    mul-int/2addr v9, v8

    const v11, 0x10001

    mul-int/2addr v7, v11

    xor-int/2addr v7, v9

    mul-int/lit16 v9, v6, 0x101

    xor-int/2addr v7, v9

    mul-int/2addr v10, v4

    xor-int/2addr v7, v10

    .line 146
    sget-object v9, Lbytekn/foundation/encryption/AES;->INV_SUB_MIX_0:[I

    shl-int/lit8 v10, v7, 0x18

    ushr-int/lit8 v11, v7, 0x8

    or-int/2addr v10, v11

    aput v10, v9, v5

    .line 147
    sget-object v9, Lbytekn/foundation/encryption/AES;->INV_SUB_MIX_1:[I

    shl-int/lit8 v10, v7, 0x10

    ushr-int/lit8 v11, v7, 0x10

    or-int/2addr v10, v11

    aput v10, v9, v5

    .line 148
    sget-object v9, Lbytekn/foundation/encryption/AES;->INV_SUB_MIX_2:[I

    shl-int/lit8 v10, v7, 0x8

    ushr-int/lit8 v11, v7, 0x18

    or-int/2addr v10, v11

    aput v10, v9, v5

    .line 149
    sget-object v9, Lbytekn/foundation/encryption/AES;->INV_SUB_MIX_3:[I

    aput v7, v9, v5

    if-nez v4, :cond_d1

    const/4 v3, 0x1

    move v4, v3

    goto :goto_df

    :cond_d1
    xor-int v4, v8, v6

    .line 154
    aget v4, v1, v4

    aget v4, v1, v4

    aget v4, v1, v4

    xor-int/2addr v4, v6

    .line 155
    aget v5, v1, v3

    aget v5, v1, v5

    xor-int/2addr v3, v5

    :goto_df
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_53

    :cond_e3
    return-void

    :array_e4
    .array-data 4
        0x0
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x1b
        0x36
    .end array-data
.end method

.method public constructor <init>([B)V
    .registers 3

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    sget-object v0, Lbytekn/foundation/encryption/AES;->Companion:Lbytekn/foundation/encryption/AES$Companion;

    # invokes: Lbytekn/foundation/encryption/AES$Companion;->toIntArray([B)[I
    invoke-static {v0, p1}, Lbytekn/foundation/encryption/AES$Companion;->access$toIntArray(Lbytekn/foundation/encryption/AES$Companion;[B)[I

    move-result-object p1

    invoke-direct {p0, p1}, Lbytekn/foundation/encryption/AES;-><init>([I)V

    return-void
.end method

.method public constructor <init>([I)V
    .registers 11

    const-string v0, "keyWords"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbytekn/foundation/encryption/AES;->keyWords:[I

    .line 11
    array-length p1, p1

    iput p1, p0, Lbytekn/foundation/encryption/AES;->keySize:I

    add-int/lit8 v0, p1, 0x6

    .line 12
    iput v0, p0, Lbytekn/foundation/encryption/AES;->numRounds:I

    add-int/lit8 p1, p1, 0x7

    const/4 v0, 0x4

    mul-int/2addr p1, v0

    .line 13
    iput p1, p0, Lbytekn/foundation/encryption/AES;->ksRows:I

    .line 14
    new-array v1, p1, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_1b
    if-ge v3, p1, :cond_90

    .line 16
    iget v4, p0, Lbytekn/foundation/encryption/AES;->keySize:I

    if-ge v3, v4, :cond_26

    .line 17
    iget-object v4, p0, Lbytekn/foundation/encryption/AES;->keyWords:[I

    aget v4, v4, v3

    goto :goto_8b

    :cond_26
    add-int/lit8 v5, v3, -0x1

    .line 19
    aget v5, v1, v5

    .line 20
    rem-int v6, v3, v4

    if-nez v6, :cond_5e

    shl-int/lit8 v6, v5, 0x8

    ushr-int/lit8 v5, v5, 0x18

    or-int/2addr v5, v6

    .line 23
    sget-object v6, Lbytekn/foundation/encryption/AES;->SBOX:[I

    ushr-int/lit8 v7, v5, 0x18

    and-int/lit16 v7, v7, 0xff

    .line 8
    aget v7, v6, v7

    shl-int/lit8 v7, v7, 0x18

    ushr-int/lit8 v8, v5, 0x10

    and-int/lit16 v8, v8, 0xff

    .line 8
    aget v8, v6, v8

    shl-int/lit8 v8, v8, 0x10

    or-int/2addr v7, v8

    ushr-int/lit8 v8, v5, 0x8

    and-int/lit16 v8, v8, 0xff

    .line 8
    aget v8, v6, v8

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v7, v8

    and-int/lit16 v5, v5, 0xff

    .line 23
    aget v5, v6, v5

    or-int/2addr v5, v7

    .line 24
    sget-object v6, Lbytekn/foundation/encryption/AES;->RCON:[I

    div-int v7, v3, v4

    aget v6, v6, v7

    shl-int/lit8 v6, v6, 0x18

    xor-int/2addr v5, v6

    goto :goto_86

    :cond_5e
    const/4 v6, 0x6

    if-le v4, v6, :cond_86

    .line 25
    rem-int v6, v3, v4

    if-ne v6, v0, :cond_86

    .line 27
    sget-object v6, Lbytekn/foundation/encryption/AES;->SBOX:[I

    ushr-int/lit8 v7, v5, 0x18

    and-int/lit16 v7, v7, 0xff

    .line 8
    aget v7, v6, v7

    shl-int/lit8 v7, v7, 0x18

    ushr-int/lit8 v8, v5, 0x10

    and-int/lit16 v8, v8, 0xff

    .line 8
    aget v8, v6, v8

    shl-int/lit8 v8, v8, 0x10

    or-int/2addr v7, v8

    ushr-int/lit8 v8, v5, 0x8

    and-int/lit16 v8, v8, 0xff

    .line 8
    aget v8, v6, v8

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v7, v8

    and-int/lit16 v5, v5, 0xff

    .line 27
    aget v5, v6, v5

    or-int/2addr v5, v7

    :cond_86
    :goto_86
    sub-int v4, v3, v4

    .line 29
    aget v4, v1, v4

    xor-int/2addr v4, v5

    .line 16
    :goto_8b
    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 14
    :cond_90
    iput-object v1, p0, Lbytekn/foundation/encryption/AES;->keySchedule:[I

    .line 33
    iget p1, p0, Lbytekn/foundation/encryption/AES;->ksRows:I

    new-array v1, p1, [I

    :goto_96
    if-ge v2, p1, :cond_df

    .line 35
    iget v3, p0, Lbytekn/foundation/encryption/AES;->ksRows:I

    sub-int/2addr v3, v2

    .line 36
    rem-int/lit8 v4, v2, 0x4

    if-eqz v4, :cond_a4

    iget-object v4, p0, Lbytekn/foundation/encryption/AES;->keySchedule:[I

    aget v4, v4, v3

    goto :goto_aa

    :cond_a4
    iget-object v4, p0, Lbytekn/foundation/encryption/AES;->keySchedule:[I

    add-int/lit8 v5, v3, -0x4

    aget v4, v4, v5

    :goto_aa
    if-lt v2, v0, :cond_da

    if-gt v3, v0, :cond_af

    goto :goto_da

    .line 38
    :cond_af
    sget-object v3, Lbytekn/foundation/encryption/AES;->INV_SUB_MIX_0:[I

    sget-object v5, Lbytekn/foundation/encryption/AES;->SBOX:[I

    ushr-int/lit8 v6, v4, 0x18

    and-int/lit16 v6, v6, 0xff

    .line 8
    aget v6, v5, v6

    aget v3, v3, v6

    .line 38
    sget-object v6, Lbytekn/foundation/encryption/AES;->INV_SUB_MIX_1:[I

    ushr-int/lit8 v7, v4, 0x10

    and-int/lit16 v7, v7, 0xff

    .line 8
    aget v7, v5, v7

    aget v6, v6, v7

    xor-int/2addr v3, v6

    .line 38
    sget-object v6, Lbytekn/foundation/encryption/AES;->INV_SUB_MIX_2:[I

    ushr-int/lit8 v7, v4, 0x8

    and-int/lit16 v7, v7, 0xff

    .line 8
    aget v7, v5, v7

    aget v6, v6, v7

    xor-int/2addr v3, v6

    .line 40
    sget-object v6, Lbytekn/foundation/encryption/AES;->INV_SUB_MIX_3:[I

    and-int/lit16 v4, v4, 0xff

    aget v4, v5, v4

    aget v4, v6, v4

    xor-int/2addr v4, v3

    .line 38
    :cond_da
    :goto_da
    aput v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_96

    .line 33
    :cond_df
    iput-object v1, p0, Lbytekn/foundation/encryption/AES;->invKeySchedule:[I

    return-void
.end method

.method private final doCryptBlock([II[I[I[I[I[I[I)V
    .registers 25

    .line 79
    aget v0, p1, p2

    const/4 v1, 0x0

    aget v1, p3, v1

    xor-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x1

    .line 80
    aget v2, p1, v1

    const/4 v3, 0x1

    aget v4, p3, v3

    xor-int/2addr v2, v4

    add-int/lit8 v4, p2, 0x2

    .line 81
    aget v5, p1, v4

    const/4 v6, 0x2

    aget v6, p3, v6

    xor-int/2addr v5, v6

    add-int/lit8 v6, p2, 0x3

    .line 82
    aget v7, p1, v6

    const/4 v8, 0x3

    aget v9, p3, v8

    xor-int/2addr v7, v9

    move-object/from16 v9, p0

    .line 85
    iget v9, v9, Lbytekn/foundation/encryption/AES;->numRounds:I

    const/4 v10, 0x4

    :goto_23
    if-ge v3, v9, :cond_a5

    ushr-int/lit8 v11, v0, 0x18

    and-int/lit16 v11, v11, 0xff

    .line 8
    aget v11, p4, v11

    ushr-int/lit8 v12, v2, 0x10

    and-int/lit16 v12, v12, 0xff

    .line 8
    aget v12, p5, v12

    xor-int/2addr v11, v12

    ushr-int/lit8 v12, v5, 0x8

    and-int/lit16 v12, v12, 0xff

    .line 8
    aget v12, p6, v12

    xor-int/2addr v11, v12

    and-int/lit16 v12, v7, 0xff

    .line 8
    aget v12, p7, v12

    xor-int/2addr v11, v12

    add-int/lit8 v12, v10, 0x1

    .line 87
    aget v13, p3, v10

    xor-int/2addr v11, v13

    ushr-int/lit8 v13, v2, 0x18

    and-int/lit16 v13, v13, 0xff

    .line 8
    aget v13, p4, v13

    ushr-int/lit8 v14, v5, 0x10

    and-int/lit16 v14, v14, 0xff

    .line 8
    aget v14, p5, v14

    xor-int/2addr v13, v14

    ushr-int/lit8 v14, v7, 0x8

    and-int/lit16 v14, v14, 0xff

    .line 8
    aget v14, p6, v14

    xor-int/2addr v13, v14

    and-int/lit16 v14, v0, 0xff

    .line 8
    aget v14, p7, v14

    xor-int/2addr v13, v14

    add-int/lit8 v14, v10, 0x2

    .line 89
    aget v12, p3, v12

    xor-int/2addr v12, v13

    ushr-int/lit8 v13, v5, 0x18

    and-int/lit16 v13, v13, 0xff

    .line 8
    aget v13, p4, v13

    ushr-int/lit8 v15, v7, 0x10

    and-int/lit16 v15, v15, 0xff

    .line 8
    aget v15, p5, v15

    xor-int/2addr v13, v15

    ushr-int/lit8 v15, v0, 0x8

    and-int/lit16 v15, v15, 0xff

    .line 8
    aget v15, p6, v15

    xor-int/2addr v13, v15

    and-int/lit16 v15, v2, 0xff

    .line 8
    aget v15, p7, v15

    xor-int/2addr v13, v15

    add-int/lit8 v15, v10, 0x3

    .line 91
    aget v14, p3, v14

    xor-int/2addr v13, v14

    ushr-int/lit8 v7, v7, 0x18

    and-int/lit16 v7, v7, 0xff

    .line 8
    aget v7, p4, v7

    ushr-int/lit8 v0, v0, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 8
    aget v0, p5, v0

    xor-int/2addr v0, v7

    ushr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    .line 8
    aget v2, p6, v2

    xor-int/2addr v0, v2

    and-int/lit16 v2, v5, 0xff

    .line 8
    aget v2, p7, v2

    xor-int/2addr v0, v2

    add-int/lit8 v10, v10, 0x4

    .line 93
    aget v2, p3, v15

    xor-int v7, v0, v2

    add-int/lit8 v3, v3, 0x1

    move v0, v11

    move v2, v12

    move v5, v13

    goto/16 :goto_23

    :cond_a5
    ushr-int/lit8 v3, v0, 0x18

    and-int/lit16 v3, v3, 0xff

    .line 8
    aget v3, p8, v3

    shl-int/lit8 v3, v3, 0x18

    ushr-int/lit8 v9, v2, 0x10

    and-int/lit16 v9, v9, 0xff

    .line 8
    aget v9, p8, v9

    shl-int/lit8 v9, v9, 0x10

    or-int/2addr v3, v9

    ushr-int/lit8 v9, v5, 0x8

    and-int/lit16 v9, v9, 0xff

    .line 8
    aget v9, p8, v9

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v3, v9

    and-int/lit16 v9, v7, 0xff

    .line 8
    aget v9, p8, v9

    or-int/2addr v3, v9

    add-int/lit8 v9, v10, 0x1

    .line 98
    aget v11, p3, v10

    xor-int/2addr v3, v11

    ushr-int/lit8 v11, v2, 0x18

    and-int/lit16 v11, v11, 0xff

    .line 8
    aget v11, p8, v11

    shl-int/lit8 v11, v11, 0x18

    ushr-int/lit8 v12, v5, 0x10

    and-int/lit16 v12, v12, 0xff

    .line 8
    aget v12, p8, v12

    shl-int/lit8 v12, v12, 0x10

    or-int/2addr v11, v12

    ushr-int/lit8 v12, v7, 0x8

    and-int/lit16 v12, v12, 0xff

    .line 8
    aget v12, p8, v12

    shl-int/lit8 v12, v12, 0x8

    or-int/2addr v11, v12

    and-int/lit16 v12, v0, 0xff

    .line 8
    aget v12, p8, v12

    or-int/2addr v11, v12

    add-int/lit8 v12, v10, 0x2

    .line 100
    aget v9, p3, v9

    xor-int/2addr v9, v11

    ushr-int/lit8 v11, v5, 0x18

    and-int/lit16 v11, v11, 0xff

    .line 8
    aget v11, p8, v11

    shl-int/lit8 v11, v11, 0x18

    ushr-int/lit8 v13, v7, 0x10

    and-int/lit16 v13, v13, 0xff

    .line 8
    aget v13, p8, v13

    shl-int/lit8 v13, v13, 0x10

    or-int/2addr v11, v13

    ushr-int/lit8 v13, v0, 0x8

    and-int/lit16 v13, v13, 0xff

    .line 8
    aget v13, p8, v13

    shl-int/lit8 v13, v13, 0x8

    or-int/2addr v11, v13

    and-int/lit16 v13, v2, 0xff

    .line 8
    aget v13, p8, v13

    or-int/2addr v11, v13

    add-int/2addr v10, v8

    .line 102
    aget v8, p3, v12

    xor-int/2addr v8, v11

    ushr-int/lit8 v7, v7, 0x18

    and-int/lit16 v7, v7, 0xff

    .line 8
    aget v7, p8, v7

    shl-int/lit8 v7, v7, 0x18

    ushr-int/lit8 v0, v0, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 8
    aget v0, p8, v0

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v0, v7

    ushr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    .line 8
    aget v2, p8, v2

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    and-int/lit16 v2, v5, 0xff

    .line 8
    aget v2, p8, v2

    or-int/2addr v0, v2

    .line 104
    aget v2, p3, v10

    xor-int/2addr v0, v2

    .line 105
    aput v3, p1, p2

    aput v9, p1, v1

    aput v8, p1, v4

    aput v0, p1, v6

    return-void
.end method


# virtual methods
.method public final decryptBlock([II)V
    .registers 16

    const-string v0, "M"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v0, p2, 0x1

    .line 51
    aget v1, p1, v0

    add-int/lit8 v2, p2, 0x3

    .line 52
    aget v3, p1, v2

    aput v3, p1, v0

    .line 53
    aput v1, p1, v2

    .line 57
    iget-object v7, p0, Lbytekn/foundation/encryption/AES;->invKeySchedule:[I

    .line 58
    sget-object v8, Lbytekn/foundation/encryption/AES;->INV_SUB_MIX_0:[I

    .line 59
    sget-object v9, Lbytekn/foundation/encryption/AES;->INV_SUB_MIX_1:[I

    .line 60
    sget-object v10, Lbytekn/foundation/encryption/AES;->INV_SUB_MIX_2:[I

    .line 61
    sget-object v11, Lbytekn/foundation/encryption/AES;->INV_SUB_MIX_3:[I

    .line 62
    sget-object v12, Lbytekn/foundation/encryption/AES;->INV_SBOX:[I

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    .line 54
    invoke-direct/range {v4 .. v12}, Lbytekn/foundation/encryption/AES;->doCryptBlock([II[I[I[I[I[I[I)V

    .line 64
    aget p0, v5, v0

    .line 65
    aget p1, v5, v2

    aput p1, v5, v0

    .line 66
    aput p0, v5, v2

    return-void
.end method
