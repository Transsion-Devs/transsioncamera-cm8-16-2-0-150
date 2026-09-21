.class public Lcom/transsion/camera/feature/setting/qrcode/utils/ImageUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final sInstance:Lcom/transsion/camera/feature/setting/qrcode/utils/ImageUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 6
    new-instance v0, Lcom/transsion/camera/feature/setting/qrcode/utils/ImageUtils;

    invoke-direct {v0}, Lcom/transsion/camera/feature/setting/qrcode/utils/ImageUtils;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/setting/qrcode/utils/ImageUtils;->sInstance:Lcom/transsion/camera/feature/setting/qrcode/utils/ImageUtils;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/transsion/camera/feature/setting/qrcode/utils/ImageUtils;
    .registers 1

    .line 12
    sget-object v0, Lcom/transsion/camera/feature/setting/qrcode/utils/ImageUtils;->sInstance:Lcom/transsion/camera/feature/setting/qrcode/utils/ImageUtils;

    return-object v0
.end method

.method private static rotateYUV420Degree180([BII)[B
    .registers 7

    mul-int/2addr p1, p2

    mul-int/lit8 p2, p1, 0x3

    .line 39
    div-int/lit8 p2, p2, 0x2

    new-array v0, p2, [B

    add-int/lit8 v1, p1, -0x1

    const/4 v2, 0x0

    :goto_a
    if-ltz v1, :cond_15

    .line 43
    aget-byte v3, p0, v1

    aput-byte v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    :cond_15
    add-int/lit8 p2, p2, -0x1

    :goto_17
    if-lt p2, p1, :cond_2a

    add-int/lit8 v1, v2, 0x1

    add-int/lit8 v3, p2, -0x1

    .line 49
    aget-byte v3, p0, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v2, 0x2

    .line 50
    aget-byte v3, p0, p2

    aput-byte v3, v0, v1

    add-int/lit8 p2, p2, -0x2

    goto :goto_17

    :cond_2a
    return-object v0
.end method

.method public static rotateYUV420Degree270([BII)[B
    .registers 13

    mul-int v0, p1, p2

    mul-int/lit8 v1, v0, 0x3

    .line 57
    div-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    const/4 v2, 0x0

    if-nez p1, :cond_11

    if-eqz p2, :cond_e

    goto :goto_11

    :cond_e
    move v0, v2

    move v3, v0

    goto :goto_13

    :cond_11
    :goto_11
    shr-int/lit8 v3, p2, 0x1

    :goto_13
    move v4, v2

    move v5, v4

    :goto_15
    if-ge v4, p1, :cond_2a

    move v6, v2

    move v7, v6

    :goto_19
    if-ge v6, p2, :cond_27

    add-int v8, v7, v4

    .line 72
    aget-byte v8, p0, v8

    aput-byte v8, v1, v5

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v7, p1

    add-int/lit8 v6, v6, 0x1

    goto :goto_19

    :cond_27
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    :cond_2a
    move v4, v2

    :goto_2b
    if-ge v4, p1, :cond_48

    move v7, v0

    move v6, v2

    :goto_2f
    if-ge v6, v3, :cond_45

    add-int v8, v7, v4

    .line 80
    aget-byte v9, p0, v8

    aput-byte v9, v1, v5

    add-int/lit8 v9, v5, 0x1

    add-int/lit8 v8, v8, 0x1

    .line 81
    aget-byte v8, p0, v8

    aput-byte v8, v1, v9

    add-int/lit8 v5, v5, 0x2

    add-int/2addr v7, p1

    add-int/lit8 v6, v6, 0x1

    goto :goto_2f

    :cond_45
    add-int/lit8 v4, v4, 0x2

    goto :goto_2b

    .line 86
    :cond_48
    invoke-static {v1, p1, p2}, Lcom/transsion/camera/feature/setting/qrcode/utils/ImageUtils;->rotateYUV420Degree180([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public static rotateYUV420Degree90([BII)[B
    .registers 12

    mul-int v0, p1, p2

    mul-int/lit8 v1, v0, 0x3

    .line 15
    div-int/lit8 v1, v1, 0x2

    new-array v2, v1, [B

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_b
    if-ge v4, p1, :cond_20

    add-int/lit8 v6, p2, -0x1

    :goto_f
    if-ltz v6, :cond_1d

    mul-int v7, v6, p1

    add-int/2addr v7, v4

    .line 20
    aget-byte v7, p0, v7

    aput-byte v7, v2, v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v6, -0x1

    goto :goto_f

    :cond_1d
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_20
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v4, p1, -0x1

    :goto_24
    if-lez v4, :cond_45

    move v5, v3

    .line 27
    :goto_27
    div-int/lit8 v6, p2, 0x2

    if-ge v5, v6, :cond_42

    mul-int v6, v5, p1

    add-int/2addr v6, v0

    add-int v7, v6, v4

    .line 28
    aget-byte v7, p0, v7

    aput-byte v7, v2, v1

    add-int/lit8 v7, v1, -0x1

    add-int/lit8 v8, v4, -0x1

    add-int/2addr v6, v8

    .line 30
    aget-byte v6, p0, v6

    aput-byte v6, v2, v7

    add-int/lit8 v1, v1, -0x2

    add-int/lit8 v5, v5, 0x1

    goto :goto_27

    :cond_42
    add-int/lit8 v4, v4, -0x2

    goto :goto_24

    :cond_45
    return-object v2
.end method
