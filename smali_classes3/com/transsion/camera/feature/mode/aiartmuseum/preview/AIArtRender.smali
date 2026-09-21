.class public Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;
.super Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BaseRender;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAIArtMuseumEngine:Lcom/transsion/camera/app/common/algorithm/aiartmuseum/AIArtMuseumEngine;

.field private mBitmapBuffer:Ljava/nio/ByteBuffer;

.field private volatile mEffect:Ljava/lang/String;

.field private volatile mEffectValue:Ljava/lang/String;

.field private mFboId:[I

.field private mFboTextureId:[I

.field private final mFlipYMatrix:[F

.field private mFrameNumber:I

.field private volatile mPreviewShotCallback:Lcom/transsion/camera/feature/mode/aiartmuseum/preview/IPreviewShot$IPreviewShotCallback;

.field private mSkipFrameCount:I

.field private volatile mStreamCallback:Lcom/transsion/camera/feature/mode/aiartmuseum/preview/IPreviewStream$IStreamCallback;

.field private volatile mSyncDraw:Z

.field private final mTextureMatrix:[F

.field private mVertexMatrix:[F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 38
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AIArtRender"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/mode/aiartmuseum/preview/IGLExecutor;)V
    .registers 3

    .line 67
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BaseRender;-><init>(Lcom/transsion/camera/feature/mode/aiartmuseum/preview/IGLExecutor;)V

    const/16 p1, 0x10

    .line 40
    new-array v0, p1, [F

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->mTextureMatrix:[F

    .line 42
    new-array v0, p1, [F

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->mFlipYMatrix:[F

    .line 44
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->mVertexMatrix:[F

    const/4 p1, 0x1

    .line 46
    iput p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->mSkipFrameCount:I

    return-void
.end method

.method private aiArtDraw(IIII)V
    .registers 14

    .line 213
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 214
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->mAIArtMuseumEngine:Lcom/transsion/camera/app/common/algorithm/aiartmuseum/AIArtMuseumEngine;

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BaseRender;->mTextureId:[I

    const/4 v5, 0x1

    move v3, p1

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-virtual/range {v2 .. v8}, Lcom/transsion/camera/app/common/algorithm/aiartmuseum/AIArtMuseumEngine;->process(I[IIIII)V

    .line 216
    sget-object p1, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "AIArtMuseumProcess mFrameNumber: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->mFrameNumber:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", orientation: "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", cost: "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    sub-long/2addr p3, v0

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "ms"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 216
    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->logDrawing(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic draw(I[F)V
    .registers 3

    .line 36
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BaseRender;->draw(I[F)V

    return-void
.end method

.method public bridge synthetic draw(I[F[F)V
    .registers 4

    .line 36
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BaseRender;->draw(I[F[F)V

    return-void
.end method

.method public draw(Landroid/graphics/SurfaceTexture;IIII)Z
    .registers 17

    move/from16 v0, p5

    .line 155
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->mAIArtMuseumEngine:Lcom/transsion/camera/app/common/algorithm/aiartmuseum/AIArtMuseumEngine;

    const/4 v9, 0x0

    if-eqz v1, :cond_f7

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BaseRender;->mTextureId:[I

    if-nez v1, :cond_d

    goto/16 :goto_f7

    .line 159
    :cond_d
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->mTextureMatrix:[F

    invoke-static {v1, v9}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 160
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->mTextureMatrix:[F

    invoke-virtual {p1, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 162
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->mStreamCallback:Lcom/transsion/camera/feature/mode/aiartmuseum/preview/IPreviewStream$IStreamCallback;

    const/4 v10, 0x1

    if-eqz p1, :cond_24

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->mStreamCallback:Lcom/transsion/camera/feature/mode/aiartmuseum/preview/IPreviewStream$IStreamCallback;

    invoke-interface {p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/IPreviewStream$IStreamCallback;->emitFrame()Z

    move-result p1

    if-nez p1, :cond_28

    :cond_24
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->mPreviewShotCallback:Lcom/transsion/camera/feature/mode/aiartmuseum/preview/IPreviewShot$IPreviewShotCallback;

    if-eqz p1, :cond_cb

    :cond_28
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->mFboTextureId:[I

    if-eqz p1, :cond_cb

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->mFboId:[I

    if-eqz p1, :cond_cb

    .line 164
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->mPreviewShotCallback:Lcom/transsion/camera/feature/mode/aiartmuseum/preview/IPreviewShot$IPreviewShotCallback;

    if-eqz p1, :cond_49

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->mEffect:Ljava/lang/String;

    const-string v1, "key_ai_art_museum_style"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_49

    .line 165
    iput-boolean v10, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->mSyncDraw:Z

    .line 166
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->mAIArtMuseumEngine:Lcom/transsion/camera/app/common/algorithm/aiartmuseum/AIArtMuseumEngine;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->mEffect:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->mEffectValue:Ljava/lang/String;

    invoke-virtual {p1, v1, v2, v10}, Lcom/transsion/camera/app/common/algorithm/aiartmuseum/AIArtMuseumEngine;->setEffect(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 169
    :cond_49
    invoke-direct {p0, p2, p3, p4, v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->aiArtDraw(IIII)V

    .line 171
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->mFboTextureId:[I

    aget p1, p1, v9

    const/16 p2, 0xde1

    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v7, 0x1401

    const/4 v8, 0x0

    const/16 v0, 0xde1

    const/4 v1, 0x0

    const/16 v2, 0x1908

    const/4 v5, 0x0

    const/16 v6, 0x1908

    move v3, p3

    move v4, p4

    .line 172
    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 174
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->mFboId:[I

    aget p1, p1, v9

    const v0, 0x8d40

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 175
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->mFboTextureId:[I

    aget p1, p1, v9

    const v1, 0x8ce0

    invoke-static {v0, v1, p2, p1, v9}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 178
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->mTextureMatrix:[F

    const/high16 p2, 0x3f000000    # 0.5f

    const/4 v0, 0x0

    invoke-static {p1, v9, p2, p2, v0}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 179
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->mTextureMatrix:[F

    const/high16 p2, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v9, v1, p2, v1}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 180
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->mTextureMatrix:[F

    const/high16 p2, -0x41000000    # -0.5f

    invoke-static {p1, v9, p2, p2, v0}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 182
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BaseRender;->mTextureId:[I

    aget p1, p1, v9

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->mTextureMatrix:[F

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->mFboId:[I

    aget v0, v0, v9

    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->drawOffScreen(I[FI)V

    .line 184
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->mFboId:[I

    aget p1, p1, v9

    invoke-virtual {p0, p1, p3, p4}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->textureToBitmap(III)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 186
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->mStreamCallback:Lcom/transsion/camera/feature/mode/aiartmuseum/preview/IPreviewStream$IStreamCallback;

    if-eqz p2, :cond_af

    .line 187
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->mStreamCallback:Lcom/transsion/camera/feature/mode/aiartmuseum/preview/IPreviewStream$IStreamCallback;

    invoke-interface {p2, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/IPreviewStream$IStreamCallback;->onStreamUpdated(Landroid/graphics/Bitmap;)V

    .line 189
    :cond_af
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->mPreviewShotCallback:Lcom/transsion/camera/feature/mode/aiartmuseum/preview/IPreviewShot$IPreviewShotCallback;

    if-eqz p2, :cond_bf

    .line 190
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->mPreviewShotCallback:Lcom/transsion/camera/feature/mode/aiartmuseum/preview/IPreviewShot$IPreviewShotCallback;

    invoke-static {p1}, Lcom/transsion/camera/utils/BitmapUtils;->bitmapToJpeg(Landroid/graphics/Bitmap;)[B

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/IPreviewShot$IPreviewShotCallback;->onPreviewShot([B)V

    const/4 p1, 0x0

    .line 191
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->mPreviewShotCallback:Lcom/transsion/camera/feature/mode/aiartmuseum/preview/IPreviewShot$IPreviewShotCallback;

    .line 194
    :cond_bf
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->mFboTextureId:[I

    aget p1, p1, v9

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->mFlipYMatrix:[F

    iget-object p3, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->mVertexMatrix:[F

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->draw(I[F[F)V

    goto :goto_f6

    .line 196
    :cond_cb
    iget p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->mFrameNumber:I

    if-eqz p1, :cond_d4

    iget v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->mSkipFrameCount:I

    rem-int/2addr p1, v1

    if-nez p1, :cond_e6

    .line 197
    :cond_d4
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->mSyncDraw:Z

    if-eqz p1, :cond_e3

    .line 198
    iput-boolean v9, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->mSyncDraw:Z

    .line 199
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->mAIArtMuseumEngine:Lcom/transsion/camera/app/common/algorithm/aiartmuseum/AIArtMuseumEngine;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->mEffect:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->mEffectValue:Ljava/lang/String;

    invoke-virtual {p1, v1, v2, v9}, Lcom/transsion/camera/app/common/algorithm/aiartmuseum/AIArtMuseumEngine;->setEffect(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 201
    :cond_e3
    invoke-direct {p0, p2, p3, p4, v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->aiArtDraw(IIII)V

    .line 204
    :cond_e6
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BaseRender;->mTextureId:[I

    aget p1, p1, v9

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->mTextureMatrix:[F

    iget-object p3, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->mVertexMatrix:[F

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->draw(I[F[F)V

    .line 206
    iget p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->mFrameNumber:I

    add-int/2addr p1, v10

    iput p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->mFrameNumber:I

    :goto_f6
    return v10

    :cond_f7
    :goto_f7
    return v9
.end method

.method public bridge synthetic drawOffScreen(I[FI)V
    .registers 4

    .line 36
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BaseRender;->drawOffScreen(I[FI)V

    return-void
.end method

.method public drawOffScreen(Landroid/graphics/SurfaceTexture;IIIII)Z
    .registers 19

    .line 222
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->mAIArtMuseumEngine:Lcom/transsion/camera/app/common/algorithm/aiartmuseum/AIArtMuseumEngine;

    const/4 v1, 0x0

    if-eqz v0, :cond_68

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BaseRender;->mTextureId:[I

    if-nez v0, :cond_a

    goto :goto_68

    .line 226
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->mEffect:Ljava/lang/String;

    const-string v2, "key_ai_art_museum_style"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_20

    .line 227
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->mSyncDraw:Z

    .line 228
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->mAIArtMuseumEngine:Lcom/transsion/camera/app/common/algorithm/aiartmuseum/AIArtMuseumEngine;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->mEffect:Ljava/lang/String;

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->mEffectValue:Ljava/lang/String;

    invoke-virtual {v0, v3, v4, v2}, Lcom/transsion/camera/app/common/algorithm/aiartmuseum/AIArtMuseumEngine;->setEffect(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 231
    :cond_20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 232
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->mAIArtMuseumEngine:Lcom/transsion/camera/app/common/algorithm/aiartmuseum/AIArtMuseumEngine;

    iget-object v7, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BaseRender;->mTextureId:[I

    const/4 v8, 0x1

    move v6, p2

    move v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    invoke-virtual/range {v5 .. v11}, Lcom/transsion/camera/app/common/algorithm/aiartmuseum/AIArtMuseumEngine;->process(I[IIIII)V

    .line 234
    sget-object p2, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AIArtMuseumProcess cost "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-virtual {p3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 236
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->mTextureMatrix:[F

    invoke-static {p2, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 237
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->mTextureMatrix:[F

    invoke-virtual {p1, p2}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 239
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BaseRender;->mTextureId:[I

    aget p1, p1, v1

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->mTextureMatrix:[F

    move/from16 p3, p6

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->drawOffScreen(I[FI)V

    return v2

    :cond_68
    :goto_68
    return v1
.end method

.method public init(Ljava/lang/String;)V
    .registers 7

    .line 72
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BaseRender;->init(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->mTextureMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 75
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->mVertexMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 77
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->mFlipYMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 78
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->mFlipYMatrix:[F

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v2, v3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 79
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->mFlipYMatrix:[F

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v4, -0x40800000    # -1.0f

    invoke-static {v0, v1, v2, v4, v2}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 80
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->mFlipYMatrix:[F

    const/high16 v2, -0x41000000    # -0.5f

    invoke-static {v0, v1, v2, v2, v3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 82
    iput v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->mFrameNumber:I

    const/4 v0, 0x1

    .line 83
    iput v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->mSkipFrameCount:I

    .line 85
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->mFboId:[I

    .line 86
    new-array v3, v0, [I

    iput-object v3, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->mFboTextureId:[I

    .line 88
    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 89
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->mFboTextureId:[I

    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 91
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->mFboTextureId:[I

    aget v0, v0, v1

    const/16 v2, 0xde1

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v0, 0x2802

    const v3, 0x812f

    .line 92
    invoke-static {v2, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2803

    .line 93
    invoke-static {v2, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2800

    const/16 v3, 0x2601

    .line 94
    invoke-static {v2, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2801

    .line 95
    invoke-static {v2, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 96
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 98
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->mAIArtMuseumEngine:Lcom/transsion/camera/app/common/algorithm/aiartmuseum/AIArtMuseumEngine;

    if-nez v0, :cond_9c

    .line 99
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/aiartmuseum/AIArtMuseumEngine;->getInstance()Lcom/transsion/camera/app/common/algorithm/aiartmuseum/AIArtMuseumEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->mAIArtMuseumEngine:Lcom/transsion/camera/app/common/algorithm/aiartmuseum/AIArtMuseumEngine;

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 102
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->mAIArtMuseumEngine:Lcom/transsion/camera/app/common/algorithm/aiartmuseum/AIArtMuseumEngine;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/algorithm/aiartmuseum/AIArtMuseumEngine;->init(Z)V

    .line 103
    sget-object p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AIArtMuseumInit cost "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_9c
    return-void
.end method

.method public previewShot(Lcom/transsion/camera/feature/mode/aiartmuseum/preview/IPreviewShot$IPreviewShotCallback;)V
    .registers 2

    .line 245
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->mPreviewShotCallback:Lcom/transsion/camera/feature/mode/aiartmuseum/preview/IPreviewShot$IPreviewShotCallback;

    return-void
.end method

.method public previewStream(Lcom/transsion/camera/feature/mode/aiartmuseum/preview/IPreviewStream$IStreamCallback;)V
    .registers 2

    .line 249
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->mStreamCallback:Lcom/transsion/camera/feature/mode/aiartmuseum/preview/IPreviewStream$IStreamCallback;

    return-void
.end method

.method public textureToBitmap(III)Landroid/graphics/Bitmap;
    .registers 16

    .line 253
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x1

    .line 255
    new-array v2, v2, [I

    const v3, 0x8ca6

    const/4 v4, 0x0

    .line 256
    invoke-static {v3, v2, v4}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    const v3, 0x8d40

    .line 258
    invoke-static {v3, p1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 260
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->mBitmapBuffer:Ljava/nio/ByteBuffer;

    if-nez p1, :cond_23

    mul-int p1, p2, p3

    mul-int/lit8 p1, p1, 0x4

    .line 261
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->mBitmapBuffer:Ljava/nio/ByteBuffer;

    goto :goto_38

    .line 263
    :cond_23
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 264
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->mBitmapBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result p1

    mul-int v5, p2, p3

    mul-int/lit8 v5, v5, 0x4

    if-ge p1, v5, :cond_38

    .line 265
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->mBitmapBuffer:Ljava/nio/ByteBuffer;

    :cond_38
    :goto_38
    const/16 v10, 0x1401

    .line 269
    iget-object v11, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->mBitmapBuffer:Ljava/nio/ByteBuffer;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v9, 0x1908

    move v7, p2

    move v8, p3

    invoke-static/range {v5 .. v11}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 271
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 272
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->mBitmapBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 274
    aget p0, v2, v4

    invoke-static {v3, p0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 276
    sget-object p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

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

    invoke-static {p0, p2}, Lcom/transsion/camera/utils/debug/Log;->logDrawing(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p1
.end method

.method public unInit()V
    .registers 6

    .line 109
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BaseRender;->unInit()V

    const/4 v0, 0x0

    .line 110
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->mStreamCallback:Lcom/transsion/camera/feature/mode/aiartmuseum/preview/IPreviewStream$IStreamCallback;

    .line 111
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->mPreviewShotCallback:Lcom/transsion/camera/feature/mode/aiartmuseum/preview/IPreviewShot$IPreviewShotCallback;

    .line 113
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->mBitmapBuffer:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_11

    .line 114
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 115
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->mBitmapBuffer:Ljava/nio/ByteBuffer;

    .line 118
    :cond_11
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->mFboId:[I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1c

    .line 119
    invoke-static {v3, v1, v2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 120
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->mFboId:[I

    .line 122
    :cond_1c
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->mFboTextureId:[I

    if-eqz v1, :cond_25

    .line 123
    invoke-static {v3, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 124
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->mFboTextureId:[I

    .line 127
    :cond_25
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->mAIArtMuseumEngine:Lcom/transsion/camera/app/common/algorithm/aiartmuseum/AIArtMuseumEngine;

    if-eqz v1, :cond_54

    .line 128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 129
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->mAIArtMuseumEngine:Lcom/transsion/camera/app/common/algorithm/aiartmuseum/AIArtMuseumEngine;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/algorithm/aiartmuseum/AIArtMuseumEngine;->unInit()V

    .line 130
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->mAIArtMuseumEngine:Lcom/transsion/camera/app/common/algorithm/aiartmuseum/AIArtMuseumEngine;

    .line 131
    sget-object p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AIArtMuseumUnInit cost "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_54
    return-void
.end method

.method public updatePreview(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 136
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->mEffect:Ljava/lang/String;

    .line 137
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->mEffectValue:Ljava/lang/String;

    .line 138
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->mAIArtMuseumEngine:Lcom/transsion/camera/app/common/algorithm/aiartmuseum/AIArtMuseumEngine;

    if-eqz p0, :cond_b

    .line 139
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/algorithm/aiartmuseum/AIArtMuseumEngine;->setEffect(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public updateSkipFrameCount(I)V
    .registers 4

    const/4 v0, 0x1

    .line 148
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->mSkipFrameCount:I

    const/4 p1, 0x0

    .line 149
    iput p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->mFrameNumber:I

    .line 150
    sget-object p1, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateSkipFrameCount mSkipFrameCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->mSkipFrameCount:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public updateVertexMatrix([F)V
    .registers 2

    .line 144
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->mVertexMatrix:[F

    return-void
.end method
