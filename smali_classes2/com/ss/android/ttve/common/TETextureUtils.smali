.class public Lcom/ss/android/ttve/common/TETextureUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TETextureUtils"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _texParamHelper(III)V
    .registers 4

    const/16 v0, 0x2801

    .line 21
    invoke-static {p0, v0, p1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2800

    .line 22
    invoke-static {p0, v0, p1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p1, 0x2802

    .line 23
    invoke-static {p0, p1, p2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p1, 0x2803

    .line 24
    invoke-static {p0, p1, p2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    return-void
.end method

.method public static deleteTextureID(I)V
    .registers 3

    .line 67
    filled-new-array {p0}, [I

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v1, p0, v0}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    return-void
.end method

.method public static genBlankTextureID(II)I
    .registers 4

    const/16 v0, 0x2601

    const v1, 0x812f

    .line 28
    invoke-static {p0, p1, v0, v1}, Lcom/ss/android/ttve/common/TETextureUtils;->genBlankTextureID(IIII)I

    move-result p0

    return p0
.end method

.method public static genBlankTextureID(IIII)I
    .registers 17

    const/4 v0, 0x1

    .line 32
    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 33
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 34
    aget v0, v1, v2

    const/16 v3, 0xde1

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v11, 0x1401

    const/4 v12, 0x0

    const/16 v4, 0xde1

    const/4 v5, 0x0

    const/16 v6, 0x1908

    const/4 v9, 0x0

    const/16 v10, 0x1908

    move v7, p0

    move v8, p1

    .line 35
    invoke-static/range {v4 .. v12}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    move/from16 p0, p3

    .line 36
    invoke-static {v3, p2, p0}, Lcom/ss/android/ttve/common/TETextureUtils;->_texParamHelper(III)V

    .line 37
    aget p0, v1, v2

    return p0
.end method

.method public static genFullscreenVertexArrayBuffer()I
    .registers 6

    const/4 v0, 0x1

    .line 71
    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 72
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 74
    aget v0, v1, v2

    if-nez v0, :cond_13

    .line 75
    const-string v0, "TETextureUtils"

    const-string v1, "Invalid VertexBuffer! You must call this within an OpenGL thread!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_13
    const v3, 0x8892

    .line 79
    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 80
    sget-object v0, Lcom/ss/android/ttve/common/TEGLUtils;->FULLSCREEN_VERTICES:[F

    array-length v4, v0

    mul-int/lit8 v4, v4, 0x4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v4

    .line 81
    invoke-virtual {v4, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/16 v0, 0x20

    const v5, 0x88e4

    .line 82
    invoke-static {v3, v0, v4, v5}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 83
    aget v0, v1, v2

    return v0
.end method

.method public static genNormalTextureID(Landroid/graphics/Bitmap;)I
    .registers 3

    const/16 v0, 0x2601

    const v1, 0x812f

    .line 41
    invoke-static {p0, v0, v1}, Lcom/ss/android/ttve/common/TETextureUtils;->genNormalTextureID(Landroid/graphics/Bitmap;II)I

    move-result p0

    return p0
.end method

.method public static genNormalTextureID(Landroid/graphics/Bitmap;II)I
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x1

    .line 49
    new-array v2, v1, [I

    .line 50
    invoke-static {v1, v2, v0}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 51
    aget v1, v2, v0

    const/16 v3, 0xde1

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 52
    invoke-static {v3, v0, p0, v0}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 53
    invoke-static {v3, p1, p2}, Lcom/ss/android/ttve/common/TETextureUtils;->_texParamHelper(III)V

    .line 54
    aget p0, v2, v0

    return p0
.end method

.method public static genSurfaceTextureID()I
    .registers 5

    const/4 v0, 0x1

    .line 58
    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 59
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 60
    const-string v0, "glGenTextures"

    invoke-static {v0}, Lcom/ss/android/ttve/common/TEGLUtils;->checkGLError(Ljava/lang/String;)V

    .line 61
    aget v0, v1, v2

    const v3, 0x8d65

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v0, 0x2601

    const v4, 0x812f

    .line 62
    invoke-static {v3, v0, v4}, Lcom/ss/android/ttve/common/TETextureUtils;->_texParamHelper(III)V

    .line 63
    aget v0, v1, v2

    return v0
.end method
