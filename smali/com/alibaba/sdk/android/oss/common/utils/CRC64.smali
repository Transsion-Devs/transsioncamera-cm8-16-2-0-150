.class public Lcom/alibaba/sdk/android/oss/common/utils/CRC64;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/zip/Checksum;


# static fields
.field private static final GF2_DIM:I = 0x40

.field private static final POLY:J = -0x3693a86a2878f0beL

.field private static final table:[[J


# instance fields
.field private value:J


# direct methods
.method static constructor <clinit>()V
    .registers 12

    const/4 v0, 0x2

    .line 19
    new-array v0, v0, [I

    const/4 v1, 0x1

    const/16 v2, 0x100

    aput v2, v0, v1

    const/4 v3, 0x0

    const/16 v4, 0x8

    aput v4, v0, v3

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[J

    sput-object v0, Lcom/alibaba/sdk/android/oss/common/utils/CRC64;->table:[[J

    move v0, v3

    :goto_18
    if-ge v0, v2, :cond_3b

    int-to-long v5, v0

    move v7, v3

    :goto_1c
    if-ge v7, v4, :cond_32

    const-wide/16 v8, 0x1

    and-long v10, v5, v8

    cmp-long v8, v10, v8

    if-nez v8, :cond_2e

    ushr-long/2addr v5, v1

    const-wide v8, -0x3693a86a2878f0beL    # -5.0564049839430436E45

    xor-long/2addr v5, v8

    goto :goto_2f

    :cond_2e
    ushr-long/2addr v5, v1

    :goto_2f
    add-int/lit8 v7, v7, 0x1

    goto :goto_1c

    .line 30
    :cond_32
    sget-object v7, Lcom/alibaba/sdk/android/oss/common/utils/CRC64;->table:[[J

    aget-object v7, v7, v3

    aput-wide v5, v7, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_3b
    move v0, v3

    :goto_3c
    if-ge v0, v2, :cond_5d

    .line 35
    sget-object v5, Lcom/alibaba/sdk/android/oss/common/utils/CRC64;->table:[[J

    aget-object v5, v5, v3

    aget-wide v5, v5, v0

    move v7, v1

    :goto_45
    if-ge v7, v4, :cond_5a

    .line 37
    sget-object v8, Lcom/alibaba/sdk/android/oss/common/utils/CRC64;->table:[[J

    aget-object v9, v8, v3

    const-wide/16 v10, 0xff

    and-long/2addr v10, v5

    long-to-int v10, v10

    aget-wide v9, v9, v10

    ushr-long/2addr v5, v4

    xor-long/2addr v5, v9

    .line 38
    aget-object v8, v8, v7

    aput-wide v5, v8, v0

    add-int/lit8 v7, v7, 0x1

    goto :goto_45

    :cond_5a
    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    :cond_5d
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 50
    iput-wide v0, p0, Lcom/alibaba/sdk/android/oss/common/utils/CRC64;->value:J

    return-void
.end method

.method public static combine(JJJ)J
    .registers 18

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-nez v2, :cond_7

    return-wide p0

    :cond_7
    const/16 v2, 0x40

    .line 82
    new-array v3, v2, [J

    .line 83
    new-array v4, v2, [J

    const/4 v5, 0x0

    const-wide v6, -0x3693a86a2878f0beL    # -5.0564049839430436E45

    .line 86
    aput-wide v6, v4, v5

    const/4 v5, 0x1

    const-wide/16 v6, 0x1

    move v8, v5

    move-wide v9, v6

    :goto_1a
    if-ge v8, v2, :cond_22

    .line 90
    aput-wide v9, v4, v8

    shl-long/2addr v9, v5

    add-int/lit8 v8, v8, 0x1

    goto :goto_1a

    .line 95
    :cond_22
    invoke-static {v3, v4}, Lcom/alibaba/sdk/android/oss/common/utils/CRC64;->gf2MatrixSquare([J[J)V

    .line 98
    invoke-static {v4, v3}, Lcom/alibaba/sdk/android/oss/common/utils/CRC64;->gf2MatrixSquare([J[J)V

    move-wide/from16 v8, p4

    .line 106
    :cond_2a
    invoke-static {v3, v4}, Lcom/alibaba/sdk/android/oss/common/utils/CRC64;->gf2MatrixSquare([J[J)V

    and-long v10, v8, v6

    cmp-long v2, v10, v6

    if-nez v2, :cond_37

    .line 108
    invoke-static {v3, p0, p1}, Lcom/alibaba/sdk/android/oss/common/utils/CRC64;->gf2MatrixTimes([JJ)J

    move-result-wide p0

    :cond_37
    ushr-long v10, v8, v5

    cmp-long v2, v10, v0

    if-nez v2, :cond_3e

    goto :goto_50

    .line 116
    :cond_3e
    invoke-static {v4, v3}, Lcom/alibaba/sdk/android/oss/common/utils/CRC64;->gf2MatrixSquare([J[J)V

    and-long/2addr v10, v6

    cmp-long v2, v10, v6

    if-nez v2, :cond_4a

    .line 118
    invoke-static {v4, p0, p1}, Lcom/alibaba/sdk/android/oss/common/utils/CRC64;->gf2MatrixTimes([JJ)J

    move-result-wide p0

    :cond_4a
    const/4 v2, 0x2

    ushr-long/2addr v8, v2

    cmp-long v2, v8, v0

    if-nez v2, :cond_2a

    :goto_50
    xor-long/2addr p0, p2

    return-wide p0
.end method

.method private static gf2MatrixSquare([J[J)V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x40

    if-ge v0, v1, :cond_10

    .line 67
    aget-wide v1, p1, v0

    invoke-static {p1, v1, v2}, Lcom/alibaba/sdk/android/oss/common/utils/CRC64;->gf2MatrixTimes([JJ)J

    move-result-wide v1

    aput-wide v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_10
    return-void
.end method

.method private static gf2MatrixTimes([JJ)J
    .registers 12

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move-wide v3, v0

    :goto_4
    cmp-long v5, p1, v0

    if-eqz v5, :cond_18

    const-wide/16 v5, 0x1

    and-long v7, p1, v5

    cmp-long v5, v7, v5

    if-nez v5, :cond_13

    .line 58
    aget-wide v5, p0, v2

    xor-long/2addr v3, v5

    :cond_13
    const/4 v5, 0x1

    ushr-long/2addr p1, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_18
    return-wide v3
.end method


# virtual methods
.method public getValue()J
    .registers 3

    .line 133
    iget-wide v0, p0, Lcom/alibaba/sdk/android/oss/common/utils/CRC64;->value:J

    return-wide v0
.end method

.method public reset()V
    .registers 3

    const-wide/16 v0, 0x0

    .line 138
    iput-wide v0, p0, Lcom/alibaba/sdk/android/oss/common/utils/CRC64;->value:J

    return-void
.end method

.method public update(I)V
    .registers 5

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v0, 0x1

    .line 144
    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    .line 145
    invoke-virtual {p0, v1, v0}, Lcom/alibaba/sdk/android/oss/common/utils/CRC64;->update([BI)V

    return-void
.end method

.method public update([BI)V
    .registers 4

    const/4 v0, 0x0

    .line 152
    invoke-virtual {p0, p1, v0, p2}, Lcom/alibaba/sdk/android/oss/common/utils/CRC64;->update([BII)V

    return-void
.end method

.method public update([BII)V
    .registers 20

    move-object/from16 v0, p0

    .line 158
    iget-wide v1, v0, Lcom/alibaba/sdk/android/oss/common/utils/CRC64;->value:J

    not-long v1, v1

    iput-wide v1, v0, Lcom/alibaba/sdk/android/oss/common/utils/CRC64;->value:J

    move/from16 v1, p2

    move/from16 v2, p3

    :goto_b
    const/16 v5, 0x8

    const-wide/16 v6, 0xff

    if-lt v2, v5, :cond_b6

    .line 164
    sget-object v8, Lcom/alibaba/sdk/android/oss/common/utils/CRC64;->table:[[J

    const/4 v9, 0x7

    aget-object v9, v8, v9

    iget-wide v10, v0, Lcom/alibaba/sdk/android/oss/common/utils/CRC64;->value:J

    and-long v12, v10, v6

    aget-byte v14, p1, v1

    and-int/lit16 v14, v14, 0xff

    int-to-long v14, v14

    xor-long/2addr v12, v14

    long-to-int v12, v12

    aget-wide v12, v9, v12

    const/4 v9, 0x6

    aget-object v9, v8, v9

    ushr-long v14, v10, v5

    and-long/2addr v14, v6

    add-int/lit8 v5, v1, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    const/16 p2, 0x0

    const/16 p3, 0x1

    int-to-long v3, v5

    xor-long/2addr v3, v14

    long-to-int v3, v3

    aget-wide v3, v9, v3

    xor-long/2addr v3, v12

    const/4 v5, 0x5

    aget-object v5, v8, v5

    const/16 v9, 0x10

    ushr-long v12, v10, v9

    and-long/2addr v12, v6

    add-int/lit8 v9, v1, 0x2

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    int-to-long v14, v9

    xor-long/2addr v12, v14

    long-to-int v9, v12

    aget-wide v12, v5, v9

    xor-long/2addr v3, v12

    const/4 v5, 0x4

    aget-object v5, v8, v5

    const/16 v9, 0x18

    ushr-long v12, v10, v9

    and-long/2addr v12, v6

    add-int/lit8 v9, v1, 0x3

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    int-to-long v14, v9

    xor-long/2addr v12, v14

    long-to-int v9, v12

    aget-wide v12, v5, v9

    xor-long/2addr v3, v12

    const/4 v5, 0x3

    aget-object v5, v8, v5

    const/16 v9, 0x20

    ushr-long v12, v10, v9

    and-long/2addr v12, v6

    add-int/lit8 v9, v1, 0x4

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    int-to-long v14, v9

    xor-long/2addr v12, v14

    long-to-int v9, v12

    aget-wide v12, v5, v9

    xor-long/2addr v3, v12

    const/4 v5, 0x2

    aget-object v5, v8, v5

    const/16 v9, 0x28

    ushr-long v12, v10, v9

    and-long/2addr v12, v6

    add-int/lit8 v9, v1, 0x5

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    int-to-long v14, v9

    xor-long/2addr v12, v14

    long-to-int v9, v12

    aget-wide v12, v5, v9

    xor-long/2addr v3, v12

    aget-object v5, v8, p3

    const/16 v9, 0x30

    ushr-long v12, v10, v9

    and-long/2addr v6, v12

    add-int/lit8 v9, v1, 0x6

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    int-to-long v12, v9

    xor-long/2addr v6, v12

    long-to-int v6, v6

    aget-wide v5, v5, v6

    xor-long/2addr v3, v5

    aget-object v5, v8, p2

    const/16 v6, 0x38

    ushr-long v6, v10, v6

    add-int/lit8 v8, v1, 0x7

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    xor-long/2addr v6, v8

    long-to-int v6, v6

    aget-wide v5, v5, v6

    xor-long/2addr v3, v5

    iput-wide v3, v0, Lcom/alibaba/sdk/android/oss/common/utils/CRC64;->value:J

    add-int/lit8 v1, v1, 0x8

    add-int/lit8 v2, v2, -0x8

    goto/16 :goto_b

    :cond_b6
    const/16 p2, 0x0

    const/16 p3, 0x1

    :goto_ba
    if-lez v2, :cond_d3

    .line 178
    sget-object v3, Lcom/alibaba/sdk/android/oss/common/utils/CRC64;->table:[[J

    aget-object v3, v3, p2

    iget-wide v8, v0, Lcom/alibaba/sdk/android/oss/common/utils/CRC64;->value:J

    aget-byte v4, p1, v1

    int-to-long v10, v4

    xor-long/2addr v10, v8

    and-long/2addr v10, v6

    long-to-int v4, v10

    aget-wide v3, v3, v4

    ushr-long/2addr v8, v5

    xor-long/2addr v3, v8

    iput-wide v3, v0, Lcom/alibaba/sdk/android/oss/common/utils/CRC64;->value:J

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_ba

    .line 183
    :cond_d3
    iget-wide v1, v0, Lcom/alibaba/sdk/android/oss/common/utils/CRC64;->value:J

    not-long v1, v1

    iput-wide v1, v0, Lcom/alibaba/sdk/android/oss/common/utils/CRC64;->value:J

    return-void
.end method
