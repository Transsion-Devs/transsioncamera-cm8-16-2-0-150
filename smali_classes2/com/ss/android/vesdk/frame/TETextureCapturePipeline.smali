.class public Lcom/ss/android/vesdk/frame/TETextureCapturePipeline;
.super Lcom/ss/android/vesdk/frame/TECapturePipeline;
.source "SourceFile"


# instance fields
.field private mOESTextureId:I

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;


# direct methods
.method public constructor <init>(Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;Lcom/ss/android/ttvecamera/TEFrameSizei;Lcom/ss/android/vesdk/frame/TECapturePipeline$CaptureListener;ZILandroid/graphics/SurfaceTexture;)V
    .registers 13

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p6

    .line 26
    invoke-direct/range {v0 .. v5}, Lcom/ss/android/vesdk/frame/TECapturePipeline;-><init>(Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;Lcom/ss/android/ttvecamera/TEFrameSizei;Lcom/ss/android/vesdk/frame/TECapturePipeline$CaptureListener;ZLandroid/graphics/SurfaceTexture;)V

    .line 27
    iput p5, v0, Lcom/ss/android/vesdk/frame/TETextureCapturePipeline;->mOESTextureId:I

    .line 28
    iput-object v5, v0, Lcom/ss/android/vesdk/frame/TETextureCapturePipeline;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 29
    iput-object v1, v0, Lcom/ss/android/vesdk/frame/TECapturePipeline;->mFormat:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    return-void
.end method

.method public constructor <init>(Lcom/ss/android/ttvecamera/TEFrameSizei;Lcom/ss/android/vesdk/frame/TECapturePipeline$CaptureListener;ILandroid/graphics/SurfaceTexture;)V
    .registers 6

    .line 14
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;->PIXEL_FORMAT_OpenGL_OES:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    invoke-direct {p0, v0, p1, p2, p4}, Lcom/ss/android/vesdk/frame/TECapturePipeline;-><init>(Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;Lcom/ss/android/ttvecamera/TEFrameSizei;Lcom/ss/android/vesdk/frame/TECapturePipeline$CaptureListener;Landroid/graphics/SurfaceTexture;)V

    .line 15
    iput p3, p0, Lcom/ss/android/vesdk/frame/TETextureCapturePipeline;->mOESTextureId:I

    .line 16
    iput-object p4, p0, Lcom/ss/android/vesdk/frame/TETextureCapturePipeline;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-void
.end method

.method public constructor <init>(Lcom/ss/android/ttvecamera/TEFrameSizei;Lcom/ss/android/vesdk/frame/TECapturePipeline$CaptureListener;ZILandroid/graphics/SurfaceTexture;)V
    .registers 12

    .line 20
    sget-object v1, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;->PIXEL_FORMAT_OpenGL_OES:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/vesdk/frame/TECapturePipeline;-><init>(Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;Lcom/ss/android/ttvecamera/TEFrameSizei;Lcom/ss/android/vesdk/frame/TECapturePipeline$CaptureListener;ZLandroid/graphics/SurfaceTexture;)V

    .line 21
    iput p4, v0, Lcom/ss/android/vesdk/frame/TETextureCapturePipeline;->mOESTextureId:I

    .line 22
    iput-object v5, v0, Lcom/ss/android/vesdk/frame/TETextureCapturePipeline;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-void
.end method


# virtual methods
.method public getOESTextureId()I
    .registers 1

    .line 33
    iget p0, p0, Lcom/ss/android/vesdk/frame/TETextureCapturePipeline;->mOESTextureId:I

    return p0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/ss/android/vesdk/frame/TETextureCapturePipeline;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p0
.end method

.method public isValid()Z
    .registers 2

    .line 50
    invoke-super {p0}, Lcom/ss/android/vesdk/frame/TECapturePipeline;->isValid()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object p0, p0, Lcom/ss/android/vesdk/frame/TETextureCapturePipeline;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    .registers 2

    .line 41
    iput-object p1, p0, Lcom/ss/android/vesdk/frame/TETextureCapturePipeline;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-void
.end method

.method public setSurfaceTextureID(I)V
    .registers 2

    .line 45
    iput p1, p0, Lcom/ss/android/vesdk/frame/TETextureCapturePipeline;->mOESTextureId:I

    return-void
.end method
