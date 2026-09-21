.class public Lcom/transsion/camera/feature/mode/aigc/preview/PreviewRender;
.super Lcom/transsion/camera/feature/mode/aigc/preview/BaseRender;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mBitmapBuffer:Ljava/nio/ByteBuffer;

.field private final mFlipYMatrix:[F

.field private mOffscreenFboId:[I

.field private mOffscreenTextureId:[I

.field private volatile mPreviewShotCallback:Lcom/transsion/camera/feature/mode/aigc/preview/IPreviewShot$IPreviewShotCallback;

.field private mProgramOesTo2D:Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramOesTo2D;

.field private final mTextureMatrix:[F

.field private final mVertexMatrix:[F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 34
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "PreviewRender"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/aigc/preview/PreviewRender;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 52
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aigc/preview/BaseRender;-><init>()V

    const/16 v0, 0x10

    .line 36
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/aigc/preview/PreviewRender;->mTextureMatrix:[F

    .line 38
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/aigc/preview/PreviewRender;->mFlipYMatrix:[F

    .line 40
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/preview/PreviewRender;->mVertexMatrix:[F

    return-void
.end method


# virtual methods
.method public bridge synthetic draw(I[F)V
    .registers 3

    .line 32
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/feature/mode/aigc/preview/BaseRender;->draw(I[F)V

    return-void
.end method

.method public bridge synthetic draw(I[F[F)V
    .registers 4

    .line 32
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/aigc/preview/BaseRender;->draw(I[F[F)V

    return-void
.end method

.method public draw(Landroid/graphics/SurfaceTexture;III)Z
    .registers 16

    .line 112
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/preview/PreviewRender;->mProgramOesTo2D:Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramOesTo2D;

    invoke-virtual {v0, p2, p3, p4}, Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramOesTo2D;->draw(III)Z

    .line 114
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/aigc/preview/PreviewRender;->mProgramOesTo2D:Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramOesTo2D;

    invoke-virtual {p2}, Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramOesTo2D;->getFboTextureId()I

    move-result p2

    filled-new-array {p2}, [I

    move-result-object p2

    .line 116
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/preview/PreviewRender;->mTextureMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 117
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/preview/PreviewRender;->mTextureMatrix:[F

    invoke-virtual {p1, v0}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 119
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/preview/PreviewRender;->mPreviewShotCallback:Lcom/transsion/camera/feature/mode/aigc/preview/IPreviewShot$IPreviewShotCallback;

    if-eqz p1, :cond_98

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/preview/PreviewRender;->mOffscreenTextureId:[I

    if-eqz p1, :cond_98

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/preview/PreviewRender;->mOffscreenFboId:[I

    if-eqz v0, :cond_98

    .line 121
    aget p1, p1, v1

    const/16 v0, 0xde1

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v9, 0x1401

    const/4 v10, 0x0

    const/16 v2, 0xde1

    const/4 v3, 0x0

    const/16 v4, 0x1908

    const/4 v7, 0x0

    const/16 v8, 0x1908

    move v5, p3

    move v6, p4

    .line 122
    invoke-static/range {v2 .. v10}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 124
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/preview/PreviewRender;->mOffscreenFboId:[I

    aget p1, p1, v1

    const p3, 0x8d40

    invoke-static {p3, p1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 125
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/preview/PreviewRender;->mOffscreenTextureId:[I

    aget p1, p1, v1

    const p4, 0x8ce0

    invoke-static {p3, p4, v0, p1, v1}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 128
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/preview/PreviewRender;->mTextureMatrix:[F

    const/high16 p3, 0x3f000000    # 0.5f

    const/4 p4, 0x0

    invoke-static {p1, v1, p3, p3, p4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 129
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/preview/PreviewRender;->mTextureMatrix:[F

    const/high16 p3, -0x40800000    # -1.0f

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v1, v0, p3, v0}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 130
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/preview/PreviewRender;->mTextureMatrix:[F

    const/high16 p3, -0x41000000    # -0.5f

    invoke-static {p1, v1, p3, p3, p4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 132
    aget p1, p2, v1

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/aigc/preview/PreviewRender;->mTextureMatrix:[F

    iget-object p3, p0, Lcom/transsion/camera/feature/mode/aigc/preview/PreviewRender;->mOffscreenFboId:[I

    aget p3, p3, v1

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/aigc/preview/PreviewRender;->drawOffScreen(I[FI)V

    .line 134
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/preview/PreviewRender;->mOffscreenFboId:[I

    aget p1, p1, v1

    invoke-virtual {p0, p1, v5, v6}, Lcom/transsion/camera/feature/mode/aigc/preview/PreviewRender;->textureToBitmap(III)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 136
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/aigc/preview/PreviewRender;->mPreviewShotCallback:Lcom/transsion/camera/feature/mode/aigc/preview/IPreviewShot$IPreviewShotCallback;

    if-eqz p2, :cond_8c

    .line 137
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/aigc/preview/PreviewRender;->mPreviewShotCallback:Lcom/transsion/camera/feature/mode/aigc/preview/IPreviewShot$IPreviewShotCallback;

    invoke-static {p1}, Lcom/transsion/camera/utils/BitmapUtils;->bitmapToJpeg(Landroid/graphics/Bitmap;)[B

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/transsion/camera/feature/mode/aigc/preview/IPreviewShot$IPreviewShotCallback;->onPreviewShot([B)V

    const/4 p1, 0x0

    .line 138
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/preview/PreviewRender;->mPreviewShotCallback:Lcom/transsion/camera/feature/mode/aigc/preview/IPreviewShot$IPreviewShotCallback;

    .line 141
    :cond_8c
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/preview/PreviewRender;->mOffscreenTextureId:[I

    aget p1, p1, v1

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/aigc/preview/PreviewRender;->mFlipYMatrix:[F

    iget-object p3, p0, Lcom/transsion/camera/feature/mode/aigc/preview/PreviewRender;->mVertexMatrix:[F

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/aigc/preview/PreviewRender;->draw(I[F[F)V

    goto :goto_a1

    .line 143
    :cond_98
    aget p1, p2, v1

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/aigc/preview/PreviewRender;->mTextureMatrix:[F

    iget-object p3, p0, Lcom/transsion/camera/feature/mode/aigc/preview/PreviewRender;->mVertexMatrix:[F

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/aigc/preview/PreviewRender;->draw(I[F[F)V

    :goto_a1
    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic drawOffScreen(I[FI)V
    .registers 4

    .line 32
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/aigc/preview/BaseRender;->drawOffScreen(I[FI)V

    return-void
.end method

.method public drawOffScreen(Landroid/graphics/SurfaceTexture;IIII)Z
    .registers 7

    .line 151
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/preview/PreviewRender;->mProgramOesTo2D:Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramOesTo2D;

    invoke-virtual {v0, p2, p3, p4}, Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramOesTo2D;->draw(III)Z

    .line 153
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/aigc/preview/PreviewRender;->mProgramOesTo2D:Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramOesTo2D;

    invoke-virtual {p2}, Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramOesTo2D;->getFboTextureId()I

    move-result p2

    filled-new-array {p2}, [I

    move-result-object p2

    .line 155
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/aigc/preview/PreviewRender;->mTextureMatrix:[F

    const/4 p4, 0x0

    invoke-static {p3, p4}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 156
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/aigc/preview/PreviewRender;->mTextureMatrix:[F

    invoke-virtual {p1, p3}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 158
    aget p1, p2, p4

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/aigc/preview/PreviewRender;->mTextureMatrix:[F

    invoke-virtual {p0, p1, p2, p5}, Lcom/transsion/camera/feature/mode/aigc/preview/PreviewRender;->drawOffScreen(I[FI)V

    const/4 p0, 0x1

    return p0
.end method

.method public init()V
    .registers 6

    .line 57
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/aigc/preview/BaseRender;->init()V

    .line 59
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/preview/PreviewRender;->mTextureMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 60
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/preview/PreviewRender;->mVertexMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 62
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/preview/PreviewRender;->mFlipYMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 63
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/preview/PreviewRender;->mFlipYMatrix:[F

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v2, v3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 64
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/preview/PreviewRender;->mFlipYMatrix:[F

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v4, -0x40800000    # -1.0f

    invoke-static {v0, v1, v2, v4, v2}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 65
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/preview/PreviewRender;->mFlipYMatrix:[F

    const/high16 v2, -0x41000000    # -0.5f

    invoke-static {v0, v1, v2, v2, v3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    const/4 v0, 0x1

    .line 67
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/aigc/preview/PreviewRender;->mOffscreenTextureId:[I

    .line 68
    new-array v3, v0, [I

    iput-object v3, p0, Lcom/transsion/camera/feature/mode/aigc/preview/PreviewRender;->mOffscreenFboId:[I

    .line 70
    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 71
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/aigc/preview/PreviewRender;->mOffscreenFboId:[I

    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 73
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/aigc/preview/PreviewRender;->mOffscreenTextureId:[I

    aget v2, v2, v1

    const/16 v3, 0xde1

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v2, 0x2802

    const v4, 0x812f

    .line 74
    invoke-static {v3, v2, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v2, 0x2803

    .line 75
    invoke-static {v3, v2, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v2, 0x2800

    const/16 v4, 0x2601

    .line 76
    invoke-static {v3, v2, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v2, 0x2801

    .line 77
    invoke-static {v3, v2, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 78
    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 80
    new-instance v1, Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramOesTo2D;

    invoke-direct {v1}, Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramOesTo2D;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/aigc/preview/PreviewRender;->mProgramOesTo2D:Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramOesTo2D;

    .line 81
    invoke-virtual {v1}, Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramOesTo2D;->onCreate()V

    .line 82
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/preview/PreviewRender;->mProgramOesTo2D:Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramOesTo2D;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramOesTo2D;->setBindFbo(Z)V

    return-void
.end method

.method public previewShot(Lcom/transsion/camera/feature/mode/aigc/preview/IPreviewShot$IPreviewShotCallback;)V
    .registers 2

    .line 164
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/preview/PreviewRender;->mPreviewShotCallback:Lcom/transsion/camera/feature/mode/aigc/preview/IPreviewShot$IPreviewShotCallback;

    return-void
.end method

.method public textureToBitmap(III)Landroid/graphics/Bitmap;
    .registers 16

    .line 168
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x1

    .line 170
    new-array v2, v2, [I

    const v3, 0x8ca6

    const/4 v4, 0x0

    .line 171
    invoke-static {v3, v2, v4}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    const v3, 0x8d40

    .line 173
    invoke-static {v3, p1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 175
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/preview/PreviewRender;->mBitmapBuffer:Ljava/nio/ByteBuffer;

    if-nez p1, :cond_23

    mul-int p1, p2, p3

    mul-int/lit8 p1, p1, 0x4

    .line 176
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/preview/PreviewRender;->mBitmapBuffer:Ljava/nio/ByteBuffer;

    goto :goto_38

    .line 178
    :cond_23
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 179
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/preview/PreviewRender;->mBitmapBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result p1

    mul-int v5, p2, p3

    mul-int/lit8 v5, v5, 0x4

    if-ge p1, v5, :cond_38

    .line 180
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/preview/PreviewRender;->mBitmapBuffer:Ljava/nio/ByteBuffer;

    :cond_38
    :goto_38
    const/16 v10, 0x1401

    .line 184
    iget-object v11, p0, Lcom/transsion/camera/feature/mode/aigc/preview/PreviewRender;->mBitmapBuffer:Ljava/nio/ByteBuffer;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v9, 0x1908

    move v7, p2

    move v8, p3

    invoke-static/range {v5 .. v11}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 186
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 187
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/preview/PreviewRender;->mBitmapBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 189
    aget p0, v2, v4

    invoke-static {v3, p0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 191
    sget-object p0, Lcom/transsion/camera/feature/mode/aigc/preview/PreviewRender;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "textureToBitmap cost "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, "ms"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p1
.end method

.method public unInit()V
    .registers 5

    .line 87
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/aigc/preview/BaseRender;->unInit()V

    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/preview/PreviewRender;->mPreviewShotCallback:Lcom/transsion/camera/feature/mode/aigc/preview/IPreviewShot$IPreviewShotCallback;

    .line 90
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aigc/preview/PreviewRender;->mBitmapBuffer:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_f

    .line 91
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 92
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/preview/PreviewRender;->mBitmapBuffer:Ljava/nio/ByteBuffer;

    .line 95
    :cond_f
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aigc/preview/PreviewRender;->mOffscreenTextureId:[I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1a

    .line 96
    invoke-static {v3, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 97
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/preview/PreviewRender;->mOffscreenTextureId:[I

    .line 99
    :cond_1a
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aigc/preview/PreviewRender;->mOffscreenFboId:[I

    if-eqz v1, :cond_23

    .line 100
    invoke-static {v3, v1, v2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 101
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/preview/PreviewRender;->mOffscreenFboId:[I

    .line 104
    :cond_23
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aigc/preview/PreviewRender;->mProgramOesTo2D:Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramOesTo2D;

    if-eqz v1, :cond_2c

    .line 105
    invoke-virtual {v1}, Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramOesTo2D;->onRelease()V

    .line 106
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/preview/PreviewRender;->mProgramOesTo2D:Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramOesTo2D;

    :cond_2c
    return-void
.end method
