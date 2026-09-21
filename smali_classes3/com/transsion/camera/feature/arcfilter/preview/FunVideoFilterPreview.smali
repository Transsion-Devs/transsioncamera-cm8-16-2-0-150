.class public Lcom/transsion/camera/feature/arcfilter/preview/FunVideoFilterPreview;
.super Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final VERTEX_DEFAULT_MATRIX:[F


# instance fields
.field private fboId:[I

.field private isCreate:Z

.field private mDstFboId:I

.field private mDstTexId:I

.field private mFullScreenFUDisplay:Lcom/transsion/camera/utils/gles/ProgramTexture2d;

.field private previewCallback:Lcom/transsion/camera/app/common/mode/IFilterDataPreviewCallback;

.field private tex:[I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 15
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "FunVideoFilterPreview"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/arcfilter/preview/FunVideoFilterPreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/16 v0, 0x10

    .line 23
    new-array v0, v0, [F

    fill-array-data v0, :array_14

    sput-object v0, Lcom/transsion/camera/feature/arcfilter/preview/FunVideoFilterPreview;->VERTEX_DEFAULT_MATRIX:[F

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
    .registers 2

    .line 31
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 21
    iput-boolean p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/FunVideoFilterPreview;->isCreate:Z

    return-void
.end method

.method private createFBO(II)V
    .registers 16

    const/4 v0, 0x1

    .line 144
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/transsion/camera/feature/arcfilter/preview/FunVideoFilterPreview;->fboId:[I

    .line 145
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/transsion/camera/feature/arcfilter/preview/FunVideoFilterPreview;->tex:[I

    const/4 v2, 0x0

    .line 147
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 148
    iget-object v1, p0, Lcom/transsion/camera/feature/arcfilter/preview/FunVideoFilterPreview;->tex:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 151
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/preview/FunVideoFilterPreview;->tex:[I

    aget v0, v0, v2

    const/16 v1, 0xde1

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v0, 0x2802

    const v3, 0x812f

    .line 154
    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2803

    .line 155
    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2800

    const/16 v3, 0x2601

    .line 156
    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2801

    .line 157
    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v11, 0x1401

    const/4 v12, 0x0

    const/16 v4, 0xde1

    const/4 v5, 0x0

    const/16 v6, 0x1908

    const/4 v9, 0x0

    const/16 v10, 0x1908

    move v7, p1

    move v8, p2

    .line 160
    invoke-static/range {v4 .. v12}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 161
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 164
    iget-object p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/FunVideoFilterPreview;->fboId:[I

    aget p1, p1, v2

    const p2, 0x8d40

    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 166
    iget-object p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/FunVideoFilterPreview;->tex:[I

    aget p1, p1, v2

    const v0, 0x8ce0

    invoke-static {p2, v0, v1, p1, v2}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 168
    invoke-static {p2}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result p1

    const v0, 0x8cd5

    if-ne v0, p1, :cond_74

    .line 173
    invoke-static {p2, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 175
    iget-object p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/FunVideoFilterPreview;->fboId:[I

    aget p1, p1, v2

    iput p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/FunVideoFilterPreview;->mDstFboId:I

    .line 176
    iget-object p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/FunVideoFilterPreview;->tex:[I

    aget p1, p1, v2

    iput p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/FunVideoFilterPreview;->mDstTexId:I

    return-void

    .line 170
    :cond_74
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Error CreateTmpFBO()."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private release(Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;)V
    .registers 6

    const v0, 0x8d40

    const/4 v1, 0x0

    .line 180
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const/16 v0, 0xde1

    .line 181
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 182
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/preview/FunVideoFilterPreview;->fboId:[I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_17

    .line 183
    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 184
    iput-object v3, p0, Lcom/transsion/camera/feature/arcfilter/preview/FunVideoFilterPreview;->fboId:[I

    .line 186
    :cond_17
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/preview/FunVideoFilterPreview;->tex:[I

    if-eqz v0, :cond_20

    .line 187
    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 188
    iput-object v3, p0, Lcom/transsion/camera/feature/arcfilter/preview/FunVideoFilterPreview;->tex:[I

    .line 190
    :cond_20
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/preview/FunVideoFilterPreview;->previewCallback:Lcom/transsion/camera/app/common/mode/IFilterDataPreviewCallback;

    if-eqz v0, :cond_2f

    .line 191
    sget-object v2, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;->TYPE_MODE:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;

    if-ne p1, v2, :cond_2c

    .line 192
    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/IFilterDataPreviewCallback;->modeUninitCallback()V

    goto :goto_2f

    .line 194
    :cond_2c
    invoke-interface {v0, v3}, Lcom/transsion/camera/app/common/mode/IFilterDataPreviewCallback;->surfaceDestroyCallback(Landroid/graphics/SurfaceTexture;)V

    .line 197
    :cond_2f
    :goto_2f
    iget-object p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/FunVideoFilterPreview;->mFullScreenFUDisplay:Lcom/transsion/camera/utils/gles/ProgramTexture2d;

    if-eqz p1, :cond_38

    .line 198
    invoke-virtual {p1}, Lcom/transsion/camera/utils/gles/core/Program;->release()V

    .line 199
    iput-object v3, p0, Lcom/transsion/camera/feature/arcfilter/preview/FunVideoFilterPreview;->mFullScreenFUDisplay:Lcom/transsion/camera/utils/gles/ProgramTexture2d;

    .line 201
    :cond_38
    iput v1, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mSurfaceWidth:I

    .line 202
    iput v1, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mSurfaceHeight:I

    .line 203
    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method


# virtual methods
.method protected drawFilterPreview(Landroid/graphics/SurfaceTexture;III)Z
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v7, p3

    move/from16 v8, p4

    .line 53
    iget v2, v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mSurfaceWidth:I

    if-ne v2, v7, :cond_10

    iget v2, v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mSurfaceHeight:I

    if-eq v2, v8, :cond_17

    .line 54
    :cond_10
    iput v7, v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mSurfaceWidth:I

    .line 55
    iput v8, v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mSurfaceHeight:I

    .line 56
    invoke-direct {v0, v7, v8}, Lcom/transsion/camera/feature/arcfilter/preview/FunVideoFilterPreview;->createFBO(II)V

    .line 59
    :cond_17
    iget-object v2, v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mSurfaceTextureMatrix:[F

    invoke-virtual {v1, v2}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 60
    sget-object v2, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mArcFilterOesEngine:Lcom/arcsoft/filter/ArcFilterEngine;

    const/4 v14, -0x1

    const/4 v15, 0x0

    if-eqz v2, :cond_48

    iget-object v2, v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mFilterIdsLoadedState:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;

    sget-object v3, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;->LOADED:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;

    if-ne v2, v3, :cond_48

    iget v2, v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mCurrentFilterId:I

    if-eqz v2, :cond_48

    .line 62
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v15, v15, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 63
    sget-object v1, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mArcFilterOesEngine:Lcom/arcsoft/filter/ArcFilterEngine;

    iget v2, v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mCurrentFilterId:I

    iget-object v5, v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mSurfaceTextureMatrix:[F

    iget v9, v0, Lcom/transsion/camera/feature/arcfilter/preview/FunVideoFilterPreview;->mDstFboId:I

    const/4 v13, 0x0

    const/4 v4, 0x1

    move-object v10, v6

    move/from16 v11, p3

    move/from16 v12, p4

    move/from16 v3, p2

    invoke-virtual/range {v1 .. v13}, Lcom/arcsoft/filter/ArcFilterEngine;->DoStep(IIZ[FLandroid/graphics/Rect;IIILandroid/graphics/Rect;III)I

    .line 65
    iget v1, v0, Lcom/transsion/camera/feature/arcfilter/preview/FunVideoFilterPreview;->mDstTexId:I

    goto :goto_54

    .line 67
    :cond_48
    iget-object v2, v0, Lcom/transsion/camera/feature/arcfilter/preview/FunVideoFilterPreview;->previewCallback:Lcom/transsion/camera/app/common/mode/IFilterDataPreviewCallback;

    if-eqz v2, :cond_53

    move/from16 v3, p2

    .line 68
    invoke-interface {v2, v1, v3, v7, v8}, Lcom/transsion/camera/app/common/mode/IFilterDataPreviewCallback;->onDraw(Landroid/graphics/SurfaceTexture;III)I

    move-result v1

    goto :goto_54

    :cond_53
    move v1, v14

    .line 72
    :goto_54
    iget-object v2, v0, Lcom/transsion/camera/feature/arcfilter/preview/FunVideoFilterPreview;->previewCallback:Lcom/transsion/camera/app/common/mode/IFilterDataPreviewCallback;

    if-eqz v2, :cond_64

    .line 73
    iget v3, v0, Lcom/transsion/camera/feature/arcfilter/preview/FunVideoFilterPreview;->mDstTexId:I

    if-ne v1, v3, :cond_5f

    sget-object v3, Lcom/transsion/camera/feature/arcfilter/preview/FunVideoFilterPreview;->VERTEX_DEFAULT_MATRIX:[F

    goto :goto_61

    :cond_5f
    iget-object v3, v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mSurfaceTextureMatrix:[F

    :goto_61
    invoke-interface {v2, v1, v3}, Lcom/transsion/camera/app/common/mode/IFilterDataPreviewCallback;->onRecording(I[F)V

    :cond_64
    if-ne v1, v14, :cond_6e

    .line 77
    sget-object v0, Lcom/transsion/camera/feature/arcfilter/preview/FunVideoFilterPreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "init not completed, return false"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v15

    .line 80
    :cond_6e
    iget-object v2, v0, Lcom/transsion/camera/feature/arcfilter/preview/FunVideoFilterPreview;->mFullScreenFUDisplay:Lcom/transsion/camera/utils/gles/ProgramTexture2d;

    iget v3, v0, Lcom/transsion/camera/feature/arcfilter/preview/FunVideoFilterPreview;->mDstTexId:I

    if-ne v1, v3, :cond_77

    sget-object v0, Lcom/transsion/camera/feature/arcfilter/preview/FunVideoFilterPreview;->VERTEX_DEFAULT_MATRIX:[F

    goto :goto_79

    :cond_77
    iget-object v0, v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mSurfaceTextureMatrix:[F

    :goto_79
    invoke-virtual {v2, v1, v0}, Lcom/transsion/camera/utils/gles/core/Program;->drawFrame(I[F)V

    const/4 v0, 0x1

    return v0
.end method

.method protected drawFilterPreviewOffScreen(Landroid/graphics/SurfaceTexture;IIII)Z
    .registers 22

    move-object/from16 v0, p0

    .line 88
    sget-object v1, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mArcFilterOesEngine:Lcom/arcsoft/filter/ArcFilterEngine;

    const/4 v2, 0x0

    if-eqz v1, :cond_36

    iget-object v1, v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mFilterIdsLoadedState:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;

    sget-object v3, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;->LOADED:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;

    if-ne v1, v3, :cond_36

    iget v1, v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mCurrentFilterId:I

    if-eqz v1, :cond_36

    .line 90
    new-instance v8, Landroid/graphics/Rect;

    move/from16 v9, p3

    move/from16 v10, p4

    invoke-direct {v8, v2, v2, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 91
    iget-object v1, v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mSurfaceTextureMatrix:[F

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 92
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

    :cond_36
    return v2
.end method

.method protected initFilterPreviewCallback(Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;)V
    .registers 4

    const/4 v0, 0x1

    .line 101
    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcfilter/preview/FunVideoFilterPreview;->isCreate:Z

    .line 102
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/preview/FunVideoFilterPreview;->previewCallback:Lcom/transsion/camera/app/common/mode/IFilterDataPreviewCallback;

    if-eqz v0, :cond_15

    .line 103
    sget-object v1, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;->TYPE_MODE:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;

    if-ne p1, v1, :cond_11

    .line 104
    iget-object p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mContext:Landroid/content/Context;

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/mode/IFilterDataPreviewCallback;->modeInitCallback(Landroid/content/Context;)V

    goto :goto_15

    :cond_11
    const/4 p1, 0x0

    .line 106
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/mode/IFilterDataPreviewCallback;->surfaceCreatedCallback(Landroid/graphics/SurfaceTexture;)V

    .line 109
    :cond_15
    :goto_15
    iget-object p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/FunVideoFilterPreview;->mFullScreenFUDisplay:Lcom/transsion/camera/utils/gles/ProgramTexture2d;

    if-nez p1, :cond_20

    .line 110
    new-instance p1, Lcom/transsion/camera/utils/gles/ProgramTexture2d;

    invoke-direct {p1}, Lcom/transsion/camera/utils/gles/ProgramTexture2d;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/FunVideoFilterPreview;->mFullScreenFUDisplay:Lcom/transsion/camera/utils/gles/ProgramTexture2d;

    :cond_20
    return-void
.end method

.method protected loadGLResourceFilterPreviewCallback(I)V
    .registers 3

    .line 122
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/preview/FunVideoFilterPreview;->previewCallback:Lcom/transsion/camera/app/common/mode/IFilterDataPreviewCallback;

    if-eqz v0, :cond_b

    iget-boolean p0, p0, Lcom/transsion/camera/feature/arcfilter/preview/FunVideoFilterPreview;->isCreate:Z

    if-eqz p0, :cond_b

    .line 123
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/mode/IFilterDataPreviewCallback;->loadGLResourceCallback(I)V

    :cond_b
    return-void
.end method

.method protected loadGLResourcesFilterPreviewCallback([II)V
    .registers 4

    .line 130
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/preview/FunVideoFilterPreview;->previewCallback:Lcom/transsion/camera/app/common/mode/IFilterDataPreviewCallback;

    if-eqz v0, :cond_b

    iget-boolean p0, p0, Lcom/transsion/camera/feature/arcfilter/preview/FunVideoFilterPreview;->isCreate:Z

    if-eqz p0, :cond_b

    .line 131
    invoke-interface {v0, p1, p2}, Lcom/transsion/camera/app/common/mode/IFilterDataPreviewCallback;->loadGLResourcesCallback([II)V

    :cond_b
    return-void
.end method

.method public notifyAction(I)V
    .registers 2

    return-void
.end method

.method public onPostViewData(IIIZ)Z
    .registers 5

    const/4 p0, 0x0

    return p0
.end method

.method public onShutterClick()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public setPrevieDataCallback(Lcom/transsion/camera/app/common/mode/IFilterDataPreviewCallback;)V
    .registers 2

    .line 46
    iput-object p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/FunVideoFilterPreview;->previewCallback:Lcom/transsion/camera/app/common/mode/IFilterDataPreviewCallback;

    return-void
.end method

.method protected unInitFilterPreviewCallback(Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;)V
    .registers 3

    const/4 v0, 0x0

    .line 116
    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcfilter/preview/FunVideoFilterPreview;->isCreate:Z

    .line 117
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcfilter/preview/FunVideoFilterPreview;->release(Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;)V

    return-void
.end method
