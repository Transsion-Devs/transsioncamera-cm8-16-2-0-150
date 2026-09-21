.class public Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final TEXTURE_COORDINATE:[F

.field private static final VERTEX_COORDINATE:[F

.field private static final VERTEX_DEFAULT_MATRIX:[F


# instance fields
.field private mCoordsVertexSize:I

.field private mMvpMatrix:I

.field private mProgramHandle:I

.field private mProgramType:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;

.field private mTextureCoordBuffer:Ljava/nio/FloatBuffer;

.field private mTextureDbgColorLoc:I

.field private mTextureMatrix:I

.field private mTextureSampler:I

.field private mTextureTarget:I

.field private mTransformMatrix:[F

.field private mUseMatrixFromTexture:Z

.field private mVertexBuffer:Ljava/nio/FloatBuffer;

.field private maPositionLoc:I

.field private maTextureCoordLoc:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x8

    .line 134
    new-array v1, v0, [F

    fill-array-data v1, :array_24

    sput-object v1, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->VERTEX_COORDINATE:[F

    .line 141
    new-array v0, v0, [F

    fill-array-data v0, :array_38

    sput-object v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->TEXTURE_COORDINATE:[F

    const/16 v0, 0x10

    .line 148
    new-array v0, v0, [F

    fill-array-data v0, :array_4c

    sput-object v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->VERTEX_DEFAULT_MATRIX:[F

    .line 170
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Texture2dProg"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void

    nop

    :array_24
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

    :array_38
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

    :array_4c
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;)V
    .registers 9

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iput-object p1, p0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mProgramType:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;

    const/4 v0, 0x1

    .line 177
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mUseMatrixFromTexture:Z

    .line 179
    sget-object v1, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Texture2dProgram::programType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 180
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/16 v3, 0xde1

    const/4 v4, 0x2

    const-string/jumbo v5, "uniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position =  uMVPMatrix * aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n"

    if-eqz v2, :cond_6c

    const v6, 0x8d65

    if-eq v2, v0, :cond_61

    if-eq v2, v4, :cond_56

    const/4 v0, 0x3

    if-ne v2, v0, :cond_3f

    .line 194
    iput v3, p0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mTextureTarget:I

    .line 195
    const-string p1, "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nuniform float uTexDbgColor;\n// linear sRGB to linear Display-P3\nmat3 ls2lp3 = mat3(\n    0.82259269, 0.17753369, -0.00000019,\n    0.03319958, 0.96678351, 0.00000029,\n    0.01708551, 0.07239614, 0.91030199);\nvoid convertSrgb2p3() {\n    // 1. degamma with 2.2, expanding sRGB to linear-sRGB;\n    // 2. linear-sRGB to linear-P3;\n    // 3. gamma encoding with 1/2.2;\n    float gamma = 2.2;\n    gl_FragColor.rgb = pow(gl_FragColor.rgb, vec3(gamma));\n    gl_FragColor.rgb = gl_FragColor.rgb * ls2lp3; // \u53f3\u4e58\n    // gamma\n    gl_FragColor.rgb = pow(gl_FragColor.rgb, vec3(1./gamma));\n}\nvoid main() {\n    gl_FragColor = clamp(texture2D(sTexture, vTextureCoord), 0.0, 1.0);\n    convertSrgb2p3();\n    if (uTexDbgColor > 0.0) {\n        gl_FragColor.rgb = vec3(uTexDbgColor);\n    }\n}\n"

    invoke-static {v5, p1}, Lcom/transsion/camera/app/ui/opengl/GLUtils;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mProgramHandle:I

    goto :goto_76

    .line 198
    :cond_3f
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 190
    :cond_56
    iput v6, p0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mTextureTarget:I

    .line 191
    const-string p1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nuniform float uTexDbgColor;\n// linear sRGB to linear Display-P3\nmat3 ls2lp3 = mat3(\n    0.82259269, 0.17753369, -0.00000019,\n    0.03319958, 0.96678351, 0.00000029,\n    0.01708551, 0.07239614, 0.91030199);\nvoid convertSrgb2p3() {\n    // 1. degamma with 2.2, expanding sRGB to linear-sRGB;\n    // 2. linear-sRGB to linear-P3;\n    // 3. gamma encoding with 1/2.2;\n    float gamma = 2.2;\n    gl_FragColor.rgb = pow(gl_FragColor.rgb, vec3(gamma));\n    gl_FragColor.rgb = gl_FragColor.rgb * ls2lp3; // \u53f3\u4e58\n    // gamma\n    gl_FragColor.rgb = pow(gl_FragColor.rgb, vec3(1./gamma));\n}\nvoid main() {\n    gl_FragColor = clamp(texture2D(sTexture, vTextureCoord), 0.0, 1.0);\n    convertSrgb2p3();\n    if (uTexDbgColor > 0.0) {\n        gl_FragColor.rgb = vec3(uTexDbgColor);\n    }\n}\n"

    invoke-static {v5, p1}, Lcom/transsion/camera/app/ui/opengl/GLUtils;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mProgramHandle:I

    goto :goto_76

    .line 186
    :cond_61
    iput v6, p0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mTextureTarget:I

    .line 187
    const-string p1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nuniform float uTexDbgColor;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n    if (uTexDbgColor > 0.0) {\n        gl_FragColor.rgb = vec3(uTexDbgColor);\n    }\n}\n"

    invoke-static {v5, p1}, Lcom/transsion/camera/app/ui/opengl/GLUtils;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mProgramHandle:I

    goto :goto_76

    .line 182
    :cond_6c
    iput v3, p0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mTextureTarget:I

    .line 183
    const-string p1, "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nuniform float uTexDbgColor;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n    if (uTexDbgColor > 0.0) {\n        gl_FragColor.rgb = vec3(uTexDbgColor);\n    }\n}\n"

    invoke-static {v5, p1}, Lcom/transsion/camera/app/ui/opengl/GLUtils;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mProgramHandle:I

    .line 200
    :goto_76
    iget p1, p0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mProgramHandle:I

    if-nez p1, :cond_9c

    .line 201
    invoke-static {}, Lcom/transsion/camera/utils/MonkeyUtils;->isUserAMonkey()Z

    move-result p0

    if-nez p0, :cond_8f

    invoke-static {}, Lcom/transsion/camera/utils/MonkeyUtils;->updateIsUserMonkey()Z

    move-result p0

    if-eqz p0, :cond_87

    goto :goto_8f

    .line 206
    :cond_87
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Unable to create program"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 202
    :cond_8f
    :goto_8f
    const-string p0, "Could not create program, qiut!"

    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 203
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    return-void

    .line 210
    :cond_9c
    const-string v0, "aPosition"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->maPositionLoc:I

    .line 211
    iget p1, p0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mProgramHandle:I

    const-string v0, "aTextureCoord"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->maTextureCoordLoc:I

    .line 212
    iget p1, p0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mProgramHandle:I

    const-string v0, "sTexture"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mTextureSampler:I

    .line 213
    iget p1, p0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mProgramHandle:I

    const-string/jumbo v0, "uTexDbgColor"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mTextureDbgColorLoc:I

    .line 214
    iget p1, p0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mProgramHandle:I

    const-string/jumbo v0, "uTexMatrix"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mTextureMatrix:I

    .line 215
    iget p1, p0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mProgramHandle:I

    const-string/jumbo v0, "uMVPMatrix"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mMvpMatrix:I

    .line 217
    sget-object p1, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->VERTEX_COORDINATE:[F

    invoke-static {p1}, Lcom/transsion/camera/app/ui/opengl/GLUtils;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 218
    sget-object p1, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->TEXTURE_COORDINATE:[F

    invoke-static {p1}, Lcom/transsion/camera/app/ui/opengl/GLUtils;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mTextureCoordBuffer:Ljava/nio/FloatBuffer;

    .line 219
    iput v4, p0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mCoordsVertexSize:I

    const/16 p1, 0x10

    .line 221
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mTransformMatrix:[F

    const/4 p0, 0x0

    .line 222
    invoke-static {p1, p0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 224
    const-string p0, "create Progrom"

    invoke-static {p0}, Lcom/transsion/camera/app/ui/opengl/GLUtils;->checkGlError(Ljava/lang/String;)V

    return-void
.end method

.method private createBitmapFromFBO(IIII)Landroid/graphics/Bitmap;
    .registers 13

    mul-int p0, p3, p4

    .line 262
    new-array p0, p0, [I

    .line 263
    invoke-static {p0}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v6

    const/4 v7, 0x0

    .line 264
    invoke-virtual {v6, v7}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    if-gez p1, :cond_10

    move v0, v7

    goto :goto_11

    :cond_10
    move v0, p1

    :goto_11
    if-gez p2, :cond_15

    move v1, v7

    goto :goto_16

    :cond_15
    move v1, p2

    :goto_16
    const/16 v4, 0x1908

    const/16 v5, 0x1401

    move v2, p3

    move v3, p4

    .line 272
    :try_start_1c
    invoke-static/range {v0 .. v6}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 273
    invoke-virtual {v6}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    .line 275
    div-int/lit8 p4, v3, 0x2

    move p1, v7

    :goto_25
    const/4 p2, 0x1

    if-ge p1, p4, :cond_41

    move p3, v7

    :goto_29
    if-ge p3, v2, :cond_3e

    mul-int v0, p1, v2

    add-int/2addr v0, p3

    sub-int v1, v3, p1

    sub-int/2addr v1, p2

    mul-int/2addr v1, v2

    add-int/2addr v1, p3

    .line 280
    aget v4, p0, v0

    .line 281
    aget v5, p0, v1

    .line 282
    aput v5, p0, v0

    .line 283
    aput v4, p0, v1
    :try_end_3b
    .catch Landroid/opengl/GLException; {:try_start_1c .. :try_end_3b} :catch_4f

    add-int/lit8 p3, p3, 0x1

    goto :goto_29

    :cond_3e
    add-int/lit8 p1, p1, 0x1

    goto :goto_25

    .line 290
    :cond_41
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {}, Lcom/transsion/camera/utils/BitmapUtils;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object p1

    invoke-static {v2, v3, p0, p2, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;ZLandroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 291
    invoke-virtual {p0, v6}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    return-object p0

    :catch_4f
    move-exception v0

    move-object p0, v0

    .line 287
    sget-object p1, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "createBitmapFromGLSurface: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public draw(Landroid/graphics/SurfaceTexture;I)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    if-eqz v1, :cond_78

    if-gtz v2, :cond_b

    goto :goto_78

    .line 396
    :cond_b
    iget v3, v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mProgramHandle:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 397
    const-string v3, "draw glUseProgram"

    invoke-static {v3}, Lcom/transsion/camera/app/ui/opengl/GLUtils;->checkGlError(Ljava/lang/String;)V

    .line 398
    iget-boolean v3, v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mUseMatrixFromTexture:Z

    if-eqz v3, :cond_1e

    .line 399
    iget-object v3, v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mTransformMatrix:[F

    invoke-virtual {v1, v3}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 401
    :cond_1e
    iget v1, v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->maPositionLoc:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 402
    iget v1, v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->maTextureCoordLoc:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v1, 0x0

    .line 403
    invoke-static {v1, v1, v1, v1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v1, 0x4100

    .line 404
    invoke-static {v1}, Landroid/opengl/GLES20;->glClear(I)V

    const v1, 0x84c0

    .line 405
    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 406
    iget v1, v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mTextureTarget:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 407
    iget v1, v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mTextureSampler:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 408
    iget v1, v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mTextureDbgColorLoc:I

    sget v3, Lcom/transsion/camera/utils/FeatureSupport;->sDbgPrevColor:F

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 409
    iget v1, v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mTextureMatrix:I

    iget-object v3, v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mTransformMatrix:[F

    const/4 v4, 0x1

    invoke-static {v1, v4, v2, v3, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 410
    iget v1, v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mMvpMatrix:I

    sget-object v3, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->VERTEX_DEFAULT_MATRIX:[F

    invoke-static {v1, v4, v2, v3, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 411
    iget v5, v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->maPositionLoc:I

    const/4 v9, 0x0

    iget-object v10, v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v6, 0x2

    const/16 v7, 0x1406

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 414
    iget v11, v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->maTextureCoordLoc:I

    iget v12, v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mCoordsVertexSize:I

    const/4 v15, 0x0

    iget-object v0, v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mTextureCoordBuffer:Ljava/nio/FloatBuffer;

    const/16 v13, 0x1406

    const/4 v14, 0x0

    move-object/from16 v16, v0

    invoke-static/range {v11 .. v16}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const/4 v0, 0x5

    const/4 v1, 0x4

    .line 416
    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    :cond_78
    :goto_78
    return-void
.end method

.method public drawTexture(I)V
    .registers 19

    move-object/from16 v0, p0

    .line 311
    iget v1, v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mProgramHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 312
    iget v1, v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->maPositionLoc:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 313
    iget v1, v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->maTextureCoordLoc:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 314
    const-string v1, "fbo glUseProgram"

    invoke-static {v1}, Lcom/transsion/camera/app/ui/opengl/GLUtils;->checkGlError(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 315
    invoke-static {v1, v1, v1, v2}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v1, 0x4100

    .line 316
    invoke-static {v1}, Landroid/opengl/GLES20;->glClear(I)V

    const v1, 0x84c0

    .line 317
    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 318
    iget v1, v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mTextureTarget:I

    move/from16 v2, p1

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 319
    iget v1, v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mTextureSampler:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 320
    iget v1, v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mTextureMatrix:I

    iget-object v3, v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mTransformMatrix:[F

    const/4 v4, 0x1

    invoke-static {v1, v4, v2, v3, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 321
    iget v1, v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mMvpMatrix:I

    sget-object v3, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->VERTEX_DEFAULT_MATRIX:[F

    invoke-static {v1, v4, v2, v3, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 322
    iget v5, v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->maPositionLoc:I

    const/4 v9, 0x0

    iget-object v10, v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v6, 0x2

    const/16 v7, 0x1406

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 325
    iget v11, v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->maTextureCoordLoc:I

    iget v12, v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mCoordsVertexSize:I

    const/4 v15, 0x0

    iget-object v0, v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mTextureCoordBuffer:Ljava/nio/FloatBuffer;

    const/16 v13, 0x1406

    const/4 v14, 0x0

    move-object/from16 v16, v0

    invoke-static/range {v11 .. v16}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const/4 v0, 0x5

    const/4 v1, 0x4

    .line 327
    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    return-void
.end method

.method public getPreviewBitmapByFBO(Landroid/graphics/SurfaceTexture;IIILcom/transsion/camera/app/common/preview/algorithm/IAlgoRenderer;Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;)Landroid/graphics/Bitmap;
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v1, p5

    if-eqz v2, :cond_a

    if-gtz p2, :cond_11

    :cond_a
    move-object v0, v2

    const/16 v16, 0x0

    move/from16 v2, p2

    goto/16 :goto_118

    .line 338
    :cond_11
    iget-boolean v3, v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mUseMatrixFromTexture:Z

    if-eqz v3, :cond_1a

    .line 339
    iget-object v3, v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mTransformMatrix:[F

    invoke-virtual {v2, v3}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    :cond_1a
    const/4 v13, 0x1

    .line 341
    invoke-static {v13}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v14

    .line 344
    invoke-static {v13}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v15

    .line 346
    invoke-static {v13, v14}, Landroid/opengl/GLES20;->glGenFramebuffers(ILjava/nio/IntBuffer;)V

    .line 348
    invoke-static {v13, v15}, Landroid/opengl/GLES20;->glGenTextures(ILjava/nio/IntBuffer;)V

    const/4 v3, 0x0

    .line 349
    invoke-virtual {v15, v3}, Ljava/nio/IntBuffer;->get(I)I

    move-result v4

    const/16 v5, 0xde1

    invoke-static {v5, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v10, 0x1401

    const/4 v11, 0x0

    move v4, v3

    const/16 v3, 0xde1

    move v6, v4

    const/4 v4, 0x0

    move v7, v5

    const/16 v5, 0x1908

    const/4 v8, 0x0

    const/16 v9, 0x1908

    move v12, v6

    move v13, v7

    const/16 v16, 0x0

    move/from16 v6, p3

    move/from16 v7, p4

    .line 350
    invoke-static/range {v3 .. v11}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    move v4, v6

    move v5, v7

    const/16 v3, 0x2802

    const v6, 0x812f

    .line 352
    invoke-static {v13, v3, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v3, 0x2803

    .line 353
    invoke-static {v13, v3, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v3, 0x2800

    const/16 v6, 0x2601

    .line 354
    invoke-static {v13, v3, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v3, 0x2801

    .line 355
    invoke-static {v13, v3, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 360
    invoke-virtual {v14, v12}, Ljava/nio/IntBuffer;->get(I)I

    move-result v3

    const v6, 0x8d40

    invoke-static {v6, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const v3, 0x8ce0

    .line 362
    invoke-virtual {v15, v12}, Ljava/nio/IntBuffer;->get(I)I

    move-result v7

    .line 361
    invoke-static {v6, v3, v13, v7, v12}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 363
    invoke-static {v6}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result v3

    .line 364
    sget-object v7, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getPreviewBitmapByFBO: status = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const v6, 0x8cd5

    if-ne v3, v6, :cond_10e

    if-eqz v1, :cond_a1

    .line 369
    invoke-interface {v1, v2, v4, v5}, Lcom/transsion/camera/app/common/preview/algorithm/IAlgoRenderer;->algorithmRenderOffScreen(Landroid/graphics/SurfaceTexture;II)Z

    move-result v3

    goto :goto_a2

    :cond_a1
    move v3, v12

    :goto_a2
    if-nez v3, :cond_b9

    if-eqz p6, :cond_b5

    .line 372
    invoke-virtual {v14, v12}, Ljava/nio/IntBuffer;->get(I)I

    move-result v6

    move/from16 v3, p2

    move-object/from16 v1, p6

    invoke-interface/range {v1 .. v6}, Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;->drawOffScreen(Landroid/graphics/SurfaceTexture;IIII)Z

    move-result v1

    move v2, v3

    move v3, v1

    goto :goto_bb

    :cond_b5
    move/from16 v2, p2

    move v3, v12

    goto :goto_bb

    :cond_b9
    move/from16 v2, p2

    .line 374
    :goto_bb
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPreviewBitmapByFBO: handled = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v3, :cond_d6

    .line 376
    invoke-direct {v0, v12, v12, v4, v5}, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->createBitmapFromFBO(IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_d8

    :cond_d6
    move-object/from16 v1, v16

    .line 378
    :goto_d8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPreviewBitmapByFBO bitmap1 = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez v1, :cond_f7

    .line 380
    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->drawTexture(I)V

    .line 381
    invoke-direct {v0, v12, v12, v4, v5}, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->createBitmapFromFBO(IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v12, v0

    goto :goto_f8

    :cond_f7
    move-object v12, v1

    .line 383
    :goto_f8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPreviewBitmapByFBO bitmap2 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_10c
    const/4 v0, 0x1

    goto :goto_111

    :cond_10e
    move-object/from16 v12, v16

    goto :goto_10c

    .line 386
    :goto_111
    invoke-static {v0, v14}, Landroid/opengl/GLES20;->glDeleteFramebuffers(ILjava/nio/IntBuffer;)V

    .line 387
    invoke-static {v0, v15}, Landroid/opengl/GLES20;->glDeleteTextures(ILjava/nio/IntBuffer;)V

    return-object v12

    .line 335
    :goto_118
    sget-object v1, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPreviewBitmapByFBO: texture: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", textureId: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v16
.end method

.method public release()V
    .registers 2

    .line 234
    iget v0, p0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mProgramHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    const/4 v0, -0x1

    .line 235
    iput v0, p0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mProgramHandle:I

    return-void
.end method

.method public setUseMatrixFromTexture(Z)V
    .registers 2

    .line 246
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mUseMatrixFromTexture:Z

    return-void
.end method

.method public updateTransformMatrix([F)V
    .registers 2

    .line 250
    iput-object p1, p0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mTransformMatrix:[F

    return-void
.end method
