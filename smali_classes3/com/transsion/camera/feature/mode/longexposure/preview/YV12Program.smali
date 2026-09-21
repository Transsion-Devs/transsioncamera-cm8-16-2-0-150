.class public Lcom/transsion/camera/feature/mode/longexposure/preview/YV12Program;
.super Lcom/transsion/camera/feature/mode/longexposure/preview/YUVProgram;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final YUV_TEXTURE_NUM:I = 0x3

.field private static final YV12_FRAGMENT_SHADER:Ljava/lang/String; = "precision mediump float; \nuniform sampler2D uTextureY; \nuniform sampler2D uTextureU; \nuniform sampler2D uTextureV; \nvarying vec2 vTextureCoord; \nvoid main() { \n    mediump vec3 yuv; \n    vec3 rgb; \n    float x  = vTextureCoord.x; \n    float y  = vTextureCoord.y; \n    vec2 tmp  = vec2(x, y); \n    yuv.x = texture2D(uTextureY, tmp).r; \n    yuv.y = texture2D(uTextureU, tmp).r - 0.5; \n    yuv.z = texture2D(uTextureV, tmp).r - 0.5; \n    rgb = mat3(1, 1, 1, 0, -0.344, 1.772, 1.402, -0.714, 0) * yuv; \n    gl_FragColor = vec4(rgb, 1); \n} \n"


# instance fields
.field private mTextureHandleU:I

.field private mTextureHandleV:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 22
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/longexposure/preview/YV12Program;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/longexposure/preview/YV12Program;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/longexposure/preview/YUVProgram;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;II[F)Z
    .registers 19

    .line 76
    invoke-super/range {p0 .. p6}, Lcom/transsion/camera/feature/mode/longexposure/preview/YUVProgram;->draw(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;II[F)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    const v0, 0x84c0

    .line 82
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 83
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/preview/YUVProgram;->mTextureIds:[I

    aget v0, v0, v1

    const/16 v2, 0xde1

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v9, 0x1909

    const/16 v10, 0x1401

    const/16 v3, 0xde1

    const/4 v4, 0x0

    const/16 v5, 0x1909

    const/4 v8, 0x0

    move-object v11, p1

    move/from16 v7, p4

    move/from16 v6, p5

    .line 84
    invoke-static/range {v3 .. v11}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 87
    iget p1, p0, Lcom/transsion/camera/feature/mode/longexposure/preview/YUVProgram;->mTextureHandleY:I

    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const p1, 0x84c1

    .line 90
    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 91
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/preview/YUVProgram;->mTextureIds:[I

    const/4 v0, 0x1

    aget p1, p1, v0

    invoke-static {v2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/4 p1, 0x2

    .line 92
    div-int/lit8 v6, p5, 0x2

    div-int/lit8 v7, p4, 0x2

    move-object v11, p2

    invoke-static/range {v3 .. v11}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 95
    iget v3, p0, Lcom/transsion/camera/feature/mode/longexposure/preview/YV12Program;->mTextureHandleU:I

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const v3, 0x84c2

    .line 98
    invoke-static {v3}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 99
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/longexposure/preview/YUVProgram;->mTextureIds:[I

    aget v3, v3, p1

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v3, 0xde1

    move-object v11, p3

    .line 100
    invoke-static/range {v3 .. v11}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 103
    iget v3, p0, Lcom/transsion/camera/feature/mode/longexposure/preview/YV12Program;->mTextureHandleV:I

    invoke-static {v3, p1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const/4 p1, 0x5

    const/4 v3, 0x4

    .line 105
    invoke-static {p1, v1, v3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 106
    iget p1, p0, Lcom/transsion/camera/feature/mode/longexposure/preview/YUVProgram;->mPositionHandle:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 107
    iget p0, p0, Lcom/transsion/camera/feature/mode/longexposure/preview/YUVProgram;->mTextureHandle:I

    invoke-static {p0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 108
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    return v0
.end method

.method initProgram()V
    .registers 3

    .line 55
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/longexposure/preview/YUVProgram;->initProgram()V

    const/4 v0, 0x3

    .line 57
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/longexposure/preview/YUVProgram;->createTextures(I)V

    .line 59
    const-string/jumbo v0, "uniform mat4 uTexMatrix;\nattribute vec4 aPosition; \nattribute vec4 aTextureCoord; \nvarying vec2 vTextureCoord; \nvoid main() { \n    gl_Position = aPosition; \n    vTextureCoord = (uTexMatrix * aTextureCoord).xy; \n} \n"

    const-string v1, "precision mediump float; \nuniform sampler2D uTextureY; \nuniform sampler2D uTextureU; \nuniform sampler2D uTextureV; \nvarying vec2 vTextureCoord; \nvoid main() { \n    mediump vec3 yuv; \n    vec3 rgb; \n    float x  = vTextureCoord.x; \n    float y  = vTextureCoord.y; \n    vec2 tmp  = vec2(x, y); \n    yuv.x = texture2D(uTextureY, tmp).r; \n    yuv.y = texture2D(uTextureU, tmp).r - 0.5; \n    yuv.z = texture2D(uTextureV, tmp).r - 0.5; \n    rgb = mat3(1, 1, 1, 0, -0.344, 1.772, 1.402, -0.714, 0) * yuv; \n    gl_FragColor = vec4(rgb, 1); \n} \n"

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/feature/mode/longexposure/preview/YUVProgram;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/longexposure/preview/YUVProgram;->mProgramHandle:I

    .line 60
    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/longexposure/preview/YUVProgram;->mPositionHandle:I

    .line 61
    iget v0, p0, Lcom/transsion/camera/feature/mode/longexposure/preview/YUVProgram;->mProgramHandle:I

    const-string v1, "aTextureCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/longexposure/preview/YUVProgram;->mTextureHandle:I

    const/16 v0, 0xcf5

    const/4 v1, 0x1

    .line 64
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    .line 65
    iget v0, p0, Lcom/transsion/camera/feature/mode/longexposure/preview/YUVProgram;->mProgramHandle:I

    const-string/jumbo v1, "uTextureY"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/longexposure/preview/YUVProgram;->mTextureHandleY:I

    .line 66
    iget v0, p0, Lcom/transsion/camera/feature/mode/longexposure/preview/YUVProgram;->mProgramHandle:I

    const-string/jumbo v1, "uTextureU"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/longexposure/preview/YV12Program;->mTextureHandleU:I

    .line 67
    iget v0, p0, Lcom/transsion/camera/feature/mode/longexposure/preview/YUVProgram;->mProgramHandle:I

    const-string/jumbo v1, "uTextureV"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/longexposure/preview/YV12Program;->mTextureHandleV:I

    .line 68
    iget v0, p0, Lcom/transsion/camera/feature/mode/longexposure/preview/YUVProgram;->mProgramHandle:I

    const-string/jumbo v1, "uTexMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/longexposure/preview/YUVProgram;->mTextureMatrix:I

    .line 70
    const-string v0, "initProgram"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/longexposure/preview/YUVProgram;->checkGlError(Ljava/lang/String;)V

    return-void
.end method
