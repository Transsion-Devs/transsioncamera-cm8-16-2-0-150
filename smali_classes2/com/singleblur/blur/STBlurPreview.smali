.class public Lcom/singleblur/blur/STBlurPreview;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/singleblur/blur/STBlurPreview$ProcessThread;,
        Lcom/singleblur/blur/STBlurPreview$Callback;
    }
.end annotation


# static fields
.field private static DEBUG:Z = true

.field public static final ST_BLUR_PARAM_TYPE_KERNEL:I = 0x1006

.field public static final ST_BLUR_PARAM_TYPE_LEVEL:I = 0x1001

.field public static final ST_BLUR_PARAM_TYPE_MASK_EROSION_VALUE:I = 0x1005

.field public static final ST_BLUR_PARAM_TYPE_MASK_MIN_AREA_SIZE:I = 0x1004

.field public static final ST_BLUR_PARAM_TYPE_RECT_HEIGHT_SCALE:I = 0x1003

.field public static final ST_BLUR_PARAM_TYPE_RECT_WIDTH_SCALE:I = 0x1002

.field public static final ST_BUFFER_ERROR:I = -0x4

.field public static final ST_INTERNAL_ERROR:I = -0x6

.field public static final ST_OK:I = 0x0

.field public static final ST_PARAM_ERROR:I = -0x1

.field public static final ST_PROGRAM_ERROR:I = -0x3

.field public static final ST_SHADER_ERROR:I = -0x2

.field public static final ST_TEXTURE_ERROR:I = -0x5

.field private static final TAG:Ljava/lang/String; = "STBlurPreview"


# instance fields
.field private PROCESS_LIFE_CYCLE_TIME:J

.field private RESET_MASK_CYCLE_TIME:J

.field debugSegCount:J

.field debugSegSumTime:J

.field private mContext:Landroid/content/Context;

.field private mFrameNum:I

.field private mFrontCamera:Z

.field private mInitialized:Z

.field private mLastProcessTime:J

.field private mPreviewFormat:Lcom/singleblur/faceapi/model/CvPixelFormat;

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mProcessThread:Lcom/singleblur/blur/STBlurPreview$ProcessThread;

.field private mResetMask:Z

.field private mResetMaskTime:J

.field private mSegment:Lcom/singleblur/faceapi/FigureSegment;

.field private mSegmentBuffer:[B

.field private mSegmentBufferHeight:I

.field private mSegmentBufferWidth:I

.field private mSegmentModel:Ljava/lang/String;

.field private mSegmentOption:I

.field private mSegmentOutBuffer:Ljava/nio/ByteBuffer;

.field private mSegmentOutBufferInfo:[I

.field private final mSyncObject:Ljava/lang/Object;

.field private mTmpFaceRects:[Landroid/graphics/Rect;

.field private mTmpYaws:[F

.field private mTrack:Lcom/singleblur/faceapi/FaceTrack;

.field private mUseSegment:Z


# direct methods
.method static bridge synthetic -$$Nest$fputmSegment(Lcom/singleblur/blur/STBlurPreview;Lcom/singleblur/faceapi/FigureSegment;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/singleblur/blur/STBlurPreview;->mSegment:Lcom/singleblur/faceapi/FigureSegment;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSegmentModel(Lcom/singleblur/blur/STBlurPreview;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/singleblur/blur/STBlurPreview;->mSegmentModel:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTrack(Lcom/singleblur/blur/STBlurPreview;Lcom/singleblur/faceapi/FaceTrack;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/singleblur/blur/STBlurPreview;->mTrack:Lcom/singleblur/faceapi/FaceTrack;

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoOnPreviewCallback(Lcom/singleblur/blur/STBlurPreview;[BIIZLcom/singleblur/blur/STBlurPreview$Callback;)V
    .registers 6

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/singleblur/blur/STBlurPreview;->doOnPreviewCallback([BIIZLcom/singleblur/blur/STBlurPreview$Callback;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x1

    .line 86
    invoke-direct {p0, p1, v0}, Lcom/singleblur/blur/STBlurPreview;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 9

    .line 96
    sget-object v4, Lcom/singleblur/faceapi/model/FaceConfig$FaceImageResize;->RESIZE_320W:Lcom/singleblur/faceapi/model/FaceConfig$FaceImageResize;

    sget-object v5, Lcom/singleblur/faceapi/model/FaceConfig$TrackThreadCount;->TWO_THREAD:Lcom/singleblur/faceapi/model/FaceConfig$TrackThreadCount;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/singleblur/blur/STBlurPreview;-><init>(Landroid/content/Context;ZLjava/lang/String;Lcom/singleblur/faceapi/model/FaceConfig$FaceImageResize;Lcom/singleblur/faceapi/model/FaceConfig$TrackThreadCount;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLjava/lang/String;)V
    .registers 10

    .line 100
    sget-object v4, Lcom/singleblur/faceapi/model/FaceConfig$FaceImageResize;->RESIZE_320W:Lcom/singleblur/faceapi/model/FaceConfig$FaceImageResize;

    sget-object v5, Lcom/singleblur/faceapi/model/FaceConfig$TrackThreadCount;->TWO_THREAD:Lcom/singleblur/faceapi/model/FaceConfig$TrackThreadCount;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/singleblur/blur/STBlurPreview;-><init>(Landroid/content/Context;ZLjava/lang/String;Lcom/singleblur/faceapi/model/FaceConfig$FaceImageResize;Lcom/singleblur/faceapi/model/FaceConfig$TrackThreadCount;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLjava/lang/String;Lcom/singleblur/faceapi/model/FaceConfig$FaceImageResize;Lcom/singleblur/faceapi/model/FaceConfig$TrackThreadCount;)V
    .registers 14

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 50
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/singleblur/blur/STBlurPreview;->mSegmentOutBufferInfo:[I

    const/16 v0, 0x18

    .line 51
    iput v0, p0, Lcom/singleblur/blur/STBlurPreview;->mSegmentOption:I

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/singleblur/blur/STBlurPreview;->mFrontCamera:Z

    .line 60
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/singleblur/blur/STBlurPreview;->mSyncObject:Ljava/lang/Object;

    const-wide/16 v1, 0xbb8

    .line 68
    iput-wide v1, p0, Lcom/singleblur/blur/STBlurPreview;->PROCESS_LIFE_CYCLE_TIME:J

    .line 70
    iput-boolean v0, p0, Lcom/singleblur/blur/STBlurPreview;->mResetMask:Z

    const-wide/16 v0, 0x12c

    .line 72
    iput-wide v0, p0, Lcom/singleblur/blur/STBlurPreview;->RESET_MASK_CYCLE_TIME:J

    const-wide/16 v0, 0x0

    .line 538
    iput-wide v0, p0, Lcom/singleblur/blur/STBlurPreview;->debugSegSumTime:J

    .line 539
    iput-wide v0, p0, Lcom/singleblur/blur/STBlurPreview;->debugSegCount:J

    .line 113
    iget-boolean v0, p0, Lcom/singleblur/blur/STBlurPreview;->mInitialized:Z

    if-eqz v0, :cond_2d

    .line 114
    invoke-virtual {p0}, Lcom/singleblur/blur/STBlurPreview;->destroy()I

    .line 116
    :cond_2d
    iput-boolean p2, p0, Lcom/singleblur/blur/STBlurPreview;->mUseSegment:Z

    .line 117
    invoke-static {}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->getInstance()Lcom/transsion/camera/utils/threads/WorkThreadPools;

    move-result-object v0

    new-instance v1, Lcom/singleblur/blur/STBlurPreview$1;

    const-string v3, "STBlurPreview"

    move-object v2, p0

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/singleblur/blur/STBlurPreview$1;-><init>(Lcom/singleblur/blur/STBlurPreview;Ljava/lang/String;ZLjava/lang/String;Lcom/singleblur/faceapi/model/FaceConfig$FaceImageResize;Lcom/singleblur/faceapi/model/FaceConfig$TrackThreadCount;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->execute(Lcom/transsion/camera/utils/threads/WorkTask;)V

    .line 129
    invoke-static {p1}, Lcom/singleblur/faceapi/utils/AccelerometerManager;->start(Landroid/content/Context;)V

    const/4 p0, 0x1

    .line 130
    iput-boolean p0, v2, Lcom/singleblur/blur/STBlurPreview;->mInitialized:Z

    .line 131
    iput-object p1, v2, Lcom/singleblur/blur/STBlurPreview;->mContext:Landroid/content/Context;

    return-void
.end method

.method private doOnPreviewCallback([BIIZLcom/singleblur/blur/STBlurPreview$Callback;)V
    .registers 8

    .line 521
    sget-boolean v0, Lcom/singleblur/blur/STBlurPreview;->DEBUG:Z

    if-eqz v0, :cond_2b

    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doOnPreviewCallback data.length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "STBlurPreview"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    :cond_2b
    iput-boolean p4, p0, Lcom/singleblur/blur/STBlurPreview;->mFrontCamera:Z

    .line 525
    iput p2, p0, Lcom/singleblur/blur/STBlurPreview;->mPreviewWidth:I

    .line 526
    iput p3, p0, Lcom/singleblur/blur/STBlurPreview;->mPreviewHeight:I

    .line 527
    iget-boolean v0, p0, Lcom/singleblur/blur/STBlurPreview;->mUseSegment:Z

    if-eqz v0, :cond_3d

    .line 528
    iget-object v0, p0, Lcom/singleblur/blur/STBlurPreview;->mSegment:Lcom/singleblur/faceapi/FigureSegment;

    if-eqz v0, :cond_44

    .line 529
    invoke-direct/range {p0 .. p5}, Lcom/singleblur/blur/STBlurPreview;->onSegment([BIIZLcom/singleblur/blur/STBlurPreview$Callback;)V

    return-void

    .line 532
    :cond_3d
    iget-object v0, p0, Lcom/singleblur/blur/STBlurPreview;->mTrack:Lcom/singleblur/faceapi/FaceTrack;

    if-eqz v0, :cond_44

    .line 533
    invoke-direct/range {p0 .. p5}, Lcom/singleblur/blur/STBlurPreview;->onTrack([BIIZLcom/singleblur/blur/STBlurPreview$Callback;)V

    :cond_44
    return-void
.end method

.method private getMaskTextureByFace(Z)I
    .registers 13

    .line 338
    iget-object v1, p0, Lcom/singleblur/blur/STBlurPreview;->mSyncObject:Ljava/lang/Object;

    monitor-enter v1

    .line 339
    :try_start_3
    iget-object v0, p0, Lcom/singleblur/blur/STBlurPreview;->mTmpFaceRects:[Landroid/graphics/Rect;

    const/4 v2, 0x0

    if-eqz v0, :cond_2c

    array-length v3, v0

    if-lez v3, :cond_2c

    .line 340
    array-length v0, v0

    .line 341
    new-array v3, v0, [Landroid/graphics/Rect;

    .line 342
    new-array v4, v0, [F

    const/4 v5, 0x0

    :goto_11
    if-ge v5, v0, :cond_2a

    .line 344
    iget-object v6, p0, Lcom/singleblur/blur/STBlurPreview;->mTmpYaws:[F

    aget v6, v6, v5

    aput v6, v4, v5

    .line 345
    new-instance v6, Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/singleblur/blur/STBlurPreview;->mTmpFaceRects:[Landroid/graphics/Rect;

    aget-object v7, v7, v5

    invoke-direct {v6, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    aput-object v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    :catchall_27
    move-exception v0

    move-object p0, v0

    goto :goto_48

    :cond_2a
    move-object v6, v4

    goto :goto_2e

    :cond_2c
    move-object v3, v2

    move-object v6, v3

    .line 348
    :goto_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_27

    if-eqz p1, :cond_33

    move-object v4, v2

    goto :goto_34

    :cond_33
    move-object v4, v3

    .line 352
    :goto_34
    iget v7, p0, Lcom/singleblur/blur/STBlurPreview;->mPreviewWidth:I

    iget v8, p0, Lcom/singleblur/blur/STBlurPreview;->mPreviewHeight:I

    invoke-static {}, Lcom/singleblur/faceapi/utils/AccelerometerManager;->getDegree()I

    move-result p1

    add-int/lit16 p1, p1, 0x10e

    rem-int/lit16 v9, p1, 0x168

    iget-boolean v10, p0, Lcom/singleblur/blur/STBlurPreview;->mFrontCamera:Z

    const/4 v5, 0x0

    invoke-static/range {v4 .. v10}, Lcom/singleblur/blur/BlurFilterLibrary;->getMaskTextureByFace([Landroid/graphics/Rect;Z[FIIIZ)I

    move-result p0

    return p0

    .line 348
    :goto_48
    :try_start_48
    monitor-exit v1
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_27

    throw p0
.end method

.method private getMaskTextureBySegment(Z)I
    .registers 12

    .line 305
    iget-object v0, p0, Lcom/singleblur/blur/STBlurPreview;->mSyncObject:Ljava/lang/Object;

    monitor-enter v0

    .line 306
    :try_start_3
    iget-object v1, p0, Lcom/singleblur/blur/STBlurPreview;->mSegmentBuffer:[B

    .line 307
    iget v2, p0, Lcom/singleblur/blur/STBlurPreview;->mSegmentBufferWidth:I

    .line 308
    iget v3, p0, Lcom/singleblur/blur/STBlurPreview;->mSegmentBufferHeight:I

    .line 309
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_a8

    .line 311
    iget-boolean v0, p0, Lcom/singleblur/blur/STBlurPreview;->mResetMask:Z

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-eqz v0, :cond_2a

    if-eqz v1, :cond_2a

    move v0, v4

    .line 312
    :goto_13
    array-length v6, v1

    if-ge v0, v6, :cond_1b

    .line 313
    aput-byte v5, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 315
    :cond_1b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/singleblur/blur/STBlurPreview;->mResetMaskTime:J

    sub-long/2addr v6, v8

    iget-wide v8, p0, Lcom/singleblur/blur/STBlurPreview;->RESET_MASK_CYCLE_TIME:J

    cmp-long v0, v6, v8

    if-lez v0, :cond_2a

    .line 316
    iput-boolean v4, p0, Lcom/singleblur/blur/STBlurPreview;->mResetMask:Z

    .line 320
    :cond_2a
    const-string p0, "STBlurPreview"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getMaskTextureBySegment "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_42

    array-length v6, v1

    goto :goto_43

    :cond_42
    move v6, v4

    :goto_43
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_a7

    if-eqz v1, :cond_a7

    const/4 p0, 0x1

    .line 322
    new-array p1, p0, [I

    .line 323
    invoke-static {v1, v2, v3, p0, p1}, Lcom/singleblur/blur/BlurFilterLibrary;->processMaskBuffer([BIIZ[I)I

    move-result p0

    if-eqz p0, :cond_80

    .line 325
    const-string v0, "STBlurPreview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processMask error result code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :cond_80
    sget-boolean v0, Lcom/singleblur/blur/STBlurPreview;->DEBUG:Z

    if-eqz v0, :cond_a4

    .line 328
    const-string v0, "STBlurPreview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMaskTextureBySegment out after process outTexture : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, p1, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :cond_a4
    aget p0, p1, v4

    return p0

    :cond_a7
    return v5

    :catchall_a8
    move-exception p0

    .line 309
    :try_start_a9
    monitor-exit v0
    :try_end_aa
    .catchall {:try_start_a9 .. :try_end_aa} :catchall_a8

    throw p0
.end method

.method public static getVersion()Ljava/lang/String;
    .registers 1

    .line 657
    invoke-static {}, Lcom/singleblur/blur/BlurFilterLibrary;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private onSegment([BIIZLcom/singleblur/blur/STBlurPreview$Callback;)V
    .registers 20

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v9, p5

    .line 542
    iget-object v0, p0, Lcom/singleblur/blur/STBlurPreview;->mSegmentOutBuffer:Ljava/nio/ByteBuffer;

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/singleblur/blur/STBlurPreview;->mSegmentOutBufferInfo:[I

    aget v1, v0, v11

    mul-int/2addr v1, v4

    aget v0, v0, v10

    mul-int/2addr v0, v3

    if-eq v1, v0, :cond_2c

    .line 543
    :cond_16
    iget-object v0, p0, Lcom/singleblur/blur/STBlurPreview;->mSegment:Lcom/singleblur/faceapi/FigureSegment;

    const/16 v1, 0xf0

    iget-object v2, p0, Lcom/singleblur/blur/STBlurPreview;->mSegmentOutBufferInfo:[I

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/singleblur/faceapi/FigureSegment;->createOutputBuffer(III[I)I

    .line 544
    iget-object v0, p0, Lcom/singleblur/blur/STBlurPreview;->mSegmentOutBufferInfo:[I

    aget v1, v0, v11

    aget v0, v0, v10

    mul-int/2addr v1, v0

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/singleblur/blur/STBlurPreview;->mSegmentOutBuffer:Ljava/nio/ByteBuffer;

    .line 546
    :cond_2c
    iget-object v0, p0, Lcom/singleblur/blur/STBlurPreview;->mSegmentOutBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 547
    invoke-static/range {p4 .. p4}, Lcom/singleblur/faceapi/utils/AccelerometerManager;->getFaceOrientation(Z)Lcom/singleblur/faceapi/model/FaceOrientation;

    move-result-object v6

    .line 548
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 549
    iget-object v0, p0, Lcom/singleblur/blur/STBlurPreview;->mSegment:Lcom/singleblur/faceapi/FigureSegment;

    iget-object v2, p0, Lcom/singleblur/blur/STBlurPreview;->mPreviewFormat:Lcom/singleblur/faceapi/model/CvPixelFormat;

    iget-object v1, p0, Lcom/singleblur/blur/STBlurPreview;->mSegmentOutBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    iget v8, p0, Lcom/singleblur/blur/STBlurPreview;->mSegmentOption:I

    move/from16 v5, p2

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Lcom/singleblur/faceapi/FigureSegment;->segment([BLcom/singleblur/faceapi/model/CvPixelFormat;IIILcom/singleblur/faceapi/model/FaceOrientation;[BI)I

    .line 550
    iget-wide v0, p0, Lcom/singleblur/blur/STBlurPreview;->debugSegSumTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v12

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/singleblur/blur/STBlurPreview;->debugSegSumTime:J

    .line 551
    iget-wide v0, p0, Lcom/singleblur/blur/STBlurPreview;->debugSegCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/singleblur/blur/STBlurPreview;->debugSegCount:J

    .line 552
    sget-boolean v0, Lcom/singleblur/blur/STBlurPreview;->DEBUG:Z

    if-eqz v0, :cond_7b

    .line 553
    const-string v0, "STBlurPreview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "segment time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/singleblur/blur/STBlurPreview;->debugSegSumTime:J

    iget-wide v4, p0, Lcom/singleblur/blur/STBlurPreview;->debugSegCount:J

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    :cond_7b
    iget-object v1, p0, Lcom/singleblur/blur/STBlurPreview;->mSyncObject:Ljava/lang/Object;

    monitor-enter v1

    .line 557
    :try_start_7e
    iget-object v0, p0, Lcom/singleblur/blur/STBlurPreview;->mSegmentOutBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iput-object v0, p0, Lcom/singleblur/blur/STBlurPreview;->mSegmentBuffer:[B

    .line 558
    iget-object v0, p0, Lcom/singleblur/blur/STBlurPreview;->mSegmentOutBufferInfo:[I

    aget v2, v0, v11

    iput v2, p0, Lcom/singleblur/blur/STBlurPreview;->mSegmentBufferWidth:I

    .line 559
    aget v0, v0, v10

    iput v0, p0, Lcom/singleblur/blur/STBlurPreview;->mSegmentBufferHeight:I

    .line 560
    monitor-exit v1
    :try_end_91
    .catchall {:try_start_7e .. :try_end_91} :catchall_9a

    if-eqz v9, :cond_99

    .line 563
    iget-boolean p0, p0, Lcom/singleblur/blur/STBlurPreview;->mUseSegment:Z

    const/4 v0, 0x0

    invoke-interface {v9, p0, v0, v0}, Lcom/singleblur/blur/STBlurPreview$Callback;->onResult(Z[B[Lcom/singleblur/faceapi/model/FaceInfo;)V

    :cond_99
    return-void

    :catchall_9a
    move-exception v0

    move-object p0, v0

    .line 560
    :try_start_9c
    monitor-exit v1
    :try_end_9d
    .catchall {:try_start_9c .. :try_end_9d} :catchall_9a

    throw p0
.end method

.method private onTrack([BIIZLcom/singleblur/blur/STBlurPreview$Callback;)V
    .registers 12

    .line 568
    invoke-static {p4}, Lcom/singleblur/faceapi/utils/AccelerometerManager;->getFaceOrientation(Z)Lcom/singleblur/faceapi/model/FaceOrientation;

    move-result-object v5

    .line 569
    iget-object v0, p0, Lcom/singleblur/blur/STBlurPreview;->mTrack:Lcom/singleblur/faceapi/FaceTrack;

    sget-object v2, Lcom/singleblur/faceapi/model/CvPixelFormat;->NV21:Lcom/singleblur/faceapi/model/CvPixelFormat;

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/singleblur/faceapi/FaceTrack;->track([BLcom/singleblur/faceapi/model/CvPixelFormat;IILcom/singleblur/faceapi/model/FaceOrientation;)[Lcom/singleblur/faceapi/model/FaceInfo;

    move-result-object p1

    .line 570
    sget-boolean p2, Lcom/singleblur/blur/STBlurPreview;->DEBUG:Z

    if-eqz p2, :cond_3f

    .line 571
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onTrack dir="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/singleblur/faceapi/model/FaceOrientation;->getValue()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", face="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_2e

    const-string p3, "null"

    goto :goto_33

    :cond_2e
    array-length p3, p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    :goto_33
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "STBlurPreview"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    :cond_3f
    invoke-virtual {p0, p1, v3, v4, p4}, Lcom/singleblur/blur/STBlurPreview;->onFaceUpdate([Lcom/singleblur/faceapi/model/FaceInfo;IIZ)V

    if-eqz p5, :cond_4f

    const/16 p2, 0x5a

    .line 575
    invoke-static {p1, v3, v4, p4, p2}, Lcom/singleblur/faceapi/utils/FaceRotationUtil;->rotateFaceInfos([Lcom/singleblur/faceapi/model/FaceInfo;IIZI)V

    .line 577
    iget-boolean p0, p0, Lcom/singleblur/blur/STBlurPreview;->mUseSegment:Z

    const/4 p1, 0x0

    invoke-interface {p5, p0, p1, p1}, Lcom/singleblur/blur/STBlurPreview$Callback;->onResult(Z[B[Lcom/singleblur/faceapi/model/FaceInfo;)V

    :cond_4f
    return-void
.end method

.method public static setDebug(Z)I
    .registers 1

    .line 637
    sput-boolean p0, Lcom/singleblur/blur/STBlurPreview;->DEBUG:Z

    .line 638
    invoke-static {p0}, Lcom/singleblur/blur/BlurFilterLibrary;->setDebug(Z)I

    move-result p0

    return p0
.end method


# virtual methods
.method public destroy()I
    .registers 4

    .line 138
    invoke-static {}, Lcom/singleblur/faceapi/utils/AccelerometerManager;->stop()V

    .line 139
    sget-boolean v0, Lcom/singleblur/blur/STBlurPreview;->DEBUG:Z

    const-string v1, "STBlurPreview"

    if-eqz v0, :cond_e

    .line 140
    const-string v0, "destroy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    const/4 v0, 0x0

    .line 142
    iput-boolean v0, p0, Lcom/singleblur/blur/STBlurPreview;->mInitialized:Z

    .line 143
    iget-object v0, p0, Lcom/singleblur/blur/STBlurPreview;->mProcessThread:Lcom/singleblur/blur/STBlurPreview$ProcessThread;

    const/4 v2, 0x0

    if-eqz v0, :cond_2e

    .line 144
    invoke-virtual {v0}, Lcom/singleblur/blur/STBlurPreview$ProcessThread;->release()V

    .line 146
    :try_start_19
    iget-object v0, p0, Lcom/singleblur/blur/STBlurPreview;->mProcessThread:Lcom/singleblur/blur/STBlurPreview$ProcessThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_19 .. :try_end_1e} :catch_1f

    goto :goto_23

    :catch_1f
    move-exception v0

    .line 148
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 150
    :goto_23
    sget-boolean v0, Lcom/singleblur/blur/STBlurPreview;->DEBUG:Z

    if-eqz v0, :cond_2c

    .line 151
    const-string v0, "destroy process thread join"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_2c
    iput-object v2, p0, Lcom/singleblur/blur/STBlurPreview;->mProcessThread:Lcom/singleblur/blur/STBlurPreview$ProcessThread;

    .line 155
    :cond_2e
    iget-object v0, p0, Lcom/singleblur/blur/STBlurPreview;->mTrack:Lcom/singleblur/faceapi/FaceTrack;

    if-eqz v0, :cond_37

    .line 156
    invoke-virtual {v0}, Lcom/singleblur/faceapi/FaceHandleBase;->release()V

    .line 157
    iput-object v2, p0, Lcom/singleblur/blur/STBlurPreview;->mTrack:Lcom/singleblur/faceapi/FaceTrack;

    .line 159
    :cond_37
    iget-object v0, p0, Lcom/singleblur/blur/STBlurPreview;->mSegment:Lcom/singleblur/faceapi/FigureSegment;

    if-eqz v0, :cond_40

    .line 160
    invoke-virtual {v0}, Lcom/singleblur/faceapi/FaceHandleBase;->release()V

    .line 161
    iput-object v2, p0, Lcom/singleblur/blur/STBlurPreview;->mSegment:Lcom/singleblur/faceapi/FigureSegment;

    .line 164
    :cond_40
    invoke-virtual {p0}, Lcom/singleblur/blur/STBlurPreview;->destroyRender()I

    move-result p0

    return p0
.end method

.method public destroyRender()I
    .registers 1

    .line 197
    invoke-static {}, Lcom/singleblur/blur/BlurFilterLibrary;->destroy()I

    move-result p0

    return p0
.end method

.method public getTimeLog()Ljava/lang/String;
    .registers 6

    .line 661
    iget-wide v0, p0, Lcom/singleblur/blur/STBlurPreview;->debugSegCount:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    .line 662
    const-string p0, ""

    return-object p0

    .line 664
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "segment time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/singleblur/blur/STBlurPreview;->debugSegSumTime:J

    iget-wide v3, p0, Lcom/singleblur/blur/STBlurPreview;->debugSegCount:J

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " ms"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public initRender(II)I
    .registers 5

    if-eqz p1, :cond_2e

    if-nez p2, :cond_5

    goto :goto_2e

    :cond_5
    const/4 v0, 0x0

    .line 178
    iput v0, p0, Lcom/singleblur/blur/STBlurPreview;->mFrameNum:I

    .line 179
    invoke-static {p1, p2}, Lcom/singleblur/blur/BlurFilterLibrary;->init(II)I

    move-result p1

    .line 180
    iget-object p2, p0, Lcom/singleblur/blur/STBlurPreview;->mSegmentModel:Ljava/lang/String;

    const/16 v0, 0x1004

    const/16 v1, 0x1005

    if-nez p2, :cond_21

    const p2, 0x3e99999a    # 0.3f

    .line 181
    invoke-virtual {p0, v1, p2}, Lcom/singleblur/blur/STBlurPreview;->setParam(IF)I

    const p2, 0x3b03126f    # 0.002f

    .line 183
    invoke-virtual {p0, v0, p2}, Lcom/singleblur/blur/STBlurPreview;->setParam(IF)I

    return p1

    :cond_21
    const p2, 0x3ec7ae14    # 0.39f

    .line 185
    invoke-virtual {p0, v1, p2}, Lcom/singleblur/blur/STBlurPreview;->setParam(IF)I

    const p2, 0x3de147ae    # 0.11f

    .line 186
    invoke-virtual {p0, v0, p2}, Lcom/singleblur/blur/STBlurPreview;->setParam(IF)I

    return p1

    :cond_2e
    :goto_2e
    const/4 p0, -0x1

    return p0
.end method

.method public onFaceUpdate([Lcom/singleblur/faceapi/model/FaceInfo;IIZ)V
    .registers 8

    const/4 v0, 0x0

    .line 481
    iput-boolean v0, p0, Lcom/singleblur/blur/STBlurPreview;->mUseSegment:Z

    .line 482
    iput-boolean p4, p0, Lcom/singleblur/blur/STBlurPreview;->mFrontCamera:Z

    .line 483
    iput p2, p0, Lcom/singleblur/blur/STBlurPreview;->mPreviewWidth:I

    .line 484
    iput p3, p0, Lcom/singleblur/blur/STBlurPreview;->mPreviewHeight:I

    .line 485
    iget-object p2, p0, Lcom/singleblur/blur/STBlurPreview;->mSyncObject:Ljava/lang/Object;

    monitor-enter p2

    if-eqz p1, :cond_36

    .line 486
    :try_start_e
    array-length p3, p1

    if-lez p3, :cond_36

    .line 487
    array-length p3, p1

    .line 488
    new-array p4, p3, [Landroid/graphics/Rect;

    iput-object p4, p0, Lcom/singleblur/blur/STBlurPreview;->mTmpFaceRects:[Landroid/graphics/Rect;

    .line 489
    new-array p4, p3, [F

    iput-object p4, p0, Lcom/singleblur/blur/STBlurPreview;->mTmpYaws:[F

    :goto_1a
    if-ge v0, p3, :cond_3b

    .line 491
    iget-object p4, p0, Lcom/singleblur/blur/STBlurPreview;->mTmpYaws:[F

    aget-object v1, p1, v0

    iget v1, v1, Lcom/singleblur/faceapi/model/FaceInfo;->yaw:F

    aput v1, p4, v0

    .line 492
    iget-object p4, p0, Lcom/singleblur/blur/STBlurPreview;->mTmpFaceRects:[Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    aget-object v2, p1, v0

    iget-object v2, v2, Lcom/singleblur/faceapi/model/FaceInfo;->faceRect:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    aput-object v1, p4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :catchall_34
    move-exception p0

    goto :goto_43

    :cond_36
    const/4 p1, 0x0

    .line 495
    iput-object p1, p0, Lcom/singleblur/blur/STBlurPreview;->mTmpFaceRects:[Landroid/graphics/Rect;

    .line 496
    iput-object p1, p0, Lcom/singleblur/blur/STBlurPreview;->mTmpYaws:[F

    .line 498
    :cond_3b
    monitor-exit p2
    :try_end_3c
    .catchall {:try_start_e .. :try_end_3c} :catchall_34

    .line 499
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/singleblur/blur/STBlurPreview;->mLastProcessTime:J

    return-void

    .line 498
    :goto_43
    :try_start_43
    monitor-exit p2
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_34

    throw p0
.end method

.method public onPreviewCallback([BIIZ)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 364
    invoke-virtual/range {v0 .. v5}, Lcom/singleblur/blur/STBlurPreview;->onPreviewCallback([BIIZLcom/singleblur/blur/STBlurPreview$Callback;)V

    return-void
.end method

.method public onPreviewCallback([BIIZLcom/singleblur/blur/STBlurPreview$Callback;)V
    .registers 14

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v7, p5

    .line 377
    invoke-virtual/range {v0 .. v7}, Lcom/singleblur/blur/STBlurPreview;->onPreviewCallback([BIIZZILcom/singleblur/blur/STBlurPreview$Callback;)V

    return-void
.end method

.method public onPreviewCallback([BIIZZILcom/singleblur/blur/STBlurPreview$Callback;)V
    .registers 16

    .line 392
    iget-boolean v0, p0, Lcom/singleblur/blur/STBlurPreview;->mInitialized:Z

    const-string v1, "STBlurPreview"

    if-nez v0, :cond_c

    .line 393
    const-string p0, "STBlur is destroy"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    const/4 v0, 0x1

    if-le p6, v0, :cond_22

    .line 396
    iget v0, p0, Lcom/singleblur/blur/STBlurPreview;->mFrameNum:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/singleblur/blur/STBlurPreview;->mFrameNum:I

    rem-int/2addr v0, p6

    if-eqz v0, :cond_22

    .line 397
    sget-boolean p0, Lcom/singleblur/blur/STBlurPreview;->DEBUG:Z

    if-eqz p0, :cond_21

    .line 398
    const-string p0, "onPreviewCallback drop this frame"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    return-void

    .line 402
    :cond_22
    sget-boolean p6, Lcom/singleblur/blur/STBlurPreview;->DEBUG:Z

    if-eqz p6, :cond_2b

    .line 403
    const-string p6, "onPreviewCallback do"

    invoke-static {v1, p6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    if-eqz p5, :cond_46

    .line 406
    iget-object p5, p0, Lcom/singleblur/blur/STBlurPreview;->mProcessThread:Lcom/singleblur/blur/STBlurPreview$ProcessThread;

    if-nez p5, :cond_3b

    .line 407
    new-instance p5, Lcom/singleblur/blur/STBlurPreview$ProcessThread;

    invoke-direct {p5, p0}, Lcom/singleblur/blur/STBlurPreview$ProcessThread;-><init>(Lcom/singleblur/blur/STBlurPreview;)V

    iput-object p5, p0, Lcom/singleblur/blur/STBlurPreview;->mProcessThread:Lcom/singleblur/blur/STBlurPreview$ProcessThread;

    .line 408
    invoke-virtual {p5}, Lcom/singleblur/blur/STBlurPreview$ProcessThread;->start()V

    .line 410
    :cond_3b
    iget-object v2, p0, Lcom/singleblur/blur/STBlurPreview;->mProcessThread:Lcom/singleblur/blur/STBlurPreview$ProcessThread;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p7

    invoke-virtual/range {v2 .. v7}, Lcom/singleblur/blur/STBlurPreview$ProcessThread;->updateBuffer([BIIZLcom/singleblur/blur/STBlurPreview$Callback;)V

    goto :goto_4a

    :cond_46
    move-object p5, p7

    .line 412
    invoke-direct/range {p0 .. p5}, Lcom/singleblur/blur/STBlurPreview;->doOnPreviewCallback([BIIZLcom/singleblur/blur/STBlurPreview$Callback;)V

    .line 415
    :goto_4a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/singleblur/blur/STBlurPreview;->mLastProcessTime:J

    .line 416
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onPreviewCallback "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p2, p0, Lcom/singleblur/blur/STBlurPreview;->mLastProcessTime:J

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSegmentUpdate([BIIII)V
    .registers 7

    const/4 v0, 0x1

    .line 509
    iput-boolean v0, p0, Lcom/singleblur/blur/STBlurPreview;->mUseSegment:Z

    .line 510
    iget-object v0, p0, Lcom/singleblur/blur/STBlurPreview;->mSyncObject:Ljava/lang/Object;

    monitor-enter v0

    .line 511
    :try_start_6
    iput-object p1, p0, Lcom/singleblur/blur/STBlurPreview;->mSegmentBuffer:[B

    .line 512
    iput p2, p0, Lcom/singleblur/blur/STBlurPreview;->mSegmentBufferWidth:I

    .line 513
    iput p3, p0, Lcom/singleblur/blur/STBlurPreview;->mSegmentBufferHeight:I

    .line 514
    iput p4, p0, Lcom/singleblur/blur/STBlurPreview;->mPreviewWidth:I

    .line 515
    iput p5, p0, Lcom/singleblur/blur/STBlurPreview;->mPreviewHeight:I

    .line 516
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_18

    .line 517
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/singleblur/blur/STBlurPreview;->mLastProcessTime:J

    return-void

    :catchall_18
    move-exception p0

    .line 516
    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method public processOESTexture(I[IZ)I
    .registers 8

    .line 235
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/singleblur/blur/STBlurPreview;->mLastProcessTime:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/singleblur/blur/STBlurPreview;->PROCESS_LIFE_CYCLE_TIME:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1b

    .line 236
    iget-boolean v0, p0, Lcom/singleblur/blur/STBlurPreview;->mUseSegment:Z

    if-eqz v0, :cond_16

    .line 237
    invoke-direct {p0, p3}, Lcom/singleblur/blur/STBlurPreview;->getMaskTextureBySegment(Z)I

    move-result p3

    goto :goto_27

    .line 239
    :cond_16
    invoke-direct {p0, p3}, Lcom/singleblur/blur/STBlurPreview;->getMaskTextureByFace(Z)I

    move-result p3

    goto :goto_27

    .line 242
    :cond_1b
    sget-boolean p3, Lcom/singleblur/blur/STBlurPreview;->DEBUG:Z

    if-eqz p3, :cond_26

    .line 243
    const-string p3, "STBlurPreview"

    const-string v0, "processOESTexture mask beyond the life cycle!"

    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    const/4 p3, -0x1

    .line 246
    :goto_27
    iget-boolean p0, p0, Lcom/singleblur/blur/STBlurPreview;->mFrontCamera:Z

    invoke-static {p1, p3, p0, p2}, Lcom/singleblur/blur/BlurFilterLibrary;->processOESTextureByMask(IIZ[I)I

    move-result p0

    return p0
.end method

.method public processOESTextureGradual(I[F[IZ)I
    .registers 11

    .line 285
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/singleblur/blur/STBlurPreview;->mLastProcessTime:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/singleblur/blur/STBlurPreview;->PROCESS_LIFE_CYCLE_TIME:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1c

    .line 286
    iget-boolean v0, p0, Lcom/singleblur/blur/STBlurPreview;->mUseSegment:Z

    if-eqz v0, :cond_17

    .line 287
    invoke-direct {p0, p4}, Lcom/singleblur/blur/STBlurPreview;->getMaskTextureBySegment(Z)I

    move-result p4

    :goto_15
    move v1, p4

    goto :goto_29

    .line 289
    :cond_17
    invoke-direct {p0, p4}, Lcom/singleblur/blur/STBlurPreview;->getMaskTextureByFace(Z)I

    move-result p4

    goto :goto_15

    .line 292
    :cond_1c
    sget-boolean p4, Lcom/singleblur/blur/STBlurPreview;->DEBUG:Z

    if-eqz p4, :cond_27

    .line 293
    const-string p4, "STBlurPreview"

    const-string v0, "processOESTexture mask beyond the life cycle!"

    invoke-static {p4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    const/4 p4, -0x1

    goto :goto_15

    .line 296
    :goto_29
    iget-boolean v2, p0, Lcom/singleblur/blur/STBlurPreview;->mFrontCamera:Z

    invoke-static {}, Lcom/singleblur/faceapi/utils/AccelerometerManager;->getDegree()I

    move-result v3

    move v0, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/singleblur/blur/BlurFilterLibrary;->processOESTexureByMaskGradual(IIZI[F[I)I

    move-result p0

    return p0
.end method

.method public processTexture(I[IZ)I
    .registers 8

    .line 211
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/singleblur/blur/STBlurPreview;->mLastProcessTime:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/singleblur/blur/STBlurPreview;->PROCESS_LIFE_CYCLE_TIME:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1b

    .line 212
    iget-boolean v0, p0, Lcom/singleblur/blur/STBlurPreview;->mUseSegment:Z

    if-eqz v0, :cond_16

    .line 213
    invoke-direct {p0, p3}, Lcom/singleblur/blur/STBlurPreview;->getMaskTextureBySegment(Z)I

    move-result p3

    goto :goto_27

    .line 215
    :cond_16
    invoke-direct {p0, p3}, Lcom/singleblur/blur/STBlurPreview;->getMaskTextureByFace(Z)I

    move-result p3

    goto :goto_27

    .line 218
    :cond_1b
    sget-boolean p3, Lcom/singleblur/blur/STBlurPreview;->DEBUG:Z

    if-eqz p3, :cond_26

    .line 219
    const-string p3, "STBlurPreview"

    const-string v0, "processTexture mask beyond the life cycle!"

    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    const/4 p3, -0x1

    .line 222
    :goto_27
    iget-boolean p0, p0, Lcom/singleblur/blur/STBlurPreview;->mFrontCamera:Z

    invoke-static {p1, p3, p0, p2}, Lcom/singleblur/blur/BlurFilterLibrary;->processTextureByMask(IIZ[I)I

    move-result p0

    return p0
.end method

.method public processTextureGradual(I[F[IZ)I
    .registers 11

    .line 260
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/singleblur/blur/STBlurPreview;->mLastProcessTime:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/singleblur/blur/STBlurPreview;->PROCESS_LIFE_CYCLE_TIME:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1c

    .line 261
    iget-boolean v0, p0, Lcom/singleblur/blur/STBlurPreview;->mUseSegment:Z

    if-eqz v0, :cond_17

    .line 262
    invoke-direct {p0, p4}, Lcom/singleblur/blur/STBlurPreview;->getMaskTextureBySegment(Z)I

    move-result p4

    :goto_15
    move v1, p4

    goto :goto_29

    .line 264
    :cond_17
    invoke-direct {p0, p4}, Lcom/singleblur/blur/STBlurPreview;->getMaskTextureByFace(Z)I

    move-result p4

    goto :goto_15

    .line 267
    :cond_1c
    sget-boolean p4, Lcom/singleblur/blur/STBlurPreview;->DEBUG:Z

    if-eqz p4, :cond_27

    .line 268
    const-string p4, "STBlurPreview"

    const-string v0, "processOESTexture mask beyond the life cycle!"

    invoke-static {p4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    const/4 p4, -0x1

    goto :goto_15

    .line 271
    :goto_29
    iget-boolean v2, p0, Lcom/singleblur/blur/STBlurPreview;->mFrontCamera:Z

    invoke-static {}, Lcom/singleblur/faceapi/utils/AccelerometerManager;->getDegree()I

    move-result v3

    move v0, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/singleblur/blur/BlurFilterLibrary;->processTexureByMaskGradual(IIZI[F[I)I

    move-result p0

    return p0
.end method

.method public resetMask()V
    .registers 3

    const/4 v0, 0x1

    .line 582
    iput-boolean v0, p0, Lcom/singleblur/blur/STBlurPreview;->mResetMask:Z

    .line 583
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/singleblur/blur/STBlurPreview;->mResetMaskTime:J

    return-void
.end method

.method public rotateGrdualTexture(IZZ)I
    .registers 4

    .line 607
    invoke-static {p1, p2, p3}, Lcom/singleblur/blur/BlurFilterLibrary;->rotateGradualTexture(IZZ)I

    move-result p0

    return p0
.end method

.method public rotateMaskTexture(IZZ)I
    .registers 4

    .line 595
    invoke-static {p1, p2, p3}, Lcom/singleblur/blur/BlurFilterLibrary;->rotateMaskTexture(IZZ)I

    move-result p0

    return p0
.end method

.method public setDebugMask(Z)I
    .registers 2

    .line 648
    invoke-static {p1}, Lcom/singleblur/blur/BlurFilterLibrary;->setDebugMask(Z)I

    move-result p0

    return p0
.end method

.method public setFormat(Lcom/singleblur/faceapi/model/CvPixelFormat;)V
    .registers 2

    .line 676
    iput-object p1, p0, Lcom/singleblur/blur/STBlurPreview;->mPreviewFormat:Lcom/singleblur/faceapi/model/CvPixelFormat;

    return-void
.end method

.method public setFrontCamera(Z)V
    .registers 2

    .line 672
    iput-boolean p1, p0, Lcom/singleblur/blur/STBlurPreview;->mFrontCamera:Z

    return-void
.end method

.method public setParam(IF)I
    .registers 3

    .line 618
    invoke-static {p1, p2}, Lcom/singleblur/blur/BlurFilterLibrary;->setParam(IF)I

    move-result p0

    return p0
.end method

.method public setSegmentOption(I)V
    .registers 2

    .line 627
    iput p1, p0, Lcom/singleblur/blur/STBlurPreview;->mSegmentOption:I

    return-void
.end method
