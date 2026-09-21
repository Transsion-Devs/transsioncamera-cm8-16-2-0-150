.class public Lcom/arcsoft/filter/FilterEngineOES;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final POSITION_ATTRIBUTE:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field private final TEXTURE_COORD_ATTRIBUTE:Ljava/lang/String;

.field private final TEXTURE_MATRIX_UNIFORM:Ljava/lang/String;

.field private final TEXTURE_SAMPLER_UNIFORM:Ljava/lang/String;

.field private mBuffer:Ljava/nio/FloatBuffer;

.field private mShaderProgram:I

.field private mbIsOES:Z

.field private final vertex_texture_coordinate:[F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string v0, "FilterEngineOES"

    iput-object v0, p0, Lcom/arcsoft/filter/FilterEngineOES;->TAG:Ljava/lang/String;

    .line 46
    const-string v0, "aPosition"

    iput-object v0, p0, Lcom/arcsoft/filter/FilterEngineOES;->POSITION_ATTRIBUTE:Ljava/lang/String;

    .line 47
    const-string v0, "aTextureCoordinate"

    iput-object v0, p0, Lcom/arcsoft/filter/FilterEngineOES;->TEXTURE_COORD_ATTRIBUTE:Ljava/lang/String;

    .line 48
    const-string v0, "uTextureMatrix"

    iput-object v0, p0, Lcom/arcsoft/filter/FilterEngineOES;->TEXTURE_MATRIX_UNIFORM:Ljava/lang/String;

    .line 49
    const-string v0, "uTextureSampler"

    iput-object v0, p0, Lcom/arcsoft/filter/FilterEngineOES;->TEXTURE_SAMPLER_UNIFORM:Ljava/lang/String;

    const/16 v0, 0x18

    .line 126
    new-array v0, v0, [F

    fill-array-data v0, :array_22

    iput-object v0, p0, Lcom/arcsoft/filter/FilterEngineOES;->vertex_texture_coordinate:[F

    return-void

    nop

    :array_22
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private createBuffer()Ljava/nio/FloatBuffer;
    .registers 4

    .line 153
    iget-object v0, p0, Lcom/arcsoft/filter/FilterEngineOES;->vertex_texture_coordinate:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 156
    iget-object p0, p0, Lcom/arcsoft/filter/FilterEngineOES;->vertex_texture_coordinate:[F

    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-object v0
.end method

.method private linkProgram(II)I
    .registers 3

    .line 175
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result p0

    if-eqz p0, :cond_13

    .line 179
    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 180
    invoke-static {p0, p2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 181
    invoke-static {p0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 182
    invoke-static {p0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    return p0

    .line 177
    :cond_13
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Create Program Failed!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private loadShader(ILjava/lang/String;)I
    .registers 3

    .line 163
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result p0

    if-eqz p0, :cond_d

    .line 167
    invoke-static {p0, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 168
    invoke-static {p0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    return p0

    .line 165
    :cond_d
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Create Shader Failed!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public drawTexture(IZ[FLandroid/graphics/Rect;IIIII)V
    .registers 19

    .line 191
    iget p2, p0, Lcom/arcsoft/filter/FilterEngineOES;->mShaderProgram:I

    invoke-static {p2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const p2, 0x8d40

    move/from16 p4, p7

    .line 192
    invoke-static {p2, p4}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const/4 p4, 0x0

    move/from16 v0, p8

    move/from16 v1, p9

    .line 193
    invoke-static {p4, p4, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 195
    iget v0, p0, Lcom/arcsoft/filter/FilterEngineOES;->mShaderProgram:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    .line 196
    iget v0, p0, Lcom/arcsoft/filter/FilterEngineOES;->mShaderProgram:I

    const-string v1, "aTextureCoordinate"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    .line 197
    iget-object v1, p0, Lcom/arcsoft/filter/FilterEngineOES;->mBuffer:Ljava/nio/FloatBuffer;

    if-eqz v1, :cond_4f

    .line 198
    invoke-virtual {v1, p4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 199
    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/16 v6, 0x10

    .line 200
    iget-object v7, p0, Lcom/arcsoft/filter/FilterEngineOES;->mBuffer:Ljava/nio/FloatBuffer;

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 201
    iget-object v1, p0, Lcom/arcsoft/filter/FilterEngineOES;->mBuffer:Ljava/nio/FloatBuffer;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 202
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/16 v7, 0x10

    .line 203
    iget-object v8, p0, Lcom/arcsoft/filter/FilterEngineOES;->mBuffer:Ljava/nio/FloatBuffer;

    const/4 v4, 0x2

    const/16 v5, 0x1406

    const/4 v6, 0x0

    move v3, v0

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    :cond_4f
    const v0, 0x84c0

    .line 206
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 207
    iget-boolean v0, p0, Lcom/arcsoft/filter/FilterEngineOES;->mbIsOES:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_61

    const v0, 0x8d65

    .line 208
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    goto :goto_66

    :cond_61
    const/16 v0, 0xde1

    .line 210
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 212
    :goto_66
    iget p0, p0, Lcom/arcsoft/filter/FilterEngineOES;->mShaderProgram:I

    const-string p1, "uTextureMatrix"

    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p0

    .line 213
    invoke-static {p0, v1, p4, p3, p4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const/4 p0, 0x4

    const/4 p1, 0x6

    .line 214
    invoke-static {p0, p4, p1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 215
    invoke-static {p2, p4}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    return-void
.end method

.method public init(Z)V
    .registers 10

    .line 61
    iput-boolean p1, p0, Lcom/arcsoft/filter/FilterEngineOES;->mbIsOES:Z

    .line 62
    invoke-direct {p0}, Lcom/arcsoft/filter/FilterEngineOES;->createBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/arcsoft/filter/FilterEngineOES;->mBuffer:Ljava/nio/FloatBuffer;

    const v0, 0x8b31

    .line 99
    const-string v1, "attribute vec4 aPosition;\nuniform mat4 uTextureMatrix;\nattribute vec4 aTextureCoordinate;\nvarying vec2 vTextureCoord;\nvoid main()\n{\nvTextureCoord = (uTextureMatrix * aTextureCoordinate).xy;\ngl_Position = aPosition;\n}\n"

    invoke-direct {p0, v0, v1}, Lcom/arcsoft/filter/FilterEngineOES;->loadShader(ILjava/lang/String;)I

    move-result v0

    if-eqz p1, :cond_16

    .line 100
    const-string p1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES uTextureSampler;\nvarying vec2 vTextureCoord;\nvoid main()\n{\n   vec4 vCameraColor = texture2D(uTextureSampler, vTextureCoord);\n  gl_FragColor = vec4(vCameraColor.r, vCameraColor.g, vCameraColor.b, 1.0);\n}\n"

    goto :goto_18

    :cond_16
    const-string p1, "precision mediump float;\nuniform sampler2D uTextureSampler;\nvarying vec2 vTextureCoord;\nvoid main()\n{\n   vec4 vCameraColor = texture2D(uTextureSampler, vTextureCoord);\n   float fGrayColor = (0.3*vCameraColor.r + 0.59*vCameraColor.g + 0.11*vCameraColor.b);\n   gl_FragColor = vec4(vCameraColor.r, vCameraColor.g, vCameraColor.b, 1.0);\n}\n"

    :goto_18
    const v1, 0x8b30

    invoke-direct {p0, v1, p1}, Lcom/arcsoft/filter/FilterEngineOES;->loadShader(ILjava/lang/String;)I

    move-result p1

    .line 101
    invoke-direct {p0, v0, p1}, Lcom/arcsoft/filter/FilterEngineOES;->linkProgram(II)I

    move-result p1

    iput p1, p0, Lcom/arcsoft/filter/FilterEngineOES;->mShaderProgram:I

    .line 102
    const-string v0, "aPosition"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    .line 103
    iget p1, p0, Lcom/arcsoft/filter/FilterEngineOES;->mShaderProgram:I

    const-string v0, "aTextureCoordinate"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    .line 104
    iget v0, p0, Lcom/arcsoft/filter/FilterEngineOES;->mShaderProgram:I

    const-string v2, "uTextureSampler"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    .line 105
    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 107
    iget-object v0, p0, Lcom/arcsoft/filter/FilterEngineOES;->mBuffer:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_69

    .line 108
    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 109
    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/16 v5, 0x10

    .line 110
    iget-object v6, p0, Lcom/arcsoft/filter/FilterEngineOES;->mBuffer:Ljava/nio/FloatBuffer;

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 111
    iget-object v0, p0, Lcom/arcsoft/filter/FilterEngineOES;->mBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 112
    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/16 v6, 0x10

    .line 113
    iget-object v7, p0, Lcom/arcsoft/filter/FilterEngineOES;->mBuffer:Ljava/nio/FloatBuffer;

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    move v2, p1

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    :cond_69
    return-void
.end method

.method public uninit()V
    .registers 1

    .line 120
    iget p0, p0, Lcom/arcsoft/filter/FilterEngineOES;->mShaderProgram:I

    invoke-static {p0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    return-void
.end method
