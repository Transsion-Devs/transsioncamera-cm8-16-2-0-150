.class public Lcom/meicam/sdk/NvsLiveWindowExt;
.super Landroid/view/TextureView;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# static fields
.field public static final FILLMODE_PRESERVEASPECTCROP:I = 0x0

.field public static final FILLMODE_PRESERVEASPECTFIT:I = 0x1

.field public static final FILLMODE_PRESERVEASPECTFIT_BLUR:I = 0x3

.field public static final FILLMODE_STRETCH:I = 0x2


# instance fields
.field protected m_fillMode:I

.field private m_frameInfoMutex:Ljava/lang/Object;

.field protected m_internalObject:J

.field private m_overlayBuddy:Landroid/view/View;

.field private m_pendingVideoFrameInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/meicam/sdk/NvsLiveWindow$VideoFrameInfo;",
            ">;"
        }
    .end annotation
.end field

.field private m_surface:Landroid/view/Surface;

.field private m_verbose:Z

.field private m_videoFrameCallback:Lcom/meicam/sdk/NvsLiveWindow$VideoFrameCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 119
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 54
    iput-boolean p1, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_verbose:Z

    const-wide/16 v0, 0x0

    .line 112
    iput-wide v0, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_internalObject:J

    .line 113
    iput p1, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_fillMode:I

    const/4 p1, 0x0

    .line 299
    iput-object p1, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_overlayBuddy:Landroid/view/View;

    .line 307
    iput-object p1, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_videoFrameCallback:Lcom/meicam/sdk/NvsLiveWindow$VideoFrameCallback;

    .line 308
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_pendingVideoFrameInfoList:Ljava/util/ArrayList;

    .line 309
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_frameInfoMutex:Ljava/lang/Object;

    .line 120
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 121
    invoke-direct {p0}, Lcom/meicam/sdk/NvsLiveWindowExt;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 126
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 54
    iput-boolean p1, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_verbose:Z

    const-wide/16 v0, 0x0

    .line 112
    iput-wide v0, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_internalObject:J

    .line 113
    iput p1, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_fillMode:I

    const/4 p1, 0x0

    .line 299
    iput-object p1, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_overlayBuddy:Landroid/view/View;

    .line 307
    iput-object p1, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_videoFrameCallback:Lcom/meicam/sdk/NvsLiveWindow$VideoFrameCallback;

    .line 308
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_pendingVideoFrameInfoList:Ljava/util/ArrayList;

    .line 309
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_frameInfoMutex:Ljava/lang/Object;

    .line 127
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 128
    invoke-direct {p0}, Lcom/meicam/sdk/NvsLiveWindowExt;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 133
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 54
    iput-boolean p1, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_verbose:Z

    const-wide/16 p2, 0x0

    .line 112
    iput-wide p2, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_internalObject:J

    .line 113
    iput p1, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_fillMode:I

    const/4 p1, 0x0

    .line 299
    iput-object p1, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_overlayBuddy:Landroid/view/View;

    .line 307
    iput-object p1, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_videoFrameCallback:Lcom/meicam/sdk/NvsLiveWindow$VideoFrameCallback;

    .line 308
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_pendingVideoFrameInfoList:Ljava/util/ArrayList;

    .line 309
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_frameInfoMutex:Ljava/lang/Object;

    .line 134
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 135
    invoke-direct {p0}, Lcom/meicam/sdk/NvsLiveWindowExt;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 140
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 54
    iput-boolean p1, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_verbose:Z

    const-wide/16 p2, 0x0

    .line 112
    iput-wide p2, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_internalObject:J

    .line 113
    iput p1, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_fillMode:I

    const/4 p1, 0x0

    .line 299
    iput-object p1, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_overlayBuddy:Landroid/view/View;

    .line 307
    iput-object p1, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_videoFrameCallback:Lcom/meicam/sdk/NvsLiveWindow$VideoFrameCallback;

    .line 308
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_pendingVideoFrameInfoList:Ljava/util/ArrayList;

    .line 309
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_frameInfoMutex:Ljava/lang/Object;

    .line 141
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 142
    invoke-direct {p0}, Lcom/meicam/sdk/NvsLiveWindowExt;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/meicam/sdk/NvsLiveWindowExt;)Ljava/lang/Object;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_frameInfoMutex:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Lcom/meicam/sdk/NvsLiveWindowExt;)Ljava/util/ArrayList;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_pendingVideoFrameInfoList:Ljava/util/ArrayList;

    return-object p0
.end method

.method private destroyCurrentSurface()V
    .registers 3

    .line 487
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_surface:Landroid/view/Surface;

    if-nez v0, :cond_b

    goto :goto_18

    .line 490
    :cond_b
    iget-wide v0, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsLiveWindowExt;->nativeSurfaceDestroyed(J)V

    .line 491
    iget-object v0, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_surface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    const/4 v0, 0x0

    .line 492
    iput-object v0, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_surface:Landroid/view/Surface;

    :cond_18
    :goto_18
    return-void
.end method

.method private init()V
    .registers 5

    .line 479
    invoke-virtual {p0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 481
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_15

    iget-wide v0, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_internalObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_15

    const/4 v0, 0x1

    .line 482
    invoke-direct {p0, v0}, Lcom/meicam/sdk/NvsLiveWindowExt;->nativeInit(Z)V

    :cond_15
    return-void
.end method

.method private native nativeClearVideoFrame(J)V
.end method

.method private native nativeClose(J)V
.end method

.method private native nativeGetStopRenderingBeforeNextSurfaceChange(J)Z
.end method

.method private native nativeInit(Z)V
.end method

.method private native nativeMapCanonicalToView(JLandroid/graphics/PointF;)Landroid/graphics/PointF;
.end method

.method private native nativeMapNormalizedToView(JLandroid/graphics/PointF;)Landroid/graphics/PointF;
.end method

.method private native nativeMapViewToCanonical(JLandroid/graphics/PointF;)Landroid/graphics/PointF;
.end method

.method private native nativeMapViewToNormalized(JLandroid/graphics/PointF;)Landroid/graphics/PointF;
.end method

.method private native nativeOnSizeChanged(JII)V
.end method

.method private native nativeRecordUpdateTime(J)V
.end method

.method private native nativeRepaintVideoFrame(J)V
.end method

.method private native nativeSetBackgroundColor(JFFF)V
.end method

.method private native nativeSetFillMode(JI)V
.end method

.method private native nativeSetStopRenderingBeforeNextSurfaceChange(JZ)V
.end method

.method private native nativeSetVideoFrameCallback(JLcom/meicam/sdk/NvsLiveWindow$InternalVideoFrameCallback;)V
.end method

.method private native nativeSurfaceChanged(JLandroid/view/Surface;II)V
.end method

.method private native nativeSurfaceDestroyed(J)V
.end method

.method private native nativeTakeScreenshot(J)Landroid/graphics/Bitmap;
.end method


# virtual methods
.method public clearVideoFrame()V
    .registers 3

    .line 270
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 271
    iget-wide v0, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsLiveWindowExt;->nativeClearVideoFrame(J)V

    return-void
.end method

.method public getFillMode()I
    .registers 1

    .line 173
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 174
    iget p0, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_fillMode:I

    return p0
.end method

.method public getStopRenderingBeforeNextSurfaceChange()Z
    .registers 3

    .line 354
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 355
    iget-wide v0, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsLiveWindowExt;->nativeGetStopRenderingBeforeNextSurfaceChange(J)Z

    move-result p0

    return p0
.end method

.method public invalidate()V
    .registers 1

    .line 361
    invoke-super {p0}, Landroid/view/View;->invalidate()V

    .line 362
    iget-object p0, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_overlayBuddy:Landroid/view/View;

    if-eqz p0, :cond_a

    .line 363
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_a
    return-void
.end method

.method public mapCanonicalToView(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .registers 4

    .line 191
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 192
    iget-wide v0, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsLiveWindowExt;->nativeMapCanonicalToView(JLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public mapNormalizedToView(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .registers 4

    .line 227
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 228
    iget-wide v0, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsLiveWindowExt;->nativeMapNormalizedToView(JLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public mapViewToCanonical(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .registers 4

    .line 209
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 210
    iget-wide v0, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsLiveWindowExt;->nativeMapViewToCanonical(JLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public mapViewToNormalized(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .registers 4

    .line 245
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 246
    iget-wide v0, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsLiveWindowExt;->nativeMapViewToNormalized(JLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method protected onAttachedToWindow()V
    .registers 1

    .line 369
    invoke-super {p0}, Landroid/view/TextureView;->onAttachedToWindow()V

    .line 370
    invoke-direct {p0}, Lcom/meicam/sdk/NvsLiveWindowExt;->init()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 7

    const/4 v0, 0x0

    .line 376
    iput-object v0, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_overlayBuddy:Landroid/view/View;

    .line 377
    iput-object v0, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_videoFrameCallback:Lcom/meicam/sdk/NvsLiveWindow$VideoFrameCallback;

    .line 378
    iget-wide v1, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_internalObject:J

    invoke-direct {p0, v1, v2, v0}, Lcom/meicam/sdk/NvsLiveWindowExt;->nativeSetVideoFrameCallback(JLcom/meicam/sdk/NvsLiveWindow$InternalVideoFrameCallback;)V

    .line 379
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_20

    .line 380
    invoke-direct {p0}, Lcom/meicam/sdk/NvsLiveWindowExt;->destroyCurrentSurface()V

    .line 381
    iget-wide v1, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_internalObject:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_20

    .line 382
    invoke-direct {p0, v1, v2}, Lcom/meicam/sdk/NvsLiveWindowExt;->nativeClose(J)V

    .line 383
    iput-wide v3, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_internalObject:J

    .line 387
    :cond_20
    invoke-virtual {p0, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 389
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 7

    .line 395
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_b

    .line 396
    iget-wide v0, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsLiveWindowExt;->nativeOnSizeChanged(JII)V

    .line 397
    :cond_b
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/TextureView;->onSizeChanged(IIII)V

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .registers 11

    .line 403
    invoke-direct {p0}, Lcom/meicam/sdk/NvsLiveWindowExt;->destroyCurrentSurface()V

    .line 404
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1d

    const/4 v0, 0x1

    if-lt p2, v0, :cond_1d

    if-lt p3, v0, :cond_1d

    .line 405
    new-instance v4, Landroid/view/Surface;

    invoke-direct {v4, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v4, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_surface:Landroid/view/Surface;

    .line 406
    iget-wide v2, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_internalObject:J

    move-object v1, p0

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/meicam/sdk/NvsLiveWindowExt;->nativeSurfaceChanged(JLandroid/view/Surface;II)V

    :cond_1d
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .registers 2

    .line 423
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p1

    if-nez p1, :cond_9

    .line 424
    invoke-direct {p0}, Lcom/meicam/sdk/NvsLiveWindowExt;->destroyCurrentSurface()V

    :cond_9
    const/4 p0, 0x1

    return p0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .registers 11

    .line 413
    invoke-direct {p0}, Lcom/meicam/sdk/NvsLiveWindowExt;->destroyCurrentSurface()V

    .line 414
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1d

    const/4 v0, 0x1

    if-lt p2, v0, :cond_1d

    if-lt p3, v0, :cond_1d

    .line 415
    new-instance v4, Landroid/view/Surface;

    invoke-direct {v4, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v4, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_surface:Landroid/view/Surface;

    .line 416
    iget-wide v2, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_internalObject:J

    move-object v1, p0

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/meicam/sdk/NvsLiveWindowExt;->nativeSurfaceChanged(JLandroid/view/Surface;II)V

    :cond_1d
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .registers 11

    .line 432
    iget-object v0, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_videoFrameCallback:Lcom/meicam/sdk/NvsLiveWindow$VideoFrameCallback;

    if-nez v0, :cond_6

    goto/16 :goto_a5

    .line 435
    :cond_6
    iget-wide v0, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsLiveWindowExt;->nativeRecordUpdateTime(J)V

    .line 437
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v0

    .line 438
    iget-boolean p1, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_verbose:Z

    if-eqz p1, :cond_29

    .line 439
    const-string p1, "Meishe"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "surface texture updated, frame id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :cond_29
    iget-object p1, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_frameInfoMutex:Ljava/lang/Object;

    monitor-enter p1

    .line 445
    :try_start_2c
    iget-object v2, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_pendingVideoFrameInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :cond_34
    if-ge v5, v3, :cond_61

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lcom/meicam/sdk/NvsLiveWindow$VideoFrameInfo;

    .line 446
    iget-wide v7, v6, Lcom/meicam/sdk/NvsLiveWindow$VideoFrameInfo;->frameId:J

    cmp-long v7, v7, v0

    if-nez v7, :cond_34

    .line 448
    iget-boolean v2, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_verbose:Z

    if-eqz v2, :cond_62

    .line 449
    const-string v2, "Meishe"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found frame info, frame id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_62

    :catchall_5f
    move-exception p0

    goto :goto_a6

    :cond_61
    const/4 v6, 0x0

    :cond_62
    :goto_62
    if-eqz v6, :cond_81

    .line 457
    :goto_64
    iget-object v2, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_pendingVideoFrameInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9d

    .line 458
    iget-object v2, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_pendingVideoFrameInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meicam/sdk/NvsLiveWindow$VideoFrameInfo;

    iget-wide v2, v2, Lcom/meicam/sdk/NvsLiveWindow$VideoFrameInfo;->frameId:J

    cmp-long v2, v2, v0

    if-ltz v2, :cond_7b

    goto :goto_9d

    .line 461
    :cond_7b
    iget-object v2, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_pendingVideoFrameInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_64

    .line 464
    :cond_81
    iget-object v0, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_pendingVideoFrameInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9d

    .line 465
    iget-object v0, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_pendingVideoFrameInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/meicam/sdk/NvsLiveWindow$VideoFrameInfo;

    .line 466
    iget-object v0, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_pendingVideoFrameInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 469
    :cond_9d
    :goto_9d
    monitor-exit p1
    :try_end_9e
    .catchall {:try_start_2c .. :try_end_9e} :catchall_5f

    if-eqz v6, :cond_a5

    .line 472
    iget-object p0, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_videoFrameCallback:Lcom/meicam/sdk/NvsLiveWindow$VideoFrameCallback;

    invoke-interface {p0, v6}, Lcom/meicam/sdk/NvsLiveWindow$VideoFrameCallback;->onVideoFrameRendered(Lcom/meicam/sdk/NvsLiveWindow$VideoFrameInfo;)V

    :cond_a5
    :goto_a5
    return-void

    .line 469
    :goto_a6
    :try_start_a6
    monitor-exit p1
    :try_end_a7
    .catchall {:try_start_a6 .. :try_end_a7} :catchall_5f

    throw p0
.end method

.method public repaintVideoFrame()V
    .registers 3

    .line 258
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 259
    iget-wide v0, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsLiveWindowExt;->nativeRepaintVideoFrame(J)V

    return-void
.end method

.method public setBackgroundColor(FFF)V
    .registers 10

    .line 295
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 296
    iget-wide v1, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_internalObject:J

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/meicam/sdk/NvsLiveWindowExt;->nativeSetBackgroundColor(JFFF)V

    return-void
.end method

.method public setFillMode(I)V
    .registers 4

    .line 155
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 156
    iget v0, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_fillMode:I

    if-ne p1, v0, :cond_8

    return-void

    .line 159
    :cond_8
    iput p1, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_fillMode:I

    .line 160
    iget-wide v0, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsLiveWindowExt;->nativeSetFillMode(JI)V

    return-void
.end method

.method public setOverlayBuddy(Landroid/view/View;)V
    .registers 2

    .line 303
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 304
    iput-object p1, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_overlayBuddy:Landroid/view/View;

    return-void
.end method

.method public setStopRenderingBeforeNextSurfaceChange(Z)V
    .registers 4

    .line 348
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 349
    iget-wide v0, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsLiveWindowExt;->nativeSetStopRenderingBeforeNextSurfaceChange(JZ)V

    return-void
.end method

.method public setVideoFrameCallback(Lcom/meicam/sdk/NvsLiveWindow$VideoFrameCallback;)V
    .registers 4

    .line 321
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 322
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    .line 325
    :cond_a
    iput-object p1, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_videoFrameCallback:Lcom/meicam/sdk/NvsLiveWindow$VideoFrameCallback;

    if-eqz p1, :cond_19

    .line 327
    iget-wide v0, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_internalObject:J

    new-instance p1, Lcom/meicam/sdk/NvsLiveWindowExt$1;

    invoke-direct {p1, p0}, Lcom/meicam/sdk/NvsLiveWindowExt$1;-><init>(Lcom/meicam/sdk/NvsLiveWindowExt;)V

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsLiveWindowExt;->nativeSetVideoFrameCallback(JLcom/meicam/sdk/NvsLiveWindow$InternalVideoFrameCallback;)V

    return-void

    .line 342
    :cond_19
    iget-wide v0, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_internalObject:J

    const/4 p1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsLiveWindowExt;->nativeSetVideoFrameCallback(JLcom/meicam/sdk/NvsLiveWindow$InternalVideoFrameCallback;)V

    return-void
.end method

.method public takeScreenshot()Landroid/graphics/Bitmap;
    .registers 3

    .line 282
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 283
    iget-wide v0, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsLiveWindowExt;->nativeTakeScreenshot(J)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
