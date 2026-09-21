.class public Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram$ProgramType;
    }
.end annotation


# static fields
.field public static final IDENTITY_MATRIX:[F

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final TEXTURE_COORDINATE:[F

.field private static final VERTEX_COORDINATE:[F

.field private static final VERTEX_DEFAULT_MATRIX:[F


# instance fields
.field private mMvpMatrix:I

.field private mPositionLocation:I

.field private mProgramHandle:I

.field private final mProgramType:Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram$ProgramType;

.field private final mTextureCoordinateBuffer:Ljava/nio/FloatBuffer;

.field private mTextureCoordinateLocation:I

.field private mTextureId:I

.field private mTextureMatrix:I

.field private mTextureSampler:I

.field private mTextureTarget:I

.field private final mVertexBuffer:Ljava/nio/FloatBuffer;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 24
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "RenderProgram"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/16 v0, 0x8

    .line 63
    new-array v1, v0, [F

    fill-array-data v1, :array_2c

    sput-object v1, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram;->VERTEX_COORDINATE:[F

    .line 70
    new-array v0, v0, [F

    fill-array-data v0, :array_40

    sput-object v0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram;->TEXTURE_COORDINATE:[F

    const/16 v0, 0x10

    .line 77
    new-array v1, v0, [F

    fill-array-data v1, :array_54

    sput-object v1, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram;->VERTEX_DEFAULT_MATRIX:[F

    .line 107
    new-array v0, v0, [F

    sput-object v0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram;->IDENTITY_MATRIX:[F

    const/4 v1, 0x0

    .line 108
    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void

    nop

    :array_2c
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

    :array_40
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

    :array_54
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

.method public constructor <init>(Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram$ProgramType;)V
    .registers 2

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram;->mProgramType:Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram$ProgramType;

    .line 113
    sget-object p1, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram;->VERTEX_COORDINATE:[F

    invoke-static {p1}, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/GLUtils;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 114
    sget-object p1, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram;->TEXTURE_COORDINATE:[F

    invoke-static {p1}, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/GLUtils;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram;->mTextureCoordinateBuffer:Ljava/nio/FloatBuffer;

    return-void
.end method


# virtual methods
.method public createOnGlThread()V
    .registers 4

    .line 118
    sget-object v0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lily [createOnGlThread], Thread:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram;->mProgramType:Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram$ProgramType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-string/jumbo v1, "uniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position =  uMVPMatrix * aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n"

    if-eqz v0, :cond_59

    const/4 v2, 0x1

    if-ne v0, v2, :cond_40

    const v0, 0x8d65

    .line 126
    iput v0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram;->mTextureTarget:I

    .line 127
    invoke-static {}, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/GLUtils;->createOESTexture()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram;->mTextureId:I

    .line 128
    const-string v0, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    invoke-static {v1, v0}, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/GLUtils;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram;->mProgramHandle:I

    goto :goto_6b

    .line 131
    :cond_40
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram;->mProgramType:Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram$ProgramType;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_59
    const/16 v0, 0xde1

    .line 121
    iput v0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram;->mTextureTarget:I

    .line 122
    invoke-static {}, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/GLUtils;->createTexture()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram;->mTextureId:I

    .line 123
    const-string v0, "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    invoke-static {v1, v0}, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/GLUtils;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram;->mProgramHandle:I

    .line 134
    :goto_6b
    iget v0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram;->mProgramHandle:I

    if-eqz v0, :cond_a7

    .line 139
    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram;->mPositionLocation:I

    .line 140
    iget v0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram;->mProgramHandle:I

    const-string v1, "aTextureCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram;->mTextureCoordinateLocation:I

    .line 141
    iget v0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram;->mProgramHandle:I

    const-string v1, "sTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram;->mTextureSampler:I

    .line 142
    iget v0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram;->mProgramHandle:I

    const-string/jumbo v1, "uTexMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram;->mTextureMatrix:I

    .line 143
    iget v0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram;->mProgramHandle:I

    const-string/jumbo v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram;->mMvpMatrix:I

    .line 144
    const-string p0, "create Program"

    invoke-static {p0}, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/GLUtils;->checkGlError(Ljava/lang/String;)V

    return-void

    .line 135
    :cond_a7
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Unable to create program"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public draw([FI)V
    .registers 20

    move-object/from16 v0, p0

    .line 175
    iget v1, v0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram;->mProgramHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 176
    const-string v1, "draw glUseProgram"

    invoke-static {v1}, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/GLUtils;->checkGlError(Ljava/lang/String;)V

    .line 177
    iget v1, v0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram;->mPositionLocation:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 178
    iget v1, v0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram;->mTextureCoordinateLocation:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v1, 0x0

    .line 179
    invoke-static {v1, v1, v1, v1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v1, 0x4100

    .line 180
    invoke-static {v1}, Landroid/opengl/GLES20;->glClear(I)V

    const v1, 0x84c0

    .line 181
    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 182
    iget v1, v0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram;->mTextureTarget:I

    move/from16 v2, p2

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 183
    iget v1, v0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram;->mTextureSampler:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 184
    iget v1, v0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram;->mTextureMatrix:I

    const/4 v3, 0x1

    move-object/from16 v4, p1

    invoke-static {v1, v3, v2, v4, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 185
    iget v1, v0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram;->mMvpMatrix:I

    sget-object v4, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram;->VERTEX_DEFAULT_MATRIX:[F

    invoke-static {v1, v3, v2, v4, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 186
    iget v5, v0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram;->mPositionLocation:I

    const/4 v9, 0x0

    iget-object v10, v0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v6, 0x2

    const/16 v7, 0x1406

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 188
    iget v11, v0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram;->mTextureCoordinateLocation:I

    const/4 v15, 0x0

    iget-object v0, v0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram;->mTextureCoordinateBuffer:Ljava/nio/FloatBuffer;

    const/4 v12, 0x2

    const/16 v13, 0x1406

    const/4 v14, 0x0

    move-object/from16 v16, v0

    invoke-static/range {v11 .. v16}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const/4 v0, 0x5

    const/4 v1, 0x4

    .line 190
    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 191
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    return-void
.end method

.method public releaseOnGLThread()V
    .registers 4

    .line 154
    sget-object v0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lily [releaseOnGLThread], Thread:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 156
    iget v0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram;->mTextureId:I

    filled-new-array {v0}, [I

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 157
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 158
    iget v0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram;->mProgramHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    const/4 v0, -0x1

    .line 159
    iput v0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram;->mProgramHandle:I

    .line 160
    iput v2, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram;->mTextureId:I

    return-void
.end method
