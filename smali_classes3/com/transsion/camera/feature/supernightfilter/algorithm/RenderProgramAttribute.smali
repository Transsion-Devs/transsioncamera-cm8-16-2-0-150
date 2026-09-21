.class Lcom/transsion/camera/feature/supernightfilter/algorithm/RenderProgramAttribute;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final CUBE:[F

.field static final TEXTURE_NO_ROTATION:[F

.field static final TEXTURE_ROTATED_180:[F

.field static final TEXTURE_ROTATED_270:[F

.field static final TEXTURE_ROTATED_90:[F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x8

    .line 4
    new-array v1, v0, [F

    fill-array-data v1, :array_26

    sput-object v1, Lcom/transsion/camera/feature/supernightfilter/algorithm/RenderProgramAttribute;->CUBE:[F

    .line 11
    new-array v1, v0, [F

    fill-array-data v1, :array_3a

    sput-object v1, Lcom/transsion/camera/feature/supernightfilter/algorithm/RenderProgramAttribute;->TEXTURE_NO_ROTATION:[F

    .line 18
    new-array v1, v0, [F

    fill-array-data v1, :array_4e

    sput-object v1, Lcom/transsion/camera/feature/supernightfilter/algorithm/RenderProgramAttribute;->TEXTURE_ROTATED_90:[F

    .line 24
    new-array v1, v0, [F

    fill-array-data v1, :array_62

    sput-object v1, Lcom/transsion/camera/feature/supernightfilter/algorithm/RenderProgramAttribute;->TEXTURE_ROTATED_180:[F

    .line 30
    new-array v0, v0, [F

    fill-array-data v0, :array_76

    sput-object v0, Lcom/transsion/camera/feature/supernightfilter/algorithm/RenderProgramAttribute;->TEXTURE_ROTATED_270:[F

    return-void

    :array_26
    .array-data 4
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
    .end array-data

    :array_3a
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_4e
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
    .end array-data

    :array_62
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_76
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static flip(F)F
    .registers 2

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-nez p0, :cond_8

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :cond_8
    return v0
.end method

.method static getRotation(IZZ)[F
    .registers 13

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_15

    const/16 v0, 0xb4

    if-eq p0, v0, :cond_12

    const/16 v0, 0x10e

    if-eq p0, v0, :cond_f

    .line 60
    sget-object p0, Lcom/transsion/camera/feature/supernightfilter/algorithm/RenderProgramAttribute;->TEXTURE_NO_ROTATION:[F

    goto :goto_17

    .line 55
    :cond_f
    sget-object p0, Lcom/transsion/camera/feature/supernightfilter/algorithm/RenderProgramAttribute;->TEXTURE_ROTATED_270:[F

    goto :goto_17

    .line 52
    :cond_12
    sget-object p0, Lcom/transsion/camera/feature/supernightfilter/algorithm/RenderProgramAttribute;->TEXTURE_ROTATED_180:[F

    goto :goto_17

    .line 49
    :cond_15
    sget-object p0, Lcom/transsion/camera/feature/supernightfilter/algorithm/RenderProgramAttribute;->TEXTURE_ROTATED_90:[F

    :goto_17
    const/16 v0, 0x8

    const/4 v1, 0x7

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz p1, :cond_56

    .line 64
    new-array p1, v0, [F

    aget v9, p0, v8

    .line 65
    invoke-static {v9}, Lcom/transsion/camera/feature/supernightfilter/algorithm/RenderProgramAttribute;->flip(F)F

    move-result v9

    aput v9, p1, v8

    aget v9, p0, v7

    aput v9, p1, v7

    aget v9, p0, v6

    .line 66
    invoke-static {v9}, Lcom/transsion/camera/feature/supernightfilter/algorithm/RenderProgramAttribute;->flip(F)F

    move-result v9

    aput v9, p1, v6

    aget v9, p0, v5

    aput v9, p1, v5

    aget v9, p0, v4

    .line 67
    invoke-static {v9}, Lcom/transsion/camera/feature/supernightfilter/algorithm/RenderProgramAttribute;->flip(F)F

    move-result v9

    aput v9, p1, v4

    aget v9, p0, v3

    aput v9, p1, v3

    aget v9, p0, v2

    .line 68
    invoke-static {v9}, Lcom/transsion/camera/feature/supernightfilter/algorithm/RenderProgramAttribute;->flip(F)F

    move-result v9

    aput v9, p1, v2

    aget p0, p0, v1

    aput p0, p1, v1

    move-object p0, p1

    :cond_56
    if-eqz p2, :cond_8b

    .line 72
    new-array p1, v0, [F

    aget p2, p0, v8

    aput p2, p1, v8

    aget p2, p0, v7

    .line 73
    invoke-static {p2}, Lcom/transsion/camera/feature/supernightfilter/algorithm/RenderProgramAttribute;->flip(F)F

    move-result p2

    aput p2, p1, v7

    aget p2, p0, v6

    aput p2, p1, v6

    aget p2, p0, v5

    .line 74
    invoke-static {p2}, Lcom/transsion/camera/feature/supernightfilter/algorithm/RenderProgramAttribute;->flip(F)F

    move-result p2

    aput p2, p1, v5

    aget p2, p0, v4

    aput p2, p1, v4

    aget p2, p0, v3

    .line 75
    invoke-static {p2}, Lcom/transsion/camera/feature/supernightfilter/algorithm/RenderProgramAttribute;->flip(F)F

    move-result p2

    aput p2, p1, v3

    aget p2, p0, v2

    aput p2, p1, v2

    aget p0, p0, v1

    .line 76
    invoke-static {p0}, Lcom/transsion/camera/feature/supernightfilter/algorithm/RenderProgramAttribute;->flip(F)F

    move-result p0

    aput p0, p1, v1

    return-object p1

    :cond_8b
    return-object p0
.end method
