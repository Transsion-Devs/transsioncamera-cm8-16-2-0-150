.class public Lcom/bytedance/labcv/core/util/ImageUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/labcv/core/util/ImageUtil$Transition;
    }
.end annotation


# instance fields
.field protected FRAME_BUFFER_NUM:I

.field protected mFrameBufferShape:Landroid/graphics/Point;

.field protected mFrameBufferTextures:[I

.field protected mFrameBuffers:[I

.field private mProgramManager:Lcom/bytedance/labcv/core/opengl/ProgramManager;

.field private mYUVProgram:Lcom/bytedance/labcv/core/opengl/ProgramTextureYUV;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 25
    iput v0, p0, Lcom/bytedance/labcv/core/util/ImageUtil;->FRAME_BUFFER_NUM:I

    return-void
.end method

.method private bindFrameBuffer(IIII)V
    .registers 14

    const/16 p0, 0xde1

    .line 146
    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v7, 0x1401

    const/4 v8, 0x0

    const/16 v0, 0xde1

    const/4 v1, 0x0

    const/16 v2, 0x1908

    const/4 v5, 0x0

    const/16 v6, 0x1908

    move v3, p3

    move v4, p4

    .line 147
    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    const/16 p3, 0x2800

    const p4, 0x46180400    # 9729.0f

    .line 149
    invoke-static {p0, p3, p4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p3, 0x2801

    .line 151
    invoke-static {p0, p3, p4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p3, 0x2802

    const p4, 0x47012f00    # 33071.0f

    .line 153
    invoke-static {p0, p3, p4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p3, 0x2803

    .line 155
    invoke-static {p0, p3, p4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const p3, 0x8d40

    .line 158
    invoke-static {p3, p2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const p2, 0x8ce0

    const/4 p4, 0x0

    .line 159
    invoke-static {p3, p2, p0, p1, p4}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 162
    invoke-static {p0, p4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 163
    invoke-static {p3, p4}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    return-void
.end method

.method private create2DTexture(Ljava/nio/ByteBuffer;III)I
    .registers 15

    const/4 p0, 0x1

    .line 484
    new-array v0, p0, [I

    const/4 v1, 0x0

    .line 487
    invoke-static {p0, v0, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 488
    aget p0, v0, v1

    .line 489
    const-string v0, "glGenTextures"

    invoke-static {v0}, Lcom/bytedance/labcv/core/opengl/GlUtil;->checkGlError(Ljava/lang/String;)V

    const/16 v0, 0xde1

    .line 492
    invoke-static {v0, p0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v1, 0x2801

    const/16 v2, 0x2601

    .line 496
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2800

    .line 498
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 500
    const-string v0, "loadImageTexture"

    invoke-static {v0}, Lcom/bytedance/labcv/core/opengl/GlUtil;->checkGlError(Ljava/lang/String;)V

    const/4 v6, 0x0

    const/16 v8, 0x1401

    const/16 v1, 0xde1

    const/4 v2, 0x0

    move v7, p4

    move-object v9, p1

    move v4, p2

    move v5, p3

    move v3, p4

    .line 503
    invoke-static/range {v1 .. v9}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 505
    invoke-static {v0}, Lcom/bytedance/labcv/core/opengl/GlUtil;->checkGlError(Ljava/lang/String;)V

    return p0
.end method

.method private destroyFrameBuffers()V
    .registers 5

    .line 123
    iget-object v0, p0, Lcom/bytedance/labcv/core/util/ImageUtil;->mFrameBufferTextures:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    .line 124
    iget v3, p0, Lcom/bytedance/labcv/core/util/ImageUtil;->FRAME_BUFFER_NUM:I

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 125
    iput-object v1, p0, Lcom/bytedance/labcv/core/util/ImageUtil;->mFrameBufferTextures:[I

    .line 127
    :cond_d
    iget-object v0, p0, Lcom/bytedance/labcv/core/util/ImageUtil;->mFrameBuffers:[I

    if-eqz v0, :cond_18

    .line 128
    iget v3, p0, Lcom/bytedance/labcv/core/util/ImageUtil;->FRAME_BUFFER_NUM:I

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 129
    iput-object v1, p0, Lcom/bytedance/labcv/core/util/ImageUtil;->mFrameBuffers:[I

    :cond_18
    return-void
.end method

.method private initFrameBufferIfNeed(II)V
    .registers 7

    .line 94
    iget-object v0, p0, Lcom/bytedance/labcv/core/util/ImageUtil;->mFrameBufferShape:Landroid/graphics/Point;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_11

    iget v3, v0, Landroid/graphics/Point;->x:I

    if-ne v3, p1, :cond_11

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-eq v0, p2, :cond_f

    goto :goto_11

    :cond_f
    move v0, v2

    goto :goto_12

    :cond_11
    :goto_11
    move v0, v1

    .line 97
    :goto_12
    iget-object v3, p0, Lcom/bytedance/labcv/core/util/ImageUtil;->mFrameBuffers:[I

    if-eqz v3, :cond_1c

    iget-object v3, p0, Lcom/bytedance/labcv/core/util/ImageUtil;->mFrameBufferTextures:[I

    if-nez v3, :cond_1b

    goto :goto_1c

    :cond_1b
    move v1, v0

    :cond_1c
    :goto_1c
    if-eqz v1, :cond_4e

    .line 101
    invoke-direct {p0}, Lcom/bytedance/labcv/core/util/ImageUtil;->destroyFrameBuffers()V

    .line 102
    iget v0, p0, Lcom/bytedance/labcv/core/util/ImageUtil;->FRAME_BUFFER_NUM:I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/bytedance/labcv/core/util/ImageUtil;->mFrameBuffers:[I

    .line 103
    new-array v3, v0, [I

    iput-object v3, p0, Lcom/bytedance/labcv/core/util/ImageUtil;->mFrameBufferTextures:[I

    .line 104
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 105
    iget v0, p0, Lcom/bytedance/labcv/core/util/ImageUtil;->FRAME_BUFFER_NUM:I

    iget-object v1, p0, Lcom/bytedance/labcv/core/util/ImageUtil;->mFrameBufferTextures:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 106
    :goto_35
    iget v0, p0, Lcom/bytedance/labcv/core/util/ImageUtil;->FRAME_BUFFER_NUM:I

    if-ge v2, v0, :cond_47

    .line 107
    iget-object v0, p0, Lcom/bytedance/labcv/core/util/ImageUtil;->mFrameBufferTextures:[I

    aget v0, v0, v2

    iget-object v1, p0, Lcom/bytedance/labcv/core/util/ImageUtil;->mFrameBuffers:[I

    aget v1, v1, v2

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/bytedance/labcv/core/util/ImageUtil;->bindFrameBuffer(IIII)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    .line 109
    :cond_47
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/bytedance/labcv/core/util/ImageUtil;->mFrameBufferShape:Landroid/graphics/Point;

    :cond_4e
    return-void
.end method


# virtual methods
.method public captureRenderResult(II)Ljava/nio/ByteBuffer;
    .registers 15

    .line 203
    iget-object p0, p0, Lcom/bytedance/labcv/core/util/ImageUtil;->mFrameBufferTextures:[I

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return-object v0

    :cond_6
    const/4 v1, 0x0

    .line 204
    aget v2, p0, v1

    if-eqz p0, :cond_65

    const/4 p0, -0x1

    if-ne v2, p0, :cond_f

    goto :goto_65

    :cond_f
    mul-int p0, p1, p2

    if-nez p0, :cond_14

    return-object v0

    :cond_14
    mul-int/lit8 p0, p0, 0x4

    .line 211
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 213
    invoke-virtual {v9, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 p0, 0x1

    .line 214
    new-array v0, p0, [I

    .line 215
    invoke-static {p0, v0, v1}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    const/16 v10, 0xde1

    .line 216
    invoke-static {v10, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v3, 0x2800

    const v4, 0x46180400    # 9729.0f

    .line 217
    invoke-static {v10, v3, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v3, 0x2801

    .line 219
    invoke-static {v10, v3, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v3, 0x2802

    const v4, 0x47012f00    # 33071.0f

    .line 221
    invoke-static {v10, v3, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v3, 0x2803

    .line 223
    invoke-static {v10, v3, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 226
    aget v3, v0, v1

    const v11, 0x8d40

    invoke-static {v11, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const v3, 0x8ce0

    .line 227
    invoke-static {v11, v3, v10, v2, v1}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    const/16 v7, 0x1908

    const/16 v8, 0x1401

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, p1

    move v6, p2

    .line 229
    invoke-static/range {v3 .. v9}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 232
    invoke-static {v10, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 233
    invoke-static {v11, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 235
    invoke-static {p0, v0, v1}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    return-object v9

    :cond_65
    :goto_65
    return-object v0
.end method

.method public captureRenderResult(III)Ljava/nio/ByteBuffer;
    .registers 15

    const/4 p0, -0x1

    const/4 v0, 0x0

    if-ne p1, p0, :cond_5

    return-object v0

    :cond_5
    mul-int p0, p2, p3

    if-nez p0, :cond_a

    return-object v0

    :cond_a
    mul-int/lit8 p0, p0, 0x4

    .line 263
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    const/4 p0, 0x0

    .line 265
    invoke-virtual {v6, p0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v7, 0x1

    .line 266
    new-array v8, v7, [I

    .line 267
    invoke-static {v7, v8, p0}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    const/16 v9, 0xde1

    .line 268
    invoke-static {v9, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v0, 0x2800

    const v1, 0x46180400    # 9729.0f

    .line 269
    invoke-static {v9, v0, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2801

    .line 271
    invoke-static {v9, v0, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2802

    const v1, 0x47012f00    # 33071.0f

    .line 273
    invoke-static {v9, v0, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2803

    .line 275
    invoke-static {v9, v0, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 278
    aget v0, v8, p0

    const v10, 0x8d40

    invoke-static {v10, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const v0, 0x8ce0

    .line 279
    invoke-static {v10, v0, v9, p1, p0}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    const/16 v4, 0x1908

    const/16 v5, 0x1401

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, p2

    move v3, p3

    .line 281
    invoke-static/range {v0 .. v6}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 284
    invoke-static {v9, p0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 285
    invoke-static {v10, p0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 287
    invoke-static {v7, v8, p0}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    return-object v6
.end method

.method public copyTexture(IIII)Z
    .registers 21

    move/from16 v0, p1

    move/from16 v1, p2

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_4c

    if-ne v1, v3, :cond_b

    goto :goto_4c

    :cond_b
    mul-int v3, p3, p4

    if-nez v3, :cond_10

    return v2

    :cond_10
    const/4 v3, 0x1

    .line 318
    new-array v4, v3, [I

    .line 319
    invoke-static {v3, v4, v2}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 320
    aget v5, v4, v2

    const v6, 0x8d40

    invoke-static {v6, v5}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const v5, 0x8ce0

    const/16 v7, 0xde1

    .line 321
    invoke-static {v6, v5, v7, v0, v2}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 324
    invoke-static {v7, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v8, 0xde1

    const/4 v9, 0x0

    const/16 v10, 0x1908

    const/4 v11, 0x0

    move/from16 v13, p3

    move/from16 v14, p4

    .line 325
    invoke-static/range {v8 .. v15}, Landroid/opengl/GLES20;->glCopyTexImage2D(IIIIIIII)V

    .line 326
    invoke-static {v7, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 327
    invoke-static {v6, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 329
    invoke-static {v3, v4, v2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 331
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-eqz v0, :cond_4b

    .line 333
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    return v2

    :cond_4b
    return v3

    :cond_4c
    :goto_4c
    return v2
.end method

.method public drawFrameOnScreen(ILcom/bytedance/labcv/effectsdk/BytedEffectConstants$TextureFormat;II[F)V
    .registers 7

    .line 582
    iget-object v0, p0, Lcom/bytedance/labcv/core/util/ImageUtil;->mProgramManager:Lcom/bytedance/labcv/core/opengl/ProgramManager;

    if-nez v0, :cond_b

    .line 583
    new-instance v0, Lcom/bytedance/labcv/core/opengl/ProgramManager;

    invoke-direct {v0}, Lcom/bytedance/labcv/core/opengl/ProgramManager;-><init>()V

    iput-object v0, p0, Lcom/bytedance/labcv/core/util/ImageUtil;->mProgramManager:Lcom/bytedance/labcv/core/opengl/ProgramManager;

    .line 586
    :cond_b
    iget-object p0, p0, Lcom/bytedance/labcv/core/util/ImageUtil;->mProgramManager:Lcom/bytedance/labcv/core/opengl/ProgramManager;

    invoke-virtual {p0, p2}, Lcom/bytedance/labcv/core/opengl/ProgramManager;->getProgram(Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$TextureFormat;)Lcom/bytedance/labcv/core/opengl/Program;

    move-result-object p0

    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/bytedance/labcv/core/opengl/Program;->drawFrameOnScreen(III[F)V

    return-void
.end method

.method public getOutputTexture()I
    .registers 2

    .line 74
    iget-object p0, p0, Lcom/bytedance/labcv/core/util/ImageUtil;->mFrameBufferTextures:[I

    if-nez p0, :cond_6

    const/4 p0, -0x1

    return p0

    :cond_6
    const/4 v0, 0x0

    .line 75
    aget p0, p0, v0

    return p0
.end method

.method public prepareTexture(II)I
    .registers 3

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/bytedance/labcv/core/util/ImageUtil;->initFrameBufferIfNeed(II)V

    .line 59
    iget-object p0, p0, Lcom/bytedance/labcv/core/util/ImageUtil;->mFrameBufferTextures:[I

    const/4 p1, 0x0

    aget p0, p0, p1

    return p0
.end method

.method public release()V
    .registers 2

    .line 176
    invoke-direct {p0}, Lcom/bytedance/labcv/core/util/ImageUtil;->destroyFrameBuffers()V

    .line 177
    iget-object v0, p0, Lcom/bytedance/labcv/core/util/ImageUtil;->mProgramManager:Lcom/bytedance/labcv/core/opengl/ProgramManager;

    if-eqz v0, :cond_a

    .line 178
    invoke-virtual {v0}, Lcom/bytedance/labcv/core/opengl/ProgramManager;->release()V

    .line 180
    :cond_a
    iget-object v0, p0, Lcom/bytedance/labcv/core/util/ImageUtil;->mYUVProgram:Lcom/bytedance/labcv/core/opengl/ProgramTextureYUV;

    if-eqz v0, :cond_14

    .line 181
    invoke-virtual {v0}, Lcom/bytedance/labcv/core/opengl/Program;->release()V

    const/4 v0, 0x0

    .line 182
    iput-object v0, p0, Lcom/bytedance/labcv/core/util/ImageUtil;->mYUVProgram:Lcom/bytedance/labcv/core/opengl/ProgramTextureYUV;

    :cond_14
    return-void
.end method

.method public transferBufferToBitmap(Ljava/nio/ByteBuffer;Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;II)Landroid/graphics/Bitmap;
    .registers 5

    .line 555
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p4, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    const/4 p2, 0x0

    .line 557
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 558
    invoke-virtual {p0, p1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 559
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-object p0
.end method

.method public transferBufferToBuffer(Ljava/nio/ByteBuffer;Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;II)Ljava/nio/ByteBuffer;
    .registers 6

    const/4 p0, 0x0

    return-object p0
.end method

.method public transferBufferToTexture(Ljava/nio/ByteBuffer;Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$TextureFormat;II)I
    .registers 8

    .line 470
    sget-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;->RGBA8888:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;

    const/4 v1, -0x1

    if-eq p2, v0, :cond_b

    .line 471
    const-string p0, "inputFormat support RGBA8888 only"

    invoke-static {p0}, Lcom/bytedance/labcv/core/util/LogUtils;->e(Ljava/lang/String;)V

    return v1

    .line 475
    :cond_b
    sget-object p2, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$TextureFormat;->Texure2D:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$TextureFormat;

    if-eq p3, p2, :cond_15

    .line 476
    const-string p0, "outputFormat support Texure2D only"

    invoke-static {p0}, Lcom/bytedance/labcv/core/util/LogUtils;->e(Ljava/lang/String;)V

    return v1

    :cond_15
    const/16 p2, 0x1908

    .line 480
    invoke-direct {p0, p1, p4, p5, p2}, Lcom/bytedance/labcv/core/util/ImageUtil;->create2DTexture(Ljava/nio/ByteBuffer;III)I

    move-result p0

    return p0
.end method

.method public transferTextureToBitmap(ILcom/bytedance/labcv/effectsdk/BytedEffectConstants$TextureFormat;II)Landroid/graphics/Bitmap;
    .registers 12

    .line 439
    sget-object v3, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;->RGBA8888:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/bytedance/labcv/core/util/ImageUtil;->transferTextureToBuffer(ILcom/bytedance/labcv/effectsdk/BytedEffectConstants$TextureFormat;Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;IIF)Ljava/nio/ByteBuffer;

    move-result-object p0

    if-nez p0, :cond_11

    const/4 p0, 0x0

    return-object p0

    .line 444
    :cond_11
    invoke-virtual {v0, p0, v3, v4, v5}, Lcom/bytedance/labcv/core/util/ImageUtil;->transferBufferToBitmap(Ljava/nio/ByteBuffer;Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public transferTextureToBuffer(ILcom/bytedance/labcv/effectsdk/BytedEffectConstants$TextureFormat;Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;IIF)Ljava/nio/ByteBuffer;
    .registers 8

    .line 427
    sget-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;->RGBA8888:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;

    if-eq p3, v0, :cond_b

    .line 428
    const-string p0, "the outputFormat is not supported,please use RGBA8888 as output texture format"

    invoke-static {p0}, Lcom/bytedance/labcv/core/util/LogUtils;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 431
    :cond_b
    iget-object p3, p0, Lcom/bytedance/labcv/core/util/ImageUtil;->mProgramManager:Lcom/bytedance/labcv/core/opengl/ProgramManager;

    if-nez p3, :cond_16

    .line 432
    new-instance p3, Lcom/bytedance/labcv/core/opengl/ProgramManager;

    invoke-direct {p3}, Lcom/bytedance/labcv/core/opengl/ProgramManager;-><init>()V

    iput-object p3, p0, Lcom/bytedance/labcv/core/util/ImageUtil;->mProgramManager:Lcom/bytedance/labcv/core/opengl/ProgramManager;

    .line 434
    :cond_16
    iget-object p0, p0, Lcom/bytedance/labcv/core/util/ImageUtil;->mProgramManager:Lcom/bytedance/labcv/core/opengl/ProgramManager;

    invoke-virtual {p0, p2}, Lcom/bytedance/labcv/core/opengl/ProgramManager;->getProgram(Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$TextureFormat;)Lcom/bytedance/labcv/core/opengl/Program;

    move-result-object p0

    int-to-float p2, p4

    mul-float/2addr p2, p6

    float-to-int p2, p2

    int-to-float p3, p5

    mul-float/2addr p3, p6

    float-to-int p3, p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/labcv/core/opengl/Program;->readBuffer(III)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public transferTextureToTexture(ILcom/bytedance/labcv/effectsdk/BytedEffectConstants$TextureFormat;Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$TextureFormat;IILcom/bytedance/labcv/core/util/ImageUtil$Transition;)I
    .registers 8

    .line 364
    sget-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$TextureFormat;->Texure2D:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$TextureFormat;

    if-eq p3, v0, :cond_b

    .line 365
    const-string p0, "the inputTexture is not supported,please use Texure2D as output texture format"

    invoke-static {p0}, Lcom/bytedance/labcv/core/util/LogUtils;->e(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 368
    :cond_b
    iget-object p3, p0, Lcom/bytedance/labcv/core/util/ImageUtil;->mProgramManager:Lcom/bytedance/labcv/core/opengl/ProgramManager;

    if-nez p3, :cond_16

    .line 369
    new-instance p3, Lcom/bytedance/labcv/core/opengl/ProgramManager;

    invoke-direct {p3}, Lcom/bytedance/labcv/core/opengl/ProgramManager;-><init>()V

    iput-object p3, p0, Lcom/bytedance/labcv/core/util/ImageUtil;->mProgramManager:Lcom/bytedance/labcv/core/opengl/ProgramManager;

    .line 372
    :cond_16
    invoke-virtual {p6}, Lcom/bytedance/labcv/core/util/ImageUtil$Transition;->getAngle()I

    move-result p3

    rem-int/lit16 p3, p3, 0xb4

    const/16 v0, 0x5a

    if-ne p3, v0, :cond_22

    const/4 p3, 0x1

    goto :goto_23

    :cond_22
    const/4 p3, 0x0

    .line 373
    :goto_23
    iget-object p0, p0, Lcom/bytedance/labcv/core/util/ImageUtil;->mProgramManager:Lcom/bytedance/labcv/core/opengl/ProgramManager;

    invoke-virtual {p0, p2}, Lcom/bytedance/labcv/core/opengl/ProgramManager;->getProgram(Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$TextureFormat;)Lcom/bytedance/labcv/core/opengl/Program;

    move-result-object p0

    if-eqz p3, :cond_2d

    move p2, p5

    goto :goto_2e

    :cond_2d
    move p2, p4

    :goto_2e
    if-eqz p3, :cond_31

    goto :goto_32

    :cond_31
    move p4, p5

    :goto_32
    invoke-virtual {p6}, Lcom/bytedance/labcv/core/util/ImageUtil$Transition;->getMatrix()[F

    move-result-object p3

    invoke-virtual {p0, p1, p2, p4, p3}, Lcom/bytedance/labcv/core/opengl/Program;->drawFrameOffScreen(III[F)I

    move-result p0

    return p0
.end method

.method public transferTextureToTexture(IILcom/bytedance/labcv/effectsdk/BytedEffectConstants$TextureFormat;Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$TextureFormat;IILcom/bytedance/labcv/core/util/ImageUtil$Transition;)Z
    .registers 10

    .line 379
    sget-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$TextureFormat;->Texure2D:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$TextureFormat;

    const/4 v1, 0x0

    if-eq p4, v0, :cond_b

    .line 380
    const-string p0, "the inputTexture is not supported,please use Texure2D as output texture format"

    invoke-static {p0}, Lcom/bytedance/labcv/core/util/LogUtils;->e(Ljava/lang/String;)V

    return v1

    .line 383
    :cond_b
    iget-object p4, p0, Lcom/bytedance/labcv/core/util/ImageUtil;->mProgramManager:Lcom/bytedance/labcv/core/opengl/ProgramManager;

    if-nez p4, :cond_16

    .line 384
    new-instance p4, Lcom/bytedance/labcv/core/opengl/ProgramManager;

    invoke-direct {p4}, Lcom/bytedance/labcv/core/opengl/ProgramManager;-><init>()V

    iput-object p4, p0, Lcom/bytedance/labcv/core/util/ImageUtil;->mProgramManager:Lcom/bytedance/labcv/core/opengl/ProgramManager;

    .line 387
    :cond_16
    invoke-virtual {p7}, Lcom/bytedance/labcv/core/util/ImageUtil$Transition;->getAngle()I

    move-result p4

    rem-int/lit16 p4, p4, 0xb4

    const/16 v0, 0x5a

    if-ne p4, v0, :cond_21

    const/4 v1, 0x1

    .line 388
    :cond_21
    iget-object p0, p0, Lcom/bytedance/labcv/core/util/ImageUtil;->mProgramManager:Lcom/bytedance/labcv/core/opengl/ProgramManager;

    invoke-virtual {p0, p3}, Lcom/bytedance/labcv/core/opengl/ProgramManager;->getProgram(Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$TextureFormat;)Lcom/bytedance/labcv/core/opengl/Program;

    move-result-object p0

    if-eqz v1, :cond_2b

    move p4, p6

    goto :goto_2c

    :cond_2b
    move p4, p5

    :goto_2c
    if-eqz v1, :cond_2f

    goto :goto_30

    :cond_2f
    move p5, p6

    :goto_30
    invoke-virtual {p7}, Lcom/bytedance/labcv/core/util/ImageUtil$Transition;->getMatrix()[F

    move-result-object p6

    move p3, p2

    move p2, p1

    move-object p1, p0

    invoke-virtual/range {p1 .. p6}, Lcom/bytedance/labcv/core/opengl/Program;->drawFrameOffScreen(IIII[F)Z

    move-result p0

    return p0
.end method

.method public transferYUVToTexture(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IILcom/bytedance/labcv/core/util/ImageUtil$Transition;)I
    .registers 10

    .line 395
    iget-object v0, p0, Lcom/bytedance/labcv/core/util/ImageUtil;->mYUVProgram:Lcom/bytedance/labcv/core/opengl/ProgramTextureYUV;

    if-nez v0, :cond_b

    .line 396
    new-instance v0, Lcom/bytedance/labcv/core/opengl/ProgramTextureYUV;

    invoke-direct {v0}, Lcom/bytedance/labcv/core/opengl/ProgramTextureYUV;-><init>()V

    iput-object v0, p0, Lcom/bytedance/labcv/core/util/ImageUtil;->mYUVProgram:Lcom/bytedance/labcv/core/opengl/ProgramTextureYUV;

    :cond_b
    const/16 v0, 0x1906

    .line 399
    invoke-static {p1, p4, p5, v0}, Lcom/bytedance/labcv/core/opengl/GlUtil;->createImageTexture(Ljava/nio/ByteBuffer;III)I

    move-result p1

    .line 400
    div-int/lit8 v0, p4, 0x2

    div-int/lit8 v1, p5, 0x2

    const/16 v2, 0x190a

    invoke-static {p2, v0, v1, v2}, Lcom/bytedance/labcv/core/opengl/GlUtil;->createImageTexture(Ljava/nio/ByteBuffer;III)I

    move-result p2

    .line 401
    invoke-static {p3, v0, v1, v2}, Lcom/bytedance/labcv/core/opengl/GlUtil;->createImageTexture(Ljava/nio/ByteBuffer;III)I

    move-result p3

    .line 402
    iget-object p0, p0, Lcom/bytedance/labcv/core/util/ImageUtil;->mYUVProgram:Lcom/bytedance/labcv/core/opengl/ProgramTextureYUV;

    invoke-virtual {p6}, Lcom/bytedance/labcv/core/util/ImageUtil$Transition;->getMatrix()[F

    move-result-object p6

    invoke-virtual/range {p0 .. p6}, Lcom/bytedance/labcv/core/opengl/ProgramTextureYUV;->drawFrameOffScreen(IIIII[F)I

    move-result p0

    return p0
.end method
