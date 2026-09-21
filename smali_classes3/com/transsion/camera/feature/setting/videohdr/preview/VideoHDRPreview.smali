.class public Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/mode/IVideoModeCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$HDRSettingChangeListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_MATRIX:[F

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private IS_DEBUG:Z

.field private mCount:I

.field private mFrameBufferTextures:[I

.field private mFrameBuffers:[I

.field private mFrameHeight:I

.field private mFrameWidth:I

.field private volatile mIsCaptureTriggled:Z

.field private volatile mIsFilterInit:I

.field private mIsSurfaceCreated:Z

.field private volatile mIsVideoBackWideSupport360Hdr:Z

.field private volatile mIsVideoHDRState:Z

.field private volatile mIsVideoRecording:Z

.field private volatile mIsVideoSuperNightSupport:Z

.field private mOrientation:I

.field private final mPreviewCallback:Lcom/transsion/camera/app/common/preview/PreviewCallbacker;

.field private mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

.field private mRenderDrawer:Lcom/transsion/camera/feature/setting/videohdr/glrender/GLRenderDrawer;

.field private mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

.field private mStatusChangeListener:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$HDRSettingChangeListener;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mSurfaceHeight:I

.field private mSurfaceWidth:I

.field private mTempOrientation:I

.field private mTime:J

.field private mTransformMatrix:[F

.field private mVideoHDRRecordingCallback:Lcom/transsion/camera/app/common/mode/IVideoHDRRecordingCallback;


# direct methods
.method static bridge synthetic -$$Nest$fgetIS_DEBUG(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->IS_DEBUG:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFrameBufferTextures(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)[I
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mFrameBufferTextures:[I

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFrameBuffers(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)[I
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mFrameBuffers:[I

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsCaptureTriggled(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mIsCaptureTriggled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsFilterInit(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mIsFilterInit:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsSurfaceCreated(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mIsSurfaceCreated:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsVideoRecording(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mIsVideoRecording:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmOrientation(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mOrientation:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRenderDrawer(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)Lcom/transsion/camera/feature/setting/videohdr/glrender/GLRenderDrawer;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mRenderDrawer:Lcom/transsion/camera/feature/setting/videohdr/glrender/GLRenderDrawer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSettingController(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSurfaceHeight(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mSurfaceHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSurfaceWidth(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mSurfaceWidth:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTempOrientation(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mTempOrientation:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTransformMatrix(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)[F
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mTransformMatrix:[F

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVideoHDRRecordingCallback(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)Lcom/transsion/camera/app/common/mode/IVideoHDRRecordingCallback;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mVideoHDRRecordingCallback:Lcom/transsion/camera/app/common/mode/IVideoHDRRecordingCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsCaptureTriggled(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mIsCaptureTriggled:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsSurfaceCreated(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mIsSurfaceCreated:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSurfaceHeight(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mSurfaceHeight:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSurfaceWidth(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mSurfaceWidth:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mdestroyFilter(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->destroyFilter()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetJpegData(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;[[BII)[[B
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->getJpegData([[BII)[[B

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetTextureBuffer(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;IIII)[[B
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->getTextureBuffer(IIII)[[B

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$minitCameraFrameBuffer(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;II)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->initCameraFrameBuffer(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$minitFilter(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->initFilter()V

    return-void
.end method

.method static bridge synthetic -$$Nest$misCurrentCameraFacingBack(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->isCurrentCameraFacingBack()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misIn360VideoHDRState(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->isIn360VideoHDRState()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misQualityValidate(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;II)Z
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->isQualityValidate(II)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mshowFps(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->showFps()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateTexTransformMatrix(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->updateTexTransformMatrix(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateWaterMarkPosition(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;IIIIZ)V
    .registers 6

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->updateWaterMarkPosition(IIIIZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDEFAULT_MATRIX()[F
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->DEFAULT_MATRIX:[F

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 39
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "VideoHDRPreview"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/16 v0, 0x10

    .line 44
    new-array v0, v0, [F

    fill-array-data v0, :array_14

    sput-object v0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->DEFAULT_MATRIX:[F

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
    .registers 5

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->IS_DEBUG:Z

    const/16 v1, 0x10

    .line 50
    new-array v1, v1, [F

    iput-object v1, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mTransformMatrix:[F

    .line 55
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mIsCaptureTriggled:Z

    .line 56
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mIsVideoRecording:Z

    .line 57
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mIsVideoHDRState:Z

    .line 58
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mIsVideoSuperNightSupport:Z

    .line 60
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mIsVideoBackWideSupport360Hdr:Z

    .line 61
    iput v0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mOrientation:I

    .line 62
    iput v0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mTempOrientation:I

    .line 64
    new-instance v1, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$HDRSettingChangeListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$HDRSettingChangeListener;-><init>(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview-IA;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mStatusChangeListener:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$HDRSettingChangeListener;

    .line 70
    iput v0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mIsFilterInit:I

    .line 72
    iput-object v2, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mFrameBuffers:[I

    .line 73
    iput-object v2, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mFrameBufferTextures:[I

    const/4 v0, -0x1

    .line 74
    iput v0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mFrameWidth:I

    .line 75
    iput v0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mFrameHeight:I

    const/4 v0, 0x1

    .line 77
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mIsSurfaceCreated:Z

    .line 79
    new-instance v0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;-><init>(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mPreviewCallback:Lcom/transsion/camera/app/common/preview/PreviewCallbacker;

    .line 253
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isVideoHDRDebugSupport()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->IS_DEBUG:Z

    .line 254
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mRenderDrawer:Lcom/transsion/camera/feature/setting/videohdr/glrender/GLRenderDrawer;

    if-nez v0, :cond_48

    .line 255
    new-instance v0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;

    invoke-direct {v0, p1}, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mRenderDrawer:Lcom/transsion/camera/feature/setting/videohdr/glrender/GLRenderDrawer;

    :cond_48
    return-void
.end method

.method private bindFrameBuffer(IIII)V
    .registers 14

    const/16 p0, 0xde1

    .line 473
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

    .line 474
    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    const/16 p3, 0x2800

    const p4, 0x46180400    # 9729.0f

    .line 476
    invoke-static {p0, p3, p4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p3, 0x2801

    .line 478
    invoke-static {p0, p3, p4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p3, 0x2802

    const p4, 0x47012f00    # 33071.0f

    .line 480
    invoke-static {p0, p3, p4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p3, 0x2803

    .line 482
    invoke-static {p0, p3, p4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const p3, 0x8d40

    .line 485
    invoke-static {p3, p2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const p2, 0x8ce0

    const/4 p4, 0x0

    .line 486
    invoke-static {p3, p2, p0, p1, p4}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 489
    invoke-static {p3}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result p1

    const p2, 0x8cd5

    if-ne p2, p1, :cond_4c

    .line 494
    invoke-static {p0, p4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 495
    invoke-static {p3, p4}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    return-void

    .line 491
    :cond_4c
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Error CreateTmpFBO()"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private destroyDraw()V
    .registers 1

    .line 267
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mRenderDrawer:Lcom/transsion/camera/feature/setting/videohdr/glrender/GLRenderDrawer;

    if-eqz p0, :cond_7

    .line 268
    invoke-interface {p0}, Lcom/transsion/camera/feature/setting/videohdr/glrender/GLRenderDrawer;->destroy()V

    :cond_7
    return-void
.end method

.method private destroyFilter()V
    .registers 2

    .line 277
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mRenderDrawer:Lcom/transsion/camera/feature/setting/videohdr/glrender/GLRenderDrawer;

    invoke-interface {v0}, Lcom/transsion/camera/feature/setting/videohdr/glrender/GLRenderDrawer;->destroyFilter()V

    .line 278
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->destroyFrameBuffers()V

    const/4 v0, 0x0

    .line 279
    iput v0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mIsFilterInit:I

    .line 280
    iput v0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mSurfaceWidth:I

    .line 281
    iput v0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mSurfaceHeight:I

    return-void
.end method

.method private destroyFrameBuffers()V
    .registers 7

    .line 499
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mFrameBufferTextures:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-eqz v0, :cond_2b

    .line 500
    invoke-static {}, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->bufferCountRemove()V

    .line 501
    sget-object v0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[bufferCountRemove], count= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->getBufferCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 502
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mFrameBufferTextures:[I

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 503
    iput-object v1, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mFrameBufferTextures:[I

    .line 505
    :cond_2b
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mFrameBuffers:[I

    if-eqz v0, :cond_34

    .line 506
    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 507
    iput-object v1, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mFrameBuffers:[I

    :cond_34
    const/4 v0, -0x1

    .line 509
    iput v0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mFrameWidth:I

    .line 510
    iput v0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mFrameHeight:I

    return-void
.end method

.method private getJpegData([[BII)[[B
    .registers 9

    const/4 v0, 0x2

    .line 401
    new-array v0, v0, [[B

    .line 402
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->IS_DEBUG:Z

    const/16 v1, 0x64

    if-eqz p0, :cond_34

    .line 404
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    const/4 v2, 0x0

    .line 405
    aget-object v3, p1, v2

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 407
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 408
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v4, v1, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 409
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    aput-object v4, v0, v2

    .line 411
    :try_start_29
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 412
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2f} :catch_30

    goto :goto_34

    :catch_30
    move-exception p0

    .line 414
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 419
    :cond_34
    :goto_34
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    const/4 p2, 0x1

    .line 420
    aget-object p1, p1, p2

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 422
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 423
    sget-object p3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, p3, v1, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 424
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p3

    aput-object p3, v0, p2

    .line 426
    :try_start_54
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 427
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_5a} :catch_5b

    goto :goto_5f

    :catch_5b
    move-exception p0

    .line 429
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_5f
    return-object v0
.end method

.method private getTextureBuffer(IIII)[[B
    .registers 18

    const/16 v0, 0x10

    .line 376
    new-array v5, v0, [F

    .line 377
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mTransformMatrix:[F

    const/4 v11, 0x0

    invoke-static {v1, v11, v5, v11, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/high16 v0, 0x3f000000    # 0.5f

    const/4 v7, 0x0

    .line 378
    invoke-static {v5, v11, v0, v0, v7}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    move-object v1, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x43340000    # 180.0f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 379
    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    const/high16 v0, -0x41000000    # -0.5f

    .line 380
    invoke-static {v1, v11, v0, v0, v7}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    const/4 v0, 0x2

    .line 382
    new-array v0, v0, [[B

    mul-int v2, p4, p3

    mul-int/lit8 v2, v2, 0x4

    .line 383
    new-array v12, v2, [B

    .line 384
    aput-object v12, v0, v11

    .line 385
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->IS_DEBUG:Z

    if-eqz p0, :cond_46

    .line 387
    new-array v8, v2, [B

    move-object v5, v1

    .line 388
    invoke-static {}, Lcom/aiworks/android/livehdr/JniInterface;->getInstance()Lcom/aiworks/android/livehdr/JniInterface;

    move-result-object v1

    const/4 v9, 0x7

    const/4 v10, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    move v2, p1

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-virtual/range {v1 .. v10}, Lcom/aiworks/android/livehdr/JniInterface;->getTextureBuffer(IIZ[FII[BIZ)V

    move-object v1, v5

    .line 390
    aput-object v8, v0, v11

    goto :goto_47

    :cond_46
    move-object v5, v1

    .line 394
    :goto_47
    invoke-static {}, Lcom/aiworks/android/livehdr/JniInterface;->getInstance()Lcom/aiworks/android/livehdr/JniInterface;

    move-result-object v1

    const/4 v9, 0x7

    const/4 v10, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    move v2, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-object v8, v12

    invoke-virtual/range {v1 .. v10}, Lcom/aiworks/android/livehdr/JniInterface;->getTextureBuffer(IIZ[FII[BIZ)V

    const/4 p0, 0x1

    .line 396
    aput-object v8, v0, p0

    return-object v0
.end method

.method private initCameraFrameBuffer(II)V
    .registers 6

    .line 451
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mFrameBuffers:[I

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mFrameWidth:I

    if-ne v0, p1, :cond_c

    iget v0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mFrameHeight:I

    if-eq v0, p2, :cond_f

    .line 452
    :cond_c
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->destroyFrameBuffers()V

    .line 454
    :cond_f
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mFrameBuffers:[I

    if-nez v0, :cond_69

    .line 455
    iput p1, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mFrameWidth:I

    .line 456
    iput p2, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mFrameHeight:I

    const/4 v0, 0x3

    .line 457
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mFrameBuffers:[I

    .line 458
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mFrameBufferTextures:[I

    const/4 v2, 0x0

    .line 460
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 461
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mFrameBufferTextures:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 463
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mFrameBufferTextures:[I

    aget v0, v0, v2

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mFrameBuffers:[I

    aget v1, v1, v2

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->bindFrameBuffer(IIII)V

    .line 464
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mFrameBufferTextures:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mFrameBuffers:[I

    aget v1, v2, v1

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->bindFrameBuffer(IIII)V

    .line 465
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mFrameBufferTextures:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mFrameBuffers:[I

    aget v1, v2, v1

    invoke-direct {p0, v0, v1, p2, p1}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->bindFrameBuffer(IIII)V

    .line 467
    invoke-static {}, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->bufferCountAdd()V

    .line 468
    sget-object p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[bufferCountAdd], count="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->getBufferCount()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_69
    return-void
.end method

.method private initDraw()V
    .registers 2

    .line 260
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mRenderDrawer:Lcom/transsion/camera/feature/setting/videohdr/glrender/GLRenderDrawer;

    invoke-interface {v0}, Lcom/transsion/camera/feature/setting/videohdr/glrender/GLRenderDrawer;->init()V

    .line 261
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-eqz v0, :cond_e

    .line 262
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mPreviewCallback:Lcom/transsion/camera/app/common/preview/PreviewCallbacker;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->modeInit(Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;)V

    :cond_e
    return-void
.end method

.method private initFilter()V
    .registers 3

    .line 273
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mRenderDrawer:Lcom/transsion/camera/feature/setting/videohdr/glrender/GLRenderDrawer;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/setting/videohdr/glrender/GLRenderDrawer;->initFilter(Z)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mIsFilterInit:I

    return-void
.end method

.method private isCurrentCameraFacingBack()Z
    .registers 1

    .line 515
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-eqz p0, :cond_10

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->getFacing(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method private isIn360VideoHDRState()Z
    .registers 4

    .line 519
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackMainCamera(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3f

    .line 520
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/CameraRepository;->isFrontMainCamera(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 521
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/CameraRepository;->isFrontFolderCamera(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3f

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 522
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->isWideOrLongFocusSupport(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    goto :goto_3f

    :cond_3e
    return v1

    .line 523
    :cond_3f
    :goto_3f
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "key_360_video_hdr"

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "on"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_55

    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mIsVideoHDRState:Z

    if-eqz p0, :cond_55

    const/4 p0, 0x1

    return p0

    :cond_55
    return v1
.end method

.method private isQualityValidate(II)Z
    .registers 3

    const/16 p0, 0x2d0

    if-ne p1, p0, :cond_8

    const/16 p0, 0x500

    if-eq p2, p0, :cond_10

    :cond_8
    const/16 p0, 0x438

    if-ne p1, p0, :cond_12

    const/16 p0, 0x780

    if-ne p2, p0, :cond_12

    :cond_10
    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method private isWideOrLongFocusSupport(Ljava/lang/String;)Z
    .registers 5

    .line 529
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mIsVideoSuperNightSupport:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mIsVideoBackWideSupport360Hdr:Z

    if-eqz v0, :cond_16

    :cond_a
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackWideCamera(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    move v0, v2

    goto :goto_17

    :cond_16
    move v0, v1

    .line 530
    :goto_17
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mIsVideoSuperNightSupport:Z

    if-eqz p0, :cond_27

    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackLongFocusCamera(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_27

    move p0, v2

    goto :goto_28

    :cond_27
    move p0, v1

    :goto_28
    if-nez v0, :cond_2e

    if-eqz p0, :cond_2d

    goto :goto_2e

    :cond_2d
    return v1

    :cond_2e
    :goto_2e
    return v2
.end method

.method private screenFlip()Z
    .registers 1

    .line 238
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 241
    :cond_6
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->screenFlip()Z

    move-result p0

    return p0
.end method

.method private screenPocket()Z
    .registers 1

    .line 231
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 234
    :cond_6
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->screenPocket()Z

    move-result p0

    return p0
.end method

.method private showFps()V
    .registers 7

    .line 438
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 439
    iget-wide v2, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2c

    .line 440
    sget-object v2, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[showFps] frame :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 441
    iput-wide v0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mTime:J

    const/4 v0, 0x0

    .line 442
    iput v0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mCount:I

    return-void

    .line 444
    :cond_2c
    iget v0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mCount:I

    return-void
.end method

.method private updateTexTransformMatrix(Ljava/lang/String;)V
    .registers 4

    .line 555
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->isCurrentCameraFacingBack()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_29

    const-string v0, "off"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_29

    .line 556
    iget p0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mOrientation:I

    const/16 p1, 0x5a

    const/4 v0, 0x1

    if-eq p0, p1, :cond_22

    const/16 p1, 0x10e

    if-ne p0, p1, :cond_1b

    goto :goto_22

    .line 560
    :cond_1b
    invoke-static {v0}, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->setTransformMatrixHorizontalMirror(Z)V

    .line 561
    invoke-static {v1}, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->setTransformMatrixVerticalMirror(Z)V

    return-void

    .line 557
    :cond_22
    :goto_22
    invoke-static {v1}, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->setTransformMatrixHorizontalMirror(Z)V

    .line 558
    invoke-static {v0}, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->setTransformMatrixVerticalMirror(Z)V

    return-void

    .line 564
    :cond_29
    invoke-static {v1}, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->setTransformMatrixHorizontalMirror(Z)V

    .line 565
    invoke-static {v1}, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->setTransformMatrixVerticalMirror(Z)V

    return-void
.end method

.method private updateWaterMarkPosition(IIIIZ)V
    .registers 12

    .line 245
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->screenPocket()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->screenFlip()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_13

    .line 248
    :cond_d
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mRenderDrawer:Lcom/transsion/camera/feature/setting/videohdr/glrender/GLRenderDrawer;

    invoke-interface/range {p0 .. p5}, Lcom/transsion/camera/feature/setting/videohdr/glrender/GLRenderDrawer;->updateWaterMarkPosition(IIIIZ)V

    return-void

    .line 246
    :cond_13
    :goto_13
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mRenderDrawer:Lcom/transsion/camera/feature/setting/videohdr/glrender/GLRenderDrawer;

    const/16 v4, 0x5a

    const/4 v5, 0x1

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/transsion/camera/feature/setting/videohdr/glrender/GLRenderDrawer;->updateWaterMarkPosition(IIIIZ)V

    return-void
.end method


# virtual methods
.method public bridge synthetic enableBlur(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/IVideoModeCallback;->enableBlur(Z)V

    return-void
.end method

.method public bridge synthetic enableDVMask(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/IVideoModeCallback;->enableDVMask(Z)V

    return-void
.end method

.method public bridge synthetic executeInGLThread(Ljava/lang/Runnable;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/IVideoModeCallback;->executeInGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public init(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/preview/IPreviewOperator;I)V
    .registers 7

    .line 290
    sget-object v0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[init] Thread:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 291
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 292
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    .line 293
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    .line 294
    iput p3, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mOrientation:I

    .line 295
    const-string p2, "key_mirror"

    iget-object p3, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mStatusChangeListener:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$HDRSettingChangeListener;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 296
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_auto_watermark"

    iget-object p3, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mStatusChangeListener:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$HDRSettingChangeListener;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 297
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->initDraw()V

    return-void
.end method

.method public bridge synthetic initAppUI(Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/IVideoModeCallback;->initAppUI(Lcom/transsion/camera/app/common/IAppUI;)V

    return-void
.end method

.method public onOrientationChanged(IZ)V
    .registers 9

    .line 351
    iput p1, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mOrientation:I

    .line 352
    sget-object p1, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onOrientationChanged] mOrientation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,mIsVideoRecording:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mIsVideoRecording:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " , waterMark:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->isWaterMarkOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 353
    invoke-static {}, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->isWaterMarkOn()Z

    move-result p1

    if-eqz p1, :cond_52

    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mIsVideoRecording:Z

    if-nez p1, :cond_52

    .line 354
    iget v1, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mSurfaceHeight:I

    iget v2, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mSurfaceWidth:I

    iget v3, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mOrientation:I

    if-eqz p2, :cond_46

    const/16 p1, 0x5a

    :goto_44
    move v4, p1

    goto :goto_49

    :cond_46
    const/16 p1, 0x10e

    goto :goto_44

    :goto_49
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->isCurrentCameraFacingBack()Z

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->updateWaterMarkPosition(IIIIZ)V

    goto :goto_53

    :cond_52
    move-object v0, p0

    .line 357
    :goto_53
    iget-object p0, v0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-eqz p0, :cond_60

    .line 358
    const-string p1, "key_mirror"

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 359
    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->updateTexTransformMatrix(Ljava/lang/String;)V

    :cond_60
    return-void
.end method

.method public bridge synthetic onSettingReady()V
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/IVideoModeCallback;->onSettingReady()V

    return-void
.end method

.method public bridge synthetic postInvalidate(I)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/IVideoModeCallback;->postInvalidate(I)V

    return-void
.end method

.method public bridge synthetic previewViewTypeChanged()V
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/IVideoModeCallback;->previewViewTypeChanged()V

    return-void
.end method

.method public reset()V
    .registers 1

    .line 365
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mRenderDrawer:Lcom/transsion/camera/feature/setting/videohdr/glrender/GLRenderDrawer;

    if-eqz p0, :cond_7

    .line 366
    invoke-interface {p0}, Lcom/transsion/camera/feature/setting/videohdr/glrender/GLRenderDrawer;->reset()V

    :cond_7
    return-void
.end method

.method public resume()V
    .registers 4

    .line 316
    sget-object v0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[resume] Thread:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , sInit:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mRenderDrawer:Lcom/transsion/camera/feature/setting/videohdr/glrender/GLRenderDrawer;

    invoke-interface {v2}, Lcom/transsion/camera/feature/setting/videohdr/glrender/GLRenderDrawer;->isInit()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mRenderDrawer:Lcom/transsion/camera/feature/setting/videohdr/glrender/GLRenderDrawer;

    invoke-interface {v0}, Lcom/transsion/camera/feature/setting/videohdr/glrender/GLRenderDrawer;->isInit()Z

    move-result v0

    if-nez v0, :cond_40

    .line 318
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mRenderDrawer:Lcom/transsion/camera/feature/setting/videohdr/glrender/GLRenderDrawer;

    invoke-interface {v0}, Lcom/transsion/camera/feature/setting/videohdr/glrender/GLRenderDrawer;->init()V

    .line 319
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-eqz p0, :cond_40

    .line 320
    invoke-interface {p0}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->modeResume()V

    :cond_40
    return-void
.end method

.method public setHDRDataPreviewDataCallback(Lcom/transsion/camera/app/common/mode/IVideoHDRRecordingCallback;)V
    .registers 2

    .line 327
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mVideoHDRRecordingCallback:Lcom/transsion/camera/app/common/mode/IVideoHDRRecordingCallback;

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/String;F)V
    .registers 3

    .line 0
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/IVideoModeCallback;->setValue(Ljava/lang/String;F)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/String;I)V
    .registers 3

    .line 0
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/IVideoModeCallback;->setValue(Ljava/lang/String;I)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/IVideoModeCallback;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setVideoBackWideSupport360Hdr(Z)V
    .registers 2

    .line 551
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mIsVideoBackWideSupport360Hdr:Z

    return-void
.end method

.method public setVideoHDRState(Z)V
    .registers 4

    .line 540
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mIsVideoHDRState:Z

    .line 541
    sget-object p1, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsVideoHDRState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mIsVideoHDRState:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setVideoSuperNightSupport(Z)V
    .registers 2

    .line 546
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mIsVideoSuperNightSupport:Z

    return-void
.end method

.method public snapshot(I)V
    .registers 2

    const/4 p1, 0x1

    .line 332
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mIsCaptureTriggled:Z

    return-void
.end method

.method public startStopRecording(Z)V
    .registers 8

    .line 337
    sget-object v0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[startStopRecording] isRecording:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , mOrientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 338
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mIsVideoRecording:Z

    .line 339
    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mIsVideoRecording:Z

    if-eqz p1, :cond_4c

    .line 340
    iget p1, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mOrientation:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_2f

    const/4 p1, 0x0

    .line 341
    iput p1, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mTempOrientation:I

    goto :goto_31

    .line 343
    :cond_2f
    iput p1, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mTempOrientation:I

    .line 345
    :goto_31
    iget v1, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mSurfaceHeight:I

    iget v2, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mSurfaceWidth:I

    iget v3, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mTempOrientation:I

    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->isCurrentCameraFacingBack()Z

    move-result p1

    if-eqz p1, :cond_41

    const/16 p1, 0x5a

    :goto_3f
    move v4, p1

    goto :goto_44

    :cond_41
    const/16 p1, 0x10e

    goto :goto_3f

    :goto_44
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->isCurrentCameraFacingBack()Z

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->updateWaterMarkPosition(IIIIZ)V

    :cond_4c
    return-void
.end method

.method public unInit()V
    .registers 4

    .line 302
    sget-object v0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[unInit] Thread:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-eqz v0, :cond_25

    .line 304
    invoke-interface {v0}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->modeUninit()V

    :cond_25
    const/4 v0, 0x0

    .line 306
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mIsVideoRecording:Z

    .line 307
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->destroyDraw()V

    .line 308
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_3f

    .line 309
    const-string v1, "key_auto_watermark"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mStatusChangeListener:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$HDRSettingChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 310
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_mirror"

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->mStatusChangeListener:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$HDRSettingChangeListener;

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_3f
    return-void
.end method
