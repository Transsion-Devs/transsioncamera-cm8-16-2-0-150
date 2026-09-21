.class public Lcom/ss/android/vesdk/video/TEVideoDataInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TEVideoDataInterface"


# instance fields
.field private mCameraFrameSetting:Lcom/ss/android/ttvecamera/TECameraFrameSetting;

.field private mCapturePipeline:Lcom/ss/android/vesdk/frame/TECapturePipeline;

.field private mCapturePipelines:Lcom/ss/android/vesdk/ConcurrentList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ss/android/vesdk/ConcurrentList<",
            "Lcom/ss/android/vesdk/frame/TECapturePipeline;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:J

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mTextureHolder:Lcom/ss/android/vesdk/TextureHolder;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 37
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->loadLibrary()V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 24
    iput-wide v0, p0, Lcom/ss/android/vesdk/video/TEVideoDataInterface;->mHandler:J

    .line 26
    new-instance v0, Lcom/ss/android/vesdk/TextureHolder;

    invoke-direct {v0}, Lcom/ss/android/vesdk/TextureHolder;-><init>()V

    iput-object v0, p0, Lcom/ss/android/vesdk/video/TEVideoDataInterface;->mTextureHolder:Lcom/ss/android/vesdk/TextureHolder;

    .line 32
    new-instance v0, Lcom/ss/android/vesdk/ConcurrentList;

    invoke-direct {v0}, Lcom/ss/android/vesdk/ConcurrentList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/vesdk/video/TEVideoDataInterface;->mCapturePipelines:Lcom/ss/android/vesdk/ConcurrentList;

    .line 41
    invoke-direct {p0}, Lcom/ss/android/vesdk/video/TEVideoDataInterface;->nativeCreateVideoDataInterface()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/vesdk/video/TEVideoDataInterface;->mHandler:J

    return-void
.end method

.method public constructor <init>(J)V
    .registers 5

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 24
    iput-wide v0, p0, Lcom/ss/android/vesdk/video/TEVideoDataInterface;->mHandler:J

    .line 26
    new-instance v0, Lcom/ss/android/vesdk/TextureHolder;

    invoke-direct {v0}, Lcom/ss/android/vesdk/TextureHolder;-><init>()V

    iput-object v0, p0, Lcom/ss/android/vesdk/video/TEVideoDataInterface;->mTextureHolder:Lcom/ss/android/vesdk/TextureHolder;

    .line 32
    new-instance v0, Lcom/ss/android/vesdk/ConcurrentList;

    invoke-direct {v0}, Lcom/ss/android/vesdk/ConcurrentList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/vesdk/video/TEVideoDataInterface;->mCapturePipelines:Lcom/ss/android/vesdk/ConcurrentList;

    .line 45
    iput-wide p1, p0, Lcom/ss/android/vesdk/video/TEVideoDataInterface;->mHandler:J

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/ss/android/vesdk/video/TEVideoDataInterface;->nativeInit(J)V

    return-void
.end method

.method static synthetic access$000(Lcom/ss/android/vesdk/video/TEVideoDataInterface;)Lcom/ss/android/vesdk/TextureHolder;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/ss/android/vesdk/video/TEVideoDataInterface;->mTextureHolder:Lcom/ss/android/vesdk/TextureHolder;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ss/android/vesdk/video/TEVideoDataInterface;Lcom/ss/android/ttvecamera/TECameraFrame;)V
    .registers 2

    .line 20
    invoke-direct {p0, p1}, Lcom/ss/android/vesdk/video/TEVideoDataInterface;->setCameraParams(Lcom/ss/android/ttvecamera/TECameraFrame;)V

    return-void
.end method

.method static synthetic access$200(Lcom/ss/android/vesdk/video/TEVideoDataInterface;)J
    .registers 3

    .line 20
    iget-wide v0, p0, Lcom/ss/android/vesdk/video/TEVideoDataInterface;->mHandler:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/ss/android/vesdk/video/TEVideoDataInterface;J)V
    .registers 3

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/ss/android/vesdk/video/TEVideoDataInterface;->nativeNotifyFrameAvailable(J)V

    return-void
.end method

.method static synthetic access$402(Lcom/ss/android/vesdk/video/TEVideoDataInterface;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;
    .registers 2

    .line 20
    iput-object p1, p0, Lcom/ss/android/vesdk/video/TEVideoDataInterface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p1
.end method

.method private native nativeCameraParam(JLcom/ss/android/ttvecamera/TECameraFrameSetting;)V
.end method

.method private native nativeCreateVideoDataInterface()J
.end method

.method private native nativeInit(J)V
.end method

.method private native nativeNotifyFrameAvailable(J)V
.end method

.method private native nativeReleaseVideoDataInterface(J)V
.end method

.method private setCameraParams(Lcom/ss/android/ttvecamera/TECameraFrame;)V
    .registers 12

    .line 119
    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TECameraFrame;->getRotation()I

    move-result v5

    .line 120
    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TECameraFrame;->getPixelFormat()Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    move-result-object v0

    sget-object v1, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;->PIXEL_FORMAT_OpenGL_OES:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    if-ne v0, v1, :cond_34

    .line 121
    new-instance v0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;

    iget-object v1, p0, Lcom/ss/android/vesdk/video/TEVideoDataInterface;->mTextureHolder:Lcom/ss/android/vesdk/TextureHolder;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/TextureHolder;->getSurfaceTextureID()I

    move-result v1

    .line 122
    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TECameraFrame;->getSize()Lcom/ss/android/ttvecamera/TEFrameSizei;

    move-result-object v2

    iget v3, v2, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TECameraFrame;->getSize()Lcom/ss/android/ttvecamera/TEFrameSizei;

    move-result-object v2

    iget v4, v2, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TECameraFrame;->getMVPMatrix()[F

    move-result-object v6

    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TECameraFrame;->getPixelFormat()Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/ss/android/ttvecamera/TECameraFrameSetting;-><init>(IIIII[FIII)V

    iput-object v0, p0, Lcom/ss/android/vesdk/video/TEVideoDataInterface;->mCameraFrameSetting:Lcom/ss/android/ttvecamera/TECameraFrameSetting;

    .line 124
    :cond_34
    iget-wide v0, p0, Lcom/ss/android/vesdk/video/TEVideoDataInterface;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_41

    iget-object p1, p0, Lcom/ss/android/vesdk/video/TEVideoDataInterface;->mCameraFrameSetting:Lcom/ss/android/ttvecamera/TECameraFrameSetting;

    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/vesdk/video/TEVideoDataInterface;->nativeCameraParam(JLcom/ss/android/ttvecamera/TECameraFrameSetting;)V

    :cond_41
    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 6

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/vesdk/video/TEVideoDataInterface;->mTextureHolder:Lcom/ss/android/vesdk/TextureHolder;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/TextureHolder;->detachFromGLContext()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_21

    :catch_6
    move-exception v0

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "detachFromGLContext error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TEVideoDataInterface"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :goto_21
    iget-object v0, p0, Lcom/ss/android/vesdk/video/TEVideoDataInterface;->mTextureHolder:Lcom/ss/android/vesdk/TextureHolder;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/TextureHolder;->onDestroy()V

    .line 57
    iget-wide v0, p0, Lcom/ss/android/vesdk/video/TEVideoDataInterface;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_33

    .line 58
    invoke-direct {p0, v0, v1}, Lcom/ss/android/vesdk/video/TEVideoDataInterface;->nativeReleaseVideoDataInterface(J)V

    .line 59
    iput-wide v2, p0, Lcom/ss/android/vesdk/video/TEVideoDataInterface;->mHandler:J

    :cond_33
    return-void
.end method

.method public getNextFrame()V
    .registers 6

    .line 91
    iget-object v0, p0, Lcom/ss/android/vesdk/video/TEVideoDataInterface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/ss/android/vesdk/video/TEVideoDataInterface;->mTextureHolder:Lcom/ss/android/vesdk/TextureHolder;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/TextureHolder;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    const-string v2, "TEVideoDataInterface"

    if-eq v0, v1, :cond_3a

    .line 92
    iget-object v0, p0, Lcom/ss/android/vesdk/video/TEVideoDataInterface;->mTextureHolder:Lcom/ss/android/vesdk/TextureHolder;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/TextureHolder;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 94
    :try_start_14
    iget-object v0, p0, Lcom/ss/android/vesdk/video/TEVideoDataInterface;->mTextureHolder:Lcom/ss/android/vesdk/TextureHolder;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/TextureHolder;->detachFromGLContext()Z
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_19} :catch_1a

    goto :goto_33

    :catch_1a
    move-exception v0

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "detachFromGLContext error: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :cond_33
    :goto_33
    iget-object v0, p0, Lcom/ss/android/vesdk/video/TEVideoDataInterface;->mTextureHolder:Lcom/ss/android/vesdk/TextureHolder;

    iget-object v1, p0, Lcom/ss/android/vesdk/video/TEVideoDataInterface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Lcom/ss/android/vesdk/TextureHolder;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 103
    :cond_3a
    :try_start_3a
    iget-object v0, p0, Lcom/ss/android/vesdk/video/TEVideoDataInterface;->mCapturePipeline:Lcom/ss/android/vesdk/frame/TECapturePipeline;

    check-cast v0, Lcom/ss/android/vesdk/frame/TETextureCapturePipeline;

    iget-object v1, p0, Lcom/ss/android/vesdk/video/TEVideoDataInterface;->mTextureHolder:Lcom/ss/android/vesdk/TextureHolder;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/TextureHolder;->getSurfaceTextureID()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/vesdk/frame/TETextureCapturePipeline;->setSurfaceTextureID(I)V

    .line 104
    iget-object v0, p0, Lcom/ss/android/vesdk/video/TEVideoDataInterface;->mTextureHolder:Lcom/ss/android/vesdk/TextureHolder;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/TextureHolder;->attachToGLContext()Z

    .line 105
    iget-object v0, p0, Lcom/ss/android/vesdk/video/TEVideoDataInterface;->mTextureHolder:Lcom/ss/android/vesdk/TextureHolder;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/TextureHolder;->updateTexImage()V

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "timestamp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/ss/android/vesdk/video/TEVideoDataInterface;->mTextureHolder:Lcom/ss/android/vesdk/TextureHolder;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TextureHolder;->getSurfaceTimeStamp()D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_6b} :catch_6c

    goto :goto_85

    :catch_6c
    move-exception p0

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateTexImage error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_85
    return-void
.end method

.method public getTexImageTimeDelay()J
    .registers 5

    .line 115
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    iget-object p0, p0, Lcom/ss/android/vesdk/video/TEVideoDataInterface;->mTextureHolder:Lcom/ss/android/vesdk/TextureHolder;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TextureHolder;->getSurfaceTimeStamp()D

    move-result-wide v2

    sub-double/2addr v0, v2

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0
.end method

.method public onGLEnvInited()V
    .registers 1

    .line 64
    iget-object p0, p0, Lcom/ss/android/vesdk/video/TEVideoDataInterface;->mTextureHolder:Lcom/ss/android/vesdk/TextureHolder;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TextureHolder;->createOESTexture()V

    return-void
.end method

.method public setCapturePipeline(Lcom/ss/android/vesdk/frame/TECapturePipeline;)V
    .registers 3

    .line 68
    iput-object p1, p0, Lcom/ss/android/vesdk/video/TEVideoDataInterface;->mCapturePipeline:Lcom/ss/android/vesdk/frame/TECapturePipeline;

    .line 69
    new-instance v0, Lcom/ss/android/vesdk/video/TEVideoDataInterface$1;

    invoke-direct {v0, p0}, Lcom/ss/android/vesdk/video/TEVideoDataInterface$1;-><init>(Lcom/ss/android/vesdk/video/TEVideoDataInterface;)V

    invoke-virtual {p1, v0}, Lcom/ss/android/vesdk/frame/TECapturePipeline;->setCaptureListener(Lcom/ss/android/vesdk/frame/TECapturePipeline$CaptureListener;)V

    return-void
.end method
