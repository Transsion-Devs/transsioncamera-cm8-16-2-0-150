.class public abstract Lcom/transsion/camera/feature/mode/longexposure/preview/YUVProgram;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final FLOAT_SIZE_BYTES:I = 0x4

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final TRIANGLE_VERTICES:[F

.field private static final TRIANGLE_VERTICES_DATA_POS_OFFSET:I = 0x0

.field private static final TRIANGLE_VERTICES_DATA_STRIDE_BYTES:I = 0x14

.field private static final TRIANGLE_VERTICES_DATA_UV_OFFSET:I = 0x3

.field static final VERTEX_SHADER:Ljava/lang/String; = "uniform mat4 uTexMatrix;\nattribute vec4 aPosition; \nattribute vec4 aTextureCoord; \nvarying vec2 vTextureCoord; \nvoid main() { \n    gl_Position = aPosition; \n    vTextureCoord = (uTexMatrix * aTextureCoord).xy; \n} \n"


# instance fields
.field mPositionHandle:I

.field mProgramHandle:I

.field mTextureHandle:I

.field mTextureHandleY:I

.field mTextureIds:[I

.field mTextureMatrix:I

.field private mTriangleVertices:Ljava/nio/FloatBuffer;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 24
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/longexposure/preview/YUVProgram;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/longexposure/preview/YUVProgram;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/16 v0, 0x14

    .line 36
    new-array v0, v0, [F

    fill-array-data v0, :array_18

    sput-object v0, Lcom/transsion/camera/feature/mode/longexposure/preview/YUVProgram;->TRIANGLE_VERTICES:[F

    return-void

    nop

    :array_18
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method constructor <init>()V
    .registers 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/preview/YUVProgram;->initProgram()V

    return-void
.end method

.method private initDraw(II[F)V
    .registers 11

    const/4 v0, 0x0

    .line 177
    invoke-static {v0, v0, p1, p2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 180
    iget p1, p0, Lcom/transsion/camera/feature/mode/longexposure/preview/YUVProgram;->mProgramHandle:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 181
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/preview/YUVProgram;->mTriangleVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 182
    iget v1, p0, Lcom/transsion/camera/feature/mode/longexposure/preview/YUVProgram;->mPositionHandle:I

    const/16 v5, 0x14

    iget-object v6, p0, Lcom/transsion/camera/feature/mode/longexposure/preview/YUVProgram;->mTriangleVertices:Ljava/nio/FloatBuffer;

    const/4 v2, 0x3

    const/16 v3, 0x1406

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 184
    iget p1, p0, Lcom/transsion/camera/feature/mode/longexposure/preview/YUVProgram;->mPositionHandle:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 185
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/preview/YUVProgram;->mTriangleVertices:Ljava/nio/FloatBuffer;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 186
    iget v1, p0, Lcom/transsion/camera/feature/mode/longexposure/preview/YUVProgram;->mTextureHandle:I

    iget-object v6, p0, Lcom/transsion/camera/feature/mode/longexposure/preview/YUVProgram;->mTriangleVertices:Ljava/nio/FloatBuffer;

    const/4 v2, 0x2

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 188
    iget p1, p0, Lcom/transsion/camera/feature/mode/longexposure/preview/YUVProgram;->mTextureHandle:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 189
    iget p0, p0, Lcom/transsion/camera/feature/mode/longexposure/preview/YUVProgram;->mTextureMatrix:I

    const/4 p1, 0x1

    invoke-static {p0, p1, v0, p3, v0}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    return-void
.end method

.method private initVertexData()V
    .registers 5

    .line 79
    sget-object v0, Lcom/transsion/camera/feature/mode/longexposure/preview/YUVProgram;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "initVertexData"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 81
    sget-object v0, Lcom/transsion/camera/feature/mode/longexposure/preview/YUVProgram;->TRIANGLE_VERTICES:[F

    array-length v2, v0

    mul-int/lit8 v2, v2, 0x4

    .line 82
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 83
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 84
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/preview/YUVProgram;->mTriangleVertices:Ljava/nio/FloatBuffer;

    .line 85
    invoke-virtual {v2, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 86
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/preview/YUVProgram;->mTriangleVertices:Ljava/nio/FloatBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 88
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/longexposure/preview/YUVProgram;->checkGlError(Ljava/lang/String;)V

    return-void
.end method

.method private loadShader(ILjava/lang/String;)I
    .registers 6

    .line 117
    sget-object p0, Lcom/transsion/camera/feature/mode/longexposure/preview/YUVProgram;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadShader   shaderType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", source = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 119
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    if-eqz v0, :cond_6d

    .line 121
    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 122
    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 p2, 0x1

    .line 124
    new-array p2, p2, [I

    const v1, 0x8b81

    const/4 v2, 0x0

    .line 125
    invoke-static {v0, v1, p2, v2}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 126
    aget p2, p2, v2

    if-nez p2, :cond_6d

    .line 127
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ES20_ERROR: Could not compile shader "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 128
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ES20_ERROR : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 129
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    move v0, v2

    .line 134
    :cond_6d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "loadShader   shader = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0
.end method


# virtual methods
.method final checkGlError(Ljava/lang/String;)V
    .registers 4

    .line 108
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result p0

    if-nez p0, :cond_7

    return-void

    .line 110
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": glError 0x"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 111
    sget-object p1, Lcom/transsion/camera/feature/mode/longexposure/preview/YUVProgram;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ES20_ERROR : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 112
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .registers 8

    const v0, 0x8b31

    .line 141
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/feature/mode/longexposure/preview/YUVProgram;->loadShader(ILjava/lang/String;)I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_b

    return v0

    :cond_b
    const v1, 0x8b30

    .line 147
    invoke-direct {p0, v1, p2}, Lcom/transsion/camera/feature/mode/longexposure/preview/YUVProgram;->loadShader(ILjava/lang/String;)I

    move-result p2

    if-nez p2, :cond_15

    return v0

    .line 152
    :cond_15
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v1

    if-eqz v1, :cond_57

    .line 154
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 155
    const-string v2, "glAttachShader"

    invoke-virtual {p0, v2}, Lcom/transsion/camera/feature/mode/longexposure/preview/YUVProgram;->checkGlError(Ljava/lang/String;)V

    .line 156
    invoke-static {v1, p2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 157
    invoke-virtual {p0, v2}, Lcom/transsion/camera/feature/mode/longexposure/preview/YUVProgram;->checkGlError(Ljava/lang/String;)V

    .line 159
    invoke-static {v1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const/4 v2, 0x1

    .line 160
    new-array v3, v2, [I

    const v4, 0x8b82

    .line 161
    invoke-static {v1, v4, v3, v0}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 162
    aget v3, v3, v0

    if-eq v3, v2, :cond_57

    .line 163
    sget-object v2, Lcom/transsion/camera/feature/mode/longexposure/preview/YUVProgram;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ES20_ERROR : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 164
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    goto :goto_58

    :cond_57
    move v0, v1

    .line 169
    :goto_58
    invoke-static {p1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 170
    invoke-static {p2}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 171
    const-string p1, "glDeleteShader"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/preview/YUVProgram;->checkGlError(Ljava/lang/String;)V

    .line 172
    sget-object p0, Lcom/transsion/camera/feature/mode/longexposure/preview/YUVProgram;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "createProgram   program = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0
.end method

.method final createTextures(I)V
    .registers 6

    .line 92
    sget-object v0, Lcom/transsion/camera/feature/mode/longexposure/preview/YUVProgram;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createTextures texturesNum: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 94
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/preview/YUVProgram;->mTextureIds:[I

    const/4 v1, 0x0

    .line 95
    invoke-static {p1, v0, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    :goto_1e
    if-ge v1, p1, :cond_46

    .line 97
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/preview/YUVProgram;->mTextureIds:[I

    aget v0, v0, v1

    const/16 v2, 0xde1

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v0, 0x2801

    const v3, 0x46180400    # 9729.0f

    .line 98
    invoke-static {v2, v0, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2800

    .line 99
    invoke-static {v2, v0, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2802

    const v3, 0x812f

    .line 100
    invoke-static {v2, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2803

    .line 101
    invoke-static {v2, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 104
    :cond_46
    const-string p1, "createTextures"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/preview/YUVProgram;->checkGlError(Ljava/lang/String;)V

    return-void
.end method

.method public draw(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;II[F)Z
    .registers 6

    if-eqz p1, :cond_a

    if-nez p2, :cond_5

    goto :goto_a

    .line 198
    :cond_5
    invoke-direct {p0, p3, p4, p5}, Lcom/transsion/camera/feature/mode/longexposure/preview/YUVProgram;->initDraw(II[F)V

    const/4 p0, 0x1

    return p0

    .line 195
    :cond_a
    :goto_a
    sget-object p0, Lcom/transsion/camera/feature/mode/longexposure/preview/YUVProgram;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "draw yBuffer or uvBuffer is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public draw(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;II[F)Z
    .registers 7

    if-eqz p1, :cond_c

    if-eqz p2, :cond_c

    if-nez p3, :cond_7

    goto :goto_c

    .line 208
    :cond_7
    invoke-direct {p0, p4, p5, p6}, Lcom/transsion/camera/feature/mode/longexposure/preview/YUVProgram;->initDraw(II[F)V

    const/4 p0, 0x1

    return p0

    .line 205
    :cond_c
    :goto_c
    sget-object p0, Lcom/transsion/camera/feature/mode/longexposure/preview/YUVProgram;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "draw yBuffer or uvBuffer or vBuffer is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method initProgram()V
    .registers 1

    .line 63
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/longexposure/preview/YUVProgram;->initVertexData()V

    return-void
.end method

.method public release()V
    .registers 3

    .line 67
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/preview/YUVProgram;->mTriangleVertices:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_a

    .line 68
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/preview/YUVProgram;->mTriangleVertices:Ljava/nio/FloatBuffer;

    .line 72
    :cond_a
    iget v0, p0, Lcom/transsion/camera/feature/mode/longexposure/preview/YUVProgram;->mProgramHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    const/4 v0, -0x1

    .line 73
    iput v0, p0, Lcom/transsion/camera/feature/mode/longexposure/preview/YUVProgram;->mProgramHandle:I

    .line 74
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/preview/YUVProgram;->mTextureIds:[I

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    const/16 p0, 0xcf5

    const/4 v0, 0x4

    .line 75
    invoke-static {p0, v0}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    return-void
.end method
