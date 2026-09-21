.class public Lcom/ss/android/ttve/common/TECommon;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/ttve/common/TECommon$IGetTimestampCallback;,
        Lcom/ss/android/ttve/common/TECommon$IShotScreenCallback;,
        Lcom/ss/android/ttve/common/TECommon$IOnOpenGLCallback;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = true

.field public static final FULLSCREEN_VERTICES:[F

.field public static final TAG:Ljava/lang/String; = "WIX"

.field public static final USE_TEXTURE_ENCODE_INPUT:Z = true


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x8

    .line 22
    new-array v0, v0, [F

    fill-array-data v0, :array_a

    sput-object v0, Lcom/ss/android/ttve/common/TECommon;->FULLSCREEN_VERTICES:[F

    return-void

    :array_a
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _texParamHelper(III)V
    .registers 4

    const/16 v0, 0x2801

    .line 53
    invoke-static {p0, v0, p1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2800

    .line 54
    invoke-static {p0, v0, p1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p1, 0x2802

    .line 55
    invoke-static {p0, p1, p2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p1, 0x2803

    .line 56
    invoke-static {p0, p1, p2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    return-void
.end method

.method public static checkGLError(Ljava/lang/String;)V
    .registers 4

    .line 27
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    const/16 v2, 0x20

    if-ge v1, v2, :cond_39

    if-eqz v0, :cond_39

    packed-switch v0, :pswitch_data_3a

    .line 46
    :pswitch_e
    const-string v2, "unknown error"

    goto :goto_1f

    .line 35
    :pswitch_11
    const-string v2, "invalid framebuffer operation"

    goto :goto_1f

    .line 44
    :pswitch_14
    const-string v2, "out of memory"

    goto :goto_1f

    .line 38
    :pswitch_17
    const-string v2, "invalid operation"

    goto :goto_1f

    .line 41
    :pswitch_1a
    const-string v2, "invalid value"

    goto :goto_1f

    .line 32
    :pswitch_1d
    const-string v2, "invalid enum"

    .line 48
    :goto_1f
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p0, v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "After tag \"%s\" glGetError %s(0x%x) "

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "WIX"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_39
    return-void

    :pswitch_data_3a
    .packed-switch 0x500
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_e
        :pswitch_e
        :pswitch_14
        :pswitch_11
    .end packed-switch
.end method

.method public static createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .registers 4

    const/4 v0, 0x0

    if-lez p0, :cond_26

    if-gtz p1, :cond_6

    goto :goto_26

    .line 123
    :cond_6
    :try_start_6
    invoke-static {p0, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_a
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception p0

    .line 125
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "createBitmap: Error"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WIX"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    :goto_26
    return-object v0
.end method

.method public static deleteTextureID(I)V
    .registers 3

    .line 98
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

    .line 60
    invoke-static {p0, p1, v0, v1}, Lcom/ss/android/ttve/common/TECommon;->genBlankTextureID(IIII)I

    move-result p0

    return p0
.end method

.method public static genBlankTextureID(IIII)I
    .registers 17

    const/4 v0, 0x1

    .line 64
    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 65
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 66
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

    .line 67
    invoke-static/range {v4 .. v12}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    move/from16 p0, p3

    .line 68
    invoke-static {v3, p2, p0}, Lcom/ss/android/ttve/common/TECommon;->_texParamHelper(III)V

    .line 69
    aget p0, v1, v2

    return p0
.end method

.method public static genFullscreenVertexArrayBuffer()I
    .registers 6

    const/4 v0, 0x1

    .line 102
    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 103
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 105
    aget v0, v1, v2

    if-nez v0, :cond_13

    .line 106
    const-string v0, "WIX"

    const-string v1, "Invalid VertexBuffer! You must call this within an OpenGL thread!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_13
    const v3, 0x8892

    .line 110
    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 111
    sget-object v0, Lcom/ss/android/ttve/common/TECommon;->FULLSCREEN_VERTICES:[F

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

    .line 112
    invoke-virtual {v4, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/16 v0, 0x20

    const v5, 0x88e4

    .line 113
    invoke-static {v3, v0, v4, v5}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 114
    aget v0, v1, v2

    return v0
.end method

.method public static genNormalTextureID(Landroid/graphics/Bitmap;)I
    .registers 3

    const/16 v0, 0x2601

    const v1, 0x812f

    .line 73
    invoke-static {p0, v0, v1}, Lcom/ss/android/ttve/common/TECommon;->genNormalTextureID(Landroid/graphics/Bitmap;II)I

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

    .line 81
    new-array v2, v1, [I

    .line 82
    invoke-static {v1, v2, v0}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 83
    aget v1, v2, v0

    const/16 v3, 0xde1

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 84
    invoke-static {v3, v0, p0, v0}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 85
    invoke-static {v3, p1, p2}, Lcom/ss/android/ttve/common/TECommon;->_texParamHelper(III)V

    .line 86
    aget p0, v2, v0

    return p0
.end method

.method public static genSurfaceTextureID()I
    .registers 5

    const/4 v0, 0x1

    .line 90
    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 91
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 92
    aget v0, v1, v2

    const v3, 0x8d65

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v0, 0x2601

    const v4, 0x812f

    .line 93
    invoke-static {v3, v0, v4}, Lcom/ss/android/ttve/common/TECommon;->_texParamHelper(III)V

    .line 94
    aget v0, v1, v2

    return v0
.end method
