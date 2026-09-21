.class public Lcom/bytedance/labcv/core/opengl/Drawable2d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/labcv/core/opengl/Drawable2d$Prefab;
    }
.end annotation


# static fields
.field public static final COORDS_PER_VERTEX:I = 0x2

.field private static final FULL_RECTANGLE_BUF:Ljava/nio/FloatBuffer;

.field private static final FULL_RECTANGLE_COORDS:[F

.field private static final FULL_RECTANGLE_TEX_BUF:Ljava/nio/FloatBuffer;

.field private static final FULL_RECTANGLE_TEX_BUF1:Ljava/nio/FloatBuffer;

.field private static final FULL_RECTANGLE_TEX_COORDS:[F

.field private static final FULL_RECTANGLE_TEX_COORDS1:[F

.field private static final RECTANGLE_BUF:Ljava/nio/FloatBuffer;

.field private static final RECTANGLE_COORDS:[F

.field private static final RECTANGLE_TEX_BUF:Ljava/nio/FloatBuffer;

.field private static final RECTANGLE_TEX_BUF1:Ljava/nio/FloatBuffer;

.field private static final RECTANGLE_TEX_COORDS:[F

.field private static final RECTANGLE_TEX_COORDS1:[F

.field private static final SIZEOF_FLOAT:I = 0x4

.field public static final TEXTURE_COORD_STRIDE:I = 0x8

.field private static final TRIANGLE_BUF:Ljava/nio/FloatBuffer;

.field private static final TRIANGLE_COORDS:[F

.field private static final TRIANGLE_TEX_BUF:Ljava/nio/FloatBuffer;

.field private static final TRIANGLE_TEX_COORDS:[F

.field public static final VERTEXTURE_STRIDE:I = 0x8


# instance fields
.field private mCoordsPerVertex:I

.field private mPrefab:Lcom/bytedance/labcv/core/opengl/Drawable2d$Prefab;

.field private mTexCoordArray:Ljava/nio/FloatBuffer;

.field private mTexCoordArrayFB:Ljava/nio/FloatBuffer;

.field private mTexCoordStride:I

.field private mVertexArray:Ljava/nio/FloatBuffer;

.field private mVertexCount:I

.field private mVertexStride:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x6

    .line 35
    new-array v1, v0, [F

    fill-array-data v1, :array_6c

    sput-object v1, Lcom/bytedance/labcv/core/opengl/Drawable2d;->TRIANGLE_COORDS:[F

    .line 40
    new-array v0, v0, [F

    fill-array-data v0, :array_7c

    sput-object v0, Lcom/bytedance/labcv/core/opengl/Drawable2d;->TRIANGLE_TEX_COORDS:[F

    .line 46
    invoke-static {v1}, Lcom/bytedance/labcv/core/opengl/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    sput-object v1, Lcom/bytedance/labcv/core/opengl/Drawable2d;->TRIANGLE_BUF:Ljava/nio/FloatBuffer;

    .line 48
    invoke-static {v0}, Lcom/bytedance/labcv/core/opengl/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Lcom/bytedance/labcv/core/opengl/Drawable2d;->TRIANGLE_TEX_BUF:Ljava/nio/FloatBuffer;

    const/16 v0, 0x8

    .line 56
    new-array v1, v0, [F

    fill-array-data v1, :array_8c

    sput-object v1, Lcom/bytedance/labcv/core/opengl/Drawable2d;->RECTANGLE_COORDS:[F

    .line 72
    new-array v2, v0, [F

    fill-array-data v2, :array_a0

    sput-object v2, Lcom/bytedance/labcv/core/opengl/Drawable2d;->RECTANGLE_TEX_COORDS:[F

    .line 78
    new-array v3, v0, [F

    fill-array-data v3, :array_b4

    sput-object v3, Lcom/bytedance/labcv/core/opengl/Drawable2d;->RECTANGLE_TEX_COORDS1:[F

    .line 85
    invoke-static {v1}, Lcom/bytedance/labcv/core/opengl/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    sput-object v1, Lcom/bytedance/labcv/core/opengl/Drawable2d;->RECTANGLE_BUF:Ljava/nio/FloatBuffer;

    .line 87
    invoke-static {v2}, Lcom/bytedance/labcv/core/opengl/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    sput-object v1, Lcom/bytedance/labcv/core/opengl/Drawable2d;->RECTANGLE_TEX_BUF:Ljava/nio/FloatBuffer;

    .line 89
    invoke-static {v3}, Lcom/bytedance/labcv/core/opengl/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    sput-object v1, Lcom/bytedance/labcv/core/opengl/Drawable2d;->RECTANGLE_TEX_BUF1:Ljava/nio/FloatBuffer;

    .line 98
    new-array v1, v0, [F

    fill-array-data v1, :array_c8

    sput-object v1, Lcom/bytedance/labcv/core/opengl/Drawable2d;->FULL_RECTANGLE_COORDS:[F

    .line 114
    new-array v2, v0, [F

    fill-array-data v2, :array_dc

    sput-object v2, Lcom/bytedance/labcv/core/opengl/Drawable2d;->FULL_RECTANGLE_TEX_COORDS:[F

    .line 121
    new-array v0, v0, [F

    fill-array-data v0, :array_f0

    sput-object v0, Lcom/bytedance/labcv/core/opengl/Drawable2d;->FULL_RECTANGLE_TEX_COORDS1:[F

    .line 128
    invoke-static {v1}, Lcom/bytedance/labcv/core/opengl/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    sput-object v1, Lcom/bytedance/labcv/core/opengl/Drawable2d;->FULL_RECTANGLE_BUF:Ljava/nio/FloatBuffer;

    .line 130
    invoke-static {v2}, Lcom/bytedance/labcv/core/opengl/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    sput-object v1, Lcom/bytedance/labcv/core/opengl/Drawable2d;->FULL_RECTANGLE_TEX_BUF:Ljava/nio/FloatBuffer;

    .line 132
    invoke-static {v0}, Lcom/bytedance/labcv/core/opengl/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Lcom/bytedance/labcv/core/opengl/Drawable2d;->FULL_RECTANGLE_TEX_BUF1:Ljava/nio/FloatBuffer;

    return-void

    :array_6c
    .array-data 4
        0x0
        0x3f13cd3a
        -0x41000000    # -0.5f
        -0x416c32c6
        0x3f000000    # 0.5f
        -0x416c32c6
    .end array-data

    :array_7c
    .array-data 4
        0x3f000000    # 0.5f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_8c
    .array-data 4
        -0x41000000    # -0.5f
        -0x41000000    # -0.5f
        0x3f000000    # 0.5f
        -0x41000000    # -0.5f
        -0x41000000    # -0.5f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data

    :array_a0
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

    :array_b4
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_c8
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_dc
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

    :array_f0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Lcom/bytedance/labcv/core/opengl/Drawable2d$Prefab;)V
    .registers 5

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_58

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3f

    if-ne v0, v1, :cond_28

    .line 175
    sget-object v0, Lcom/bytedance/labcv/core/opengl/Drawable2d;->FULL_RECTANGLE_BUF:Ljava/nio/FloatBuffer;

    iput-object v0, p0, Lcom/bytedance/labcv/core/opengl/Drawable2d;->mVertexArray:Ljava/nio/FloatBuffer;

    .line 176
    sget-object v0, Lcom/bytedance/labcv/core/opengl/Drawable2d;->FULL_RECTANGLE_TEX_BUF:Ljava/nio/FloatBuffer;

    iput-object v0, p0, Lcom/bytedance/labcv/core/opengl/Drawable2d;->mTexCoordArray:Ljava/nio/FloatBuffer;

    .line 177
    sget-object v0, Lcom/bytedance/labcv/core/opengl/Drawable2d;->FULL_RECTANGLE_TEX_BUF1:Ljava/nio/FloatBuffer;

    iput-object v0, p0, Lcom/bytedance/labcv/core/opengl/Drawable2d;->mTexCoordArrayFB:Ljava/nio/FloatBuffer;

    .line 178
    iput v1, p0, Lcom/bytedance/labcv/core/opengl/Drawable2d;->mCoordsPerVertex:I

    mul-int/lit8 v0, v1, 0x4

    .line 179
    iput v0, p0, Lcom/bytedance/labcv/core/opengl/Drawable2d;->mVertexStride:I

    .line 180
    sget-object v0, Lcom/bytedance/labcv/core/opengl/Drawable2d;->FULL_RECTANGLE_COORDS:[F

    array-length v0, v0

    div-int/2addr v0, v1

    iput v0, p0, Lcom/bytedance/labcv/core/opengl/Drawable2d;->mVertexCount:I

    goto :goto_6e

    .line 183
    :cond_28
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown shape "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 167
    :cond_3f
    sget-object v0, Lcom/bytedance/labcv/core/opengl/Drawable2d;->RECTANGLE_BUF:Ljava/nio/FloatBuffer;

    iput-object v0, p0, Lcom/bytedance/labcv/core/opengl/Drawable2d;->mVertexArray:Ljava/nio/FloatBuffer;

    .line 168
    sget-object v0, Lcom/bytedance/labcv/core/opengl/Drawable2d;->RECTANGLE_TEX_BUF:Ljava/nio/FloatBuffer;

    iput-object v0, p0, Lcom/bytedance/labcv/core/opengl/Drawable2d;->mTexCoordArray:Ljava/nio/FloatBuffer;

    .line 169
    sget-object v0, Lcom/bytedance/labcv/core/opengl/Drawable2d;->RECTANGLE_TEX_BUF1:Ljava/nio/FloatBuffer;

    iput-object v0, p0, Lcom/bytedance/labcv/core/opengl/Drawable2d;->mTexCoordArrayFB:Ljava/nio/FloatBuffer;

    .line 170
    iput v1, p0, Lcom/bytedance/labcv/core/opengl/Drawable2d;->mCoordsPerVertex:I

    mul-int/lit8 v0, v1, 0x4

    .line 171
    iput v0, p0, Lcom/bytedance/labcv/core/opengl/Drawable2d;->mVertexStride:I

    .line 172
    sget-object v0, Lcom/bytedance/labcv/core/opengl/Drawable2d;->RECTANGLE_COORDS:[F

    array-length v0, v0

    div-int/2addr v0, v1

    iput v0, p0, Lcom/bytedance/labcv/core/opengl/Drawable2d;->mVertexCount:I

    goto :goto_6e

    .line 159
    :cond_58
    sget-object v0, Lcom/bytedance/labcv/core/opengl/Drawable2d;->TRIANGLE_BUF:Ljava/nio/FloatBuffer;

    iput-object v0, p0, Lcom/bytedance/labcv/core/opengl/Drawable2d;->mVertexArray:Ljava/nio/FloatBuffer;

    .line 160
    sget-object v0, Lcom/bytedance/labcv/core/opengl/Drawable2d;->TRIANGLE_TEX_BUF:Ljava/nio/FloatBuffer;

    iput-object v0, p0, Lcom/bytedance/labcv/core/opengl/Drawable2d;->mTexCoordArray:Ljava/nio/FloatBuffer;

    .line 161
    iput-object v0, p0, Lcom/bytedance/labcv/core/opengl/Drawable2d;->mTexCoordArrayFB:Ljava/nio/FloatBuffer;

    .line 162
    iput v1, p0, Lcom/bytedance/labcv/core/opengl/Drawable2d;->mCoordsPerVertex:I

    mul-int/lit8 v0, v1, 0x4

    .line 163
    iput v0, p0, Lcom/bytedance/labcv/core/opengl/Drawable2d;->mVertexStride:I

    .line 164
    sget-object v0, Lcom/bytedance/labcv/core/opengl/Drawable2d;->TRIANGLE_COORDS:[F

    array-length v0, v0

    div-int/2addr v0, v1

    iput v0, p0, Lcom/bytedance/labcv/core/opengl/Drawable2d;->mVertexCount:I

    :goto_6e
    const/16 v0, 0x8

    .line 185
    iput v0, p0, Lcom/bytedance/labcv/core/opengl/Drawable2d;->mTexCoordStride:I

    .line 186
    iput-object p1, p0, Lcom/bytedance/labcv/core/opengl/Drawable2d;->mPrefab:Lcom/bytedance/labcv/core/opengl/Drawable2d$Prefab;

    return-void
.end method


# virtual methods
.method public getCoordsPerVertex()I
    .registers 1

    .line 245
    iget p0, p0, Lcom/bytedance/labcv/core/opengl/Drawable2d;->mCoordsPerVertex:I

    return p0
.end method

.method public getTexCoorArrayFB()Ljava/nio/FloatBuffer;
    .registers 1

    .line 217
    iget-object p0, p0, Lcom/bytedance/labcv/core/opengl/Drawable2d;->mTexCoordArrayFB:Ljava/nio/FloatBuffer;

    return-object p0
.end method

.method public getTexCoordArray()Ljava/nio/FloatBuffer;
    .registers 1

    .line 204
    iget-object p0, p0, Lcom/bytedance/labcv/core/opengl/Drawable2d;->mTexCoordArray:Ljava/nio/FloatBuffer;

    return-object p0
.end method

.method public getTexCoordStride()I
    .registers 1

    .line 238
    iget p0, p0, Lcom/bytedance/labcv/core/opengl/Drawable2d;->mTexCoordStride:I

    return p0
.end method

.method public getVertexArray()Ljava/nio/FloatBuffer;
    .registers 1

    .line 195
    iget-object p0, p0, Lcom/bytedance/labcv/core/opengl/Drawable2d;->mVertexArray:Ljava/nio/FloatBuffer;

    return-object p0
.end method

.method public getVertexCount()I
    .registers 1

    .line 224
    iget p0, p0, Lcom/bytedance/labcv/core/opengl/Drawable2d;->mVertexCount:I

    return p0
.end method

.method public getVertexStride()I
    .registers 1

    .line 231
    iget p0, p0, Lcom/bytedance/labcv/core/opengl/Drawable2d;->mVertexStride:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 263
    iget-object v0, p0, Lcom/bytedance/labcv/core/opengl/Drawable2d;->mPrefab:Lcom/bytedance/labcv/core/opengl/Drawable2d$Prefab;

    if-eqz v0, :cond_1d

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Drawable2d: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/bytedance/labcv/core/opengl/Drawable2d;->mPrefab:Lcom/bytedance/labcv/core/opengl/Drawable2d$Prefab;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 266
    :cond_1d
    const-string p0, "[Drawable2d: ...]"

    return-object p0
.end method

.method public updateTexCoordArray([F)V
    .registers 2

    .line 254
    invoke-static {p1}, Lcom/bytedance/labcv/core/opengl/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/labcv/core/opengl/Drawable2d;->mTexCoordArray:Ljava/nio/FloatBuffer;

    return-void
.end method

.method public updateTexCoordArrayFB([F)V
    .registers 2

    .line 258
    invoke-static {p1}, Lcom/bytedance/labcv/core/opengl/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/labcv/core/opengl/Drawable2d;->mTexCoordArrayFB:Ljava/nio/FloatBuffer;

    return-void
.end method

.method public updateVertexArray([F)V
    .registers 3

    .line 249
    invoke-static {p1}, Lcom/bytedance/labcv/core/opengl/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/labcv/core/opengl/Drawable2d;->mVertexArray:Ljava/nio/FloatBuffer;

    .line 250
    array-length p1, p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/bytedance/labcv/core/opengl/Drawable2d;->mVertexCount:I

    return-void
.end method
