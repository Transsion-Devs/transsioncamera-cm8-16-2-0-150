.class Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OESTextureRender"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender$TextureMinFilterType;
    }
.end annotation


# static fields
.field private static final FLOAT_SIZE_BYTES:I = 0x4

.field private static final FRAGMENT_SHADER:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

.field private static final TRIANGLE_VERTICES_DATA_POS_OFFSET:I = 0x0

.field private static final TRIANGLE_VERTICES_DATA_STRIDE_BYTES:I = 0x14

.field private static final TRIANGLE_VERTICES_DATA_UV_OFFSET:I = 0x3

.field private static final VERTEX_SHADER:Ljava/lang/String; = "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"


# instance fields
.field private mDisplayRotate:I

.field private mInputHeight:I

.field private mInputWidth:I

.field private mIsFlipY:Z

.field private mMVPMatrix:[F

.field private mOutHeight:I

.field private mOutWidth:I

.field private mProgram:I

.field private mSTMatrix:[F

.field private mTextureMinFilterType:Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender$TextureMinFilterType;

.field private mTriangleVertices:Ljava/nio/FloatBuffer;

.field private final mTriangleVerticesData:[F

.field private maPositionHandle:I

.field private maTextureHandle:I

.field private muFrameBuffer:[I

.field private muMVPMatrixHandle:I

.field private muSTMatrixHandle:I


# direct methods
.method public constructor <init>(Landroid/graphics/SurfaceTexture;)V
    .registers 6

    .line 1897
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    .line 1871
    new-array v0, v0, [F

    fill-array-data v0, :array_56

    iput-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender;->mTriangleVerticesData:[F

    const/16 v1, 0x10

    .line 1879
    new-array v2, v1, [F

    iput-object v2, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender;->mMVPMatrix:[F

    .line 1880
    new-array v1, v1, [F

    iput-object v1, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender;->mSTMatrix:[F

    const/4 v1, 0x1

    .line 1886
    new-array v1, v1, [I

    iput-object v1, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender;->muFrameBuffer:[I

    const/4 v1, 0x0

    .line 1887
    iput v1, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender;->mDisplayRotate:I

    .line 1888
    iput-boolean v1, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender;->mIsFlipY:Z

    .line 1889
    iput v1, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender;->mInputWidth:I

    iput v1, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender;->mInputHeight:I

    iput v1, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender;->mOutWidth:I

    iput v1, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender;->mOutHeight:I

    .line 1895
    sget-object v2, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender$TextureMinFilterType;->UNKNOWN:Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender$TextureMinFilterType;

    iput-object v2, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender;->mTextureMinFilterType:Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender$TextureMinFilterType;

    .line 1898
    array-length v2, v0

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1900
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender;->mTriangleVertices:Ljava/nio/FloatBuffer;

    .line 1901
    invoke-virtual {v2, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    if-eqz p1, :cond_50

    .line 1904
    iget-object p0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender;->mSTMatrix:[F

    invoke-virtual {p1, p0}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    return-void

    .line 1906
    :cond_50
    iget-object p0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender;->mSTMatrix:[F

    invoke-static {p0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void

    :array_56
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

.method private createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6

    const v0, 0x8b31

    .line 2097
    invoke-direct {p0, v0, p1}, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender;->loadShader(ILjava/lang/String;)I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_b

    return v0

    :cond_b
    const v1, 0x8b30

    .line 2101
    invoke-direct {p0, v1, p2}, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender;->loadShader(ILjava/lang/String;)I

    move-result p0

    if-nez p0, :cond_15

    return v0

    .line 2106
    :cond_15
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result p2

    .line 2107
    const-string v1, "TEMediaCodecDecoder"

    if-nez p2, :cond_22

    .line 2108
    const-string v2, "Could not create program"

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2110
    :cond_22
    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 2111
    invoke-static {p2, p0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 2112
    invoke-static {p2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const/4 p0, 0x1

    .line 2113
    new-array p1, p0, [I

    const v2, 0x8b82

    .line 2114
    invoke-static {p2, v2, p1, v0}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 2115
    aget p1, p1, v0

    if-eq p1, p0, :cond_54

    .line 2116
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Could not link program: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2117
    invoke-static {p2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    return v0

    :cond_54
    return p2
.end method

.method private loadShader(ILjava/lang/String;)I
    .registers 5

    .line 2082
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result p0

    .line 2083
    invoke-static {p0, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 2084
    invoke-static {p0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 p2, 0x1

    .line 2085
    new-array p2, p2, [I

    const v0, 0x8b81

    const/4 v1, 0x0

    .line 2086
    invoke-static {p0, v0, p2, v1}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 2087
    aget p2, p2, v1

    if-nez p2, :cond_4f

    .line 2088
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not compile shader "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TEMediaCodecDecoder"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2089
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2090
    invoke-static {p0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    return v1

    :cond_4f
    return p0
.end method


# virtual methods
.method public drawFrame(IIIIIII)V
    .registers 26

    move-object/from16 v0, p0

    move/from16 v5, p3

    move/from16 v6, p4

    const/4 v7, 0x0

    .line 1976
    invoke-static {v7, v7, v5, v6}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 1977
    iget-object v1, v0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender;->muFrameBuffer:[I

    aget v1, v1, v7

    const v8, 0x8d40

    invoke-static {v8, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const v9, 0x8ce0

    const/16 v10, 0xde1

    move/from16 v1, p6

    .line 1978
    invoke-static {v8, v9, v10, v1, v7}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1982
    invoke-static {v1, v1, v1, v2}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v1, 0x4100

    .line 1983
    invoke-static {v1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 1985
    iget v1, v0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender;->mProgram:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const v1, 0x84c0

    .line 1987
    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const v11, 0x8d65

    move/from16 v1, p5

    .line 1988
    invoke-static {v11, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1990
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v1

    const-string v2, "ve_enable_preview_sharpness_opt"

    invoke-virtual {v1, v2, v7}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7e

    mul-int v1, p1, p2

    mul-int v2, v5, v6

    const/16 v3, 0x2801

    if-ne v1, v2, :cond_68

    .line 1991
    iget-object v4, v0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender;->mTextureMinFilterType:Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender$TextureMinFilterType;

    sget-object v12, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender$TextureMinFilterType;->UNKNOWN:Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender$TextureMinFilterType;

    if-eq v4, v12, :cond_5e

    sget-object v12, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender$TextureMinFilterType;->LINEAR:Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender$TextureMinFilterType;

    if-ne v4, v12, :cond_68

    :cond_5e
    const/high16 v1, 0x46180000    # 9728.0f

    .line 1992
    invoke-static {v11, v3, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 1994
    sget-object v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender$TextureMinFilterType;->NEAREST:Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender$TextureMinFilterType;

    iput-object v1, v0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender;->mTextureMinFilterType:Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender$TextureMinFilterType;

    goto :goto_7e

    :cond_68
    if-eq v1, v2, :cond_7e

    .line 1995
    iget-object v1, v0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender;->mTextureMinFilterType:Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender$TextureMinFilterType;

    sget-object v2, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender$TextureMinFilterType;->UNKNOWN:Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender$TextureMinFilterType;

    if-eq v1, v2, :cond_74

    sget-object v2, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender$TextureMinFilterType;->NEAREST:Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender$TextureMinFilterType;

    if-ne v1, v2, :cond_7e

    :cond_74
    const v1, 0x46180400    # 9729.0f

    .line 1996
    invoke-static {v11, v3, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 1998
    sget-object v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender$TextureMinFilterType;->LINEAR:Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender$TextureMinFilterType;

    iput-object v1, v0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender;->mTextureMinFilterType:Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender$TextureMinFilterType;

    .line 2002
    :cond_7e
    :goto_7e
    iget-object v1, v0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender;->mTriangleVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 2003
    iget v12, v0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender;->maPositionHandle:I

    const/16 v16, 0x14

    iget-object v1, v0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender;->mTriangleVertices:Ljava/nio/FloatBuffer;

    const/4 v13, 0x3

    const/16 v14, 0x1406

    const/4 v15, 0x0

    move-object/from16 v17, v1

    invoke-static/range {v12 .. v17}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 2005
    iget v1, v0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender;->maPositionHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 2007
    iget-object v1, v0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender;->mTriangleVertices:Ljava/nio/FloatBuffer;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 2008
    iget v12, v0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender;->maTextureHandle:I

    iget-object v1, v0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender;->mTriangleVertices:Ljava/nio/FloatBuffer;

    const/4 v13, 0x2

    move-object/from16 v17, v1

    invoke-static/range {v12 .. v17}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 2010
    iget v1, v0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender;->maTextureHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 2012
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v1

    const-string v2, "ve_enable_hw_decoder_support_rotate"

    invoke-virtual {v1, v2, v7}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_c7

    const/4 v2, 0x0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v1, p7

    .line 2013
    invoke-virtual/range {v0 .. v6}, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender;->setMVPMatrix(IZIIII)V

    goto :goto_cc

    .line 2015
    :cond_c7
    iget-object v1, v0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender;->mMVPMatrix:[F

    invoke-static {v1, v7}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2017
    :goto_cc
    iget v1, v0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender;->muMVPMatrixHandle:I

    iget-object v2, v0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender;->mMVPMatrix:[F

    const/4 v3, 0x1

    invoke-static {v1, v3, v7, v2, v7}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 2018
    iget v1, v0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender;->muSTMatrixHandle:I

    iget-object v2, v0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender;->mSTMatrix:[F

    invoke-static {v1, v3, v7, v2, v7}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const/4 v1, 0x5

    const/4 v2, 0x4

    .line 2020
    invoke-static {v1, v7, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 2022
    iget v1, v0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender;->maPositionHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 2023
    iget v0, v0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender;->maTextureHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 2024
    invoke-static {v11, v7}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 2025
    invoke-static {v10, v7}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 2027
    invoke-static {v8, v9, v10, v7, v7}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 2029
    invoke-static {v8, v7}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 2030
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    return-void
.end method

.method public init()V
    .registers 5

    .line 2037
    const-string v0, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    const-string v1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    invoke-direct {p0, v0, v1}, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender;->mProgram:I

    .line 2038
    const-string v1, "TEMediaCodecDecoder"

    if-nez v0, :cond_13

    .line 2039
    const-string v0, "failed create program"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2041
    :cond_13
    iget v0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender;->mProgram:I

    const-string v2, "aPosition"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender;->maPositionHandle:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_25

    .line 2043
    const-string v0, "Could not get attrib location for aPosition"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2045
    :cond_25
    iget v0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender;->mProgram:I

    const-string v3, "aTextureCoord"

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender;->maTextureHandle:I

    if-ne v0, v2, :cond_36

    .line 2047
    const-string v0, "Could not get attrib location for aTextureCoord"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2050
    :cond_36
    iget v0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender;->mProgram:I

    const-string v3, "uMVPMatrix"

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender;->muMVPMatrixHandle:I

    if-ne v0, v2, :cond_47

    .line 2052
    const-string v0, "Could not get attrib location for uMVPMatrix"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2055
    :cond_47
    iget v0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender;->mProgram:I

    const-string v3, "uSTMatrix"

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender;->muSTMatrixHandle:I

    .line 2056
    const-string v0, "glGetUniformLocation uSTMatrix"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2057
    iget v0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender;->muSTMatrixHandle:I

    if-eq v0, v2, :cond_67

    .line 2061
    iget-object p0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender;->muFrameBuffer:[I

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-static {v2, p0, v0}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 2062
    const-string p0, "glGenFramebuffers"

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2058
    :cond_67
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Could not get attrib location for uSTMatrix"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public release()V
    .registers 3

    .line 2124
    iget v0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender;->mProgram:I

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 2125
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 2126
    iput v1, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender;->mProgram:I

    .line 2128
    :cond_a
    iget-object p0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender;->muFrameBuffer:[I

    aget v0, p0, v1

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    .line 2129
    invoke-static {v0, p0, v1}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    :cond_14
    return-void
.end method

.method public setMVPMatrix(IZIIII)V
    .registers 30

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    const/4 v7, 0x0

    if-lez v3, :cond_ee

    if-lez v4, :cond_ee

    if-lez v5, :cond_ee

    if-gtz v6, :cond_19

    goto/16 :goto_ee

    .line 1927
    :cond_19
    iget v8, v0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender;->mDisplayRotate:I

    if-ne v8, v1, :cond_32

    iget-boolean v8, v0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender;->mIsFlipY:Z

    if-ne v8, v2, :cond_32

    iget v8, v0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender;->mInputWidth:I

    if-ne v8, v3, :cond_32

    iget v8, v0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender;->mInputHeight:I

    if-ne v8, v4, :cond_32

    iget v8, v0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender;->mOutWidth:I

    if-ne v8, v5, :cond_32

    iget v8, v0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender;->mOutHeight:I

    if-ne v8, v6, :cond_32

    return-void

    .line 1931
    :cond_32
    iput v1, v0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender;->mDisplayRotate:I

    const/16 v8, 0x10

    .line 1933
    new-array v9, v8, [F

    .line 1934
    invoke-static {v9, v7}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    int-to-float v11, v1

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v12, 0x0

    .line 1936
    invoke-static/range {v9 .. v14}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    if-eqz v2, :cond_50

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x43340000    # 180.0f

    const/high16 v12, 0x3f800000    # 1.0f

    .line 1938
    invoke-static/range {v9 .. v14}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 1941
    :cond_50
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v10, 0x10e

    const/16 v11, 0x5a

    if-eq v2, v11, :cond_63

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ne v2, v10, :cond_61

    goto :goto_63

    :cond_61
    int-to-float v2, v3

    goto :goto_64

    :cond_63
    :goto_63
    int-to-float v2, v4

    .line 1942
    :goto_64
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v12

    if-eq v12, v11, :cond_73

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ne v1, v10, :cond_71

    goto :goto_73

    :cond_71
    int-to-float v1, v4

    goto :goto_74

    :cond_73
    :goto_73
    int-to-float v1, v3

    :goto_74
    int-to-float v10, v5

    div-float v2, v10, v2

    int-to-float v11, v6

    div-float v1, v11, v1

    cmpl-float v12, v2, v1

    if-lez v12, :cond_7f

    goto :goto_80

    :cond_7f
    move v2, v1

    :goto_80
    int-to-float v1, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    mul-float/2addr v1, v2

    int-to-float v4, v4

    div-float/2addr v4, v3

    mul-float/2addr v4, v2

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1954
    invoke-static {v9, v7, v1, v4, v2}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 1957
    new-array v12, v8, [F

    .line 1958
    invoke-static {v12, v7}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const/high16 v21, 0x3f800000    # 1.0f

    const/16 v22, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 1959
    invoke-static/range {v12 .. v22}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    .line 1961
    new-array v13, v8, [F

    .line 1962
    invoke-static {v13, v7}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    neg-int v1, v5

    int-to-float v1, v1

    div-float v15, v1, v3

    div-float v16, v10, v3

    neg-int v1, v6

    int-to-float v1, v1

    div-float v17, v1, v3

    div-float v18, v11, v3

    const/high16 v19, -0x40000000    # -2.0f

    const/high16 v20, 0x40000000    # 2.0f

    const/4 v14, 0x0

    .line 1963
    invoke-static/range {v13 .. v20}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 1966
    new-array v1, v8, [F

    .line 1967
    invoke-static {v1, v7}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 p1, v1

    move/from16 p4, v2

    move/from16 p6, v3

    move/from16 p2, v4

    move-object/from16 p5, v9

    move-object/from16 p3, v12

    .line 1968
    invoke-static/range {p1 .. p6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 1969
    iget-object v2, v0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender;->mMVPMatrix:[F

    invoke-static {v2, v7}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 1970
    iget-object v0, v0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender;->mMVPMatrix:[F

    const/4 v2, 0x0

    move-object/from16 p0, v0

    move-object/from16 p4, v1

    move/from16 p3, v2

    move/from16 p5, v3

    move/from16 p1, v4

    move-object/from16 p2, v13

    invoke-static/range {p0 .. p5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    return-void

    .line 1923
    :cond_ee
    :goto_ee
    iget-object v0, v0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender;->mMVPMatrix:[F

    invoke-static {v0, v7}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method

.method public setTextureCrop(IIIIII)V
    .registers 10

    if-lez p1, :cond_4e

    if-lez p2, :cond_4e

    if-lt p4, p3, :cond_4e

    if-lt p6, p5, :cond_4e

    if-gt p6, p1, :cond_4e

    if-le p4, p2, :cond_d

    goto :goto_4e

    .line 2069
    :cond_d
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender;->mTriangleVerticesData:[F

    int-to-float p5, p5

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr p5, v1

    int-to-float p1, p1

    div-float/2addr p5, p1

    const/4 v2, 0x3

    aput p5, v0, v2

    int-to-float p3, p3

    mul-float/2addr p3, v1

    int-to-float p2, p2

    div-float/2addr p3, p2

    const/4 v2, 0x4

    .line 2070
    aput p3, v0, v2

    int-to-float p6, p6

    mul-float/2addr p6, v1

    div-float/2addr p6, p1

    const/16 p1, 0x8

    .line 2071
    aput p6, v0, p1

    const/16 p1, 0x9

    .line 2072
    aput p3, v0, p1

    const/16 p1, 0xd

    .line 2073
    aput p5, v0, p1

    int-to-float p1, p4

    mul-float/2addr p1, v1

    div-float/2addr p1, p2

    const/16 p2, 0xe

    .line 2074
    aput p1, v0, p2

    const/16 p2, 0x12

    .line 2075
    aput p6, v0, p2

    const/16 p2, 0x13

    .line 2076
    aput p1, v0, p2

    .line 2077
    iget-object p1, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender;->mTriangleVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 2078
    iget-object p1, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender;->mTriangleVertices:Ljava/nio/FloatBuffer;

    iget-object p0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender;->mTriangleVerticesData:[F

    invoke-virtual {p1, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    :cond_4e
    :goto_4e
    return-void
.end method
