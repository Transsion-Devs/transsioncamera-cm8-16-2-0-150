.class public Lcom/ss/android/ttve/common/TETextureDrawer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DRAW_FUNCTION:I = 0x5

.field protected static final m_fsh:Ljava/lang/String; = "precision mediump float;\nvarying vec2 texCoord;\nuniform sampler2D inputImageTexture;\nuniform int debug;\nvoid main()\n{\n   gl_FragColor = texture2D(inputImageTexture, texCoord);\n   if (debug != 0) gl_FragColor.rg = texCoord;\n}"

.field protected static final m_vsh:Ljava/lang/String; = "attribute vec2 vPosition;\nvarying vec2 texCoord;\nuniform mat2 rotation;\nuniform vec2 flipScale;\nvoid main()\n{\n   gl_Position = vec4(vPosition, 0.0, 1.0);\n   texCoord = flipScale * (vPosition / 2.0 * rotation) + 0.5;\n}"

.field public static final vertices:[F


# instance fields
.field private mDebugLog:I

.field private mFlipScaleLoc:I

.field protected mProgram:Lcom/ss/android/ttve/common/TEProgramObject;

.field private mRotLoc:I

.field private mVertBuffer:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x8

    .line 41
    new-array v0, v0, [F

    fill-array-data v0, :array_a

    sput-object v0, Lcom/ss/android/ttve/common/TETextureDrawer;->vertices:[F

    return-void

    :array_a
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
.end method

.method protected constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/ss/android/ttve/common/TETextureDrawer;
    .registers 3

    .line 85
    new-instance v0, Lcom/ss/android/ttve/common/TETextureDrawer;

    invoke-direct {v0}, Lcom/ss/android/ttve/common/TETextureDrawer;-><init>()V

    .line 86
    const-string v1, "attribute vec2 vPosition;\nvarying vec2 texCoord;\nuniform mat2 rotation;\nuniform vec2 flipScale;\nvoid main()\n{\n   gl_Position = vec4(vPosition, 0.0, 1.0);\n   texCoord = flipScale * (vPosition / 2.0 * rotation) + 0.5;\n}"

    const-string v2, "precision mediump float;\nvarying vec2 texCoord;\nuniform sampler2D inputImageTexture;\nuniform int debug;\nvoid main()\n{\n   gl_FragColor = texture2D(inputImageTexture, texCoord);\n   if (debug != 0) gl_FragColor.rg = texCoord;\n}"

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/common/TETextureDrawer;->init(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 87
    const-string v1, "TETextureDrawer"

    const-string v2, "TETextureDrawer create failed!"

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual {v0}, Lcom/ss/android/ttve/common/TETextureDrawer;->release()V

    const/4 v0, 0x0

    :cond_1a
    return-object v0
.end method


# virtual methods
.method public bindVertexBuffer()V
    .registers 2

    const v0, 0x8892

    .line 117
    iget p0, p0, Lcom/ss/android/ttve/common/TETextureDrawer;->mVertBuffer:I

    invoke-static {v0, p0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    return-void
.end method

.method public drawTexture(I)V
    .registers 3

    const/16 v0, 0xde1

    .line 102
    invoke-virtual {p0, p1, v0}, Lcom/ss/android/ttve/common/TETextureDrawer;->drawTexture(II)V

    return-void
.end method

.method public drawTexture(II)V
    .registers 9

    const v0, 0x84c0

    .line 106
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 107
    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const p1, 0x8892

    .line 109
    iget p2, p0, Lcom/ss/android/ttve/common/TETextureDrawer;->mVertBuffer:I

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    const/4 p1, 0x0

    .line 110
    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    .line 111
    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 112
    iget-object p0, p0, Lcom/ss/android/ttve/common/TETextureDrawer;->mProgram:Lcom/ss/android/ttve/common/TEProgramObject;

    invoke-virtual {p0}, Lcom/ss/android/ttve/common/TEProgramObject;->bind()V

    const/4 p0, 0x5

    const/4 p2, 0x4

    .line 113
    invoke-static {p0, p1, p2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    return-void
.end method

.method protected init(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    .line 53
    new-instance v0, Lcom/ss/android/ttve/common/TEProgramObject;

    invoke-direct {v0}, Lcom/ss/android/ttve/common/TEProgramObject;-><init>()V

    iput-object v0, p0, Lcom/ss/android/ttve/common/TETextureDrawer;->mProgram:Lcom/ss/android/ttve/common/TEProgramObject;

    .line 54
    invoke-virtual {v0, p1, p2}, Lcom/ss/android/ttve/common/TEProgramObject;->init(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_17

    .line 55
    iget-object p1, p0, Lcom/ss/android/ttve/common/TETextureDrawer;->mProgram:Lcom/ss/android/ttve/common/TEProgramObject;

    invoke-virtual {p1}, Lcom/ss/android/ttve/common/TEProgramObject;->release()V

    const/4 p1, 0x0

    .line 56
    iput-object p1, p0, Lcom/ss/android/ttve/common/TETextureDrawer;->mProgram:Lcom/ss/android/ttve/common/TEProgramObject;

    return p2

    .line 60
    :cond_17
    iget-object p1, p0, Lcom/ss/android/ttve/common/TETextureDrawer;->mProgram:Lcom/ss/android/ttve/common/TEProgramObject;

    invoke-virtual {p1}, Lcom/ss/android/ttve/common/TEProgramObject;->bind()V

    .line 62
    iget-object p1, p0, Lcom/ss/android/ttve/common/TETextureDrawer;->mProgram:Lcom/ss/android/ttve/common/TEProgramObject;

    const-string v0, "rotation"

    invoke-virtual {p1, v0}, Lcom/ss/android/ttve/common/TEProgramObject;->getUniformLoc(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/ss/android/ttve/common/TETextureDrawer;->mRotLoc:I

    .line 63
    iget-object p1, p0, Lcom/ss/android/ttve/common/TETextureDrawer;->mProgram:Lcom/ss/android/ttve/common/TEProgramObject;

    const-string v0, "flipScale"

    invoke-virtual {p1, v0}, Lcom/ss/android/ttve/common/TEProgramObject;->getUniformLoc(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/ss/android/ttve/common/TETextureDrawer;->mFlipScaleLoc:I

    .line 64
    iget-object p1, p0, Lcom/ss/android/ttve/common/TETextureDrawer;->mProgram:Lcom/ss/android/ttve/common/TEProgramObject;

    const-string v0, "debug"

    invoke-virtual {p1, v0}, Lcom/ss/android/ttve/common/TEProgramObject;->getUniformLoc(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/ss/android/ttve/common/TETextureDrawer;->mDebugLog:I

    .line 65
    iget-object p1, p0, Lcom/ss/android/ttve/common/TETextureDrawer;->mProgram:Lcom/ss/android/ttve/common/TEProgramObject;

    const-string v0, "vPosition"

    invoke-virtual {p1, v0, p2}, Lcom/ss/android/ttve/common/TEProgramObject;->bindAttribLocation(Ljava/lang/String;I)V

    const/4 p1, 0x1

    .line 67
    new-array v0, p1, [I

    .line 68
    invoke-static {p1, v0, p2}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 69
    aget v0, v0, p2

    iput v0, p0, Lcom/ss/android/ttve/common/TETextureDrawer;->mVertBuffer:I

    const v1, 0x8892

    .line 71
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 72
    sget-object v0, Lcom/ss/android/ttve/common/TETextureDrawer;->vertices:[F

    array-length v2, v0

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    .line 73
    invoke-virtual {v2, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/16 v0, 0x20

    const v3, 0x88e4

    .line 75
    invoke-static {v1, v0, v2, v3}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    const/4 v0, 0x0

    .line 76
    invoke-virtual {p0, v0}, Lcom/ss/android/ttve/common/TETextureDrawer;->setRotation(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 77
    invoke-virtual {p0, v0, v0}, Lcom/ss/android/ttve/common/TETextureDrawer;->setFlipScale(FF)V

    .line 78
    invoke-virtual {p0, p2}, Lcom/ss/android/ttve/common/TETextureDrawer;->setDebug(Z)V

    .line 79
    const-string p0, "TETextureDrawer"

    const-string p2, "init: success."

    invoke-static {p0, p2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p1
.end method

.method public release()V
    .registers 4

    .line 95
    iget-object v0, p0, Lcom/ss/android/ttve/common/TETextureDrawer;->mProgram:Lcom/ss/android/ttve/common/TEProgramObject;

    invoke-virtual {v0}, Lcom/ss/android/ttve/common/TEProgramObject;->release()V

    .line 96
    iget v0, p0, Lcom/ss/android/ttve/common/TETextureDrawer;->mVertBuffer:I

    filled-new-array {v0}, [I

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    const/4 v0, 0x0

    .line 97
    iput-object v0, p0, Lcom/ss/android/ttve/common/TETextureDrawer;->mProgram:Lcom/ss/android/ttve/common/TEProgramObject;

    .line 98
    iput v2, p0, Lcom/ss/android/ttve/common/TETextureDrawer;->mVertBuffer:I

    return-void
.end method

.method public setDebug(Z)V
    .registers 3

    .line 139
    iget-object v0, p0, Lcom/ss/android/ttve/common/TETextureDrawer;->mProgram:Lcom/ss/android/ttve/common/TEProgramObject;

    invoke-virtual {v0}, Lcom/ss/android/ttve/common/TEProgramObject;->bind()V

    .line 140
    iget p0, p0, Lcom/ss/android/ttve/common/TETextureDrawer;->mDebugLog:I

    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    return-void
.end method

.method public setFlipScale(FF)V
    .registers 4

    .line 134
    iget-object v0, p0, Lcom/ss/android/ttve/common/TETextureDrawer;->mProgram:Lcom/ss/android/ttve/common/TEProgramObject;

    invoke-virtual {v0}, Lcom/ss/android/ttve/common/TEProgramObject;->bind()V

    .line 135
    iget p0, p0, Lcom/ss/android/ttve/common/TETextureDrawer;->mFlipScaleLoc:I

    const/high16 v0, 0x3f800000    # 1.0f

    div-float p1, v0, p1

    div-float/2addr v0, p2

    invoke-static {p0, p1, v0}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    return-void
.end method

.method public setRotation(F)V
    .registers 7

    float-to-double v0, p1

    .line 121
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float p1, v2

    .line 122
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    neg-float v1, v0

    const/4 v2, 0x4

    .line 124
    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p1, v2, v3

    const/4 v4, 0x1

    aput v0, v2, v4

    const/4 v0, 0x2

    aput v1, v2, v0

    const/4 v0, 0x3

    aput p1, v2, v0

    .line 129
    iget-object p1, p0, Lcom/ss/android/ttve/common/TETextureDrawer;->mProgram:Lcom/ss/android/ttve/common/TEProgramObject;

    invoke-virtual {p1}, Lcom/ss/android/ttve/common/TEProgramObject;->bind()V

    .line 130
    iget p0, p0, Lcom/ss/android/ttve/common/TETextureDrawer;->mRotLoc:I

    invoke-static {p0, v4, v3, v2, v3}, Landroid/opengl/GLES20;->glUniformMatrix2fv(IIZ[FI)V

    return-void
.end method
