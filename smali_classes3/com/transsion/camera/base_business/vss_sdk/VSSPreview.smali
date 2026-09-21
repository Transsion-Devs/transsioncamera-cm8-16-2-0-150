.class public Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/mode/IVideoModeCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$VSSSettingChangeListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_MATRIX:[F

.field private static final IS_DEBUG:Z = false

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private appUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mCount:I

.field private mEffectValue:I

.field private mFilterValue:I

.field private mFrameBufferTextures:[I

.field private mFrameBuffers:[I

.field private mFrameHeight:I

.field private mFrameValue:I

.field private mFrameWidth:I

.field private volatile mIsCaptureTriggled:Z

.field private volatile mIsFilterInit:I

.field private mIsSurfaceCreated:Z

.field private volatile mIsVideoRecording:Z

.field private volatile mIsVideoSightShockState:Z

.field private mOrientation:I

.field private final mPreviewCallback:Lcom/transsion/camera/app/common/preview/PreviewCallbacker;

.field private mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

.field private final mRenderDrawer:Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;

.field private mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

.field private mStatusChangeListener:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$VSSSettingChangeListener;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mSurfaceHeight:I

.field private mSurfaceWidth:I

.field private mTime:J

.field private mTransformMatrix:[F

.field private mVideoHDRRecordingCallback:Lcom/transsion/camera/app/common/mode/IVideoHDRRecordingCallback;


# direct methods
.method static bridge synthetic -$$Nest$fgetmEffectValue(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mEffectValue:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFilterValue(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mFilterValue:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFrameBufferTextures(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;)[I
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mFrameBufferTextures:[I

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFrameBuffers(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;)[I
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mFrameBuffers:[I

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFrameValue(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mFrameValue:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsCaptureTriggled(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mIsCaptureTriggled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsFilterInit(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mIsFilterInit:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsSurfaceCreated(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mIsSurfaceCreated:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsVideoRecording(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mIsVideoRecording:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmOrientation(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mOrientation:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRenderDrawer(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;)Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mRenderDrawer:Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSettingController(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSurfaceHeight(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mSurfaceHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSurfaceWidth(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mSurfaceWidth:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTransformMatrix(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;)[F
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mTransformMatrix:[F

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVideoHDRRecordingCallback(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;)Lcom/transsion/camera/app/common/mode/IVideoHDRRecordingCallback;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mVideoHDRRecordingCallback:Lcom/transsion/camera/app/common/mode/IVideoHDRRecordingCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmEffectValue(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mEffectValue:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmFilterValue(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mFilterValue:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmFrameValue(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mFrameValue:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsCaptureTriggled(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mIsCaptureTriggled:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsSurfaceCreated(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mIsSurfaceCreated:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSurfaceHeight(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mSurfaceHeight:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSurfaceWidth(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mSurfaceWidth:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mdestroyFilter(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->destroyFilter()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetJpegData(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;[[III)[[B
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->getJpegData([[III)[[B

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetTextureBuffer(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;IIII)[[I
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->getTextureBuffer(IIII)[[I

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$minitCameraFrameBuffer(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;II)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->initCameraFrameBuffer(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$minitFilter(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->initFilter()V

    return-void
.end method

.method static bridge synthetic -$$Nest$misInVideoSightShockState(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->isInVideoSightShockState()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mshowFps(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->showFps()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateTexTransformMatrix(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->updateTexTransformMatrix(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDEFAULT_MATRIX()[F
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->DEFAULT_MATRIX:[F

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 30
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "VSSPreview"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/16 v0, 0x10

    .line 35
    new-array v0, v0, [F

    fill-array-data v0, :array_14

    sput-object v0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->DEFAULT_MATRIX:[F

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

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    .line 41
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mTransformMatrix:[F

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mIsCaptureTriggled:Z

    .line 47
    iput-boolean v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mIsVideoRecording:Z

    .line 48
    iput-boolean v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mIsVideoSightShockState:Z

    .line 50
    iput v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mOrientation:I

    .line 52
    new-instance v1, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$VSSSettingChangeListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$VSSSettingChangeListener;-><init>(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;Lcom/transsion/camera/base_business/vss_sdk/VSSPreview-IA;)V

    iput-object v1, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mStatusChangeListener:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$VSSSettingChangeListener;

    .line 58
    iput v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mIsFilterInit:I

    .line 60
    iput-object v2, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mFrameBuffers:[I

    .line 61
    iput-object v2, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mFrameBufferTextures:[I

    const/4 v1, -0x1

    .line 62
    iput v1, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mFrameWidth:I

    .line 63
    iput v1, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mFrameHeight:I

    const/4 v1, 0x1

    .line 66
    iput-boolean v1, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mIsSurfaceCreated:Z

    .line 67
    iput v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mFilterValue:I

    .line 68
    iput v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mEffectValue:I

    .line 69
    iput v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mFrameValue:I

    .line 72
    new-instance v0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$1;-><init>(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;)V

    iput-object v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mPreviewCallback:Lcom/transsion/camera/app/common/preview/PreviewCallbacker;

    .line 235
    new-instance v0, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;

    invoke-direct {v0, p1}, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mRenderDrawer:Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;

    return-void
.end method

.method private bindFrameBuffer(IIII)V
    .registers 14

    const/16 p0, 0xde1

    .line 543
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

    .line 544
    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    const/16 p3, 0x2800

    const p4, 0x46180400    # 9729.0f

    .line 546
    invoke-static {p0, p3, p4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p3, 0x2801

    .line 548
    invoke-static {p0, p3, p4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p3, 0x2802

    const p4, 0x47012f00    # 33071.0f

    .line 550
    invoke-static {p0, p3, p4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p3, 0x2803

    .line 552
    invoke-static {p0, p3, p4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const p3, 0x8d40

    .line 555
    invoke-static {p3, p2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const p2, 0x8ce0

    const/4 p4, 0x0

    .line 556
    invoke-static {p3, p2, p0, p1, p4}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 559
    invoke-static {p3}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result p1

    const p2, 0x8cd5

    if-ne p2, p1, :cond_4c

    .line 564
    invoke-static {p0, p4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 565
    invoke-static {p3, p4}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    return-void

    .line 561
    :cond_4c
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Error CreateTmpFBO()"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private destroyDraw()V
    .registers 1

    .line 270
    iget-object p0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mRenderDrawer:Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;

    if-eqz p0, :cond_7

    .line 271
    invoke-virtual {p0}, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->destroy()V

    :cond_7
    return-void
.end method

.method private destroyFilter()V
    .registers 2

    .line 281
    iget-object v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mRenderDrawer:Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;

    invoke-virtual {v0}, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->destroyFilter()V

    .line 282
    invoke-direct {p0}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->destroyFrameBuffers()V

    const/4 v0, 0x0

    .line 283
    iput v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mIsFilterInit:I

    .line 284
    iput v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mSurfaceWidth:I

    .line 285
    iput v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mSurfaceHeight:I

    return-void
.end method

.method private destroyFrameBuffers()V
    .registers 7

    .line 569
    iget-object v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mFrameBufferTextures:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-eqz v0, :cond_2b

    .line 570
    invoke-static {}, Lcom/transsion/camera/base_business/vss_sdk/VSSConfig;->bufferCountRemove()V

    .line 571
    sget-object v0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[bufferCountRemove], count= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/camera/base_business/vss_sdk/VSSConfig;->getBufferCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 572
    iget-object v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mFrameBufferTextures:[I

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 573
    iput-object v1, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mFrameBufferTextures:[I

    .line 575
    :cond_2b
    iget-object v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mFrameBuffers:[I

    if-eqz v0, :cond_34

    .line 576
    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 577
    iput-object v1, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mFrameBuffers:[I

    :cond_34
    const/4 v0, -0x1

    .line 579
    iput v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mFrameWidth:I

    .line 580
    iput v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mFrameHeight:I

    return-void
.end method

.method private getJpegData([[III)[[B
    .registers 6

    const/4 p0, 0x2

    .line 475
    new-array p0, p0, [[B

    const/4 v0, 0x1

    .line 491
    aget-object p1, p1, v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, p3, v1}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 493
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 494
    sget-object p3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-virtual {p1, p3, v1, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 495
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p3

    aput-object p3, p0, v0

    .line 497
    :try_start_1e
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 498
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_24} :catch_25

    return-object p0

    :catch_25
    move-exception p1

    .line 500
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object p0
.end method

.method private getTextureBuffer(IIII)[[I
    .registers 17

    const/16 p1, 0x10

    .line 423
    new-array v0, p1, [F

    .line 424
    iget-object p0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mTransformMatrix:[F

    const/4 v7, 0x0

    invoke-static {p0, v7, v0, v7, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/high16 p0, 0x3f000000    # 0.5f

    const/4 p1, 0x0

    .line 425
    invoke-static {v0, v7, p0, p0, p1}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/high16 v2, 0x43340000    # 180.0f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 426
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    const/high16 p0, -0x41000000    # -0.5f

    .line 427
    invoke-static {v0, v7, p0, p0, p1}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    const/4 p0, 0x2

    .line 429
    new-array p0, p0, [[I

    mul-int p1, p4, p3

    .line 438
    new-array v8, p1, [I

    .line 439
    new-array p1, p1, [I

    .line 443
    invoke-static {v8}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v6

    const v9, 0x8d40

    .line 444
    invoke-static {v9, p2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const/16 v4, 0x1908

    const/16 v5, 0x1401

    const/4 v0, 0x0

    move v2, p3

    move/from16 v3, p4

    .line 446
    invoke-static/range {v0 .. v6}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 447
    invoke-static {v9, v7}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    move v0, v7

    :goto_41
    const/4 v1, 0x1

    if-ge v0, v3, :cond_6a

    mul-int v4, v0, p3

    sub-int v5, v3, v0

    sub-int/2addr v5, v1

    mul-int/2addr v5, p3

    move v1, v7

    :goto_4b
    if-ge v1, p3, :cond_67

    add-int v6, v4, v1

    .line 453
    aget v6, v8, v6

    shr-int/lit8 v9, v6, 0x10

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v10, v6, 0x10

    const/high16 v11, 0xff0000

    and-int/2addr v10, v11

    const v11, -0xff0100

    and-int/2addr v6, v11

    or-int/2addr v6, v10

    or-int/2addr v6, v9

    add-int v9, v5, v1

    .line 457
    aput v6, p1, v9

    add-int/lit8 v1, v1, 0x1

    goto :goto_4b

    :cond_67
    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    .line 460
    :cond_6a
    aput-object p1, p0, v1

    return-object p0
.end method

.method private initCameraFrameBuffer(II)V
    .registers 6

    .line 521
    iget-object v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mFrameBuffers:[I

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mFrameWidth:I

    if-ne v0, p1, :cond_c

    iget v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mFrameHeight:I

    if-eq v0, p2, :cond_f

    .line 522
    :cond_c
    invoke-direct {p0}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->destroyFrameBuffers()V

    .line 524
    :cond_f
    iget-object v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mFrameBuffers:[I

    if-nez v0, :cond_69

    .line 525
    iput p1, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mFrameWidth:I

    .line 526
    iput p2, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mFrameHeight:I

    const/4 v0, 0x3

    .line 527
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mFrameBuffers:[I

    .line 528
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mFrameBufferTextures:[I

    const/4 v2, 0x0

    .line 530
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 531
    iget-object v1, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mFrameBufferTextures:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 533
    iget-object v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mFrameBufferTextures:[I

    aget v0, v0, v2

    iget-object v1, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mFrameBuffers:[I

    aget v1, v1, v2

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->bindFrameBuffer(IIII)V

    .line 534
    iget-object v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mFrameBufferTextures:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iget-object v2, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mFrameBuffers:[I

    aget v1, v2, v1

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->bindFrameBuffer(IIII)V

    .line 535
    iget-object v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mFrameBufferTextures:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    iget-object v2, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mFrameBuffers:[I

    aget v1, v2, v1

    invoke-direct {p0, v0, v1, p2, p1}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->bindFrameBuffer(IIII)V

    .line 537
    invoke-static {}, Lcom/transsion/camera/base_business/vss_sdk/VSSConfig;->bufferCountAdd()V

    .line 538
    sget-object p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[bufferCountAdd], count="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/camera/base_business/vss_sdk/VSSConfig;->getBufferCount()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_69
    return-void
.end method

.method private initDraw()V
    .registers 5

    .line 239
    iget-object v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_video_filter_style"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 240
    iget-object v1, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "key_video_effect_style"

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 241
    iget-object v2, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v3, "key_video_frame_style"

    invoke-interface {v2, v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 242
    invoke-direct {p0, v0, v1, v2}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->initDrawParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mRenderDrawer:Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;

    invoke-virtual {v0}, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->init()V

    .line 244
    iget-object v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    iget-object p0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mPreviewCallback:Lcom/transsion/camera/app/common/preview/PreviewCallbacker;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->modeInit(Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;)V

    return-void
.end method

.method private initDrawParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 255
    iget-object v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_video_filter"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 256
    iget-object v2, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v3, "key_video_effect"

    invoke-interface {v2, v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 257
    iget-object v3, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v4, "key_video_frame"

    invoke-interface {v3, v4}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 258
    invoke-static {p1}, Lcom/transsion/camera/app/common/setting/videofilter/VideoFilterItemInfo;->toObject(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/videofilter/VideoFilterItemInfo;

    move-result-object p1

    const/4 v3, 0x0

    if-eqz p1, :cond_30

    .line 259
    iget v4, p1, Lcom/transsion/camera/app/common/setting/videofilter/VideoFilterItemInfo;->mValue:I

    goto :goto_31

    :cond_30
    move v4, v3

    :goto_31
    iput v4, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mFilterValue:I

    if-eqz p2, :cond_3a

    .line 260
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    goto :goto_3b

    :cond_3a
    move p2, v3

    :goto_3b
    iput p2, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mEffectValue:I

    if-eqz p3, :cond_44

    .line 261
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    goto :goto_45

    :cond_44
    move p2, v3

    :goto_45
    iput p2, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mFrameValue:I

    if-eqz v0, :cond_4c

    .line 262
    iget p2, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mFilterValue:I

    goto :goto_4d

    :cond_4c
    move p2, v3

    :goto_4d
    if-eqz p1, :cond_58

    if-eqz v0, :cond_58

    .line 263
    iget-object p1, p1, Lcom/transsion/camera/app/common/setting/videofilter/VideoFilterItemInfo;->mLevel:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_59

    :cond_58
    move p1, v3

    :goto_59
    if-eqz v2, :cond_5e

    .line 264
    iget p3, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mEffectValue:I

    goto :goto_5f

    :cond_5e
    move p3, v3

    :goto_5f
    if-eqz v1, :cond_63

    .line 265
    iget v3, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mFrameValue:I

    .line 266
    :cond_63
    iget-object p0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mRenderDrawer:Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;

    invoke-virtual {p0, p2, p1, p3, v3}, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->initPram(IIII)V

    return-void
.end method

.method private initFilter()V
    .registers 3

    .line 276
    iget-object v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mRenderDrawer:Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->initFilter(Z)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mIsFilterInit:I

    .line 277
    invoke-direct {p0}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->updateRenderDrawerOrientation()V

    return-void
.end method

.method private isCurrentCameraFacingBack()Z
    .registers 1

    .line 585
    iget-object p0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

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

.method private isInVideoSightShockState()Z
    .registers 4

    .line 222
    iget-object v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_video_filter"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "key_video_effect"

    .line 223
    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2f

    iget-object p0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "key_video_frame"

    .line 224
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2d

    goto :goto_2f

    :cond_2d
    const/4 p0, 0x0

    return p0

    :cond_2f
    :goto_2f
    const/4 p0, 0x1

    return p0
.end method

.method private isQualityValidate(II)Z
    .registers 3

    const/16 p0, 0x2d0

    if-ne p1, p0, :cond_a

    const/16 p0, 0x500

    if-ne p2, p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method private screenPocket()Z
    .registers 1

    .line 228
    iget-object p0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 231
    :cond_6
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->screenPocket()Z

    move-result p0

    return p0
.end method

.method private showFps()V
    .registers 7

    .line 509
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 510
    iget-wide v2, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2c

    .line 511
    sget-object v2, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "frame :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 512
    iput-wide v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mTime:J

    const/4 v0, 0x0

    .line 513
    iput v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mCount:I

    return-void

    .line 515
    :cond_2c
    iget v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mCount:I

    return-void
.end method

.method private updateRenderDrawerOrientation()V
    .registers 2

    .line 393
    iget-object v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->appUI:Lcom/transsion/camera/app/common/IAppUI;

    if-nez v0, :cond_5

    goto :goto_9

    .line 394
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mRenderDrawer:Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;

    if-nez v0, :cond_a

    :goto_9
    return-void

    .line 403
    :cond_a
    iget p0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mOrientation:I

    invoke-virtual {v0, p0}, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->setOrientation(I)V

    return-void
.end method

.method private updateTexTransformMatrix(Ljava/lang/String;)V
    .registers 4

    .line 614
    invoke-direct {p0}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->isCurrentCameraFacingBack()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_29

    const-string v0, "off"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_29

    .line 615
    iget p0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mOrientation:I

    const/16 p1, 0x5a

    const/4 v0, 0x1

    if-eq p0, p1, :cond_22

    const/16 p1, 0x10e

    if-ne p0, p1, :cond_1b

    goto :goto_22

    .line 619
    :cond_1b
    invoke-static {v0}, Lcom/transsion/camera/base_business/vss_sdk/VSSConfig;->setTransformMatrixHorizontalMirror(Z)V

    .line 620
    invoke-static {v1}, Lcom/transsion/camera/base_business/vss_sdk/VSSConfig;->setTransformMatrixVerticalMirror(Z)V

    return-void

    .line 616
    :cond_22
    :goto_22
    invoke-static {v1}, Lcom/transsion/camera/base_business/vss_sdk/VSSConfig;->setTransformMatrixHorizontalMirror(Z)V

    .line 617
    invoke-static {v0}, Lcom/transsion/camera/base_business/vss_sdk/VSSConfig;->setTransformMatrixVerticalMirror(Z)V

    return-void

    .line 623
    :cond_29
    invoke-static {v1}, Lcom/transsion/camera/base_business/vss_sdk/VSSConfig;->setTransformMatrixHorizontalMirror(Z)V

    .line 624
    invoke-static {v1}, Lcom/transsion/camera/base_business/vss_sdk/VSSConfig;->setTransformMatrixVerticalMirror(Z)V

    return-void
.end method


# virtual methods
.method public enableBlur(Z)V
    .registers 2

    .line 630
    iget-object p0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mRenderDrawer:Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->enableBlur(Z)V

    return-void
.end method

.method public enableDVMask(Z)V
    .registers 2

    return-void
.end method

.method public executeInGLThread(Ljava/lang/Runnable;)V
    .registers 2

    .line 664
    iget-object p0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/preview/IGLThreadRunnable;->executeInGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public init(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/preview/IPreviewOperator;I)V
    .registers 7

    .line 294
    sget-object v0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " [init] VSS Thread:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 295
    iput-object p1, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 296
    iget-object v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mRenderDrawer:Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;

    iput-object p1, v0, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->settingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 297
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    .line 298
    iget-object v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mRenderDrawer:Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;

    iput-object p1, v0, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->statusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    .line 299
    iput-object p2, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    .line 300
    iput-object p2, v0, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    .line 301
    iput p3, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mOrientation:I

    .line 302
    const-string p2, "key_video_filter"

    iget-object p3, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mStatusChangeListener:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$VSSSettingChangeListener;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 303
    iget-object p1, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_video_effect"

    iget-object p3, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mStatusChangeListener:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$VSSSettingChangeListener;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 304
    iget-object p1, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_video_frame"

    iget-object p3, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mStatusChangeListener:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$VSSSettingChangeListener;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 305
    iget-object p1, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_mirror"

    iget-object p3, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mStatusChangeListener:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$VSSSettingChangeListener;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 306
    iget-object p1, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_video_filter_style"

    iget-object p3, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mStatusChangeListener:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$VSSSettingChangeListener;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 307
    iget-object p1, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_video_effect_style"

    iget-object p3, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mStatusChangeListener:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$VSSSettingChangeListener;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 308
    iget-object p1, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_video_frame_style"

    iget-object p3, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mStatusChangeListener:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$VSSSettingChangeListener;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 309
    invoke-direct {p0}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->initDraw()V

    return-void
.end method

.method public initAppUI(Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 2

    .line 314
    iput-object p1, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->appUI:Lcom/transsion/camera/app/common/IAppUI;

    return-void
.end method

.method public onOrientationChanged(IZ)V
    .registers 4

    .line 376
    iput p1, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mOrientation:I

    .line 377
    sget-object p1, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "... [onOrientationChanged] mOrientation:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mOrientation:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " ,mIsVideoRecording:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mIsVideoRecording:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 382
    iget-object p1, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-eqz p1, :cond_31

    .line 383
    const-string p2, "key_mirror"

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 384
    invoke-direct {p0, p1}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->updateTexTransformMatrix(Ljava/lang/String;)V

    .line 387
    :cond_31
    invoke-direct {p0}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->updateRenderDrawerOrientation()V

    return-void
.end method

.method public onSettingReady()V
    .registers 1

    .line 349
    iget-object p0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mRenderDrawer:Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;

    invoke-virtual {p0}, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->onSettingReady()V

    return-void
.end method

.method public postInvalidate(I)V
    .registers 2

    .line 659
    iget-object p0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mRenderDrawer:Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->postInvalidate(I)V

    return-void
.end method

.method public previewViewTypeChanged()V
    .registers 2

    .line 249
    iget-object v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-eqz v0, :cond_9

    .line 250
    iget-object p0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mPreviewCallback:Lcom/transsion/camera/app/common/preview/PreviewCallbacker;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->modeInit(Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;)V

    :cond_9
    return-void
.end method

.method public reset()V
    .registers 1

    .line 408
    iget-object p0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mRenderDrawer:Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;

    if-eqz p0, :cond_7

    .line 409
    invoke-virtual {p0}, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->reset()V

    :cond_7
    return-void
.end method

.method public resume()V
    .registers 5

    .line 334
    sget-object v0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " [resume] Thread:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , sInit:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mRenderDrawer:Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;

    invoke-virtual {v2}, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->isInit()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mRenderDrawer:Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;

    invoke-virtual {v0}, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->isInit()Z

    move-result v0

    if-nez v0, :cond_3e

    .line 336
    iget-object v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mRenderDrawer:Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;

    invoke-virtual {v0}, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->init()V

    .line 337
    iget-object v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->modeResume()V

    .line 339
    :cond_3e
    iget-object v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-eqz v0, :cond_5b

    .line 340
    const-string v1, "key_video_filter_style"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 341
    iget-object v1, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "key_video_effect_style"

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 342
    iget-object v2, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v3, "key_video_frame_style"

    invoke-interface {v2, v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 343
    invoke-direct {p0, v0, v1, v2}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->initDrawParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5b
    return-void
.end method

.method public setHDRDataPreviewDataCallback(Lcom/transsion/camera/app/common/mode/IVideoHDRRecordingCallback;)V
    .registers 5

    .line 359
    sget-object v0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHDRDataPreviewDataCallback111() called with: callback = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 360
    iput-object p1, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mVideoHDRRecordingCallback:Lcom/transsion/camera/app/common/mode/IVideoHDRRecordingCallback;

    return-void
.end method

.method public setValue(Ljava/lang/String;F)V
    .registers 3

    .line 0
    return-void
.end method

.method public setValue(Ljava/lang/String;I)V
    .registers 3

    .line 0
    return-void
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 354
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/IVideoModeCallback;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setVideoBackWideSupport360Hdr(Z)V
    .registers 2

    return-void
.end method

.method public setVideoHDRState(Z)V
    .registers 2

    return-void
.end method

.method public setVideoSightShockState(Z)V
    .registers 4

    .line 594
    iput-boolean p1, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mIsVideoSightShockState:Z

    .line 595
    sget-object p1, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsVideoHDRState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mIsVideoSightShockState:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setVideoSuperNightSupport(Z)V
    .registers 2

    return-void
.end method

.method public snapshot(I)V
    .registers 2

    const/4 p1, 0x1

    .line 365
    iput-boolean p1, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mIsCaptureTriggled:Z

    return-void
.end method

.method public startStopRecording(Z)V
    .registers 5

    .line 370
    sget-object v0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "... [startStopRecording] isRecording:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 371
    iput-boolean p1, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mIsVideoRecording:Z

    return-void
.end method

.method public testCapture(IILjava/nio/IntBuffer;)Landroid/graphics/Bitmap;
    .registers 11

    const/16 v4, 0x1908

    const/16 v5, 0x1401

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, p1

    move v3, p2

    move-object v6, p3

    .line 465
    invoke-static/range {v0 .. v6}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 466
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 467
    invoke-virtual {p0, v6}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    return-object p0
.end method

.method public unInit()V
    .registers 4

    .line 319
    sget-object v0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " [unInit] Thread:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 320
    iget-object v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->modeUninit()V

    const/4 v0, 0x0

    .line 321
    iput-boolean v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mIsVideoRecording:Z

    .line 322
    invoke-direct {p0}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->destroyDraw()V

    .line 323
    iget-object v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_video_filter"

    iget-object v2, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mStatusChangeListener:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$VSSSettingChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 324
    iget-object v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_video_effect"

    iget-object v2, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mStatusChangeListener:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$VSSSettingChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 325
    iget-object v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_video_frame"

    iget-object v2, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mStatusChangeListener:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$VSSSettingChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 326
    iget-object v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_mirror"

    iget-object v2, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mStatusChangeListener:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$VSSSettingChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 327
    iget-object v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_video_filter_style"

    iget-object v2, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mStatusChangeListener:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$VSSSettingChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 328
    iget-object v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_video_effect_style"

    iget-object v2, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mStatusChangeListener:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$VSSSettingChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 329
    iget-object v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_video_frame_style"

    iget-object p0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->mStatusChangeListener:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$VSSSettingChangeListener;

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method
