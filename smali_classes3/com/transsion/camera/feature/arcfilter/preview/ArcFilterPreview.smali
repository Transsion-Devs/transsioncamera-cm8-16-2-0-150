.class public Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;
.super Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final VERTEX_DEFAULT_MATRIX:[F


# instance fields
.field private final IMAGE_STYLE_SUPPORT:Z

.field private KEY_DEBUG_STABLE_DUMP_FILTER_INPUT:Ljava/lang/String;

.field private fboId:[I

.field public mCameraId:I

.field private mDstFboId:I

.field private mDstTexId:I

.field private mFullScreenFUDisplay:Lcom/transsion/camera/utils/gles/ProgramTexture2d;

.field private mFullScreenFUDisplay2D:Lcom/transsion/camera/utils/gles/ProgramTexture2d;

.field private mFullScreenFUDisplayOes:Lcom/transsion/camera/utils/gles/ProgramTextureOES;

.field private mIsFaceingBack:Z

.field public mIsFirstSteadyFrame:Z

.field private final mOESMatrix:[F

.field private mPreviewCallback:Lcom/transsion/camera/app/common/mode/IFilterDataPreviewCallback;

.field private mRecordCallback:Lcom/transsion/camera/app/common/mode/IRecordCallback;

.field private mSensorOrientation:I

.field private mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private mSufaceHeight:I

.field private final mtx:[F

.field private tex:[I


# direct methods
.method public static synthetic $r8$lambda$swKo6ieW-6GukcI7cQl6s9_vZAk(Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->lambda$new$0(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 36
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ArcFilterPreview"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/16 v0, 0x10

    .line 55
    new-array v0, v0, [F

    fill-array-data v0, :array_14

    sput-object v0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->VERTEX_DEFAULT_MATRIX:[F

    return-void

    nop

    :array_14
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 65
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x10

    .line 43
    new-array v0, p1, [F

    iput-object v0, p0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mtx:[F

    .line 44
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mOESMatrix:[F

    const/4 p1, -0x1

    .line 46
    iput p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mSufaceHeight:I

    .line 53
    const-string p1, "debug.stableFilter"

    iput-object p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->KEY_DEBUG_STABLE_DUMP_FILTER_INPUT:Ljava/lang/String;

    const/4 p1, 0x0

    .line 62
    iput-boolean p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mIsFirstSteadyFrame:Z

    .line 414
    new-instance p1, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 66
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isImageStyleSupport()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->IMAGE_STYLE_SUPPORT:Z

    return-void
.end method

.method private createFBO(II)V
    .registers 16

    .line 248
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->fboId:[I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_c

    .line 249
    invoke-static {v2, v0, v3}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 250
    iput-object v1, p0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->fboId:[I

    .line 252
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->tex:[I

    if-eqz v0, :cond_15

    .line 253
    invoke-static {v2, v0, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 254
    iput-object v1, p0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->tex:[I

    .line 256
    :cond_15
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->fboId:[I

    .line 257
    new-array v1, v2, [I

    iput-object v1, p0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->tex:[I

    .line 259
    invoke-static {v2, v0, v3}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 260
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->tex:[I

    invoke-static {v2, v0, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 263
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->tex:[I

    aget v0, v0, v3

    const/16 v1, 0xde1

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v0, 0x2802

    const v2, 0x812f

    .line 266
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2803

    .line 267
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2800

    const/16 v2, 0x2601

    .line 268
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2801

    .line 269
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v11, 0x1401

    const/4 v12, 0x0

    const/16 v4, 0xde1

    const/4 v5, 0x0

    const/16 v6, 0x1908

    const/4 v9, 0x0

    const/16 v10, 0x1908

    move v7, p1

    move v8, p2

    .line 272
    invoke-static/range {v4 .. v12}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 273
    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 276
    iget-object p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->fboId:[I

    aget p1, p1, v3

    const p2, 0x8d40

    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 278
    iget-object p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->tex:[I

    aget p1, p1, v3

    const v0, 0x8ce0

    invoke-static {p2, v0, v1, p1, v3}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 280
    invoke-static {p2}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result p1

    const v0, 0x8cd5

    if-ne v0, p1, :cond_87

    .line 285
    invoke-static {p2, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 287
    iget-object p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->fboId:[I

    aget p1, p1, v3

    iput p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mDstFboId:I

    .line 288
    iget-object p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->tex:[I

    aget p1, p1, v3

    iput p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mDstTexId:I

    return-void

    .line 282
    :cond_87
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error CreateTmpFBO(). Error status: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private flip([FZZ)[F
    .registers 5

    if-nez p2, :cond_6

    if-eqz p3, :cond_5

    goto :goto_6

    :cond_5
    return-object p1

    :cond_6
    :goto_6
    const/high16 p0, -0x40800000    # -1.0f

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p2, :cond_e

    move p2, p0

    goto :goto_f

    :cond_e
    move p2, v0

    :goto_f
    if-eqz p3, :cond_12

    goto :goto_13

    :cond_12
    move p0, v0

    :goto_13
    const/4 p3, 0x0

    .line 408
    invoke-static {p1, p3, p2, p0, v0}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    return-object p1
.end method

.method private synthetic lambda$new$0(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7

    .line 415
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "key_image_style"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3f

    const-string v0, "key_asd_effect_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_52

    .line 417
    :cond_15
    sget-object v0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onStatusChanged] key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " value = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 418
    iget-object p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-eqz p1, :cond_52

    .line 419
    check-cast p2, [I

    iget p0, p0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mCameraId:I

    invoke-interface {p1, v1, p2, p0}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->loadGLResources(Z[II)V

    return-void

    .line 423
    :cond_3f
    iget-object p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-eqz p1, :cond_52

    .line 424
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    filled-new-array {p2}, [I

    move-result-object p2

    iget p0, p0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mCameraId:I

    invoke-interface {p1, v1, p2, p0}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->loadGLResources(Z[II)V

    :cond_52
    :goto_52
    return-void
.end method

.method private release(Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;)V
    .registers 5

    const p1, 0x8d40

    const/4 v0, 0x0

    .line 356
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const/16 p1, 0xde1

    .line 357
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 358
    iget-object p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->fboId:[I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_17

    .line 359
    invoke-static {v2, p1, v0}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 360
    iput-object v1, p0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->fboId:[I

    .line 362
    :cond_17
    iget-object p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->tex:[I

    if-eqz p1, :cond_20

    .line 363
    invoke-static {v2, p1, v0}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 364
    iput-object v1, p0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->tex:[I

    .line 366
    :cond_20
    iput v0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mSurfaceWidth:I

    .line 367
    iput v0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mSurfaceHeight:I

    .line 368
    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method private unInitPreviewCallback(Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;)V
    .registers 3

    .line 383
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mPreviewCallback:Lcom/transsion/camera/app/common/mode/IFilterDataPreviewCallback;

    if-eqz p0, :cond_14

    .line 384
    sget-object v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;->TYPE_MODE:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;

    if-ne p1, v0, :cond_c

    .line 385
    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/IFilterDataPreviewCallback;->modeUninitCallback()V

    return-void

    .line 386
    :cond_c
    sget-object v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;->TYPE_SURFACE:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;

    if-ne p1, v0, :cond_14

    const/4 p1, 0x0

    .line 387
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/mode/IFilterDataPreviewCallback;->surfaceDestroyCallback(Landroid/graphics/SurfaceTexture;)V

    :cond_14
    return-void
.end method

.method private unInitProgram()V
    .registers 3

    .line 372
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mFullScreenFUDisplay2D:Lcom/transsion/camera/utils/gles/ProgramTexture2d;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 373
    invoke-virtual {v0}, Lcom/transsion/camera/utils/gles/core/Program;->release()V

    .line 374
    iput-object v1, p0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mFullScreenFUDisplay2D:Lcom/transsion/camera/utils/gles/ProgramTexture2d;

    .line 376
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mFullScreenFUDisplayOes:Lcom/transsion/camera/utils/gles/ProgramTextureOES;

    if-eqz v0, :cond_13

    .line 377
    invoke-virtual {v0}, Lcom/transsion/camera/utils/gles/core/Program;->release()V

    .line 378
    iput-object v1, p0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mFullScreenFUDisplayOes:Lcom/transsion/camera/utils/gles/ProgramTextureOES;

    :cond_13
    return-void
.end method


# virtual methods
.method protected drawFilterPreview(Landroid/graphics/SurfaceTexture;III)Z
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v3, p2

    move/from16 v7, p3

    move/from16 v8, p4

    .line 137
    iget-object v2, v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v4, "key_image_style"

    invoke-interface {v2, v4}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 139
    iget v4, v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mSurfaceWidth:I

    if-ne v4, v7, :cond_1a

    iget v4, v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mSurfaceHeight:I

    if-eq v4, v8, :cond_21

    .line 140
    :cond_1a
    iput v7, v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mSurfaceWidth:I

    .line 141
    iput v8, v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mSurfaceHeight:I

    .line 142
    invoke-direct {v0, v7, v8}, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->createFBO(II)V

    .line 144
    :cond_21
    iget-object v4, v0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->KEY_DEBUG_STABLE_DUMP_FILTER_INPUT:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/transsion/camera/utils/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v14, 0x1

    if-ne v4, v14, :cond_30

    .line 146
    const-string v4, "input"

    invoke-static {v3, v5, v7, v8, v4}, Lcom/transsion/camera/utils/YuvUtils;->dumpTexture(IZIILjava/lang/String;)V

    .line 149
    :cond_30
    iget-object v4, v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mSurfaceTextureMatrix:[F

    invoke-virtual {v1, v4}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 150
    sget-object v4, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mArcFilterOesEngine:Lcom/arcsoft/filter/ArcFilterEngine;

    if-eqz v4, :cond_84

    iget-object v4, v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mFilterIdsLoadedState:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;

    sget-object v6, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;->LOADED:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;

    if-ne v4, v6, :cond_84

    iget v4, v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mCurrentFilterId:I

    if-eqz v4, :cond_84

    const-string v4, "0"

    .line 152
    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4f

    iget-boolean v4, v0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->IMAGE_STYLE_SUPPORT:Z

    if-nez v4, :cond_84

    .line 153
    :cond_4f
    iput v7, v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mSurfaceWidth:I

    .line 154
    iput v8, v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mSurfaceHeight:I

    .line 155
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v5, v5, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 156
    sget-object v1, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mArcFilterOesEngine:Lcom/arcsoft/filter/ArcFilterEngine;

    iget v2, v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mCurrentFilterId:I

    iget-object v5, v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mSurfaceTextureMatrix:[F

    iget v9, v0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mDstFboId:I

    const/4 v13, 0x0

    const/4 v4, 0x1

    move-object v10, v6

    move/from16 v11, p3

    move/from16 v12, p4

    invoke-virtual/range {v1 .. v13}, Lcom/arcsoft/filter/ArcFilterEngine;->DoStep(IIZ[FLandroid/graphics/Rect;IIILandroid/graphics/Rect;III)I

    .line 159
    iget v1, v0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mDstTexId:I

    .line 160
    iget-object v2, v0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mRecordCallback:Lcom/transsion/camera/app/common/mode/IRecordCallback;

    if-eqz v2, :cond_75

    .line 161
    sget-object v3, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->VERTEX_DEFAULT_MATRIX:[F

    invoke-interface {v2, v1, v3}, Lcom/transsion/camera/app/common/mode/IRecordCallback;->onRecording(I[F)V

    .line 163
    :cond_75
    iget-object v2, v0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mFullScreenFUDisplay:Lcom/transsion/camera/utils/gles/ProgramTexture2d;

    iget v3, v0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mDstTexId:I

    if-ne v1, v3, :cond_7e

    sget-object v0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->VERTEX_DEFAULT_MATRIX:[F

    goto :goto_80

    :cond_7e
    iget-object v0, v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mSurfaceTextureMatrix:[F

    :goto_80
    invoke-virtual {v2, v1, v0}, Lcom/transsion/camera/utils/gles/core/Program;->drawFrame(I[F)V

    return v14

    .line 166
    :cond_84
    iget-object v4, v0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mPreviewCallback:Lcom/transsion/camera/app/common/mode/IFilterDataPreviewCallback;

    if-eqz v4, :cond_1e1

    iget-object v4, v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-nez v4, :cond_8e

    goto/16 :goto_1e1

    .line 170
    :cond_8e
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_99

    iget-boolean v4, v0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->IMAGE_STYLE_SUPPORT:Z

    if-eqz v4, :cond_99

    return v5

    .line 174
    :cond_99
    const-string v4, "on"

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_b1

    const-string v6, "off"

    .line 175
    invoke-static {v2, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_b1

    const-string v6, "null"

    .line 176
    invoke-static {v2, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b6

    :cond_b1
    iget-boolean v6, v0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->IMAGE_STYLE_SUPPORT:Z

    if-eqz v6, :cond_b6

    return v5

    .line 180
    :cond_b6
    iget-boolean v6, v0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->IMAGE_STYLE_SUPPORT:Z

    if-eqz v6, :cond_c9

    .line 181
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-eq v6, v14, :cond_c7

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v6, 0x2

    if-ne v2, v6, :cond_c9

    :cond_c7
    move v2, v14

    goto :goto_ca

    :cond_c9
    move v2, v5

    .line 186
    :goto_ca
    iget-object v6, v0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mPreviewCallback:Lcom/transsion/camera/app/common/mode/IFilterDataPreviewCallback;

    if-eqz v6, :cond_1e1

    iget-object v6, v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-eqz v6, :cond_1e1

    if-nez v2, :cond_e0

    const-string v2, "key_asd_enhance"

    .line 187
    invoke-interface {v6, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e1

    :cond_e0
    iget-object v2, v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v6, "key_hdr"

    .line 188
    invoke-interface {v2, v6}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e1

    .line 189
    iget v2, v0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mSufaceHeight:I

    if-eq v2, v8, :cond_f8

    .line 190
    iput v8, v0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mSufaceHeight:I

    .line 191
    invoke-direct {v0}, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->unInitProgram()V

    return v5

    .line 194
    :cond_f8
    iget-object v2, v0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mFullScreenFUDisplayOes:Lcom/transsion/camera/utils/gles/ProgramTextureOES;

    if-eqz v2, :cond_100

    iget-object v2, v0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mFullScreenFUDisplay2D:Lcom/transsion/camera/utils/gles/ProgramTexture2d;

    if-nez v2, :cond_105

    .line 195
    :cond_100
    sget-object v2, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;->TYPE_SURFACE:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->initFilterPreviewCallback(Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;)V

    .line 197
    :cond_105
    iget-object v2, v0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mtx:[F

    invoke-static {v2, v5}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 198
    iget-object v2, v0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mOESMatrix:[F

    invoke-static {v2, v5}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 199
    iget-object v2, v0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mOESMatrix:[F

    iget-boolean v4, v0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mIsFaceingBack:Z

    invoke-direct {v0, v2, v4, v5}, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->flip([FZZ)[F

    .line 200
    iget-object v15, v0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mOESMatrix:[F

    iget v2, v0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mSensorOrientation:I

    add-int/lit16 v2, v2, 0xb4

    int-to-float v2, v2

    const/16 v19, 0x0

    const/high16 v20, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    const/16 v18, 0x0

    move/from16 v17, v2

    invoke-static/range {v15 .. v20}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 201
    iget-object v2, v0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mFullScreenFUDisplayOes:Lcom/transsion/camera/utils/gles/ProgramTextureOES;

    iget-object v4, v0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mOESMatrix:[F

    invoke-virtual {v2, v3, v7, v8, v4}, Lcom/transsion/camera/utils/gles/ProgramTextureOES;->drawFrameOffScreen(III[F)I

    move-result v2

    if-gez v2, :cond_153

    .line 203
    sget-object v0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "draw return oesTextureId = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " new id = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v5

    .line 207
    :cond_153
    iget-object v3, v0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mPreviewCallback:Lcom/transsion/camera/app/common/mode/IFilterDataPreviewCallback;

    invoke-interface {v3, v1, v2, v7, v8}, Lcom/transsion/camera/app/common/mode/IFilterDataPreviewCallback;->onDraw(Landroid/graphics/SurfaceTexture;III)I

    move-result v1

    if-lez v1, :cond_15c

    move v2, v1

    .line 212
    :cond_15c
    iget-object v1, v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mSurfaceTextureMatrix:[F

    invoke-static {v1, v5}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 213
    iget-boolean v1, v0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->IMAGE_STYLE_SUPPORT:Z

    if-eqz v1, :cond_1cf

    .line 214
    iput v7, v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mSurfaceWidth:I

    .line 215
    iput v8, v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mSurfaceHeight:I

    .line 216
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v5, v5, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 217
    sget-object v1, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mArcFilter2DEngine:Lcom/arcsoft/filter/ArcFilterEngine;

    if-eqz v1, :cond_1a9

    iget-object v1, v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mFilterIdsLoadedState:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;

    sget-object v3, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;->LOADED:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;

    if-ne v1, v3, :cond_1a9

    iget v1, v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mCurrentFilterId:I

    if-eqz v1, :cond_1a9

    .line 219
    sget-object v1, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mArcFilter2DEngine:Lcom/arcsoft/filter/ArcFilterEngine;

    move v3, v2

    iget v2, v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mCurrentFilterId:I

    iget-object v5, v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mSurfaceTextureMatrix:[F

    iget v9, v0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mDstFboId:I

    const/4 v13, 0x0

    const/4 v4, 0x0

    move-object v10, v6

    move/from16 v11, p3

    move/from16 v12, p4

    invoke-virtual/range {v1 .. v13}, Lcom/arcsoft/filter/ArcFilterEngine;->DoStep(IIZ[FLandroid/graphics/Rect;IIILandroid/graphics/Rect;III)I

    .line 221
    iget v1, v0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mDstTexId:I

    .line 222
    iget-object v2, v0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mRecordCallback:Lcom/transsion/camera/app/common/mode/IRecordCallback;

    if-eqz v2, :cond_19a

    .line 223
    sget-object v3, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->VERTEX_DEFAULT_MATRIX:[F

    invoke-interface {v2, v1, v3}, Lcom/transsion/camera/app/common/mode/IRecordCallback;->onRecording(I[F)V

    .line 225
    :cond_19a
    iget-object v2, v0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mFullScreenFUDisplay:Lcom/transsion/camera/utils/gles/ProgramTexture2d;

    iget v3, v0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mDstTexId:I

    if-ne v1, v3, :cond_1a3

    sget-object v0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->VERTEX_DEFAULT_MATRIX:[F

    goto :goto_1a5

    :cond_1a3
    iget-object v0, v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mSurfaceTextureMatrix:[F

    :goto_1a5
    invoke-virtual {v2, v1, v0}, Lcom/transsion/camera/utils/gles/core/Program;->drawFrame(I[F)V

    goto :goto_1e0

    :cond_1a9
    move v3, v2

    move-object v5, v6

    .line 227
    iget-object v1, v0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mRecordCallback:Lcom/transsion/camera/app/common/mode/IRecordCallback;

    if-eqz v1, :cond_1b4

    .line 228
    iget-object v2, v0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mtx:[F

    invoke-interface {v1, v3, v2}, Lcom/transsion/camera/app/common/mode/IRecordCallback;->onRecording(I[F)V

    .line 230
    :cond_1b4
    sget-object v1, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mArcFilter2DEngine:Lcom/arcsoft/filter/ArcFilterEngine;

    if-eqz v1, :cond_1e0

    move-object v2, v1

    .line 231
    iget v1, v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mCurrentFilterId:I

    iget-object v4, v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mSurfaceTextureMatrix:[F

    const/4 v8, 0x0

    const/4 v12, 0x0

    move-object v0, v2

    move v2, v3

    const/4 v3, 0x0

    move-object v9, v5

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-virtual/range {v0 .. v12}, Lcom/arcsoft/filter/ArcFilterEngine;->DoStep(IIZ[FLandroid/graphics/Rect;IIILandroid/graphics/Rect;III)I

    goto :goto_1e0

    :cond_1cf
    move v3, v2

    .line 236
    iget-object v1, v0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mRecordCallback:Lcom/transsion/camera/app/common/mode/IRecordCallback;

    if-eqz v1, :cond_1d9

    .line 237
    iget-object v2, v0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mtx:[F

    invoke-interface {v1, v3, v2}, Lcom/transsion/camera/app/common/mode/IRecordCallback;->onRecording(I[F)V

    .line 239
    :cond_1d9
    iget-object v1, v0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mFullScreenFUDisplay2D:Lcom/transsion/camera/utils/gles/ProgramTexture2d;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mtx:[F

    invoke-virtual {v1, v3, v0}, Lcom/transsion/camera/utils/gles/core/Program;->drawFrame(I[F)V

    :cond_1e0
    :goto_1e0
    return v14

    :cond_1e1
    :goto_1e1
    return v5
.end method

.method protected drawFilterPreviewOffScreen(Landroid/graphics/SurfaceTexture;IIII)Z
    .registers 22

    move-object/from16 v0, p0

    .line 293
    sget-object v1, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "drawOffScreen mArcFilterEngine = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mArcFilterOesEngine:Lcom/arcsoft/filter/ArcFilterEngine;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",mFilterIdsLoadedState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mFilterIdsLoadedState:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",mCurrentFilterId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mCurrentFilterId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 295
    sget-object v1, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mArcFilterOesEngine:Lcom/arcsoft/filter/ArcFilterEngine;

    const/4 v2, 0x0

    if-eqz v1, :cond_62

    iget-object v1, v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mFilterIdsLoadedState:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;

    sget-object v3, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;->LOADED:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;

    if-ne v1, v3, :cond_62

    iget v1, v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mCurrentFilterId:I

    if-eqz v1, :cond_62

    .line 297
    new-instance v8, Landroid/graphics/Rect;

    move/from16 v9, p3

    move/from16 v10, p4

    invoke-direct {v8, v2, v2, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 298
    iget-object v1, v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mSurfaceTextureMatrix:[F

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 299
    sget-object v3, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mArcFilterOesEngine:Lcom/arcsoft/filter/ArcFilterEngine;

    iget v4, v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mCurrentFilterId:I

    iget-object v7, v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mSurfaceTextureMatrix:[F

    const/4 v11, 0x0

    const/4 v15, 0x0

    const/4 v6, 0x1

    move-object v12, v8

    move/from16 v13, p3

    move/from16 v14, p4

    move/from16 v5, p2

    invoke-virtual/range {v3 .. v15}, Lcom/arcsoft/filter/ArcFilterEngine;->DoStep(IIZ[FLandroid/graphics/Rect;IIILandroid/graphics/Rect;III)I

    const/4 v0, 0x1

    return v0

    :cond_62
    return v2
.end method

.method protected drawPreview(Landroid/graphics/SurfaceTexture;III)V
    .registers 13

    .line 101
    iget-boolean p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mIsFirstSteadyFrame:Z

    if-nez p1, :cond_5

    return-void

    .line 105
    :cond_5
    iget p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mSufaceHeight:I

    if-eq p1, p4, :cond_f

    .line 106
    iput p4, p0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mSufaceHeight:I

    .line 107
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->unInitProgram()V

    return-void

    .line 110
    :cond_f
    iget-object p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mFullScreenFUDisplayOes:Lcom/transsion/camera/utils/gles/ProgramTextureOES;

    if-eqz p1, :cond_17

    iget-object p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mFullScreenFUDisplay2D:Lcom/transsion/camera/utils/gles/ProgramTexture2d;

    if-nez p1, :cond_1c

    .line 111
    :cond_17
    sget-object p1, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;->TYPE_SURFACE:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->initFilterPreviewCallback(Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;)V

    .line 113
    :cond_1c
    iget-object p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mtx:[F

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 114
    iget-object p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mOESMatrix:[F

    invoke-static {p1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 115
    iget-object p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mOESMatrix:[F

    iget-boolean v1, p0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mIsFaceingBack:Z

    invoke-direct {p0, p1, v1, v0}, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->flip([FZZ)[F

    .line 116
    iget-object v2, p0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mOESMatrix:[F

    iget p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mSensorOrientation:I

    add-int/lit16 p1, p1, 0xb4

    int-to-float v4, p1

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 117
    iget-object p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mFullScreenFUDisplayOes:Lcom/transsion/camera/utils/gles/ProgramTextureOES;

    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mOESMatrix:[F

    invoke-virtual {p1, p2, p3, p4, v0}, Lcom/transsion/camera/utils/gles/ProgramTextureOES;->drawFrameOffScreen(III[F)I

    move-result p1

    if-gez p1, :cond_66

    .line 119
    sget-object p0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "draw return oesTextureId = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " new id = "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 122
    :cond_66
    iget-object p2, p0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mRecordCallback:Lcom/transsion/camera/app/common/mode/IRecordCallback;

    if-eqz p2, :cond_6f

    .line 123
    iget-object p3, p0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mtx:[F

    invoke-interface {p2, p1, p3}, Lcom/transsion/camera/app/common/mode/IRecordCallback;->onRecording(I[F)V

    .line 125
    :cond_6f
    iget-object p2, p0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mFullScreenFUDisplay2D:Lcom/transsion/camera/utils/gles/ProgramTexture2d;

    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mtx:[F

    invoke-virtual {p2, p1, p0}, Lcom/transsion/camera/utils/gles/core/Program;->drawFrame(I[F)V

    return-void
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;)V
    .registers 7

    .line 71
    invoke-super/range {p0 .. p6}, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;)V

    const/4 p1, 0x0

    .line 72
    iput-boolean p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mIsFirstSteadyFrame:Z

    .line 73
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p2

    invoke-interface {p2, p5}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getCameraInfo(Ljava/lang/String;)Lcom/transsion/camera/adapter/ICameraInfo;

    move-result-object p2

    if-eqz p2, :cond_24

    .line 75
    invoke-interface {p2}, Lcom/transsion/camera/adapter/ICameraInfo;->getSensorOrientation()I

    move-result p3

    iput p3, p0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mSensorOrientation:I

    .line 76
    invoke-interface {p2}, Lcom/transsion/camera/adapter/ICameraInfo;->getFacing()I

    move-result p2

    if-nez p2, :cond_21

    const/4 p1, 0x1

    :cond_21
    iput-boolean p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mIsFaceingBack:Z

    goto :goto_3a

    .line 78
    :cond_24
    sget-object p1, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "cameraInfo is null, cameraId = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_3a
    if-nez p5, :cond_45

    .line 81
    const-string p1, "0"

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mCameraId:I

    goto :goto_4b

    .line 83
    :cond_45
    invoke-static {p5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mCameraId:I

    .line 85
    :goto_4b
    iget-object p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    const-string p2, "key_asd_effect_state"

    iget-object p3, p0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 86
    iget-object p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    const-string p2, "key_image_style"

    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p2, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method protected initFilterPreviewCallback(Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;)V
    .registers 5

    .line 319
    sget-object v0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initFilterPreviewCallback type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 320
    iget-object p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mFullScreenFUDisplay2D:Lcom/transsion/camera/utils/gles/ProgramTexture2d;

    if-nez p1, :cond_21

    .line 321
    new-instance p1, Lcom/transsion/camera/utils/gles/ProgramTexture2d;

    invoke-direct {p1}, Lcom/transsion/camera/utils/gles/ProgramTexture2d;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mFullScreenFUDisplay2D:Lcom/transsion/camera/utils/gles/ProgramTexture2d;

    .line 323
    :cond_21
    iget-object p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mFullScreenFUDisplayOes:Lcom/transsion/camera/utils/gles/ProgramTextureOES;

    if-nez p1, :cond_2c

    .line 324
    new-instance p1, Lcom/transsion/camera/utils/gles/ProgramTextureOES;

    invoke-direct {p1}, Lcom/transsion/camera/utils/gles/ProgramTextureOES;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mFullScreenFUDisplayOes:Lcom/transsion/camera/utils/gles/ProgramTextureOES;

    .line 326
    :cond_2c
    iget-object p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mPreviewCallback:Lcom/transsion/camera/app/common/mode/IFilterDataPreviewCallback;

    if-eqz p1, :cond_35

    .line 327
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mContext:Landroid/content/Context;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/mode/IFilterDataPreviewCallback;->modeInitCallback(Landroid/content/Context;)V

    .line 330
    :cond_35
    iget-object p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mFullScreenFUDisplay:Lcom/transsion/camera/utils/gles/ProgramTexture2d;

    if-nez p1, :cond_40

    .line 331
    new-instance p1, Lcom/transsion/camera/utils/gles/ProgramTexture2d;

    invoke-direct {p1}, Lcom/transsion/camera/utils/gles/ProgramTexture2d;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mFullScreenFUDisplay:Lcom/transsion/camera/utils/gles/ProgramTexture2d;

    :cond_40
    return-void
.end method

.method protected loadGLResourceFilterPreviewCallback(I)V
    .registers 2

    .line 394
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mPreviewCallback:Lcom/transsion/camera/app/common/mode/IFilterDataPreviewCallback;

    if-eqz p0, :cond_7

    .line 395
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/mode/IFilterDataPreviewCallback;->loadGLResourceCallback(I)V

    :cond_7
    return-void
.end method

.method protected loadGLResourcesFilterPreviewCallback([II)V
    .registers 3

    .line 401
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mPreviewCallback:Lcom/transsion/camera/app/common/mode/IFilterDataPreviewCallback;

    if-eqz p0, :cond_7

    .line 402
    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/IFilterDataPreviewCallback;->loadGLResourcesCallback([II)V

    :cond_7
    return-void
.end method

.method protected onArcRecording(I[F)V
    .registers 3

    .line 130
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mRecordCallback:Lcom/transsion/camera/app/common/mode/IRecordCallback;

    if-eqz p0, :cond_7

    .line 131
    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/IRecordCallback;->onRecording(I[F)V

    :cond_7
    return-void
.end method

.method public onFirstSteadyFrame(Z)V
    .registers 2

    .line 97
    iput-boolean p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mIsFirstSteadyFrame:Z

    return-void
.end method

.method protected pauseFilterPreviewCallBack()V
    .registers 1

    return-void
.end method

.method protected resumeFilterPreviewCallBack()V
    .registers 1

    return-void
.end method

.method public setPrevieDataCallback(Lcom/transsion/camera/app/common/mode/IFilterDataPreviewCallback;)V
    .registers 2

    .line 308
    iput-object p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mPreviewCallback:Lcom/transsion/camera/app/common/mode/IFilterDataPreviewCallback;

    return-void
.end method

.method public setRecordCallback(Lcom/transsion/camera/app/common/mode/IRecordCallback;)V
    .registers 2

    .line 314
    iput-object p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mRecordCallback:Lcom/transsion/camera/app/common/mode/IRecordCallback;

    return-void
.end method

.method public unInit()V
    .registers 4

    .line 91
    invoke-super {p0}, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->unInit()V

    .line 92
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    const-string v1, "key_asd_effect_state"

    iget-object v2, p0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 93
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    const-string v1, "key_image_style"

    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method protected unInitFilterPreviewCallback(Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;)V
    .registers 4

    .line 337
    sget-object v0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v1, "unInitFilterPreviewCallback"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 338
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->unInitPreviewCallback(Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;)V

    .line 339
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->unInitProgram()V

    .line 340
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mFullScreenFUDisplay:Lcom/transsion/camera/utils/gles/ProgramTexture2d;

    if-eqz v0, :cond_18

    .line 341
    invoke-virtual {v0}, Lcom/transsion/camera/utils/gles/core/Program;->release()V

    const/4 v0, 0x0

    .line 342
    iput-object v0, p0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mFullScreenFUDisplay:Lcom/transsion/camera/utils/gles/ProgramTexture2d;

    .line 344
    :cond_18
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->release(Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;)V

    return-void
.end method
