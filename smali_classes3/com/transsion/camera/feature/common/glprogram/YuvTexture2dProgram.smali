.class public Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final TRIANGLE_VERTICES:[F

.field public static final VERTEX_SHADER:Ljava/lang/String; = "attribute vec4 aPosition; \nattribute vec4 aTextureCoord; \nvarying vec2 vTextureCoord; \nvoid main(){ \n gl_Position = aPosition; \n vTextureCoord = aTextureCoord.xy; \n} \n"

.field public static final YUV420SP_FRAGMENT_SHADER:Ljava/lang/String; = "precision mediump float; \nuniform sampler2D uTextureY; \nuniform sampler2D uTextureUV; \nuniform int uNV21; \nvarying vec2 vTextureCoord; \nvoid main(){ \n bool flag = false; \n if (flag) \n { \n \tvec4 Y = vec4((texture2D(uTextureY, vTextureCoord).r - 16./255.) * 1.164);\n  vec4 U;\n  vec4 V;\n  if(uNV21 == 1)\n  {\n    U = vec4(texture2D(uTextureUV, vTextureCoord).a - 128./255.);\n    V = vec4(texture2D(uTextureUV, vTextureCoord).r - 128./255.);\n  }else{\n    U = vec4(texture2D(uTextureUV, vTextureCoord).r - 128./255.);\n    V = vec4(texture2D(uTextureUV, vTextureCoord).a - 128./255.);\n  }\n  Y += V * vec4(1.596, -0.813, 0, 0);\n  Y += U * vec4(0, -0.392, 2.017, 0);\n  Y.a = 1.0;\n  gl_FragColor = Y;\n }else{ \n  mediump vec3 yuv;\n yuv.x = texture2D(uTextureY, vTextureCoord).r;\n if(uNV21 == 1)\n {\n  yuv.y = texture2D(uTextureUV, vTextureCoord).a - 0.5;\n  yuv.z = texture2D(uTextureUV, vTextureCoord).r - 0.5;\n }else{\n  yuv.y = texture2D(uTextureUV, vTextureCoord).r - 0.5;\n  yuv.z = texture2D(uTextureUV, vTextureCoord).a - 0.5;\n }\n lowp vec3 rgb;\n rgb = mat3(1, 1, 1, 0, -0.39465, 2.03211, 1.13983, -0.58060, 0) * yuv;\n gl_FragColor = vec4(rgb, 1);\n }\n} \n"


# instance fields
.field private final FLOAT_SIZE_BYTES:I

.field private final TRIANGLE_VERTICES_DATA_POS_OFFSET:I

.field private final TRIANGLE_VERTICES_DATA_STRIDE_BYTES:I

.field private final TRIANGLE_VERTICES_DATA_UV_OFFSET:I

.field private final YUV_TEXTURE_NUM:I

.field private mMvpMatrix:I

.field private mNV21Handle:I

.field private mPositionHandle:I

.field private mProgramHandle:I

.field private mTextureCoordBuffer:Ljava/nio/FloatBuffer;

.field private mTextureHandle:I

.field private mTextureHandleUV:I

.field private mTextureHandleY:I

.field private mTextureIds:[I

.field private mTextureTarget:I

.field private mTransformMatrix:[F

.field private mTriangleVertices:Ljava/nio/FloatBuffer;

.field private mVertexBuffer:Ljava/nio/FloatBuffer;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 21
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "YuvTexture2dProgram"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/16 v0, 0x14

    .line 79
    new-array v0, v0, [F

    fill-array-data v0, :array_14

    sput-object v0, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->TRIANGLE_VERTICES:[F

    return-void

    nop

    :array_14
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
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
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 74
    iput v0, p0, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->YUV_TEXTURE_NUM:I

    const/4 v0, 0x0

    .line 75
    iput v0, p0, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->TRIANGLE_VERTICES_DATA_POS_OFFSET:I

    const/4 v0, 0x3

    .line 76
    iput v0, p0, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->TRIANGLE_VERTICES_DATA_UV_OFFSET:I

    const/4 v0, 0x4

    .line 77
    iput v0, p0, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->FLOAT_SIZE_BYTES:I

    const/16 v0, 0x14

    .line 78
    iput v0, p0, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->TRIANGLE_VERTICES_DATA_STRIDE_BYTES:I

    .line 249
    invoke-direct {p0}, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->initVertexData()V

    .line 250
    invoke-direct {p0}, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->createTextures()V

    .line 251
    const-string v0, "attribute vec4 aPosition; \nattribute vec4 aTextureCoord; \nvarying vec2 vTextureCoord; \nvoid main(){ \n gl_Position = aPosition; \n vTextureCoord = aTextureCoord.xy; \n} \n"

    const-string v1, "precision mediump float; \nuniform sampler2D uTextureY; \nuniform sampler2D uTextureUV; \nuniform int uNV21; \nvarying vec2 vTextureCoord; \nvoid main(){ \n bool flag = false; \n if (flag) \n { \n \tvec4 Y = vec4((texture2D(uTextureY, vTextureCoord).r - 16./255.) * 1.164);\n  vec4 U;\n  vec4 V;\n  if(uNV21 == 1)\n  {\n    U = vec4(texture2D(uTextureUV, vTextureCoord).a - 128./255.);\n    V = vec4(texture2D(uTextureUV, vTextureCoord).r - 128./255.);\n  }else{\n    U = vec4(texture2D(uTextureUV, vTextureCoord).r - 128./255.);\n    V = vec4(texture2D(uTextureUV, vTextureCoord).a - 128./255.);\n  }\n  Y += V * vec4(1.596, -0.813, 0, 0);\n  Y += U * vec4(0, -0.392, 2.017, 0);\n  Y.a = 1.0;\n  gl_FragColor = Y;\n }else{ \n  mediump vec3 yuv;\n yuv.x = texture2D(uTextureY, vTextureCoord).r;\n if(uNV21 == 1)\n {\n  yuv.y = texture2D(uTextureUV, vTextureCoord).a - 0.5;\n  yuv.z = texture2D(uTextureUV, vTextureCoord).r - 0.5;\n }else{\n  yuv.y = texture2D(uTextureUV, vTextureCoord).r - 0.5;\n  yuv.z = texture2D(uTextureUV, vTextureCoord).a - 0.5;\n }\n lowp vec3 rgb;\n rgb = mat3(1, 1, 1, 0, -0.39465, 2.03211, 1.13983, -0.58060, 0) * yuv;\n gl_FragColor = vec4(rgb, 1);\n }\n} \n"

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->mProgramHandle:I

    .line 252
    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->mPositionHandle:I

    .line 253
    iget v0, p0, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->mProgramHandle:I

    const-string v1, "aTextureCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->mTextureHandle:I

    .line 254
    iget v0, p0, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->mProgramHandle:I

    const-string/jumbo v1, "uTextureY"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->mTextureHandleY:I

    .line 255
    iget v0, p0, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->mProgramHandle:I

    const-string/jumbo v1, "uTextureUV"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->mTextureHandleUV:I

    .line 256
    iget v0, p0, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->mProgramHandle:I

    const-string/jumbo v1, "uNV21"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->mNV21Handle:I

    .line 257
    const-string p0, "initShader"

    invoke-static {p0}, Lcom/transsion/camera/feature/common/utils/GlUtil;->checkGlError(Ljava/lang/String;)V

    return-void
.end method

.method private checkGlError(Ljava/lang/String;)V
    .registers 5

    .line 153
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result p0

    if-nez p0, :cond_7

    return-void

    .line 154
    :cond_7
    sget-object v0, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ES20_ERROR : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": glError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 155
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .registers 9

    .line 195
    sget-object v0, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "createProgram"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const v1, 0x8b31

    .line 197
    invoke-direct {p0, v1, p1}, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->loadShader(ILjava/lang/String;)I

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_12

    return v1

    :cond_12
    const v2, 0x8b30

    .line 203
    invoke-direct {p0, v2, p2}, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->loadShader(ILjava/lang/String;)I

    move-result p2

    if-nez p2, :cond_1c

    return v1

    .line 209
    :cond_1c
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    if-eqz v2, :cond_5c

    .line 211
    invoke-static {v2, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 212
    const-string v3, "glAttachShader"

    invoke-direct {p0, v3}, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->checkGlError(Ljava/lang/String;)V

    .line 213
    invoke-static {v2, p2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 214
    invoke-direct {p0, v3}, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->checkGlError(Ljava/lang/String;)V

    .line 216
    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const/4 v3, 0x1

    .line 218
    new-array v4, v3, [I

    const v5, 0x8b82

    .line 220
    invoke-static {v2, v5, v4, v1}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 222
    aget v4, v4, v1

    if-eq v4, v3, :cond_5c

    .line 223
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ES20_ERROR : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 224
    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    goto :goto_5d

    :cond_5c
    move v1, v2

    .line 229
    :goto_5d
    invoke-static {p1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 230
    invoke-static {p2}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 231
    const-string p1, "glDeleteShader"

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->checkGlError(Ljava/lang/String;)V

    .line 233
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "createProgram   program = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1
.end method

.method private createTextures()V
    .registers 7

    .line 138
    sget-object v0, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "createTextures"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 139
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->mTextureIds:[I

    const/4 v3, 0x0

    .line 140
    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    :goto_10
    if-ge v3, v0, :cond_38

    .line 142
    iget-object v2, p0, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->mTextureIds:[I

    aget v2, v2, v3

    const/16 v4, 0xde1

    invoke-static {v4, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v2, 0x2801

    const v5, 0x46180400    # 9729.0f

    .line 143
    invoke-static {v4, v2, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v2, 0x2800

    .line 144
    invoke-static {v4, v2, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v2, 0x2802

    const v5, 0x812f

    .line 145
    invoke-static {v4, v2, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v2, 0x2803

    .line 146
    invoke-static {v4, v2, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 148
    :cond_38
    invoke-static {v1}, Lcom/transsion/camera/feature/common/utils/GlUtil;->checkGlError(Ljava/lang/String;)V

    return-void
.end method

.method private initVertexData()V
    .registers 5

    .line 160
    sget-object v0, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "initVertexData"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 161
    sget-object v0, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->TRIANGLE_VERTICES:[F

    array-length v2, v0

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 162
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 163
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->mTriangleVertices:Ljava/nio/FloatBuffer;

    .line 164
    invoke-virtual {v2, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 165
    iget-object p0, p0, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->mTriangleVertices:Ljava/nio/FloatBuffer;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 166
    invoke-static {v1}, Lcom/transsion/camera/feature/common/utils/GlUtil;->checkGlError(Ljava/lang/String;)V

    return-void
.end method

.method private loadFromAssetsFile(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;
    .registers 10

    .line 102
    sget-object p0, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadFromAssetsFile   fname = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 111
    :try_start_17
    invoke-virtual {p2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1f} :catch_b0
    .catchall {:try_start_17 .. :try_end_1f} :catchall_a7

    .line 112
    :try_start_1f
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_24} :catch_a3
    .catchall {:try_start_1f .. :try_end_24} :catchall_9b

    .line 113
    :try_start_24
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_29} :catch_97
    .catchall {:try_start_24 .. :try_end_29} :catchall_90

    .line 114
    :try_start_29
    new-instance v1, Ljava/io/OutputStreamWriter;

    const-string v2, "UTF-8"

    invoke-direct {v1, p2, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_30} :catch_8c
    .catchall {:try_start_29 .. :try_end_30} :catchall_85

    .line 115
    :try_start_30
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_35} :catch_81
    .catchall {:try_start_30 .. :try_end_35} :catchall_7b

    .line 116
    :try_start_35
    new-instance v3, Ljava/io/BufferedWriter;

    invoke-direct {v3, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_3a} :catch_75
    .catchall {:try_start_35 .. :try_end_3a} :catchall_6f

    .line 118
    :goto_3a
    :try_start_3a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4d

    .line 119
    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_3a

    :catchall_44
    move-exception p0

    goto/16 :goto_ce

    :catch_47
    move-exception v4

    move-object v6, v2

    move-object v2, p0

    move-object p0, v6

    goto/16 :goto_b4

    .line 121
    :cond_4d
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V

    .line 122
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object p0

    .line 123
    const-string v4, "\\r\\n"

    const-string v5, "\n"

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_5c} :catch_47
    .catchall {:try_start_3a .. :try_end_5c} :catchall_44

    .line 127
    invoke-static {v2}, Lcom/transsion/camera/feature/common/utils/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 128
    invoke-static {v3}, Lcom/transsion/camera/feature/common/utils/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 129
    invoke-static {v0}, Lcom/transsion/camera/feature/common/utils/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 130
    invoke-static {v1}, Lcom/transsion/camera/feature/common/utils/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 131
    invoke-static {p1}, Lcom/transsion/camera/feature/common/utils/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 132
    invoke-static {p2}, Lcom/transsion/camera/feature/common/utils/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    return-object p0

    :catchall_6f
    move-exception v3

    move-object v6, v3

    move-object v3, p0

    :goto_72
    move-object p0, v6

    goto/16 :goto_ce

    :catch_75
    move-exception v4

    move-object v3, p0

    move-object p0, v2

    move-object v2, v3

    goto/16 :goto_b4

    :catchall_7b
    move-exception v2

    move-object v3, p0

    move-object p0, v2

    move-object v2, v3

    goto/16 :goto_ce

    :catch_81
    move-exception v4

    move-object v2, p0

    :goto_83
    move-object v3, v2

    goto :goto_b4

    :catchall_85
    move-exception v1

    move-object v2, p0

    move-object v3, v2

    move-object p0, v1

    move-object v1, v3

    goto/16 :goto_ce

    :catch_8c
    move-exception v4

    move-object v1, p0

    :goto_8e
    move-object v2, v1

    goto :goto_83

    :catchall_90
    move-exception v0

    move-object v1, p0

    move-object v2, v1

    move-object v3, v2

    move-object p0, v0

    move-object v0, v3

    goto :goto_ce

    :catch_97
    move-exception v4

    move-object v0, p0

    :goto_99
    move-object v1, v0

    goto :goto_8e

    :catchall_9b
    move-exception p2

    move-object v0, p0

    move-object v1, v0

    move-object v2, v1

    move-object v3, v2

    move-object p0, p2

    move-object p2, v3

    goto :goto_ce

    :catch_a3
    move-exception v4

    move-object p2, p0

    :goto_a5
    move-object v0, p2

    goto :goto_99

    :catchall_a7
    move-exception p1

    move-object p2, p0

    move-object v0, p2

    move-object v1, v0

    move-object v2, v1

    move-object v3, v2

    move-object p0, p1

    move-object p1, v3

    goto :goto_ce

    :catch_b0
    move-exception v4

    move-object p1, p0

    move-object p2, p1

    goto :goto_a5

    .line 125
    :goto_b4
    :try_start_b4
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_b7
    .catchall {:try_start_b4 .. :try_end_b7} :catchall_ca

    .line 127
    invoke-static {p0}, Lcom/transsion/camera/feature/common/utils/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 128
    invoke-static {v3}, Lcom/transsion/camera/feature/common/utils/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 129
    invoke-static {v0}, Lcom/transsion/camera/feature/common/utils/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 130
    invoke-static {v1}, Lcom/transsion/camera/feature/common/utils/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 131
    invoke-static {p1}, Lcom/transsion/camera/feature/common/utils/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 132
    invoke-static {p2}, Lcom/transsion/camera/feature/common/utils/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    return-object v2

    :catchall_ca
    move-exception v2

    move-object v6, v2

    move-object v2, p0

    goto :goto_72

    .line 127
    :goto_ce
    invoke-static {v2}, Lcom/transsion/camera/feature/common/utils/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 128
    invoke-static {v3}, Lcom/transsion/camera/feature/common/utils/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 129
    invoke-static {v0}, Lcom/transsion/camera/feature/common/utils/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 130
    invoke-static {v1}, Lcom/transsion/camera/feature/common/utils/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 131
    invoke-static {p1}, Lcom/transsion/camera/feature/common/utils/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 132
    invoke-static {p2}, Lcom/transsion/camera/feature/common/utils/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 133
    throw p0
.end method

.method private loadShader(ILjava/lang/String;)I
    .registers 6

    .line 170
    sget-object p0, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

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

    .line 172
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    if-eqz v0, :cond_6d

    .line 174
    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 176
    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 p2, 0x1

    .line 178
    new-array p2, p2, [I

    const v1, 0x8b81

    const/4 v2, 0x0

    .line 180
    invoke-static {v0, v1, p2, v2}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 181
    aget p2, p2, v2

    if-nez p2, :cond_6d

    .line 183
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

    .line 184
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

    .line 185
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    move v0, v2

    .line 190
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
.method public draw(IIIILjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .registers 30

    move-object/from16 v0, p0

    move/from16 v4, p3

    move/from16 v5, p4

    if-eqz p5, :cond_b0

    if-nez p6, :cond_c

    goto/16 :goto_b0

    :cond_c
    move/from16 v1, p1

    move/from16 v2, p2

    .line 264
    invoke-static {v1, v2, v5, v4}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 266
    iget v1, v0, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->mProgramHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 267
    iget-object v1, v0, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->mTriangleVertices:Ljava/nio/FloatBuffer;

    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 268
    iget v11, v0, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->mPositionHandle:I

    const/16 v15, 0x14

    iget-object v1, v0, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->mTriangleVertices:Ljava/nio/FloatBuffer;

    const/4 v12, 0x3

    const/16 v13, 0x1406

    const/4 v14, 0x0

    move-object/from16 v16, v1

    invoke-static/range {v11 .. v16}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 269
    iget v1, v0, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->mPositionHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 270
    iget-object v1, v0, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->mTriangleVertices:Ljava/nio/FloatBuffer;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 271
    iget v11, v0, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->mTextureHandle:I

    iget-object v1, v0, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->mTriangleVertices:Ljava/nio/FloatBuffer;

    const/4 v12, 0x2

    move-object/from16 v16, v1

    invoke-static/range {v11 .. v16}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 272
    iget v1, v0, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->mTextureHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/16 v11, 0xcf5

    const/4 v12, 0x1

    .line 273
    invoke-static {v11, v12}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    const v1, 0x84c0

    .line 277
    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 278
    iget-object v1, v0, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->mTextureIds:[I

    aget v1, v1, v10

    const/16 v13, 0xde1

    invoke-static {v13, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v7, 0x1909

    const/16 v8, 0x1401

    const/16 v1, 0xde1

    const/4 v2, 0x0

    const/16 v3, 0x1909

    const/4 v6, 0x0

    move-object/from16 v9, p5

    .line 279
    invoke-static/range {v1 .. v9}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 280
    iget v1, v0, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->mTextureHandleY:I

    invoke-static {v1, v10}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const v1, 0x84c1

    .line 283
    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 284
    iget-object v1, v0, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->mTextureIds:[I

    aget v1, v1, v12

    invoke-static {v13, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 285
    div-int/lit8 v17, p3, 0x2

    div-int/lit8 v18, p4, 0x2

    const/16 v20, 0x190a

    const/16 v21, 0x1401

    const/16 v14, 0xde1

    const/4 v15, 0x0

    const/16 v16, 0x190a

    const/16 v19, 0x0

    move-object/from16 v22, p6

    invoke-static/range {v14 .. v22}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 286
    iget v1, v0, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->mTextureHandleUV:I

    invoke-static {v1, v12}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 287
    iget v1, v0, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->mNV21Handle:I

    invoke-static {v1, v12}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const/4 v1, 0x5

    const/4 v2, 0x4

    .line 289
    invoke-static {v1, v10, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 290
    iget v1, v0, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->mPositionHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 291
    iget v0, v0, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->mTextureHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 292
    invoke-static {v11, v2}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    .line 293
    invoke-static {v13, v10}, Landroid/opengl/GLES20;->glBindTexture(II)V

    :cond_b0
    :goto_b0
    return-void
.end method

.method public release()V
    .registers 3

    .line 238
    iget-object v0, p0, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->mTriangleVertices:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_a

    .line 239
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    const/4 v0, 0x0

    .line 240
    iput-object v0, p0, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->mTriangleVertices:Ljava/nio/FloatBuffer;

    .line 243
    :cond_a
    iget v0, p0, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->mProgramHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    const/4 v0, -0x1

    .line 244
    iput v0, p0, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->mProgramHandle:I

    .line 245
    iget-object p0, p0, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->mTextureIds:[I

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {v1, p0, v0}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    return-void
.end method
