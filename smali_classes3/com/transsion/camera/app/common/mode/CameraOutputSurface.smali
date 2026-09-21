.class Lcom/transsion/camera/app/common/mode/CameraOutputSurface;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private mAuxPreviewHeight:I

.field private mAuxPreviewWidth:I

.field private mAuxSurface:Ljava/lang/Object;

.field private mBackgroundPreviewHeight:I

.field private mBackgroundPreviewWidth:I

.field private mBackgroundSurface:Ljava/lang/Object;

.field private mDataFlowType:I

.field private mDirty:Z

.field private mFastThumbSurfaceInfo:Lcom/transsion/camera/app/common/mode/SurfaceInfo;

.field private mHasRequestedDataChannel:Z

.field private mImageSurfaceInfo:Lcom/transsion/camera/app/common/mode/SurfaceInfo;

.field private mIsPrepareSuccess:Z

.field private mOutputType:I

.field private mPostAlgoSensorIds:[I

.field private mPostAlgoSurfaces:[Landroid/view/Surface;

.field private mPreview:Ljava/lang/Object;

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mQcomJpegSurfaceInfo:Lcom/transsion/camera/app/common/mode/SurfaceInfo;

.field private mRawImageSurfaces:[Landroid/view/Surface;

.field private mSlavePreview:Ljava/lang/Object;

.field private mSlavePreviewHeight:I

.field private mSlavePreviewWidth:I

.field private mThumbnailSurfaceInfo:Lcom/transsion/camera/app/common/mode/SurfaceInfo;

.field private mVideoFrameRate:I

.field private mVideoSurface:Landroid/view/Surface;

.field private mVideoSurfaceHeight:I

.field private mVideoSurfaceWidth:I

.field private mYuvImageSurfaceInfo:Lcom/transsion/camera/app/common/mode/SurfaceInfo;


# direct methods
.method constructor <init>()V
    .registers 3

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "OutputSurface"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mOutputType:I

    .line 23
    iput v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mDataFlowType:I

    const/4 v1, 0x1

    .line 37
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mIsPrepareSuccess:Z

    .line 45
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mDirty:Z

    .line 46
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mHasRequestedDataChannel:Z

    return-void
.end method

.method private isAuxPreviewDifferent(Ljava/lang/Object;II)Z
    .registers 6

    .line 207
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mAuxSurface:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_8

    if-nez p1, :cond_8

    return v1

    :cond_8
    if-ne v0, p1, :cond_14

    .line 210
    iget p1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mAuxPreviewWidth:I

    if-ne p1, p2, :cond_14

    iget p0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mAuxPreviewHeight:I

    if-eq p0, p3, :cond_13

    goto :goto_14

    :cond_13
    return v1

    :cond_14
    :goto_14
    const/4 p0, 0x1

    return p0
.end method

.method private isBackgroundPreviewDifferent(Ljava/lang/Object;II)Z
    .registers 6

    .line 214
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mBackgroundSurface:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_8

    if-nez p1, :cond_8

    return v1

    :cond_8
    if-ne v0, p1, :cond_14

    .line 217
    iget p1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mBackgroundPreviewWidth:I

    if-ne p1, p2, :cond_14

    iget p0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mBackgroundPreviewHeight:I

    if-eq p0, p3, :cond_13

    goto :goto_14

    :cond_13
    return v1

    :cond_14
    :goto_14
    const/4 p0, 0x1

    return p0
.end method

.method private isPreviewSizeMatch(Landroid/util/Size;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_b

    .line 388
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[isSizeMatch] preview size is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0

    .line 391
    :cond_b
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[isSizeMatch] surface width:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mPreviewWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " height:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mPreviewHeight:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " previewSize width:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 391
    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 393
    iget v1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mPreviewWidth:I

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v2

    if-ne v1, v2, :cond_55

    iget p0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mPreviewHeight:I

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    if-ne p0, p1, :cond_55

    const/4 p0, 0x1

    return p0

    :cond_55
    return v0
.end method

.method private isSurfaceInfoDifferent(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/SurfaceInfo;Lcom/transsion/camera/app/common/mode/SurfaceInfo;)Z
    .registers 6

    .line 235
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSurfaceInfoDifferent type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", oldSurface: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", newSurface: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p2, :cond_36

    .line 237
    invoke-virtual {p2}, Lcom/transsion/camera/app/common/mode/SurfaceInfo;->hasSurface()Z

    move-result p0

    if-nez p0, :cond_2f

    goto :goto_36

    .line 240
    :cond_2f
    invoke-virtual {p3, p2}, Lcom/transsion/camera/app/common/mode/SurfaceInfo;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    .line 238
    :cond_36
    :goto_36
    invoke-virtual {p3}, Lcom/transsion/camera/app/common/mode/SurfaceInfo;->hasSurface()Z

    move-result p0

    return p0
.end method

.method private declared-synchronized previewReadyForUpdate(Landroid/util/Size;)Z
    .registers 3

    monitor-enter p0

    .line 383
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mPreview:Ljava/lang/Object;

    if-eqz v0, :cond_f

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->isPreviewSizeMatch(Landroid/util/Size;)Z

    move-result p1
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_d

    if-eqz p1, :cond_f

    const/4 p1, 0x1

    goto :goto_10

    :catchall_d
    move-exception p1

    goto :goto_12

    :cond_f
    const/4 p1, 0x0

    :goto_10
    monitor-exit p0

    return p1

    :goto_12
    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_d

    throw p1
.end method

.method private declared-synchronized videoReadyForUpdate()Z
    .registers 4

    monitor-enter p0

    .line 397
    :try_start_1
    iget v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mOutputType:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_15

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_d

    const/4 v1, 0x3

    if-ne v0, v1, :cond_b

    goto :goto_d

    .line 401
    :cond_b
    monitor-exit p0

    return v2

    .line 399
    :cond_d
    :goto_d
    :try_start_d
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mVideoSurface:Landroid/view/Surface;
    :try_end_f
    .catchall {:try_start_d .. :try_end_f} :catchall_15

    if-eqz v0, :cond_12

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    :goto_13
    monitor-exit p0

    return v2

    :catchall_15
    move-exception v0

    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v0
.end method


# virtual methods
.method public channelReadyForUpdate(Landroid/util/Size;)Z
    .registers 5

    .line 374
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "channelReadyForUpdate, mDirty:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mDirty:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , previewReadyForUpdate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->previewReadyForUpdate(Landroid/util/Size;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 375
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mDirty:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_37

    .line 376
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->previewReadyForUpdate(Landroid/util/Size;)Z

    move-result p1

    if-eqz p1, :cond_37

    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->videoReadyForUpdate()Z

    move-result p0

    if-eqz p0, :cond_37

    const/4 p0, 0x1

    return p0

    :cond_37
    return v1
.end method

.method public declared-synchronized dirty()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x1

    .line 66
    :try_start_2
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mDirty:Z

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mHasRequestedDataChannel:Z
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 68
    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method public hasSetDataChannel()Z
    .registers 1

    .line 62
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mHasRequestedDataChannel:Z

    return p0
.end method

.method public isPostAlgoSurfaceReady()Z
    .registers 1

    .line 322
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mPostAlgoSurfaces:[Landroid/view/Surface;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public isPreviewDifferent(Ljava/lang/Object;II)Z
    .registers 6

    .line 221
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mPreview:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_8

    if-nez p1, :cond_8

    return v1

    :cond_8
    if-ne v0, p1, :cond_14

    .line 224
    iget p1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mPreviewWidth:I

    if-ne p1, p2, :cond_14

    iget p0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mPreviewHeight:I

    if-eq p0, p3, :cond_13

    goto :goto_14

    :cond_13
    return v1

    :cond_14
    :goto_14
    const/4 p0, 0x1

    return p0
.end method

.method public isSlavePreviewDifferent(Ljava/lang/Object;II)Z
    .registers 6

    .line 228
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mSlavePreview:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_8

    if-nez p1, :cond_8

    return v1

    :cond_8
    if-ne v0, p1, :cond_14

    .line 231
    iget p1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mSlavePreviewWidth:I

    if-ne p1, p2, :cond_14

    iget p0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mSlavePreviewHeight:I

    if-eq p0, p3, :cond_13

    goto :goto_14

    :cond_13
    return v1

    :cond_14
    :goto_14
    const/4 p0, 0x1

    return p0
.end method

.method public isVideoSurfaceDifferent(Landroid/view/Surface;II)Z
    .registers 6

    .line 150
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mVideoSurface:Landroid/view/Surface;

    const/4 v1, 0x0

    if-nez v0, :cond_8

    if-nez p1, :cond_8

    return v1

    :cond_8
    if-ne v0, p1, :cond_14

    .line 153
    iget p1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mVideoSurfaceWidth:I

    if-ne p1, p2, :cond_14

    iget p0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mVideoSurfaceHeight:I

    if-eq p0, p3, :cond_13

    goto :goto_14

    :cond_13
    return v1

    :cond_14
    :goto_14
    const/4 p0, 0x1

    return p0
.end method

.method public declared-synchronized requestDataChannel()Lcom/transsion/camera/adapter/CameraDataChannel;
    .registers 22

    move-object/from16 v1, p0

    monitor-enter p0

    .line 326
    :try_start_3
    iget-object v0, v1, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "requestDataChannel"

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 327
    iput-boolean v0, v1, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mDirty:Z

    .line 332
    iget-object v2, v1, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mPreview:Ljava/lang/Object;

    instance-of v3, v2, Landroid/graphics/SurfaceTexture;

    const/4 v4, 0x0

    if-eqz v3, :cond_21

    .line 334
    new-instance v2, Landroid/view/Surface;

    iget-object v3, v1, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mPreview:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/SurfaceTexture;

    invoke-direct {v2, v3}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    goto :goto_2d

    :catchall_1e
    move-exception v0

    goto/16 :goto_c9

    .line 335
    :cond_21
    instance-of v3, v2, Landroid/view/SurfaceHolder;

    if-eqz v3, :cond_2c

    .line 336
    check-cast v2, Landroid/view/SurfaceHolder;

    .line 337
    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    goto :goto_2d

    :cond_2c
    move-object v2, v4

    :goto_2d
    if-eqz v2, :cond_30

    const/4 v0, 0x1

    .line 340
    :cond_30
    iput-boolean v0, v1, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mHasRequestedDataChannel:Z

    .line 342
    iget-object v0, v1, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mSlavePreview:Ljava/lang/Object;

    instance-of v0, v0, Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_43

    .line 343
    new-instance v0, Landroid/view/Surface;

    iget-object v3, v1, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mSlavePreview:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v3}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    move-object v5, v0

    goto :goto_44

    :cond_43
    move-object v5, v4

    .line 346
    :goto_44
    iget-object v0, v1, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mAuxSurface:Ljava/lang/Object;

    instance-of v0, v0, Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_55

    .line 347
    new-instance v0, Landroid/view/Surface;

    iget-object v3, v1, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mAuxSurface:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v3}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    move-object v6, v0

    goto :goto_56

    :cond_55
    move-object v6, v4

    .line 349
    :goto_56
    iget-object v0, v1, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mBackgroundSurface:Ljava/lang/Object;

    instance-of v0, v0, Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_69

    .line 350
    new-instance v0, Landroid/view/Surface;

    iget-object v3, v1, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mBackgroundSurface:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v3}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    move-object v7, v0

    move-object v0, v4

    :goto_67
    move-object v4, v2

    goto :goto_6c

    :cond_69
    move-object v0, v4

    move-object v7, v0

    goto :goto_67

    .line 352
    :goto_6c
    new-instance v2, Lcom/transsion/camera/adapter/CameraDataChannel;

    iget v3, v1, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mOutputType:I

    iget-object v8, v1, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mVideoSurface:Landroid/view/Surface;

    .line 359
    iget-object v9, v1, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mImageSurfaceInfo:Lcom/transsion/camera/app/common/mode/SurfaceInfo;

    if-nez v9, :cond_78

    move-object v9, v0

    goto :goto_7c

    :cond_78
    invoke-virtual {v9}, Lcom/transsion/camera/app/common/mode/SurfaceInfo;->getBGSurface()Lcom/transsion/camera/adapter/IBGSurface;

    move-result-object v9

    .line 360
    :goto_7c
    iget-object v10, v1, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mQcomJpegSurfaceInfo:Lcom/transsion/camera/app/common/mode/SurfaceInfo;

    if-nez v10, :cond_82

    move-object v10, v0

    goto :goto_86

    :cond_82
    invoke-virtual {v10}, Lcom/transsion/camera/app/common/mode/SurfaceInfo;->getBGSurface()Lcom/transsion/camera/adapter/IBGSurface;

    move-result-object v10

    .line 361
    :goto_86
    iget-object v11, v1, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mYuvImageSurfaceInfo:Lcom/transsion/camera/app/common/mode/SurfaceInfo;

    if-nez v11, :cond_8c

    move-object v11, v0

    goto :goto_90

    :cond_8c
    invoke-virtual {v11}, Lcom/transsion/camera/app/common/mode/SurfaceInfo;->getBGSurface()Lcom/transsion/camera/adapter/IBGSurface;

    move-result-object v11

    .line 362
    :goto_90
    iget-object v12, v1, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mThumbnailSurfaceInfo:Lcom/transsion/camera/app/common/mode/SurfaceInfo;

    if-nez v12, :cond_96

    move-object v12, v0

    goto :goto_9a

    :cond_96
    invoke-virtual {v12}, Lcom/transsion/camera/app/common/mode/SurfaceInfo;->getSurface()Landroid/view/Surface;

    move-result-object v12

    .line 363
    :goto_9a
    iget-object v13, v1, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mFastThumbSurfaceInfo:Lcom/transsion/camera/app/common/mode/SurfaceInfo;

    if-nez v13, :cond_a0

    move-object v13, v0

    goto :goto_a4

    :cond_a0
    invoke-virtual {v13}, Lcom/transsion/camera/app/common/mode/SurfaceInfo;->getSurface()Landroid/view/Surface;

    move-result-object v13

    .line 364
    :goto_a4
    iget-object v14, v1, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mPostAlgoSurfaces:[Landroid/view/Surface;

    if-nez v14, :cond_a9

    move-object v14, v0

    :cond_a9
    iget-object v15, v1, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mPostAlgoSensorIds:[I

    .line 365
    iget-object v0, v1, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mRawImageSurfaces:[Landroid/view/Surface;

    if-nez v0, :cond_b2

    const/16 v16, 0x0

    goto :goto_b4

    :cond_b2
    move-object/from16 v16, v0

    :goto_b4
    iget v0, v1, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mVideoFrameRate:I

    move/from16 v17, v0

    iget v0, v1, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mVideoSurfaceWidth:I

    move/from16 v18, v0

    iget v0, v1, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mVideoSurfaceHeight:I

    move/from16 v19, v0

    iget-boolean v0, v1, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mIsPrepareSuccess:Z

    move/from16 v20, v0

    invoke-direct/range {v2 .. v20}, Lcom/transsion/camera/adapter/CameraDataChannel;-><init>(ILandroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;Lcom/transsion/camera/adapter/IBGSurface;Lcom/transsion/camera/adapter/IBGSurface;Lcom/transsion/camera/adapter/IBGSurface;Landroid/view/Surface;Landroid/view/Surface;[Landroid/view/Surface;[I[Landroid/view/Surface;IIIZ)V
    :try_end_c7
    .catchall {:try_start_3 .. :try_end_c7} :catchall_1e

    .line 352
    monitor-exit p0

    return-object v2

    :goto_c9
    :try_start_c9
    monitor-exit p0
    :try_end_ca
    .catchall {:try_start_c9 .. :try_end_ca} :catchall_1e

    throw v0
.end method

.method public declared-synchronized reset()V
    .registers 4

    monitor-enter p0

    const/4 v0, 0x0

    .line 71
    :try_start_2
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mPreview:Ljava/lang/Object;

    .line 72
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mSlavePreview:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 73
    iput v1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mPreviewWidth:I

    .line 74
    iput v1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mPreviewHeight:I

    .line 75
    iput v1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mAuxPreviewWidth:I

    .line 76
    iput v1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mAuxPreviewHeight:I

    .line 77
    iput v1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mBackgroundPreviewWidth:I

    .line 78
    iput v1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mBackgroundPreviewHeight:I

    .line 79
    iput v1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mSlavePreviewWidth:I

    .line 80
    iput v1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mSlavePreviewHeight:I

    .line 81
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mAuxSurface:Ljava/lang/Object;

    .line 82
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mBackgroundSurface:Ljava/lang/Object;

    .line 83
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mVideoSurface:Landroid/view/Surface;

    const/4 v2, 0x1

    .line 84
    iput-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mIsPrepareSuccess:Z

    .line 85
    iput v1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mVideoSurfaceWidth:I

    .line 86
    iput v1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mVideoSurfaceHeight:I

    .line 87
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mHasRequestedDataChannel:Z

    .line 89
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mImageSurfaceInfo:Lcom/transsion/camera/app/common/mode/SurfaceInfo;

    .line 90
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mQcomJpegSurfaceInfo:Lcom/transsion/camera/app/common/mode/SurfaceInfo;

    .line 91
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mYuvImageSurfaceInfo:Lcom/transsion/camera/app/common/mode/SurfaceInfo;

    .line 92
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mThumbnailSurfaceInfo:Lcom/transsion/camera/app/common/mode/SurfaceInfo;

    .line 93
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mFastThumbSurfaceInfo:Lcom/transsion/camera/app/common/mode/SurfaceInfo;

    .line 94
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mPostAlgoSurfaces:[Landroid/view/Surface;

    .line 95
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mRawImageSurfaces:[Landroid/view/Surface;

    .line 96
    iput-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mDirty:Z
    :try_end_36
    .catchall {:try_start_2 .. :try_end_36} :catchall_38

    .line 97
    monitor-exit p0

    return-void

    :catchall_38
    move-exception v0

    :try_start_39
    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v0
.end method

.method public declared-synchronized resetRequestedDataChannelMember()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 129
    :try_start_2
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mHasRequestedDataChannel:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 130
    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    :try_start_7
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_7 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public setTagValue(Ljava/lang/String;)V
    .registers 4

    .line 58
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OutputSurface_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/debug/Log$Tag;->update(Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized updateAuxPreviewSurface(Ljava/lang/Object;II)V
    .registers 7

    monitor-enter p0

    .line 157
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->isAuxPreviewDifferent(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 158
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateAuxPreviewSurface mAuxSurface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mAuxSurface:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mAuxPreviewWidth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mAuxPreviewWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mAuxPreviewHeight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mAuxPreviewHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", newAuxSurface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 160
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mAuxSurface:Ljava/lang/Object;

    .line 161
    iput p2, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mAuxPreviewWidth:I

    .line 162
    iput p3, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mAuxPreviewHeight:I
    :try_end_52
    .catchall {:try_start_1 .. :try_end_52} :catchall_53

    goto :goto_55

    :catchall_53
    move-exception p1

    goto :goto_57

    .line 166
    :cond_55
    :goto_55
    monitor-exit p0

    return-void

    :goto_57
    :try_start_57
    monitor-exit p0
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_53

    throw p1
.end method

.method public declared-synchronized updateBackgroundPreviewSurface(Ljava/lang/Object;II)V
    .registers 7

    monitor-enter p0

    .line 169
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->isBackgroundPreviewDifferent(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 170
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateBackgroundPreviewSurface mBackgroundSurface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mBackgroundSurface:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mBackgroundPreviewWidth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mBackgroundPreviewWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mBackgroundPreviewHeight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mBackgroundPreviewHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", newBackgroundSurface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 174
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mBackgroundSurface:Ljava/lang/Object;

    .line 175
    iput p2, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mBackgroundPreviewWidth:I

    .line 176
    iput p3, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mBackgroundPreviewHeight:I
    :try_end_52
    .catchall {:try_start_1 .. :try_end_52} :catchall_53

    goto :goto_55

    :catchall_53
    move-exception p1

    goto :goto_57

    .line 178
    :cond_55
    :goto_55
    monitor-exit p0

    return-void

    :goto_57
    :try_start_57
    monitor-exit p0
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_53

    throw p1
.end method

.method public declared-synchronized updateDataFlowType(I)V
    .registers 5

    monitor-enter p0

    .line 115
    :try_start_1
    iget v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mDataFlowType:I

    if-eq v0, p1, :cond_32

    .line 116
    iput p1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mDataFlowType:I

    const/4 v0, 0x0

    .line 117
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mVideoSurface:Landroid/view/Surface;

    const/4 v0, 0x1

    .line 118
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mIsPrepareSuccess:Z

    const/4 v1, 0x0

    .line 119
    iput v1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mVideoFrameRate:I

    .line 120
    iput v1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mVideoSurfaceWidth:I

    .line 121
    iput v1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mVideoSurfaceHeight:I

    .line 122
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mHasRequestedDataChannel:Z

    .line 123
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mDirty:Z

    .line 124
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateDataFlowType, new dataFlow type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_30

    goto :goto_32

    :catchall_30
    move-exception p1

    goto :goto_34

    .line 126
    :cond_32
    :goto_32
    monitor-exit p0

    return-void

    :goto_34
    :try_start_34
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_30

    throw p1
.end method

.method public declared-synchronized updateFastThumbSurface(Landroid/view/Surface;III)V
    .registers 6

    monitor-enter p0

    .line 285
    :try_start_1
    new-instance v0, Lcom/transsion/camera/app/common/mode/SurfaceInfo;

    invoke-direct {v0, p2, p3, p4, p1}, Lcom/transsion/camera/app/common/mode/SurfaceInfo;-><init>(IIILandroid/view/Surface;)V

    .line 286
    const-string p1, "fastThumb"

    iget-object p4, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mFastThumbSurfaceInfo:Lcom/transsion/camera/app/common/mode/SurfaceInfo;

    invoke-direct {p0, p1, p4, v0}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->isSurfaceInfoDifferent(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/SurfaceInfo;Lcom/transsion/camera/app/common/mode/SurfaceInfo;)Z

    move-result p1

    if-eqz p1, :cond_3a

    .line 287
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mFastThumbSurfaceInfo:Lcom/transsion/camera/app/common/mode/SurfaceInfo;

    const/4 p1, 0x0

    .line 288
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mHasRequestedDataChannel:Z

    const/4 p1, 0x1

    .line 289
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mDirty:Z

    .line 290
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateFastThumbSurface, new surface width:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", height:"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_38

    goto :goto_3a

    :catchall_38
    move-exception p1

    goto :goto_3c

    .line 292
    :cond_3a
    :goto_3a
    monitor-exit p0

    return-void

    :goto_3c
    :try_start_3c
    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_38

    throw p1
.end method

.method public declared-synchronized updateImageSurface(Lcom/transsion/camera/adapter/IBGSurface;III)V
    .registers 6

    monitor-enter p0

    .line 244
    :try_start_1
    new-instance v0, Lcom/transsion/camera/app/common/mode/SurfaceInfo;

    invoke-direct {v0, p2, p3, p4, p1}, Lcom/transsion/camera/app/common/mode/SurfaceInfo;-><init>(IIILcom/transsion/camera/adapter/IBGSurface;)V

    .line 245
    const-string p1, "jpeg"

    iget-object p4, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mImageSurfaceInfo:Lcom/transsion/camera/app/common/mode/SurfaceInfo;

    invoke-direct {p0, p1, p4, v0}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->isSurfaceInfoDifferent(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/SurfaceInfo;Lcom/transsion/camera/app/common/mode/SurfaceInfo;)Z

    move-result p1

    if-eqz p1, :cond_3a

    .line 246
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mImageSurfaceInfo:Lcom/transsion/camera/app/common/mode/SurfaceInfo;

    const/4 p1, 0x0

    .line 247
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mHasRequestedDataChannel:Z

    const/4 p1, 0x1

    .line 248
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mDirty:Z

    .line 249
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateImageSurface, new surface width:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", height:"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_38

    goto :goto_3a

    :catchall_38
    move-exception p1

    goto :goto_3c

    .line 251
    :cond_3a
    :goto_3a
    monitor-exit p0

    return-void

    :goto_3c
    :try_start_3c
    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_38

    throw p1
.end method

.method public declared-synchronized updatePostAlgoSurface([Landroid/view/Surface;)V
    .registers 4

    monitor-enter p0

    .line 295
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mPostAlgoSurfaces:[Landroid/view/Surface;

    if-eq v0, p1, :cond_2d

    .line 296
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mPostAlgoSurfaces:[Landroid/view/Surface;

    const/4 p1, 0x0

    .line 297
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mHasRequestedDataChannel:Z

    const/4 p1, 0x1

    .line 298
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mDirty:Z

    .line 299
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updatePostAlgoSurface, new surface width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mPostAlgoSurfaces:[Landroid/view/Surface;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2b

    goto :goto_2d

    :catchall_2b
    move-exception p1

    goto :goto_2f

    .line 301
    :cond_2d
    :goto_2d
    monitor-exit p0

    return-void

    :goto_2f
    :try_start_2f
    monitor-exit p0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2b

    throw p1
.end method

.method public declared-synchronized updatePostAlgoSurfaceSensorId([I)Z
    .registers 4

    monitor-enter p0

    .line 313
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mPostAlgoSensorIds:[I

    if-eq v0, p1, :cond_25

    .line 314
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mPostAlgoSensorIds:[I

    .line 315
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updatePostAlgoSurfaceSensorId, :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mPostAlgoSensorIds:[I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_23

    .line 316
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_23
    move-exception p1

    goto :goto_28

    .line 318
    :cond_25
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :goto_28
    :try_start_28
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_23

    throw p1
.end method

.method public declared-synchronized updatePreviewSurface(Ljava/lang/Object;II)Z
    .registers 8

    monitor-enter p0

    .line 181
    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->isPreviewDifferent(Ljava/lang/Object;II)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7b

    .line 182
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updatePreviewSurface mPreview: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mPreview:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", mPreviewWidth: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mPreviewWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mPreviewHeight: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mPreviewHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", newPreview: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", width: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", height: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 184
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mPreview:Ljava/lang/Object;

    .line 185
    iput p2, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mPreviewWidth:I

    .line 186
    iput p3, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mPreviewHeight:I

    .line 187
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mHasRequestedDataChannel:Z

    const/4 p1, 0x1

    .line 188
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mDirty:Z

    .line 189
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updatePreviewSurface, new surface width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", height:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_77
    .catchall {:try_start_1 .. :try_end_77} :catchall_79

    .line 190
    monitor-exit p0

    return p1

    :catchall_79
    move-exception p1

    goto :goto_7d

    .line 192
    :cond_7b
    monitor-exit p0

    return v1

    :goto_7d
    :try_start_7d
    monitor-exit p0
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_79

    throw p1
.end method

.method public declared-synchronized updateQcomJpegImageSurface(Lcom/transsion/camera/adapter/IBGSurface;III)V
    .registers 6

    monitor-enter p0

    .line 254
    :try_start_1
    new-instance v0, Lcom/transsion/camera/app/common/mode/SurfaceInfo;

    invoke-direct {v0, p2, p3, p4, p1}, Lcom/transsion/camera/app/common/mode/SurfaceInfo;-><init>(IIILcom/transsion/camera/adapter/IBGSurface;)V

    .line 255
    const-string p1, "jpeg"

    iget-object p4, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mQcomJpegSurfaceInfo:Lcom/transsion/camera/app/common/mode/SurfaceInfo;

    invoke-direct {p0, p1, p4, v0}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->isSurfaceInfoDifferent(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/SurfaceInfo;Lcom/transsion/camera/app/common/mode/SurfaceInfo;)Z

    move-result p1

    if-eqz p1, :cond_3a

    .line 256
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mQcomJpegSurfaceInfo:Lcom/transsion/camera/app/common/mode/SurfaceInfo;

    const/4 p1, 0x0

    .line 257
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mHasRequestedDataChannel:Z

    const/4 p1, 0x1

    .line 258
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mDirty:Z

    .line 259
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateImageSurface, new surface width:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", height:"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_38

    goto :goto_3a

    :catchall_38
    move-exception p1

    goto :goto_3c

    .line 261
    :cond_3a
    :goto_3a
    monitor-exit p0

    return-void

    :goto_3c
    :try_start_3c
    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_38

    throw p1
.end method

.method public declared-synchronized updateRawImageSurface([Landroid/view/Surface;)V
    .registers 4

    monitor-enter p0

    .line 304
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mRawImageSurfaces:[Landroid/view/Surface;

    if-eq v0, p1, :cond_2d

    .line 305
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mRawImageSurfaces:[Landroid/view/Surface;

    const/4 p1, 0x0

    .line 306
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mHasRequestedDataChannel:Z

    const/4 p1, 0x1

    .line 307
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mDirty:Z

    .line 308
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateRawImageSurface, new surface width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mRawImageSurfaces:[Landroid/view/Surface;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2b

    goto :goto_2d

    :catchall_2b
    move-exception p1

    goto :goto_2f

    .line 310
    :cond_2d
    :goto_2d
    monitor-exit p0

    return-void

    :goto_2f
    :try_start_2f
    monitor-exit p0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2b

    throw p1
.end method

.method public declared-synchronized updateSlavePreviewSurface(Ljava/lang/Object;II)V
    .registers 7

    monitor-enter p0

    .line 196
    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->isSlavePreviewDifferent(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 197
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSlavePreviewSurface mSlavePreview: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mSlavePreview:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mSlavePreviewWidth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mSlavePreviewWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mSlavePreviewHeight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mSlavePreviewHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", newSlavePreview: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 199
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mSlavePreview:Ljava/lang/Object;

    .line 200
    iput p2, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mSlavePreviewWidth:I

    .line 201
    iput p3, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mSlavePreviewHeight:I

    .line 202
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updatePreviewSurface, new surface width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", height:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_71
    .catchall {:try_start_1 .. :try_end_71} :catchall_72

    goto :goto_74

    :catchall_72
    move-exception p1

    goto :goto_76

    .line 204
    :cond_74
    :goto_74
    monitor-exit p0

    return-void

    :goto_76
    :try_start_76
    monitor-exit p0
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_72

    throw p1
.end method

.method public declared-synchronized updateThumbnailSurface(Landroid/view/Surface;III)V
    .registers 6

    monitor-enter p0

    .line 275
    :try_start_1
    new-instance v0, Lcom/transsion/camera/app/common/mode/SurfaceInfo;

    invoke-direct {v0, p2, p3, p4, p1}, Lcom/transsion/camera/app/common/mode/SurfaceInfo;-><init>(IIILandroid/view/Surface;)V

    .line 276
    const-string p1, "thumbnail"

    iget-object p4, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mThumbnailSurfaceInfo:Lcom/transsion/camera/app/common/mode/SurfaceInfo;

    invoke-direct {p0, p1, p4, v0}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->isSurfaceInfoDifferent(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/SurfaceInfo;Lcom/transsion/camera/app/common/mode/SurfaceInfo;)Z

    move-result p1

    if-eqz p1, :cond_3a

    .line 277
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mThumbnailSurfaceInfo:Lcom/transsion/camera/app/common/mode/SurfaceInfo;

    const/4 p1, 0x0

    .line 278
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mHasRequestedDataChannel:Z

    const/4 p1, 0x1

    .line 279
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mDirty:Z

    .line 280
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateThumbnailSurface, new surface width:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", height:"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_38

    goto :goto_3a

    :catchall_38
    move-exception p1

    goto :goto_3c

    .line 282
    :cond_3a
    :goto_3a
    monitor-exit p0

    return-void

    :goto_3c
    :try_start_3c
    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_38

    throw p1
.end method

.method public declared-synchronized updateType(I)V
    .registers 5

    monitor-enter p0

    .line 100
    :try_start_1
    iget v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mOutputType:I

    if-eq v0, p1, :cond_32

    .line 101
    iput p1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mOutputType:I

    const/4 v0, 0x0

    .line 103
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mVideoSurface:Landroid/view/Surface;

    const/4 v0, 0x1

    .line 104
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mIsPrepareSuccess:Z

    const/4 v1, 0x0

    .line 105
    iput v1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mVideoFrameRate:I

    .line 106
    iput v1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mVideoSurfaceWidth:I

    .line 107
    iput v1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mVideoSurfaceHeight:I

    .line 108
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mHasRequestedDataChannel:Z

    .line 109
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mDirty:Z

    .line 110
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateType, new type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_30

    goto :goto_32

    :catchall_30
    move-exception p1

    goto :goto_34

    .line 112
    :cond_32
    :goto_32
    monitor-exit p0

    return-void

    :goto_34
    :try_start_34
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_30

    throw p1
.end method

.method public declared-synchronized updateVideoSurface(Landroid/view/Surface;IIIZ)Z
    .registers 8

    monitor-enter p0

    .line 134
    :try_start_1
    invoke-virtual {p0, p1, p3, p4}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->isVideoSurfaceDifferent(Landroid/view/Surface;II)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_42

    .line 135
    iput p2, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mVideoFrameRate:I

    .line 136
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mVideoSurface:Landroid/view/Surface;

    .line 137
    iput-boolean p5, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mIsPrepareSuccess:Z

    .line 138
    iput p3, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mVideoSurfaceWidth:I

    .line 139
    iput p4, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mVideoSurfaceHeight:I

    .line 140
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mHasRequestedDataChannel:Z

    const/4 p1, 0x1

    .line 141
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mDirty:Z

    .line 142
    iget-object p5, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateVideoSurface, new surface width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", height:"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", videoFrameRate:"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p5, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_3e
    .catchall {:try_start_1 .. :try_end_3e} :catchall_40

    .line 144
    monitor-exit p0

    return p1

    :catchall_40
    move-exception p1

    goto :goto_44

    .line 146
    :cond_42
    monitor-exit p0

    return v1

    :goto_44
    :try_start_44
    monitor-exit p0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_40

    throw p1
.end method

.method public declared-synchronized updateYuvImageSurface(Lcom/transsion/camera/adapter/IBGSurface;III)V
    .registers 6

    monitor-enter p0

    .line 265
    :try_start_1
    new-instance v0, Lcom/transsion/camera/app/common/mode/SurfaceInfo;

    invoke-direct {v0, p2, p3, p4, p1}, Lcom/transsion/camera/app/common/mode/SurfaceInfo;-><init>(IIILcom/transsion/camera/adapter/IBGSurface;)V

    .line 266
    const-string/jumbo p1, "yuv"

    iget-object p4, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mYuvImageSurfaceInfo:Lcom/transsion/camera/app/common/mode/SurfaceInfo;

    invoke-direct {p0, p1, p4, v0}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->isSurfaceInfoDifferent(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/SurfaceInfo;Lcom/transsion/camera/app/common/mode/SurfaceInfo;)Z

    move-result p1

    if-eqz p1, :cond_3b

    .line 267
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mYuvImageSurfaceInfo:Lcom/transsion/camera/app/common/mode/SurfaceInfo;

    const/4 p1, 0x0

    .line 268
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mHasRequestedDataChannel:Z

    const/4 p1, 0x1

    .line 269
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mDirty:Z

    .line 270
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateYuvImageSurface, new surface width:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", height:"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_38
    .catchall {:try_start_1 .. :try_end_38} :catchall_39

    goto :goto_3b

    :catchall_39
    move-exception p1

    goto :goto_3d

    .line 272
    :cond_3b
    :goto_3b
    monitor-exit p0

    return-void

    :goto_3d
    :try_start_3d
    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_39

    throw p1
.end method
