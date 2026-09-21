.class public Lcom/ss/android/vesdk/frame/TEBufferCapturePipeline;
.super Lcom/ss/android/vesdk/frame/TECapturePipeline;
.source "SourceFile"


# instance fields
.field private mImageReaderCount:I

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;


# direct methods
.method public constructor <init>(Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;Lcom/ss/android/ttvecamera/TEFrameSizei;Lcom/ss/android/vesdk/frame/TECapturePipeline$CaptureListener;ZLandroid/graphics/SurfaceTexture;)V
    .registers 6

    .line 24
    invoke-direct/range {p0 .. p5}, Lcom/ss/android/vesdk/frame/TECapturePipeline;-><init>(Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;Lcom/ss/android/ttvecamera/TEFrameSizei;Lcom/ss/android/vesdk/frame/TECapturePipeline$CaptureListener;ZLandroid/graphics/SurfaceTexture;)V

    const/4 p2, 0x0

    .line 11
    iput p2, p0, Lcom/ss/android/vesdk/frame/TEBufferCapturePipeline;->mImageReaderCount:I

    .line 25
    iput-object p5, p0, Lcom/ss/android/vesdk/frame/TEBufferCapturePipeline;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 26
    iput-object p1, p0, Lcom/ss/android/vesdk/frame/TECapturePipeline;->mFormat:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    return-void
.end method

.method public constructor <init>(Lcom/ss/android/ttvecamera/TEFrameSizei;Lcom/ss/android/vesdk/frame/TECapturePipeline$CaptureListener;Landroid/graphics/SurfaceTexture;)V
    .registers 5

    .line 14
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;->PIXEL_FORMAT_BUFFER:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/ss/android/vesdk/frame/TECapturePipeline;-><init>(Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;Lcom/ss/android/ttvecamera/TEFrameSizei;Lcom/ss/android/vesdk/frame/TECapturePipeline$CaptureListener;Landroid/graphics/SurfaceTexture;)V

    const/4 p1, 0x0

    .line 11
    iput p1, p0, Lcom/ss/android/vesdk/frame/TEBufferCapturePipeline;->mImageReaderCount:I

    .line 15
    iput-object p3, p0, Lcom/ss/android/vesdk/frame/TEBufferCapturePipeline;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-void
.end method

.method public constructor <init>(Lcom/ss/android/ttvecamera/TEFrameSizei;Lcom/ss/android/vesdk/frame/TECapturePipeline$CaptureListener;ZLandroid/graphics/SurfaceTexture;)V
    .registers 11

    .line 19
    sget-object v1, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;->PIXEL_FORMAT_BUFFER:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/vesdk/frame/TECapturePipeline;-><init>(Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;Lcom/ss/android/ttvecamera/TEFrameSizei;Lcom/ss/android/vesdk/frame/TECapturePipeline$CaptureListener;ZLandroid/graphics/SurfaceTexture;)V

    const/4 p0, 0x0

    .line 11
    iput p0, v0, Lcom/ss/android/vesdk/frame/TEBufferCapturePipeline;->mImageReaderCount:I

    .line 20
    iput-object v5, v0, Lcom/ss/android/vesdk/frame/TEBufferCapturePipeline;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-void
.end method

.method public constructor <init>(Lcom/ss/android/ttvecamera/TEFrameSizei;Lcom/ss/android/vesdk/frame/TECapturePipeline$CaptureListener;ZLandroid/graphics/SurfaceTexture;I)V
    .registers 12

    .line 30
    sget-object v1, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;->PIXEL_FORMAT_BUFFER:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/vesdk/frame/TECapturePipeline;-><init>(Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;Lcom/ss/android/ttvecamera/TEFrameSizei;Lcom/ss/android/vesdk/frame/TECapturePipeline$CaptureListener;ZLandroid/graphics/SurfaceTexture;)V

    .line 31
    iput-object v5, v0, Lcom/ss/android/vesdk/frame/TEBufferCapturePipeline;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 32
    iput p5, v0, Lcom/ss/android/vesdk/frame/TEBufferCapturePipeline;->mImageReaderCount:I

    return-void
.end method


# virtual methods
.method public getImageReaderCount()I
    .registers 1

    .line 40
    iget p0, p0, Lcom/ss/android/vesdk/frame/TEBufferCapturePipeline;->mImageReaderCount:I

    return p0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/ss/android/vesdk/frame/TEBufferCapturePipeline;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p0
.end method

.method public isValid()Z
    .registers 1

    .line 45
    invoke-super {p0}, Lcom/ss/android/vesdk/frame/TECapturePipeline;->isValid()Z

    move-result p0

    return p0
.end method
