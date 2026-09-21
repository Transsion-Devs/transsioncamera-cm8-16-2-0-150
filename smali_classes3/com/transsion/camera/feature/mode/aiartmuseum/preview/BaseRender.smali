.class abstract Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BaseRender;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final FRAGMENT_SHADER:Ljava/lang/String; = "precision mediump float;\nvarying vec2 vTextureCoordinate;\nuniform sampler2D uTextureSampler;\nvoid main() {\n    gl_FragColor = texture2D(uTextureSampler, vTextureCoordinate);\n}\n"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final TEXTURE_COORDINATE:[F

.field private static final VERTEX_COORDINATE:[F

.field private static final VERTEX_SHADER:Ljava/lang/String; = "uniform mat4 uVertexMatrix;\nuniform mat4 uTextureMatrix;\nattribute vec4 aVertexCoordinate;\nattribute vec4 aTextureCoordinate;\nvarying vec2 vTextureCoordinate;\nvoid main() {\n    gl_Position = uVertexMatrix * aVertexCoordinate;\n    vTextureCoordinate = (uTextureMatrix * aTextureCoordinate).xy;\n}\n"

.field protected static final mIdentityMatrix:[F


# instance fields
.field private final mGLExecutor:Lcom/transsion/camera/feature/mode/aiartmuseum/preview/IGLExecutor;

.field private mProgramHandle:I

.field private final mTextureCoordinateBuffer:Ljava/nio/FloatBuffer;

.field private mTextureCoordinateLocation:I

.field protected mTextureId:[I

.field private mTextureMatrixLocation:I

.field private mTextureSamplerLocation:I

.field private mTextureTarget:I

.field private final mVertexCoordinateBuffer:Ljava/nio/FloatBuffer;

.field private mVertexCoordinateLocation:I

.field private mVertexMatrixLocation:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 28
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "BaseRender"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BaseRender;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/16 v0, 0x8

    .line 49
    new-array v1, v0, [F

    fill-array-data v1, :array_20

    sput-object v1, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BaseRender;->VERTEX_COORDINATE:[F

    .line 56
    new-array v0, v0, [F

    fill-array-data v0, :array_34

    sput-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BaseRender;->TEXTURE_COORDINATE:[F

    const/16 v0, 0x10

    .line 63
    new-array v0, v0, [F

    sput-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BaseRender;->mIdentityMatrix:[F

    return-void

    :array_20
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

    :array_34
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

.method public constructor <init>(Lcom/transsion/camera/feature/mode/aiartmuseum/preview/IGLExecutor;)V
    .registers 3

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BaseRender;->mGLExecutor:Lcom/transsion/camera/feature/mode/aiartmuseum/preview/IGLExecutor;

    .line 84
    sget-object p1, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BaseRender;->mIdentityMatrix:[F

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 85
    sget-object p1, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BaseRender;->VERTEX_COORDINATE:[F

    invoke-static {p1}, Lcom/transsion/camera/app/ui/opengl/GLUtils;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BaseRender;->mVertexCoordinateBuffer:Ljava/nio/FloatBuffer;

    .line 86
    sget-object p1, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BaseRender;->TEXTURE_COORDINATE:[F

    invoke-static {p1}, Lcom/transsion/camera/app/ui/opengl/GLUtils;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BaseRender;->mTextureCoordinateBuffer:Ljava/nio/FloatBuffer;

    return-void
.end method


# virtual methods
.method public draw(I[F)V
    .registers 4

    .line 125
    sget-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BaseRender;->mIdentityMatrix:[F

    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BaseRender;->draw(I[F[F)V

    return-void
.end method

.method public draw(I[F[F)V
    .registers 20

    move-object/from16 v0, p0

    .line 130
    iget v1, v0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BaseRender;->mProgramHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 131
    const-string v1, "draw glUseProgram"

    invoke-static {v1}, Lcom/transsion/camera/app/ui/opengl/GLUtils;->checkGlError(Ljava/lang/String;)V

    .line 132
    iget v1, v0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BaseRender;->mVertexCoordinateLocation:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 133
    iget v1, v0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BaseRender;->mTextureCoordinateLocation:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const v1, 0x84c0

    .line 134
    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 135
    iget v1, v0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BaseRender;->mTextureTarget:I

    move/from16 v2, p1

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const v1, 0x8d40

    const/4 v2, 0x0

    .line 136
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 137
    iget v1, v0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BaseRender;->mTextureSamplerLocation:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 138
    iget v1, v0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BaseRender;->mVertexMatrixLocation:I

    const/4 v3, 0x1

    move-object/from16 v4, p3

    invoke-static {v1, v3, v2, v4, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 139
    iget v1, v0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BaseRender;->mTextureMatrixLocation:I

    move-object/from16 v4, p2

    invoke-static {v1, v3, v2, v4, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 140
    iget v4, v0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BaseRender;->mVertexCoordinateLocation:I

    const/4 v8, 0x0

    iget-object v9, v0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BaseRender;->mVertexCoordinateBuffer:Ljava/nio/FloatBuffer;

    const/4 v5, 0x2

    const/16 v6, 0x1406

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 142
    iget v10, v0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BaseRender;->mTextureCoordinateLocation:I

    const/4 v14, 0x0

    iget-object v15, v0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BaseRender;->mTextureCoordinateBuffer:Ljava/nio/FloatBuffer;

    const/4 v11, 0x2

    const/16 v12, 0x1406

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const/4 v0, 0x5

    const/4 v1, 0x4

    .line 144
    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    return-void
.end method

.method public drawOffScreen(I[FI)V
    .registers 21

    move-object/from16 v0, p0

    .line 149
    iget v1, v0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BaseRender;->mProgramHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 150
    const-string v1, "draw glUseProgram"

    invoke-static {v1}, Lcom/transsion/camera/app/ui/opengl/GLUtils;->checkGlError(Ljava/lang/String;)V

    .line 151
    iget v1, v0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BaseRender;->mVertexCoordinateLocation:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 152
    iget v1, v0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BaseRender;->mTextureCoordinateLocation:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const v1, 0x84c0

    .line 153
    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 154
    iget v1, v0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BaseRender;->mTextureTarget:I

    move/from16 v2, p1

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const v1, 0x8d40

    move/from16 v2, p3

    .line 155
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 156
    iget v1, v0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BaseRender;->mTextureSamplerLocation:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 157
    iget v1, v0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BaseRender;->mVertexMatrixLocation:I

    sget-object v3, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BaseRender;->mIdentityMatrix:[F

    const/4 v4, 0x1

    invoke-static {v1, v4, v2, v3, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 158
    iget v1, v0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BaseRender;->mTextureMatrixLocation:I

    move-object/from16 v3, p2

    invoke-static {v1, v4, v2, v3, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 159
    iget v5, v0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BaseRender;->mVertexCoordinateLocation:I

    const/4 v9, 0x0

    iget-object v10, v0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BaseRender;->mVertexCoordinateBuffer:Ljava/nio/FloatBuffer;

    const/4 v6, 0x2

    const/16 v7, 0x1406

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 161
    iget v11, v0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BaseRender;->mTextureCoordinateLocation:I

    const/4 v15, 0x0

    iget-object v0, v0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BaseRender;->mTextureCoordinateBuffer:Ljava/nio/FloatBuffer;

    const/4 v12, 0x2

    const/16 v13, 0x1406

    const/4 v14, 0x0

    move-object/from16 v16, v0

    invoke-static/range {v11 .. v16}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const/4 v0, 0x5

    const/4 v1, 0x4

    .line 163
    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    return-void
.end method

.method protected executeInGLThread(Ljava/lang/Runnable;)V
    .registers 2

    .line 90
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BaseRender;->mGLExecutor:Lcom/transsion/camera/feature/mode/aiartmuseum/preview/IGLExecutor;

    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/IGLExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public init(Ljava/lang/String;)V
    .registers 4

    .line 96
    sget-object p1, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BaseRender;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init Thread: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/16 p1, 0xde1

    .line 98
    iput p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BaseRender;->mTextureTarget:I

    .line 99
    invoke-static {}, Lcom/transsion/camera/app/ui/opengl/GLUtils;->createTexture()I

    move-result p1

    filled-new-array {p1}, [I

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BaseRender;->mTextureId:[I

    .line 101
    const-string/jumbo p1, "uniform mat4 uVertexMatrix;\nuniform mat4 uTextureMatrix;\nattribute vec4 aVertexCoordinate;\nattribute vec4 aTextureCoordinate;\nvarying vec2 vTextureCoordinate;\nvoid main() {\n    gl_Position = uVertexMatrix * aVertexCoordinate;\n    vTextureCoordinate = (uTextureMatrix * aTextureCoordinate).xy;\n}\n"

    const-string v0, "precision mediump float;\nvarying vec2 vTextureCoordinate;\nuniform sampler2D uTextureSampler;\nvoid main() {\n    gl_FragColor = texture2D(uTextureSampler, vTextureCoordinate);\n}\n"

    invoke-static {p1, v0}, Lcom/transsion/camera/app/ui/opengl/GLUtils;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BaseRender;->mProgramHandle:I

    .line 103
    const-string/jumbo v0, "uVertexMatrix"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BaseRender;->mVertexMatrixLocation:I

    .line 104
    iget p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BaseRender;->mProgramHandle:I

    const-string/jumbo v0, "uTextureMatrix"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BaseRender;->mTextureMatrixLocation:I

    .line 105
    iget p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BaseRender;->mProgramHandle:I

    const-string v0, "aVertexCoordinate"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BaseRender;->mVertexCoordinateLocation:I

    .line 106
    iget p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BaseRender;->mProgramHandle:I

    const-string v0, "aTextureCoordinate"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BaseRender;->mTextureCoordinateLocation:I

    .line 107
    iget p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BaseRender;->mProgramHandle:I

    const-string/jumbo v0, "uTextureSampler"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BaseRender;->mTextureSamplerLocation:I

    .line 109
    const-string p0, "init"

    invoke-static {p0}, Lcom/transsion/camera/app/ui/opengl/GLUtils;->checkGlError(Ljava/lang/String;)V

    return-void
.end method

.method public unInit()V
    .registers 4

    .line 115
    sget-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BaseRender;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unInit, Thread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BaseRender;->mTextureId:[I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 118
    iget v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BaseRender;->mProgramHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    const/4 v0, 0x0

    .line 119
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BaseRender;->mTextureId:[I

    const/4 v0, -0x1

    .line 120
    iput v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BaseRender;->mProgramHandle:I

    return-void
.end method
