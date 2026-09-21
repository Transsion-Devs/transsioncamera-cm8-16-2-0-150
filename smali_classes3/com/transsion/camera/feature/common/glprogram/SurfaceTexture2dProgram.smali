.class public Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram$ProgramType;
    }
.end annotation


# static fields
.field private static final FRAGMENT_SHADER_2D:Ljava/lang/String; = "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

.field private static final FRAGMENT_SHADER_EXT:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

.field private static final IS_SAVE_FOR_TEST:Z = false

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final TEXTURE_COORDINATE:[F

.field private static final VERTEX_COORDINATE:[F

.field private static final VERTEX_DEFAULT_MATRIX:[F

.field private static final VERTEX_SHADER:Ljava/lang/String; = "uniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position =  uMVPMatrix * aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n"


# instance fields
.field private mMvpMatrix:I

.field private mProgramHandle:I

.field private mProgramType:Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram$ProgramType;

.field private mTextureCoordBuffer:Ljava/nio/FloatBuffer;

.field private mTextureMatrix:I

.field private mTextureSampler:I

.field private mTextureTarget:I

.field private mTransformMatrix:[F

.field private mVertexBuffer:Ljava/nio/FloatBuffer;

.field private maPositionLoc:I

.field private maTextureCoordLoc:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x8

    .line 60
    new-array v1, v0, [F

    fill-array-data v1, :array_24

    sput-object v1, Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;->VERTEX_COORDINATE:[F

    .line 67
    new-array v0, v0, [F

    fill-array-data v0, :array_38

    sput-object v0, Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;->TEXTURE_COORDINATE:[F

    const/16 v0, 0x10

    .line 74
    new-array v0, v0, [F

    fill-array-data v0, :array_4c

    sput-object v0, Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;->VERTEX_DEFAULT_MATRIX:[F

    .line 93
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Texture2dProg"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

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

.method public constructor <init>(Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram$ProgramType;)V
    .registers 5

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;->mProgramType:Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram$ProgramType;

    .line 101
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-string/jumbo v1, "uniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position =  uMVPMatrix * aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n"

    if-eqz v0, :cond_36

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1f

    const p1, 0x8d65

    .line 107
    iput p1, p0, Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;->mTextureTarget:I

    .line 108
    const-string p1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    invoke-static {v1, p1}, Lcom/transsion/camera/feature/common/glprogram/GLUtils;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;->mProgramHandle:I

    goto :goto_42

    .line 111
    :cond_1f
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

    :cond_36
    const/16 p1, 0xde1

    .line 103
    iput p1, p0, Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;->mTextureTarget:I

    .line 104
    const-string p1, "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    invoke-static {v1, p1}, Lcom/transsion/camera/feature/common/glprogram/GLUtils;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;->mProgramHandle:I

    .line 113
    :goto_42
    iget p1, p0, Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;->mProgramHandle:I

    if-eqz p1, :cond_98

    .line 118
    const-string v0, "aPosition"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;->maPositionLoc:I

    .line 119
    iget p1, p0, Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;->mProgramHandle:I

    const-string v0, "aTextureCoord"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;->maTextureCoordLoc:I

    .line 120
    iget p1, p0, Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;->mProgramHandle:I

    const-string v0, "sTexture"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;->mTextureSampler:I

    .line 121
    iget p1, p0, Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;->mProgramHandle:I

    const-string/jumbo v0, "uTexMatrix"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;->mTextureMatrix:I

    .line 122
    iget p1, p0, Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;->mProgramHandle:I

    const-string/jumbo v0, "uMVPMatrix"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;->mMvpMatrix:I

    .line 124
    sget-object p1, Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;->VERTEX_COORDINATE:[F

    invoke-static {p1}, Lcom/transsion/camera/feature/common/glprogram/GLUtils;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 125
    sget-object p1, Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;->TEXTURE_COORDINATE:[F

    invoke-static {p1}, Lcom/transsion/camera/feature/common/glprogram/GLUtils;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;->mTextureCoordBuffer:Ljava/nio/FloatBuffer;

    const/16 p1, 0x10

    .line 127
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;->mTransformMatrix:[F

    const/4 p0, 0x0

    .line 128
    invoke-static {p1, p0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 130
    const-string p0, "create Progrom"

    invoke-static {p0}, Lcom/transsion/camera/feature/common/glprogram/GLUtils;->checkGlError(Ljava/lang/String;)V

    return-void

    .line 114
    :cond_98
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Unable to create program"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private createBitmapFromFBO(IIII)Landroid/graphics/Bitmap;
    .registers 14

    mul-int p0, p3, p4

    .line 152
    new-array v0, p0, [I

    .line 153
    new-array p0, p0, [I

    .line 154
    invoke-static {v0}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v7

    const/4 v8, 0x0

    .line 155
    invoke-virtual {v7, v8}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    if-gez p1, :cond_12

    move v1, v8

    goto :goto_13

    :cond_12
    move v1, p1

    :goto_13
    if-gez p2, :cond_17

    move v2, v8

    goto :goto_18

    :cond_17
    move v2, p2

    :goto_18
    const/16 v5, 0x1908

    const/16 v6, 0x1401

    move v3, p3

    move v4, p4

    .line 163
    :try_start_1e
    invoke-static/range {v1 .. v7}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    move p1, v8

    :goto_22
    if-ge p1, v4, :cond_4b

    mul-int p3, p1, v3

    sub-int p4, v4, p1

    add-int/lit8 p4, p4, -0x1

    mul-int/2addr p4, v3

    move p2, v8

    :goto_2c
    if-ge p2, v3, :cond_48

    add-int v1, p3, p2

    .line 169
    aget v1, v0, v1

    shr-int/lit8 v2, v1, 0x10

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v5, v1, 0x10

    const/high16 v6, 0xff0000

    and-int/2addr v5, v6

    const v6, -0xff0100

    and-int/2addr v1, v6

    or-int/2addr v1, v5

    or-int/2addr v1, v2

    add-int v2, p4, p2

    .line 173
    aput v1, p0, v2
    :try_end_45
    .catch Landroid/opengl/GLException; {:try_start_1e .. :try_end_45} :catch_52

    add-int/lit8 p2, p2, 0x1

    goto :goto_2c

    :cond_48
    add-int/lit8 p1, p1, 0x1

    goto :goto_22

    .line 180
    :cond_4b
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, v3, v4, p1}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :catch_52
    move-exception v0

    move-object p0, v0

    .line 177
    sget-object p1, Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

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

.method private drawTexture(I)V
    .registers 19

    move-object/from16 v0, p0

    .line 200
    iget v1, v0, Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;->mProgramHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 201
    iget v1, v0, Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;->maPositionLoc:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 202
    iget v1, v0, Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;->maTextureCoordLoc:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 203
    const-string v1, "glUseProgram"

    invoke-static {v1}, Lcom/transsion/camera/feature/common/glprogram/GLUtils;->checkGlError(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 204
    invoke-static {v1, v1, v1, v2}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v1, 0x4100

    .line 205
    invoke-static {v1}, Landroid/opengl/GLES20;->glClear(I)V

    const v1, 0x84c0

    .line 206
    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 207
    iget v1, v0, Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;->mTextureTarget:I

    move/from16 v2, p1

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 208
    iget v1, v0, Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;->mTextureSampler:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 209
    iget v1, v0, Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;->mTextureMatrix:I

    iget-object v3, v0, Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;->mTransformMatrix:[F

    const/4 v4, 0x1

    invoke-static {v1, v4, v2, v3, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 210
    iget v1, v0, Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;->mMvpMatrix:I

    sget-object v3, Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;->VERTEX_DEFAULT_MATRIX:[F

    invoke-static {v1, v4, v2, v3, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 211
    iget v5, v0, Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;->maPositionLoc:I

    const/4 v9, 0x0

    iget-object v10, v0, Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v6, 0x2

    const/16 v7, 0x1406

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 214
    iget v11, v0, Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;->maTextureCoordLoc:I

    const/4 v15, 0x0

    iget-object v0, v0, Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;->mTextureCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v12, 0x2

    const/16 v13, 0x1406

    const/4 v14, 0x0

    move-object/from16 v16, v0

    invoke-static/range {v11 .. v16}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const/4 v0, 0x5

    const/4 v1, 0x4

    .line 216
    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/SurfaceTexture;I)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    if-eqz v1, :cond_6c

    if-gtz v2, :cond_b

    goto :goto_6c

    .line 247
    :cond_b
    iget-object v3, v0, Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;->mTransformMatrix:[F

    invoke-virtual {v1, v3}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 248
    iget v1, v0, Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;->mProgramHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 249
    iget v1, v0, Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;->maPositionLoc:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 250
    iget v1, v0, Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;->maTextureCoordLoc:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 251
    const-string v1, "glUseProgram"

    invoke-static {v1}, Lcom/transsion/camera/feature/common/glprogram/GLUtils;->checkGlError(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 252
    invoke-static {v1, v1, v1, v1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v1, 0x4100

    .line 253
    invoke-static {v1}, Landroid/opengl/GLES20;->glClear(I)V

    const v1, 0x84c0

    .line 254
    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 255
    iget v1, v0, Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;->mTextureTarget:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 256
    iget v1, v0, Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;->mTextureSampler:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 257
    iget v1, v0, Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;->mTextureMatrix:I

    iget-object v3, v0, Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;->mTransformMatrix:[F

    const/4 v4, 0x1

    invoke-static {v1, v4, v2, v3, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 258
    iget v1, v0, Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;->mMvpMatrix:I

    sget-object v3, Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;->VERTEX_DEFAULT_MATRIX:[F

    invoke-static {v1, v4, v2, v3, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 259
    iget v5, v0, Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;->maPositionLoc:I

    const/4 v9, 0x0

    iget-object v10, v0, Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v6, 0x2

    const/16 v7, 0x1406

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 262
    iget v11, v0, Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;->maTextureCoordLoc:I

    const/4 v15, 0x0

    iget-object v0, v0, Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;->mTextureCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v12, 0x2

    const/16 v13, 0x1406

    const/4 v14, 0x0

    move-object/from16 v16, v0

    invoke-static/range {v11 .. v16}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const/4 v0, 0x5

    const/4 v1, 0x4

    .line 264
    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    :cond_6c
    :goto_6c
    return-void
.end method

.method public draw(Landroid/graphics/SurfaceTexture;IIIII)V
    .registers 15

    if-eqz p1, :cond_6e

    if-gtz p2, :cond_6

    goto/16 :goto_6e

    .line 223
    :cond_6
    invoke-static/range {p3 .. p6}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 224
    iget-object v3, p0, Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;->mTransformMatrix:[F

    invoke-virtual {p1, v3}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 225
    iget v1, p0, Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;->mProgramHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 226
    iget v1, p0, Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;->maPositionLoc:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 227
    iget v1, p0, Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;->maTextureCoordLoc:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 228
    const-string v1, "glUseProgram"

    invoke-static {v1}, Lcom/transsion/camera/feature/common/glprogram/GLUtils;->checkGlError(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 229
    invoke-static {v1, v1, v1, v1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const v1, 0x84c0

    .line 230
    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 231
    iget v1, p0, Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;->mTextureTarget:I

    invoke-static {v1, p2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 232
    iget v1, p0, Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;->mTextureSampler:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 233
    iget v1, p0, Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;->mTextureMatrix:I

    iget-object v3, p0, Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;->mTransformMatrix:[F

    const/4 v4, 0x1

    invoke-static {v1, v4, v2, v3, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 234
    iget v1, p0, Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;->mMvpMatrix:I

    sget-object v3, Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;->VERTEX_DEFAULT_MATRIX:[F

    invoke-static {v1, v4, v2, v3, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 235
    iget v1, p0, Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;->maPositionLoc:I

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v5, 0x2

    const/16 v6, 0x1406

    const/4 v7, 0x0

    move p1, v1

    move p5, v3

    move-object p6, v4

    move p2, v5

    move p3, v6

    move p4, v7

    invoke-static/range {p1 .. p6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 238
    iget v1, p0, Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;->maTextureCoordLoc:I

    iget-object v0, p0, Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;->mTextureCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v4, 0x2

    const/16 v5, 0x1406

    const/4 v6, 0x0

    move-object p5, v0

    move p0, v1

    move p4, v3

    move p1, v4

    move p2, v5

    move p3, v6

    invoke-static/range {p0 .. p5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const/4 v0, 0x5

    const/4 v1, 0x4

    .line 240
    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    :cond_6e
    :goto_6e
    return-void
.end method

.method public getProgramType()Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram$ProgramType;
    .registers 1

    .line 148
    iget-object p0, p0, Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;->mProgramType:Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram$ProgramType;

    return-object p0
.end method

.method public release()V
    .registers 2

    .line 140
    iget v0, p0, Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;->mProgramHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    const/4 v0, -0x1

    .line 141
    iput v0, p0, Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;->mProgramHandle:I

    return-void
.end method
