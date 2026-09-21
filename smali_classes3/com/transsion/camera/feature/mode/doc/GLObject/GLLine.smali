.class public Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final COORDS_PER_VERTEX:I = 0x2

.field private static final TAG:Ljava/lang/String; = "GLLine"

.field public static lineColor:[F


# instance fields
.field private colorBuffer:Ljava/nio/FloatBuffer;

.field private final fragmentShaderCode:Ljava/lang/String;

.field private mColorHandle:I

.field private mPositionHandle:I

.field private final mProgram:I

.field mShadow1:[F

.field mShadow2:[F

.field mShadow3:[F

.field mShadow4:[F

.field mShadow5:[F

.field mShadow6:[F

.field mShadow7:[F

.field mShadow8:[F

.field private order:[S

.field private orderBuffer:Ljava/nio/ShortBuffer;

.field private size:I

.field private vertexBuffer:Ljava/nio/FloatBuffer;

.field private final vertexCount:I

.field private final vertexShaderCode:Ljava/lang/String;

.field private final vertexStride:I


# direct methods
.method public constructor <init>()V
    .registers 12

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, "attribute vec4 vPosition;varying  vec4 vColor;attribute vec4 aColor;void main() {  gl_Position = vPosition;  vColor=aColor;}"

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->vertexShaderCode:Ljava/lang/String;

    .line 41
    const-string v1, "precision mediump float;varying vec4 vColor;void main() {  gl_FragColor = vColor;}"

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->fragmentShaderCode:Ljava/lang/String;

    const/4 v2, 0x6

    .line 48
    new-array v3, v2, [S

    fill-array-data v3, :array_f8

    iput-object v3, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->order:[S

    const/16 v4, 0x8

    .line 54
    new-array v5, v4, [F

    iput-object v5, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow1:[F

    .line 55
    new-array v5, v4, [F

    iput-object v5, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow2:[F

    .line 56
    new-array v5, v4, [F

    iput-object v5, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow3:[F

    .line 57
    new-array v5, v4, [F

    iput-object v5, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow4:[F

    .line 58
    new-array v5, v4, [F

    iput-object v5, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow5:[F

    .line 59
    new-array v5, v4, [F

    iput-object v5, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow6:[F

    .line 60
    new-array v5, v4, [F

    iput-object v5, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow7:[F

    .line 61
    new-array v5, v4, [F

    iput-object v5, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow8:[F

    const/4 v5, 0x3

    .line 65
    iput v5, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->size:I

    .line 70
    sget-object v6, Lcom/transsion/camera/feature/mode/doc/object/Data;->lineCoords:[F

    array-length v6, v6

    const/4 v7, 0x2

    div-int/2addr v6, v7

    iput v6, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->vertexCount:I

    .line 71
    iput v4, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->vertexStride:I

    .line 76
    array-length v3, v3

    mul-int/2addr v3, v7

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 77
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 78
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->orderBuffer:Ljava/nio/ShortBuffer;

    .line 79
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->order:[S

    invoke-virtual {v3, v4}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    .line 80
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->orderBuffer:Ljava/nio/ShortBuffer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    const v3, 0x8b31

    .line 83
    invoke-static {v3, v0}, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->loadShader(ILjava/lang/String;)I

    move-result v0

    const v3, 0x8b30

    .line 85
    invoke-static {v3, v1}, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->loadShader(ILjava/lang/String;)I

    move-result v1

    .line 88
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v3

    iput v3, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mProgram:I

    .line 89
    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 90
    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 91
    invoke-static {v3}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 92
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 94
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v3, "TECNO"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ab

    const-string v3, "TECNO-Mobile"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ab

    const-string v3, "itel-P661N"

    .line 95
    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_99

    goto :goto_ab

    .line 97
    :cond_99
    const-string v0, "Itel"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 98
    sget-object v0, Lcom/transsion/camera/feature/mode/doc/object/Data;->itelLineColor:[F

    sput-object v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->lineColor:[F

    goto :goto_af

    .line 100
    :cond_a6
    sget-object v0, Lcom/transsion/camera/feature/mode/doc/object/Data;->defaultLineColor:[F

    sput-object v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->lineColor:[F

    goto :goto_af

    .line 96
    :cond_ab
    :goto_ab
    sget-object v0, Lcom/transsion/camera/feature/mode/doc/object/Data;->tecnoLineColor:[F

    sput-object v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->lineColor:[F

    .line 102
    :goto_af
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow1:[F

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow7:[F

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow8:[F

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v3, v7

    aput v6, v3, v4

    const/4 v3, 0x4

    aput v6, v1, v3

    aput v6, v1, v7

    aput v6, v0, v2

    aput v6, v0, v4

    .line 103
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow3:[F

    iget-object v8, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow4:[F

    iget-object v9, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow5:[F

    const/high16 v10, -0x40800000    # -1.0f

    aput v10, v9, v7

    aput v10, v9, v4

    aput v10, v8, v7

    aput v10, v8, v4

    aput v10, v2, v3

    aput v10, v2, v7

    .line 104
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow2:[F

    aput v6, v2, v5

    const/4 v4, 0x1

    aput v6, v2, v4

    aput v6, v3, v5

    aput v6, v3, v4

    aput v6, v0, v5

    aput v6, v0, v4

    .line 105
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow6:[F

    aput v10, v1, v5

    aput v10, v1, v4

    aput v10, p0, v5

    aput v10, p0, v4

    const/4 p0, 0x5

    aput v10, v9, p0

    aput v10, v9, v5

    return-void

    nop

    :array_f8
    .array-data 2
        0x0s
        0x1s
        0x2s
        0x1s
        0x2s
        0x3s
    .end array-data
.end method

.method private drawshadow(Z[F)V
    .registers 9

    .line 237
    sget-object v0, Lcom/transsion/camera/feature/mode/doc/object/Data;->lineCoords:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 239
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 240
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->vertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz p1, :cond_1c

    .line 242
    invoke-virtual {v0, p2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    goto :goto_26

    :cond_1c
    const/16 p1, 0x8

    .line 244
    new-array p1, p1, [F

    fill-array-data p1, :array_9a

    .line 250
    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 252
    :goto_26
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->vertexBuffer:Ljava/nio/FloatBuffer;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 255
    sget-object p1, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->lineColor:[F

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x4

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 257
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 258
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->colorBuffer:Ljava/nio/FloatBuffer;

    .line 259
    sget-object v0, Lcom/transsion/camera/feature/mode/doc/object/Data;->shadowColor:[F

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 260
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->colorBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 263
    iget p1, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mProgram:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 266
    iget p1, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mProgram:I

    const-string/jumbo v0, "vPosition"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mPositionHandle:I

    .line 268
    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 270
    iget v0, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mPositionHandle:I

    const/16 v4, 0x8

    iget-object v5, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->vertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 274
    iget p1, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mProgram:I

    const-string v0, "aColor"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mColorHandle:I

    .line 276
    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 277
    iget v0, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mColorHandle:I

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->colorBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x4

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const/16 p1, 0xbe2

    .line 280
    invoke-static {p1}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 p1, 0x302

    const/16 v0, 0x303

    .line 281
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    const/4 p1, 0x6

    .line 282
    iget v0, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->vertexCount:I

    invoke-static {p1, p2, v0}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 287
    iget p0, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mPositionHandle:I

    invoke-static {p0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    return-void

    :array_9a
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method public static loadShader(ILjava/lang/String;)I
    .registers 5

    .line 292
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result p0

    .line 293
    const-string v0, "GLLine"

    if-nez p0, :cond_d

    .line 294
    const-string v1, "could not create new shader"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_d
    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 298
    invoke-static {p0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 p1, 0x1

    .line 299
    new-array p1, p1, [I

    const v1, 0x8b81

    const/4 v2, 0x0

    .line 300
    invoke-static {p0, v1, p1, v2}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 301
    aget p1, p1, v2

    if-nez p1, :cond_2a

    .line 302
    invoke-static {p0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 303
    const-string p0, "Compilation of shader failed"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2a
    return p0
.end method


# virtual methods
.method public clearLineShader()V
    .registers 2

    .line 109
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->colorBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 110
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    return-void
.end method

.method public draw(Z)V
    .registers 9

    .line 121
    sget-object v0, Lcom/transsion/camera/feature/mode/doc/object/Data;->lineCoords:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 123
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 124
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->vertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz p1, :cond_1e

    .line 126
    sget-object p1, Lcom/transsion/camera/feature/mode/doc/object/Data;->lineCoords:[F

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    goto :goto_28

    :cond_1e
    const/16 p1, 0x8

    .line 128
    new-array p1, p1, [F

    fill-array-data p1, :array_a2

    .line 134
    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 136
    :goto_28
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->vertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 139
    sget-object p1, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->lineColor:[F

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x4

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 141
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 142
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->colorBuffer:Ljava/nio/FloatBuffer;

    .line 143
    sget-object v1, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->lineColor:[F

    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 144
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->colorBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 147
    iget p1, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mProgram:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 150
    iget p1, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mProgram:I

    const-string/jumbo v1, "vPosition"

    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mPositionHandle:I

    .line 152
    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 154
    iget v1, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mPositionHandle:I

    const/16 v5, 0x8

    iget-object v6, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->vertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 158
    iget p1, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mProgram:I

    const-string v1, "aColor"

    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mColorHandle:I

    .line 160
    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 161
    iget v1, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mColorHandle:I

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->colorBuffer:Ljava/nio/FloatBuffer;

    const/4 v2, 0x4

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const/16 p1, 0xbe2

    .line 164
    invoke-static {p1}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 p1, 0x302

    const/16 v1, 0x303

    .line 165
    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 167
    iget p1, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->size:I

    int-to-float p1, p1

    invoke-static {p1}, Landroid/opengl/GLES20;->glLineWidth(F)V

    const/4 p1, 0x2

    .line 169
    iget v1, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->vertexCount:I

    invoke-static {p1, v0, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 171
    iget p0, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mPositionHandle:I

    invoke-static {p0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    return-void

    :array_a2
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method public drawShadows(Z)V
    .registers 30

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 175
    sget-object v2, Lcom/transsion/camera/feature/mode/doc/object/Data;->lineCoords:[F

    const/4 v3, 0x0

    aget v4, v2, v3

    const/high16 v5, 0x447a0000    # 1000.0f

    mul-float v6, v4, v5

    float-to-int v6, v6

    const/4 v7, 0x1

    .line 176
    aget v8, v2, v7

    mul-float v9, v8, v5

    float-to-int v9, v9

    const/4 v10, 0x2

    .line 177
    aget v11, v2, v10

    mul-float v12, v11, v5

    float-to-int v12, v12

    const/4 v13, 0x3

    .line 178
    aget v14, v2, v13

    mul-float v15, v14, v5

    float-to-int v15, v15

    const/16 v16, 0x4

    .line 179
    aget v17, v2, v16

    move/from16 v18, v3

    mul-float v3, v17, v5

    float-to-int v3, v3

    const/16 v19, 0x5

    .line 180
    aget v20, v2, v19

    move/from16 v21, v5

    mul-float v5, v20, v21

    float-to-int v5, v5

    const/16 v22, 0x6

    .line 181
    aget v23, v2, v22

    move/from16 v24, v7

    mul-float v7, v23, v21

    float-to-int v7, v7

    const/16 v25, 0x7

    .line 182
    aget v26, v2, v25

    move/from16 v27, v10

    mul-float v10, v26, v21

    float-to-int v10, v10

    if-gt v6, v3, :cond_4c

    if-gt v9, v5, :cond_4c

    if-gt v12, v7, :cond_4c

    if-ge v15, v10, :cond_54

    :cond_4c
    if-gt v6, v3, :cond_c2

    if-gt v6, v7, :cond_c2

    if-gt v9, v15, :cond_c2

    if-gt v9, v5, :cond_c2

    .line 185
    :cond_54
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow1:[F

    iget-object v4, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow2:[F

    iget-object v5, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow8:[F

    aput v17, v5, v16

    aput v17, v4, v22

    aput v17, v4, v18

    aput v17, v3, v16

    aput v17, v3, v27

    .line 186
    iget-object v6, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow3:[F

    iget-object v7, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow4:[F

    aget v8, v2, v27

    aput v8, v7, v22

    aput v8, v6, v22

    aput v8, v6, v18

    aput v8, v4, v16

    aput v8, v4, v27

    .line 187
    iget-object v8, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow5:[F

    iget-object v9, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow6:[F

    aget v10, v2, v18

    aput v10, v9, v22

    aput v10, v9, v18

    aput v10, v8, v22

    aput v10, v8, v16

    aput v10, v7, v16

    .line 188
    iget-object v10, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow7:[F

    aget v11, v2, v22

    aput v11, v5, v22

    aput v11, v10, v22

    aput v11, v10, v18

    aput v11, v9, v16

    aput v11, v9, v27

    .line 189
    aput v20, v5, v19

    aput v20, v5, v13

    aput v20, v4, v25

    aput v20, v3, v25

    aput v20, v3, v19

    .line 190
    aget v3, v2, v13

    aput v3, v7, v25

    aput v3, v7, v24

    aput v3, v6, v25

    aput v3, v6, v19

    aput v3, v4, v19

    .line 191
    aget v3, v2, v24

    aput v3, v9, v25

    aput v3, v8, v25

    aput v3, v8, v24

    aput v3, v7, v19

    aput v3, v7, v13

    .line 192
    aget v2, v2, v25

    aput v2, v5, v25

    aput v2, v5, v24

    aput v2, v10, v25

    aput v2, v10, v19

    aput v2, v9, v19

    goto/16 :goto_238

    :cond_c2
    if-gt v12, v7, :cond_ca

    if-gt v15, v10, :cond_ca

    if-gt v3, v6, :cond_ca

    if-ge v5, v9, :cond_d2

    :cond_ca
    if-gt v12, v7, :cond_140

    if-gt v12, v6, :cond_140

    if-gt v15, v5, :cond_140

    if-gt v15, v10, :cond_140

    .line 195
    :cond_d2
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow1:[F

    iget-object v4, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow2:[F

    iget-object v5, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow8:[F

    aput v23, v5, v16

    aput v23, v4, v22

    aput v23, v4, v18

    aput v23, v3, v16

    aput v23, v3, v27

    .line 196
    iget-object v6, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow3:[F

    iget-object v7, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow4:[F

    aget v8, v2, v16

    aput v8, v7, v22

    aput v8, v6, v22

    aput v8, v6, v18

    aput v8, v4, v16

    aput v8, v4, v27

    .line 197
    iget-object v8, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow5:[F

    iget-object v9, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow6:[F

    aget v10, v2, v27

    aput v10, v9, v22

    aput v10, v9, v18

    aput v10, v8, v22

    aput v10, v8, v16

    aput v10, v7, v16

    .line 198
    iget-object v10, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow7:[F

    aget v11, v2, v18

    aput v11, v5, v22

    aput v11, v10, v22

    aput v11, v10, v18

    aput v11, v9, v16

    aput v11, v9, v27

    .line 199
    aput v26, v5, v19

    aput v26, v5, v13

    aput v26, v4, v25

    aput v26, v3, v25

    aput v26, v3, v19

    .line 200
    aget v3, v2, v19

    aput v3, v7, v25

    aput v3, v7, v24

    aput v3, v6, v25

    aput v3, v6, v19

    aput v3, v4, v19

    .line 201
    aget v3, v2, v13

    aput v3, v9, v25

    aput v3, v8, v25

    aput v3, v8, v24

    aput v3, v7, v19

    aput v3, v7, v13

    .line 202
    aget v2, v2, v24

    aput v2, v5, v25

    aput v2, v5, v24

    aput v2, v10, v25

    aput v2, v10, v19

    aput v2, v9, v19

    goto/16 :goto_238

    :cond_140
    if-gt v3, v6, :cond_148

    if-gt v5, v9, :cond_148

    if-gt v7, v12, :cond_148

    if-ge v10, v15, :cond_150

    :cond_148
    if-gt v3, v6, :cond_1be

    if-gt v3, v12, :cond_1be

    if-gt v5, v10, :cond_1be

    if-gt v5, v9, :cond_1be

    .line 205
    :cond_150
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow1:[F

    iget-object v5, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow2:[F

    iget-object v6, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow8:[F

    aput v4, v6, v16

    aput v4, v5, v22

    aput v4, v5, v18

    aput v4, v3, v16

    aput v4, v3, v27

    .line 206
    iget-object v4, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow3:[F

    iget-object v7, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow4:[F

    aget v9, v2, v22

    aput v9, v7, v22

    aput v9, v4, v22

    aput v9, v4, v18

    aput v9, v5, v16

    aput v9, v5, v27

    .line 207
    iget-object v9, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow5:[F

    iget-object v10, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow6:[F

    aget v11, v2, v16

    aput v11, v10, v22

    aput v11, v10, v18

    aput v11, v9, v22

    aput v11, v9, v16

    aput v11, v7, v16

    .line 208
    iget-object v11, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow7:[F

    aget v12, v2, v27

    aput v12, v6, v22

    aput v12, v11, v22

    aput v12, v11, v18

    aput v12, v10, v16

    aput v12, v10, v27

    .line 209
    aput v8, v6, v19

    aput v8, v6, v13

    aput v8, v5, v25

    aput v8, v3, v25

    aput v8, v3, v19

    .line 210
    aget v3, v2, v25

    aput v3, v7, v25

    aput v3, v7, v24

    aput v3, v4, v25

    aput v3, v4, v19

    aput v3, v5, v19

    .line 211
    aget v3, v2, v19

    aput v3, v10, v25

    aput v3, v9, v25

    aput v3, v9, v24

    aput v3, v7, v19

    aput v3, v7, v13

    .line 212
    aget v2, v2, v13

    aput v2, v6, v25

    aput v2, v6, v24

    aput v2, v11, v25

    aput v2, v11, v19

    aput v2, v10, v19

    goto/16 :goto_238

    :cond_1be
    if-gt v7, v12, :cond_1c6

    if-gt v10, v15, :cond_1c6

    if-gt v6, v3, :cond_1c6

    if-ge v9, v5, :cond_1ce

    :cond_1c6
    if-gt v7, v12, :cond_260

    if-gt v7, v3, :cond_260

    if-gt v10, v9, :cond_260

    if-gt v10, v15, :cond_260

    .line 215
    :cond_1ce
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow1:[F

    iget-object v4, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow2:[F

    iget-object v5, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow8:[F

    aput v11, v5, v16

    aput v11, v4, v22

    aput v11, v4, v18

    aput v11, v3, v16

    aput v11, v3, v27

    .line 216
    iget-object v6, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow3:[F

    iget-object v7, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow4:[F

    aget v9, v2, v18

    aput v9, v7, v22

    aput v9, v6, v22

    aput v9, v6, v18

    aput v9, v4, v16

    aput v9, v4, v27

    .line 217
    iget-object v9, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow5:[F

    iget-object v10, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow6:[F

    aget v11, v2, v22

    aput v11, v10, v22

    aput v11, v10, v18

    aput v11, v9, v22

    aput v11, v9, v16

    aput v11, v7, v16

    .line 218
    iget-object v11, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow7:[F

    aget v12, v2, v16

    aput v12, v5, v22

    aput v12, v11, v22

    aput v12, v11, v18

    aput v12, v10, v16

    aput v12, v10, v27

    .line 219
    aput v14, v5, v19

    aput v14, v5, v13

    aput v14, v4, v25

    aput v14, v3, v25

    aput v14, v3, v19

    .line 220
    aput v8, v7, v25

    aput v8, v7, v24

    aput v8, v6, v25

    aput v8, v6, v19

    aput v8, v4, v19

    .line 221
    aget v3, v2, v25

    aput v3, v10, v25

    aput v3, v9, v25

    aput v3, v9, v24

    aput v3, v7, v19

    aput v3, v7, v13

    .line 222
    aget v2, v2, v19

    aput v2, v5, v25

    aput v2, v5, v24

    aput v2, v11, v25

    aput v2, v11, v19

    aput v2, v10, v19

    .line 226
    :goto_238
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow1:[F

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->drawshadow(Z[F)V

    .line 227
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow2:[F

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->drawshadow(Z[F)V

    .line 228
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow3:[F

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->drawshadow(Z[F)V

    .line 229
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow4:[F

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->drawshadow(Z[F)V

    .line 230
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow5:[F

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->drawshadow(Z[F)V

    .line 231
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow6:[F

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->drawshadow(Z[F)V

    .line 232
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow7:[F

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->drawshadow(Z[F)V

    .line 233
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow8:[F

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->drawshadow(Z[F)V

    :cond_260
    return-void
.end method

.method public unInit()V
    .registers 1

    .line 114
    iget p0, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mProgram:I

    if-eqz p0, :cond_7

    .line 115
    invoke-static {p0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    :cond_7
    return-void
.end method
