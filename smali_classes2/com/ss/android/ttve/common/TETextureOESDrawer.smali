.class public Lcom/ss/android/ttve/common/TETextureOESDrawer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final FRAGMENT_SHADER:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES uTextureSampler;\nvarying vec2 vTextureCoord;\nvoid main() \n{\n  gl_FragColor = texture2D(uTextureSampler, vTextureCoord);\n}"

.field private static final TAG:Ljava/lang/String; = "TETextureOESDrawer"

.field private static TEXTURE_VERTEX_DATA:[F = null

.field private static final VERTEX_DATA:[F

.field private static final VERTEX_SHADER:Ljava/lang/String; = "attribute vec4 aPosition;\nattribute vec2 aTextureCoord;\nuniform mat4 uMVPMatrix;\nvarying vec2 vTextureCoord;\nvoid main()\n{\n   gl_Position = uMVPMatrix * aPosition;\n   vTextureCoord = aTextureCoord;\n}"


# instance fields
.field private mMVPMatrixLocation:I

.field private mProgram:Lcom/ss/android/ttve/common/TEProgramObject;

.field private mTextureVertexDataBuffer:Ljava/nio/FloatBuffer;

.field private mVertBufferIndex:[I

.field private mVertexDataBuffer:Ljava/nio/FloatBuffer;

.field private m_cropRectF:Landroid/graphics/RectF;

.field private m_displayRotate:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x8

    .line 42
    new-array v1, v0, [F

    fill-array-data v1, :array_12

    sput-object v1, Lcom/ss/android/ttve/common/TETextureOESDrawer;->VERTEX_DATA:[F

    .line 49
    new-array v0, v0, [F

    fill-array-data v0, :array_26

    sput-object v0, Lcom/ss/android/ttve/common/TETextureOESDrawer;->TEXTURE_VERTEX_DATA:[F

    return-void

    nop

    :array_12
    .array-data 4
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
    .end array-data

    :array_26
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private constructor <init>()V
    .registers 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 62
    iput v0, p0, Lcom/ss/android/ttve/common/TETextureOESDrawer;->m_displayRotate:I

    return-void
.end method

.method public static create()Lcom/ss/android/ttve/common/TETextureOESDrawer;
    .registers 3

    .line 67
    new-instance v0, Lcom/ss/android/ttve/common/TETextureOESDrawer;

    invoke-direct {v0}, Lcom/ss/android/ttve/common/TETextureOESDrawer;-><init>()V

    .line 68
    const-string v1, "attribute vec4 aPosition;\nattribute vec2 aTextureCoord;\nuniform mat4 uMVPMatrix;\nvarying vec2 vTextureCoord;\nvoid main()\n{\n   gl_Position = uMVPMatrix * aPosition;\n   vTextureCoord = aTextureCoord;\n}"

    const-string v2, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES uTextureSampler;\nvarying vec2 vTextureCoord;\nvoid main() \n{\n  gl_FragColor = texture2D(uTextureSampler, vTextureCoord);\n}"

    invoke-direct {v0, v1, v2}, Lcom/ss/android/ttve/common/TETextureOESDrawer;->init(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 69
    const-string v1, "TETextureOESDrawer"

    const-string v2, "TETextureOESDrawer create failed!"

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {v0}, Lcom/ss/android/ttve/common/TETextureOESDrawer;->release()V

    const/4 v0, 0x0

    :cond_1a
    return-object v0
.end method

.method private createVertexBuffer([F)Ljava/nio/FloatBuffer;
    .registers 4

    .line 88
    array-length p0, p1

    mul-int/lit8 p0, p0, 0x4

    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 89
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 90
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p0

    .line 91
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-object p0
.end method

.method private init(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 14

    .line 96
    sget-object v0, Lcom/ss/android/ttve/common/TETextureOESDrawer;->VERTEX_DATA:[F

    invoke-direct {p0, v0}, Lcom/ss/android/ttve/common/TETextureOESDrawer;->createVertexBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ttve/common/TETextureOESDrawer;->mVertexDataBuffer:Ljava/nio/FloatBuffer;

    .line 97
    sget-object v0, Lcom/ss/android/ttve/common/TETextureOESDrawer;->TEXTURE_VERTEX_DATA:[F

    invoke-direct {p0, v0}, Lcom/ss/android/ttve/common/TETextureOESDrawer;->createVertexBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ttve/common/TETextureOESDrawer;->mTextureVertexDataBuffer:Ljava/nio/FloatBuffer;

    .line 98
    new-instance v0, Lcom/ss/android/ttve/common/TEProgramObject;

    invoke-direct {v0}, Lcom/ss/android/ttve/common/TEProgramObject;-><init>()V

    iput-object v0, p0, Lcom/ss/android/ttve/common/TETextureOESDrawer;->mProgram:Lcom/ss/android/ttve/common/TEProgramObject;

    .line 99
    invoke-virtual {v0, p1, p2}, Lcom/ss/android/ttve/common/TEProgramObject;->init(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_27

    .line 100
    iget-object p1, p0, Lcom/ss/android/ttve/common/TETextureOESDrawer;->mProgram:Lcom/ss/android/ttve/common/TEProgramObject;

    invoke-virtual {p1}, Lcom/ss/android/ttve/common/TEProgramObject;->release()V

    const/4 p1, 0x0

    .line 101
    iput-object p1, p0, Lcom/ss/android/ttve/common/TETextureOESDrawer;->mProgram:Lcom/ss/android/ttve/common/TEProgramObject;

    return p2

    .line 105
    :cond_27
    iget-object p1, p0, Lcom/ss/android/ttve/common/TETextureOESDrawer;->mProgram:Lcom/ss/android/ttve/common/TEProgramObject;

    invoke-virtual {p1}, Lcom/ss/android/ttve/common/TEProgramObject;->bind()V

    .line 106
    iget-object p1, p0, Lcom/ss/android/ttve/common/TETextureOESDrawer;->mProgram:Lcom/ss/android/ttve/common/TEProgramObject;

    const-string v0, "uMVPMatrix"

    invoke-virtual {p1, v0}, Lcom/ss/android/ttve/common/TEProgramObject;->getUniformLoc(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/ss/android/ttve/common/TETextureOESDrawer;->mMVPMatrixLocation:I

    const/4 p1, 0x2

    .line 108
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/ss/android/ttve/common/TETextureOESDrawer;->mVertBufferIndex:[I

    .line 109
    invoke-static {p1, v0, p2}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 111
    iget-object p1, p0, Lcom/ss/android/ttve/common/TETextureOESDrawer;->mProgram:Lcom/ss/android/ttve/common/TEProgramObject;

    const-string v0, "aPosition"

    invoke-virtual {p1, v0, p2}, Lcom/ss/android/ttve/common/TEProgramObject;->bindAttribLocation(Ljava/lang/String;I)V

    .line 112
    iget-object p1, p0, Lcom/ss/android/ttve/common/TETextureOESDrawer;->mVertBufferIndex:[I

    aget p1, p1, p2

    const v0, 0x8892

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 113
    iget-object p1, p0, Lcom/ss/android/ttve/common/TETextureOESDrawer;->mVertexDataBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 114
    iget-object p1, p0, Lcom/ss/android/ttve/common/TETextureOESDrawer;->mVertexDataBuffer:Ljava/nio/FloatBuffer;

    const v1, 0x88e4

    const/16 v2, 0x20

    invoke-static {v0, v2, p1, v1}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 116
    iget-object p1, p0, Lcom/ss/android/ttve/common/TETextureOESDrawer;->mProgram:Lcom/ss/android/ttve/common/TEProgramObject;

    const-string v1, "aTextureCoord"

    const/4 v3, 0x1

    invoke-virtual {p1, v1, v3}, Lcom/ss/android/ttve/common/TEProgramObject;->bindAttribLocation(Ljava/lang/String;I)V

    .line 117
    iget-object p1, p0, Lcom/ss/android/ttve/common/TETextureOESDrawer;->mVertBufferIndex:[I

    aget p1, p1, v3

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 118
    iget-object p1, p0, Lcom/ss/android/ttve/common/TETextureOESDrawer;->mTextureVertexDataBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 119
    iget-object p1, p0, Lcom/ss/android/ttve/common/TETextureOESDrawer;->mTextureVertexDataBuffer:Ljava/nio/FloatBuffer;

    const p2, 0x88e8

    invoke-static {v0, v2, p1, p2}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p0

    .line 121
    invoke-virtual/range {v4 .. v10}, Lcom/ss/android/ttve/common/TETextureOESDrawer;->setMVPMatrix(IZIIII)V

    .line 122
    const-string p0, "TETextureOESDrawer"

    const-string p1, "init: success."

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method


# virtual methods
.method public drawTexture(I)V
    .registers 10

    .line 127
    iget-object v0, p0, Lcom/ss/android/ttve/common/TETextureOESDrawer;->mProgram:Lcom/ss/android/ttve/common/TEProgramObject;

    invoke-virtual {v0}, Lcom/ss/android/ttve/common/TEProgramObject;->bind()V

    const v0, 0x84c0

    .line 128
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const v0, 0x8d65

    .line 129
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 131
    iget-object p1, p0, Lcom/ss/android/ttve/common/TETextureOESDrawer;->mVertBufferIndex:[I

    const/4 v0, 0x0

    aget p1, p1, v0

    const v1, 0x8892

    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 132
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    .line 133
    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 135
    iget-object p0, p0, Lcom/ss/android/ttve/common/TETextureOESDrawer;->mVertBufferIndex:[I

    const/4 p1, 0x1

    aget p0, p0, p1

    invoke-static {v1, p0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 136
    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v2, 0x1

    .line 137
    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    const/4 p0, 0x5

    const/4 p1, 0x4

    .line 138
    invoke-static {p0, v0, p1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    return-void
.end method

.method public release()V
    .registers 5

    .line 77
    iget-object v0, p0, Lcom/ss/android/ttve/common/TETextureOESDrawer;->mProgram:Lcom/ss/android/ttve/common/TEProgramObject;

    invoke-virtual {v0}, Lcom/ss/android/ttve/common/TEProgramObject;->release()V

    .line 78
    iget-object v0, p0, Lcom/ss/android/ttve/common/TETextureOESDrawer;->mVertBufferIndex:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 79
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    .line 80
    iput-object v1, p0, Lcom/ss/android/ttve/common/TETextureOESDrawer;->mVertBufferIndex:[I

    .line 82
    :cond_11
    iput-object v1, p0, Lcom/ss/android/ttve/common/TETextureOESDrawer;->mProgram:Lcom/ss/android/ttve/common/TEProgramObject;

    .line 83
    iput-object v1, p0, Lcom/ss/android/ttve/common/TETextureOESDrawer;->mVertexDataBuffer:Ljava/nio/FloatBuffer;

    .line 84
    iput-object v1, p0, Lcom/ss/android/ttve/common/TETextureOESDrawer;->mTextureVertexDataBuffer:Ljava/nio/FloatBuffer;

    return-void
.end method

.method public setMVPMatrix(IZIIII)V
    .registers 31

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    .line 153
    iget-object v6, v0, Lcom/ss/android/ttve/common/TETextureOESDrawer;->mProgram:Lcom/ss/android/ttve/common/TEProgramObject;

    invoke-virtual {v6}, Lcom/ss/android/ttve/common/TEProgramObject;->bind()V

    const/4 v6, 0x1

    const/16 v7, 0x10

    const/4 v8, 0x0

    if-lez v2, :cond_e4

    if-lez v3, :cond_e4

    if-lez v4, :cond_e4

    if-gtz v5, :cond_1f

    goto/16 :goto_e4

    .line 160
    :cond_1f
    iget v9, v0, Lcom/ss/android/ttve/common/TETextureOESDrawer;->m_displayRotate:I

    if-ne v9, v1, :cond_24

    return-void

    .line 163
    :cond_24
    iput v1, v0, Lcom/ss/android/ttve/common/TETextureOESDrawer;->m_displayRotate:I

    .line 165
    new-array v10, v7, [F

    .line 166
    invoke-static {v10, v8}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    int-to-float v12, v1

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/4 v13, 0x0

    .line 168
    invoke-static/range {v10 .. v15}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    if-eqz p2, :cond_40

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x43340000    # 180.0f

    const/high16 v13, 0x3f800000    # 1.0f

    .line 170
    invoke-static/range {v10 .. v15}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 173
    :cond_40
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v9

    const/16 v11, 0x10e

    const/16 v12, 0x5a

    if-eq v9, v12, :cond_53

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-ne v9, v11, :cond_51

    goto :goto_53

    :cond_51
    int-to-float v9, v2

    goto :goto_54

    :cond_53
    :goto_53
    int-to-float v9, v3

    .line 174
    :goto_54
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v13

    if-eq v13, v12, :cond_63

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ne v1, v11, :cond_61

    goto :goto_63

    :cond_61
    int-to-float v1, v3

    goto :goto_64

    :cond_63
    :goto_63
    int-to-float v1, v2

    :goto_64
    int-to-float v11, v4

    div-float v9, v11, v9

    int-to-float v12, v5

    div-float v1, v12, v1

    cmpl-float v13, v9, v1

    if-lez v13, :cond_6f

    goto :goto_70

    :cond_6f
    move v9, v1

    :goto_70
    int-to-float v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    mul-float/2addr v1, v9

    int-to-float v3, v3

    div-float/2addr v3, v2

    mul-float/2addr v3, v9

    const/high16 v9, 0x3f800000    # 1.0f

    .line 186
    invoke-static {v10, v8, v1, v3, v9}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 188
    new-array v13, v7, [F

    .line 189
    invoke-static {v13, v8}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const/high16 v22, 0x3f800000    # 1.0f

    const/16 v23, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    .line 190
    invoke-static/range {v13 .. v23}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    .line 192
    new-array v14, v7, [F

    .line 193
    invoke-static {v14, v8}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    neg-int v1, v4

    int-to-float v1, v1

    div-float v16, v1, v2

    div-float v17, v11, v2

    neg-int v1, v5

    int-to-float v1, v1

    div-float v18, v1, v2

    div-float v19, v12, v2

    const/high16 v20, -0x40000000    # -2.0f

    const/high16 v21, 0x40000000    # 2.0f

    const/4 v15, 0x0

    .line 194
    invoke-static/range {v14 .. v21}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 197
    new-array v1, v7, [F

    .line 198
    invoke-static {v1, v8}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 p1, v1

    move/from16 p4, v2

    move/from16 p6, v3

    move/from16 p2, v4

    move-object/from16 p5, v10

    move-object/from16 p3, v13

    .line 199
    invoke-static/range {p1 .. p6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 200
    new-array v2, v7, [F

    .line 201
    invoke-static {v2, v8}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const/4 v5, 0x0

    move-object/from16 p5, v1

    move-object/from16 p1, v2

    move/from16 p4, v3

    move/from16 p6, v4

    move/from16 p2, v5

    move-object/from16 p3, v14

    .line 202
    invoke-static/range {p1 .. p6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    move-object/from16 v1, p1

    .line 205
    iget v0, v0, Lcom/ss/android/ttve/common/TETextureOESDrawer;->mMVPMatrixLocation:I

    invoke-static {v0, v6, v8, v1, v8}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    return-void

    .line 155
    :cond_e4
    :goto_e4
    new-array v1, v7, [F

    .line 156
    invoke-static {v1, v8}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 157
    iget v0, v0, Lcom/ss/android/ttve/common/TETextureOESDrawer;->mMVPMatrixLocation:I

    invoke-static {v0, v6, v8, v1, v8}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    return-void
.end method

.method public setTextureCropData(Landroid/graphics/RectF;)V
    .registers 10

    if-eqz p1, :cond_5b

    .line 209
    iget-object v0, p0, Lcom/ss/android/ttve/common/TETextureOESDrawer;->m_cropRectF:Landroid/graphics/RectF;

    if-eqz v0, :cond_d

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_5b

    .line 212
    :cond_d
    iput-object p1, p0, Lcom/ss/android/ttve/common/TETextureOESDrawer;->m_cropRectF:Landroid/graphics/RectF;

    .line 213
    sget-object v0, Lcom/ss/android/ttve/common/TETextureOESDrawer;->TEXTURE_VERTEX_DATA:[F

    iget v1, p1, Landroid/graphics/RectF;->left:F

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 214
    iget v3, p1, Landroid/graphics/RectF;->top:F

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v5, v4, v3

    const/4 v6, 0x1

    aput v5, v0, v6

    const/4 v5, 0x2

    .line 215
    aput v1, v0, v5

    .line 216
    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    sub-float v5, v4, v1

    const/4 v7, 0x3

    aput v5, v0, v7

    .line 217
    iget p1, p1, Landroid/graphics/RectF;->right:F

    const/4 v5, 0x4

    aput p1, v0, v5

    const/4 v5, 0x5

    sub-float v3, v4, v3

    .line 218
    aput v3, v0, v5

    const/4 v3, 0x6

    .line 219
    aput p1, v0, v3

    const/4 p1, 0x7

    sub-float/2addr v4, v1

    .line 220
    aput v4, v0, p1

    .line 221
    invoke-direct {p0, v0}, Lcom/ss/android/ttve/common/TETextureOESDrawer;->createVertexBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/ttve/common/TETextureOESDrawer;->mTextureVertexDataBuffer:Ljava/nio/FloatBuffer;

    .line 222
    iget-object p1, p0, Lcom/ss/android/ttve/common/TETextureOESDrawer;->mProgram:Lcom/ss/android/ttve/common/TEProgramObject;

    invoke-virtual {p1}, Lcom/ss/android/ttve/common/TEProgramObject;->bind()V

    .line 223
    iget-object p1, p0, Lcom/ss/android/ttve/common/TETextureOESDrawer;->mVertBufferIndex:[I

    aget p1, p1, v6

    const v0, 0x8892

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 224
    iget-object p1, p0, Lcom/ss/android/ttve/common/TETextureOESDrawer;->mTextureVertexDataBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/16 p1, 0x20

    .line 225
    iget-object p0, p0, Lcom/ss/android/ttve/common/TETextureOESDrawer;->mTextureVertexDataBuffer:Ljava/nio/FloatBuffer;

    invoke-static {v0, v2, p1, p0}, Landroid/opengl/GLES20;->glBufferSubData(IIILjava/nio/Buffer;)V

    :cond_5b
    :goto_5b
    return-void
.end method
