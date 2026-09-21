.class public abstract Lcom/transsion/camera/utils/gles/core/Program;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected mDrawable2d:Lcom/transsion/camera/utils/gles/core/Drawable2d;

.field protected mFrameBufferShape:Landroid/graphics/Point;

.field protected mFrameBufferTextures:[I

.field protected mFrameBuffers:[I

.field protected mProgramHandle:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {p1, p2}, Lcom/transsion/camera/utils/gles/core/GlUtil;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/utils/gles/core/Program;->mProgramHandle:I

    .line 39
    invoke-virtual {p0}, Lcom/transsion/camera/utils/gles/core/Program;->getDrawable2d()Lcom/transsion/camera/utils/gles/core/Drawable2d;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/utils/gles/core/Program;->mDrawable2d:Lcom/transsion/camera/utils/gles/core/Drawable2d;

    .line 40
    invoke-virtual {p0}, Lcom/transsion/camera/utils/gles/core/Program;->getLocations()V

    return-void
.end method

.method private bindFrameBuffer(IIII)V
    .registers 14

    const/16 p0, 0xde1

    .line 106
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

    .line 107
    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    const/16 p3, 0x2800

    const p4, 0x46180400    # 9729.0f

    .line 108
    invoke-static {p0, p3, p4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p3, 0x2801

    .line 109
    invoke-static {p0, p3, p4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p3, 0x2802

    const p4, 0x47012f00    # 33071.0f

    .line 110
    invoke-static {p0, p3, p4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p3, 0x2803

    .line 111
    invoke-static {p0, p3, p4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const p3, 0x8d40

    .line 112
    invoke-static {p3, p2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const p2, 0x8ce0

    const/4 p4, 0x0

    .line 113
    invoke-static {p3, p2, p0, p1, p4}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 114
    invoke-static {p0, p4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 115
    invoke-static {p3, p4}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    return-void
.end method

.method private destroyFrameBuffers()V
    .registers 5

    .line 119
    iget-object v0, p0, Lcom/transsion/camera/utils/gles/core/Program;->mFrameBufferTextures:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_c

    .line 120
    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 121
    iput-object v1, p0, Lcom/transsion/camera/utils/gles/core/Program;->mFrameBufferTextures:[I

    .line 124
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/utils/gles/core/Program;->mFrameBuffers:[I

    if-eqz v0, :cond_15

    .line 125
    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 126
    iput-object v1, p0, Lcom/transsion/camera/utils/gles/core/Program;->mFrameBuffers:[I

    :cond_15
    return-void
.end method


# virtual methods
.method public drawFrame(I[F)V
    .registers 4

    .line 68
    sget-object v0, Lcom/transsion/camera/utils/gles/core/GlUtil;->IDENTITY_MATRIX:[F

    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/camera/utils/gles/core/Program;->drawFrame(I[F[F)V

    return-void
.end method

.method public abstract drawFrame(I[F[F)V
.end method

.method protected abstract getDrawable2d()Lcom/transsion/camera/utils/gles/core/Drawable2d;
.end method

.method protected abstract getLocations()V
.end method

.method protected initFrameBufferIfNeed(II)V
    .registers 7

    .line 83
    iget-object v0, p0, Lcom/transsion/camera/utils/gles/core/Program;->mFrameBufferShape:Landroid/graphics/Point;

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

    goto :goto_15

    .line 84
    :cond_11
    :goto_11
    invoke-direct {p0}, Lcom/transsion/camera/utils/gles/core/Program;->destroyFrameBuffers()V

    move v0, v1

    .line 88
    :goto_15
    iget-object v3, p0, Lcom/transsion/camera/utils/gles/core/Program;->mFrameBuffers:[I

    if-eqz v3, :cond_1d

    iget-object v3, p0, Lcom/transsion/camera/utils/gles/core/Program;->mFrameBufferTextures:[I

    if-nez v3, :cond_21

    .line 89
    :cond_1d
    invoke-direct {p0}, Lcom/transsion/camera/utils/gles/core/Program;->destroyFrameBuffers()V

    move v0, v1

    :cond_21
    if-eqz v0, :cond_45

    .line 93
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/transsion/camera/utils/gles/core/Program;->mFrameBuffers:[I

    .line 94
    new-array v3, v1, [I

    iput-object v3, p0, Lcom/transsion/camera/utils/gles/core/Program;->mFrameBufferTextures:[I

    .line 95
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 96
    iget-object v0, p0, Lcom/transsion/camera/utils/gles/core/Program;->mFrameBufferTextures:[I

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 99
    iget-object v0, p0, Lcom/transsion/camera/utils/gles/core/Program;->mFrameBufferTextures:[I

    aget v0, v0, v2

    iget-object v1, p0, Lcom/transsion/camera/utils/gles/core/Program;->mFrameBuffers:[I

    aget v1, v1, v2

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/transsion/camera/utils/gles/core/Program;->bindFrameBuffer(IIII)V

    .line 101
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/transsion/camera/utils/gles/core/Program;->mFrameBufferShape:Landroid/graphics/Point;

    :cond_45
    return-void
.end method

.method public release()V
    .registers 2

    .line 137
    invoke-direct {p0}, Lcom/transsion/camera/utils/gles/core/Program;->destroyFrameBuffers()V

    .line 138
    iget v0, p0, Lcom/transsion/camera/utils/gles/core/Program;->mProgramHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    const/4 v0, -0x1

    .line 139
    iput v0, p0, Lcom/transsion/camera/utils/gles/core/Program;->mProgramHandle:I

    return-void
.end method
